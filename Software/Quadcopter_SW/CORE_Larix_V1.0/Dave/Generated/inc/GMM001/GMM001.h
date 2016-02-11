/*******************************************************************************
 *
 * Copyright (C) 2014 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use
 * with Infineon’s microcontrollers.
 * This file can be freely distributed within development tools that are
 * supporting such microcontrollers.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC4000 Series                           			  **
**                                                                            **
** AUTHOR : App Developer                                           		  **
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
** Initials   Name                                                            **
** ---------------------------------------------------------------------------**
** kks        App Developer                                                   **
*******************************************************************************/

/**
 * @file GMM001.h
 *
 * @brief This file contains function prototypes for GMM001 app.
 *
 */


#ifndef GMM001_H_
#define GMM001_H_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include <DAVE3.h>

/**
  * @ingroup GMM001_publicparam
  * @{
  */
/*******************************************************************************
 *                                ENUMERATIONS                                **
 ******************************************************************************/
/**
 * This enumerates GMM001 Errors.
 */
typedef enum GMM001_ErrorType{
/**
   * LMM001 Handle initialization failed because of inadequate memory.
   */
  /*
  GROUPID  #
  MODULENAME = GMM001 App
  */
  /*
  ERRCODESTRING = GMM001_INIT_FAIL
  STRCODESTRING = Inadequate Memory.
  */
  GMM001_INIT_FAIL = 1,
   /*
   * Debug log codes starts here
   */
  /**
    * DebugLog Message Id for Function Entry
    */
  /*
  ERRCODESTRING = GMM001_FUNCTION_ENTRY
  STRCODESTRING = Function Entered %s
  */
  GMM001_FUNCTION_ENTRY,
  /**
    * DebugLog Message Id for Function Exit
    */
  /*
  ERRCODESTRING = GMM001_FUNCTION_EXIT
  STRCODESTRING = Function Exited %s
  */
  GMM001_FUNCTION_EXIT,
  /*
  ERRORCODEEND
  */  
}GMM001_ErrorType;

/**
 * @}
 */

/**
 * @ingroup GMM001_apidoc
 * @{
 */
/*******************************************************************************
 *                                PUBLIC FUNCTION DECLARATIONS                **
 ******************************************************************************/
/**
 * @brief This API initializes GMM001 App.It configures LMM001 handles for
 * both or single RAM as per heap requirement.\n
 * If heap size fits into one of the RAMs , it only initializes that RAM.\n
 * If heap size <= RAM1 + RAM2 , it initializes both the RAMs.\n
 * If heap size > RAM1 + RAM2, initialization will fail.
 * @return void
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   GMM001_Init();
 *   return 0;
 * }
 * @endcode<BR> </p>
 */
void GMM001_Init (void);

/**
 * @brief The function allocates memory of 'size' number of bytes.\n
 * The content of the newly allocated block of memory is not initialized, remaining with indeterminate values.\n
 * The type of the memory pointer returned is always void*, which can be cast to the desired type of data pointer.\n
 * @param[in]   size  size in number of bytes
 * @return void* Pointer to the allocated memory if allocation is successful\n
 *         NULL  if allocation fails
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I>Assumptions:</I>
 * <p>1. Heap size = 0x5000
 * <p>2. RAM1 = 0x6000</p>
 * <p>3. RAM2 = 0x8000</p>
 * <p>4. RAM3 = 0x10000</p>
 * @code
 * #include <DAVE3.h>
 *
 * extern uint8_t Heap_Bank1_Start[];
 * extern uint16_t LENGTH1;
 *
 * int main(void)
 * {
 *   void * MemPtr = NULL;
 *   uint16_t size = 1024;
 *   DAVE_Init();
 *   MemPtr = GMM001_malloc(size);
 *   if (((uint32_t)MemPtr >= (uint32_t)Heap_Bank1_Start) &&
 *       ((uint32_t)MemPtr <= ((uint32_t)Heap_Bank1_Start + LENGTH1))
 *	   && (MemPtr != NULL))
 *   {
 *     GMM001_free(MemPtr);
 *   }
 *  return 0;
 * }
 * @endcode<BR> </p>
*/

