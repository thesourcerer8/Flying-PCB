/******************************************************************************
 *
 * Copyright (C) 2014 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use with 
 * Infineon's microcontrollers.This file can be freely distributed within development
 * tools that are supporting such microcontrollers. 
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
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
** MODIFICATION DATE : Jan 20, 2014                                           **
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
 * @file SLTHA003.h
 *
 * @brief This file contains prototype declarations  of Memory functions & Timer 
 * functions.
 *
 * The memory related functions are only applicable for XMC4500 device
 *
 * Revision History
 * 12 July 2012  v1.0.2    Initial version
 * 24 Oct 2012   v1.0.4    Function macros used for different compilers.
 * 26 Nov 2012   v1.0.5    GMM dependency removed.
 * 20 Jan 2014   v1.0.6    C++ Header file support added.
 */

#ifndef SLTHA003_H_
#define SLTHA003_H_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/

#include <DAVE3.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <errno.h>

#if defined (__GNUC__) || defined (__TASKING__)
  #include <unistd.h>
  #include <malloc.h>
#endif

#ifdef __GNUC__
  #include <reent.h>
  #include <sys/times.h>
  #include <sys/time.h>
#elif __CC_ARM
  #include <rt_sys.h>
#elif __ICCARM__
 #include <yfuns.h>
#elif __TASKING__
 #include <io.h>
 #include <time.h>
#endif


/**
 * @ingroup SLTHA003_publicparam
 * @{
 */

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
#if defined __GNUC__
/**
 * This gets the processor time. This is not supported in this platform.  
 * It always returns 0 as getting processor time depends on 
 * operating system.
 */
#define SLTHA003_Clock()          clock_t _times_r \
                                 ( \
                                        struct _reent *ReentPtr, \
                                        struct tms *TmsPtr\
                                 )

/**
 * This gets the calendar time in seconds and populates the timeval structure.
 * It returns 0 on success. 
 */
#define SLTHA003_Time()         int  _gettimeofday_r \
                                ( \
                                  struct _reent *ReentPtr, \
                                  struct timeval *TimePtr, \
                                  void *TimeZone \
                                )

#elif defined (__CC_ARM) || defined ( __TASKING__)
#define SLTHA003_Clock()         clock_t clock \
                                 ( \
                                     void \
                                 )
#define SLTHA003_Time()          time_t time \
                                 ( \
                                   time_t *TimePtr \
                                 )

#elif defined __ICCARM__
#define SLTHA003_Clock()          clock_t clock \
                                  ( \
                                     void \
                                  )

#define SLTHA003_Time()          __time32_t (__time32) \
                                 ( \
                                   __time32_t *TimePtr \
                                 )
#endif

/*******************************************************************************
**                      Structures                                            **
*******************************************************************************/

/**
 * @}
 */


/**
 * @ingroup SLTHA003_apidoc
 * @{
 */

/*******************************************************************************
 ** FUNCTION PROTOTYPES                                                       **
*******************************************************************************/
#if (__TARGET_DEVICE__ == XMC45)
#if defined(__GNUC__)
#ifdef USE_SBRK
/**
 * @brief  This function Increase program data space. 
 * malloc and related functions depend on this. *
 * This API is only applicable for XMC4500 device
 * @param[in] Incr 
 * @return : caddr_t<BR>
 * <b>Reentrant: No </b><BR>
 * <b>Sync/Async: Synchronous</b>
 */
caddr_t _sbrk(int Incr);

#else
/**
 * @brief  This function can be used to request allocation of an object with at least 
 * Size bytes of storage available. If the space is available, malloc returns a
 * pointer to a newly allocated block as its result. *
 * This API is only applicable for XMC4500 device
 * @param[in] Rptr Pointer to a reentrancy structure. 
 * @param[in] Size  Chunk of memory size in bytes
 * @return :  Pointer to the newly allocated space, if successful; otherwise it
 * returns NULL<BR>
 * <b>Reentrant: No </b><BR>
 * <b>Sync/Async: Synchronous</b>
 */
void* _malloc_r( struct _reent* Rptr, size_t Size );

/**
 * @brief  This function can be used to request a block of memory sufficient to hold 
 * an array of NoOfElem elements, each of which has size ElemSize.The memory 
 * allocated by calloc comes out of the same memory pool used by malloc, 
 * but the memory block is initialized to all zero bytes. *
 * This API is only applicable for XMC4500 device
 * @param[in] Rptr Pointer to a reentrancy structure. 
 * @param[in] NoOfElem Number of elements of size ElemSize. 
 * @param[in] ElemSize  Size of each element in bytes.
 * @return :  Pointer to the newly allocated space, if successful; otherwise it
 * returns NULL<BR>
 * <b>Reentrant: No </b><BR>
 * <b>Sync/Async: Synchronous</b>
 */
void* _calloc_r( struct _reent *Rptr, size_t NoOfElem, size_t ElemSize );

/**
 * @brief This function can be used when you no longer need an object originally 
 * allocated by malloc or realloc (or the related function calloc), 
 * return it to the memory storage pool by calling free with the address of the
 * object as the argument. *
 * This API is only applicable for XMC4500 device
 * @param[in] Rptr Pointer to a reentrancy structure. 
 * @param[in] Ptr Pointer to the memory area to be freed. 
 * @return : void <BR>
 * <b>Reentrant: No </b><BR>
 * <b>Sync/Async: Synchronous</b>
 */
void _free_r( struct _reent *Rptr, void *Ptr );

/**
 * @brief This function can be used if you already have a block of storage allocated by
 * malloc, but you no longer need all the space allocated to it, you can make it
 * smaller or larger by calling realloc with both the object pointer and the new 
 * desired size as arguments. realloc guarantees that the beginning of the new,
 * object matches the contents of the original object. *
 * This API is only applicable for XMC4500 device
 * @param[in] Rptr Pointer to a reentrancy structure. 
 * @param[in] Ptr Pointer to the object area.  
 * @param[in] Size Size in bytes.
 * @return : void <BR>
 * <b>Reentrant: No </b><BR>
 * <b>Sync/Async: Synchronous</b>
 */
void* _realloc_r( struct _reent *Rptr, void *Ptr, size_t Size );
#endif
#endif
#endif



/**
 * @}
 */

#ifdef __cplusplus
}
#endif
 
#endif /* SLTHA003_H_ */


