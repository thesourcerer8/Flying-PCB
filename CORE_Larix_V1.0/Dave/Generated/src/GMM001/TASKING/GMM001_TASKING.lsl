/* This linker script is based on the default LSL file.
 * This demonstrates the linker file requirements for the GMM001 app.
 * The GMM001 App uses three memory banks for dynamic memory allocation.
 * Three memory banks are used due to three non-contiguos RAMs in XMC45xx 
 * devices. GMM001 App needs the start address and size of these banks.
 * These values shall be provided by the linker script.
 * The following symbols shall be defined in the linker script.
 * Heap_Bank1_Start, Heap_Bank1_Size (values for Bank1)
 * Heap_Bank2_Start, Heap_Bank2_Size (values for Bank3)
 * Heap_Bank2_Start, Heap_Bank2_Size (values for Bank3)
 * 
 * In this example LSL file, the following strategy is used for 
 * allocating these three different banks
 * 1. DSRAM2 is used completely for Bank2
 * 2. PSRAM is used completely for Bank3
 * 3. DSRAM1 will be used for stack and all remaining RAM requirements.
 * The remaining free memory will be allocated for Bank1.
 * 4. A fixed size stack will be used to maximize the size of Bank1.
 * 
 * IMPORTANT: Please always check the map file to ensure all memory
 * allocations are as intended and appropriate for your application.
 * 
 */ 

#if defined(__PROC_XMC4500X1024__)
/* Change the stack size if required*/
#define __STACK_SIZE 4k
/* Use fixed stack size. If this is not done, the linker will try to
 * maximize both Bank1 and stack size, which in the end may result
 * undesired size for the stack*/
#define __STACK_FIXED

/*Include the standard LSL file for xmc45xx. 
 * In case required, you may over ride the default values used in
 * the standard LSL file.
 * For this you have to define appropriate values before including 
 * the xmc45xx.lsl file.
 * Additionally you may define your own section layouts below.
 */
#include "xmc45xx.lsl"

section_setup ::linear
{
	/*Define the three memory banks as heaps.
	 * for Bank1, the linker will allocated maximum available
	 * memory from DSRAM1. For the other 2 banks we ask the 
	 * linker to use complete DSRAM2 and PSRAM respectively.
	 * NOTE: you may adjust the minimum size fro Bank1 if  required.
	 * For the other 2 it does not matter since we specify the 
	 * size as the entire RAM*/
	heap "Heap_Bank1" (min_size = 1K, align = 4);
	heap "Heap_Bank2" (min_size = 1K, align = 4);
	heap "Heap_Bank3" (min_size = 1K, align = 4);
}
	
section_layout ::linear
{
	/*use entire DSRAM2 for Bank2.
	 * In case you want to allocate other sections in DSARM2,
	 * you may reduce the size accordingly*/
	group (run_addr = mem:XMC45xx_DSRAM2)
	{
	   heap "Heap_Bank2" (size = 32k) ; 
	}
	/*use entire PSRAM for Bank3.	 
	 * In case you want to allocate other sections in PSRAM,
	 * you may reduce the size accordingly*/
	group (run_addr = mem:XMC45xx_PSRAM1)
	{
	    heap "Heap_Bank3" (size = 64k) ; 
	}
	/*Note: For Bank1, linker will allocate maximum available
	 free memory in DSRAM1*/
	 
	/* Define and initialize symbols used in the GMM001 app for 
	 * the parameters of the memory Banks*/ 
    "Heap_Bank1_Start" = "_lc_ub_Heap_Bank1";
    "Heap_Bank1_Size" = ("_lc_ue_Heap_Bank1" - "_lc_ub_Heap_Bank1" );
    "Heap_Bank2_Start" = "_lc_ub_Heap_Bank2";
    "Heap_Bank2_Size" = ("_lc_ue_Heap_Bank2" - "_lc_ub_Heap_Bank2" );
    "Heap_Bank3_Start" = "_lc_ub_Heap_Bank3";
    "Heap_Bank3_Size" = ("_lc_ue_Heap_Bank3" - "_lc_ub_Heap_Bank3" );
}



#else
#include <device.lsl>
#endif