void * GMM001_malloc (uint32_t size);

/**
 * @brief  This function changes the size of a block of memory that was previously allocated with malloc().\n
 * The function either expands or reduces the amount of memory available in the block depending on the requirement.\n
 * It may move the memory block to a new location if request cannot be satisfied within the block, in which case the new location is returned.\n
 * In case that MemPtr is NULL, the function behaves exactly as malloc.\n
 * In case that the size is 0, the function behaves exactly as free.
 * @param[in]   size  new size in number of bytes
 * @param[in]   MemPtr  Pointer to the original block of memory.
 * @return void* Pointer to the reallocated memory if reallocation is successful\n
 *         NULL  if reallocation fails
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I>Assumptions:</I>
 * <p>1. Heap size = 0x5000</p>
 * <p>2. RAM1 = 0x6000</p>
 * <p>3. RAM2 = 0x8000</p>
 * <p>4. RAM3 = 0x10000</p>
 * @code
 * #include <DAVE3.h>
 * extern uint8_t Heap_Bank1_Start[];
 * extern uint16_t LENGTH1;
 *
 * int main(void)
 * {
 *   void * MemPtr = NULL;
 *   void * MemPtr1 = NULL;
 *   uint16_t size = 1024;
 *   uint16_t size1 = 2048;
 *
 *   DAVE_Init();
 *
 *   MemPtr = GMM001_malloc(size);
 *
 *   if (((uint32_t)MemPtr >= (uint32_t)Heap_Bank1_Start) &&
 *       ((uint32_t)MemPtr <= ((uint32_t)Heap_Bank1_Start + LENGTH1))
 *	   && (MemPtr != NULL))
 *   {
 *     MemPtr1 = GMM001_realloc(size1, MemPtr);
 *
 *     if (((uint32_t)MemPtr1 >= (uint32_t)Heap_Bank1_Start) &&
 *         ((uint32_t)MemPtr1 <= ((uint32_t)Heap_Bank1_Start + LENGTH1))
 *       && (MemPtr1 != NULL))
 *     {
 *       GMM001_free(MemPtr1);
 *     }
 *   }
 *   return 0;
 * }
 * @endcode<BR> </p>
 */
void * GMM001_realloc (uint32_t size, void * MemPtr);

/**
 * @brief The function deallocates the memory pointed by Memptr,making it available again for further allocations.\n
 * The function leaves the value of MemPtr unchanged, hence it still points to the same (now invalid) location,
 * and not to the null pointer.\n If a null pointer is passed as argument, no action occurs.
 * @param[in]   MemPtr  Memory pointer
 * @return void
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I>Assumptions:</I>
 * <p>1. Heap size = 0x5000
 * <p>2. RAM1 = 0x6000</p>
 * <p>3. RAM2 = 0x8000</p>
 * <p>4. RAM3 = 0x10000</p>
 * @code
 * #include <DAVE3.h>
 * extern uint8_t Heap_Bank1_Start[];
 * extern uint16_t LENGTH1;
 *
 * int main(void)
 * {
 *   void * MemPtr = NULL;
 *   uint16_t size = 1024;
 *
 *   DAVE_Init();
 *
 *   MemPtr = GMM001_malloc(size);
 *   if (((uint32_t)MemPtr >= (uint32_t)Heap_Bank1_Start) && ((uint32_t)MemPtr <= ((uint32_t)Heap_Bank1_Start + LENGTH1))
 *	   && (MemPtr != NULL))
 *   {
 *
 *     GMM001_free(MemPtr);
 *   }
 *   return 0;
 * }
 * @endcode<BR> </p>
 *
 */
void GMM001_free(void * MemPtr);
/**
 * @}
 */
 
#ifdef __cplusplus
}
#endif

#endif /* GMM001_H_ */

