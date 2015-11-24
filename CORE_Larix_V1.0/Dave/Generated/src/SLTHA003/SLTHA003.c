/*******************************************************************************
 Copyright (c) 2011, Infineon Technologies AG                                 **
 All rights reserved.                                                         **
                                                                              **
 Redistribution and use in source and binary forms, with or without           **
 modification,are permitted provided that the following conditions are met:   **
                                                                              **
 *Redistributions of source code must retain the above copyright notice,      **
 this list of conditions and the following disclaimer.                        **
 *Redistributions in binary form must reproduce the above copyright notice,   **
 this list of conditions and the following disclaimer in the documentation    **
 and/or other materials provided with the distribution.                       **
 *Neither the name of the copyright holders nor the names of its contributors **
 may be used to endorse or promote products derived from this software without** 
 specific prior written permission.                                           **
                                                                              **
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"  **
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **
 ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **
 LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **
 SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **
 CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **
 POSSIBILITY OF SUCH DAMAGE.                                                  **
                                                                              **
 To improve the quality of the software, users are encouraged to share        **
 modifications, enhancements or bug fixes with Infineon Technologies AG       **
 dave@infineon.com).                                                          **
                                                                              **
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC4000 Series                                         **
**                                                                            **
** COMPILER : GCC                                                             **
**                                                                            **
** AUTHOR : App Developer                                                     **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Oct 24, 2012                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials    Name                                                           **
** ---------------------------------------------------------------------------**
** SK          App Developer                                                  **
*******************************************************************************/


/**
 * @file   SLTHA003.c
 *
 * @brief  This file contains definitions of all private and public
 *         functions of Timer & Memory related Standard Library App.
 *
 * The memory related functions are only applicable for XMC4500 device
 
 * Revision History
 * 12 July 2012  v1.0.2    Initial version
 * 24 Oct 2012   v1.0.4    Function macros used for different compilers.
 * 26 Nov 2012   v1.0.5    GMM dependency removed.
 */

/*****************************************************************************
 * INCLUDE FILES
 *****************************************************************************/
#include <DAVE3.h>
#include "../../inc/SLTHA003/SLTHA003_HW_Private.h"


/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/


/*******************************************************************************
 *                                ARRAYS                                      **
 ******************************************************************************/

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/



/*******************************************************************************
**                      Private Constant Definitions                          **
*******************************************************************************/

/*******************************************************************************
**                 Function like macro definitions                            **
*******************************************************************************/

/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/
/* Since the memory management with GMM and LMMM is not needed for devices
   other than XMC4500, the complete GMM related calls should be suppressed.
   Depending upon the target macro definition the code snippet will be 
   bypassed for XMC 4400 and 4200 controllers
*/     
#if (__TARGET_DEVICE__ == XMC45)
#if defined(__GNUC__)
#ifdef USE_SBRK
/* <<<DD_SLTHA003_API_5>>> */
/*  This function Increase program data space.
 * malloc and related functions depend on this. *
 * This API is only applicable for XMC4500 device
 */
uint8_t HeapArea[10240];
caddr_t _sbrk(int Incr)
{
  caddr_t RetVal;
  static uint8_t *HeapPtr = NULL;
  uint8_t *EndofMem;
  uint8_t *PrevHeapPtr;
  EndofMem = HeapArea + sizeof(HeapArea);
  //todo: This needs to be refined once global memory manager approach is finalised.
  if (HeapPtr == NULL)
  {
    HeapPtr = HeapArea;
  } 
  PrevHeapPtr = HeapPtr;

  if (HeapPtr + Incr > EndofMem)
  {
    errno = ENOMEM;
    RetVal = (caddr_t)-1;
  }
  else
  {
    HeapPtr += Incr;
    RetVal = (caddr_t)PrevHeapPtr;
  }
  return RetVal;
}
#else
/* <<<DD_SLTHA003_API_1>>> */
/*  This function can be used to request allocation of an object with at least 
 *  Size bytes of storage available. If the space is available, malloc returns a
 *  pointer to a newly allocated block as its result. *
 * This API is only applicable for XMC4500 device
 */
void* _malloc_r( struct _reent* Rptr, size_t Size )
{
/* Call malloc function of GMM App. */
  return (GMM001_malloc(Size)); 
}

/* This function can be used to request a block of memory sufficient to hold 
 * an array of NoOfElem elements, each of which has size ElemSize.The memory 
 * allocated by calloc comes out of the same memory pool used by malloc, 
 * but the memory block is initialized to all zero bytes. *
 * This API is only applicable for XMC4500 device
 */
/* <<<DD_SLTHA003_API_2>>> */
void* _calloc_r( struct _reent *Rptr, size_t NoOfElem, size_t ElemSize )
{
  void *MemPtr = NULL;
/* Call malloc function of GMM App. */
  MemPtr = GMM001_malloc( NoOfElem * ElemSize);
  memset(MemPtr, 0, (NoOfElem * ElemSize));
  return MemPtr;
}

/* This function can be used When you no longer need an object originally 
 * allocated by malloc or realloc (or the related function calloc), 
 * return it to the memory storage pool by calling free with the address of the
 * object as the argument. *
 * This API is only applicable for XMC4500 device
 */ 
/* <<<DD_SLTHA003_API_3>>> */
void _free_r( struct _reent *Rptr, void *Ptr )
{
/* Call free function of GMM App. */
  GMM001_free(Ptr);
}

/* This function can be used if you already have a block of storage allocated by
 * malloc, but you no longer need all the space allocated to it, you can make it
 * smaller or larger by calling realloc with both the object pointer and the new 
 * desired size as arguments. realloc guarantees that the beginning of the new,
 * object matches the contents of the original object. *
 * This API is only applicable for XMC4500 device
 */
/* <<<DD_SLTHA003_API_4>>> */
void* _realloc_r( struct _reent *Rptr, void *Ptr, size_t Size )
{
/* Call realloc function of GMM App. */
  return (GMM001_realloc( Size, Ptr));
}
/* End of #else (USE_SBRK) */ 
#endif
/* End of #ifdef(__GNUC__) */
#endif
/* End of #if(__TARGET_DEVICE__ == XMC45) */
#endif

/* <<<DD_SLTHA003_API_5>>> */
/*
 * This function gets the calendar time in seconds.
 */
SLTHA003_Time()
{
   time_t Seconds ;
   status_t Status;
#if defined (__GNUC__)
       struct timezone *TimeZonePtr;
#endif
   if (TimePtr)
   {
     Status = RTC001_Time(&Seconds);
     if (Status == (uint32_t)DAVEApp_SUCCESS)
     {
#if defined (__GNUC__)
      TimePtr->tv_sec =  Seconds;
      TimePtr->tv_usec = 0;
#elif defined (__CC_ARM) || defined (__ICCARM__) || defined ( __TASKING__)
      *TimePtr = Seconds;
#endif
    }
  }
#if defined (__GNUC__)
  /*  Return fixed data for the timezone */
  TimeZonePtr =  (struct timezone *)TimeZone;
	TimeZonePtr->tz_minuteswest = 0;
  TimeZonePtr->tz_dsttime = 0;
#endif
  return (int)Seconds;
}

/* <<<DD_SLTHA003_API_6>>> */
/*
 * This function gets the processor time. 
 */
SLTHA003_Clock()
{
#if  defined (__GNUC__)
  TmsPtr->tms_utime = 0;
  TmsPtr->tms_stime = 0;
  TmsPtr->tms_cutime = 0;
  TmsPtr->tms_cstime = 0;
#endif
  return 0;
}

