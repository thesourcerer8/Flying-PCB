/*
 * Main.c
 *
 *  Created on: 05.10.2015
 *      Author: maan
 */


#include <DAVE3.h>			//Declarations from DAVE3 Code Generation (includes SFR declaration)
#include "BlockCommutation.h"
#include "ADC.h"
#include "DaisyChain.h"

int main(void)
{
//	status_t status;		// Declaration of return variable for DAVE3 APIs (toggle comment if required)


	DAVE_Init();			// Initialization of DAVE Apps

	InitBlockCommutation();
	InitADC();
	InitDaisyWatchDog();
	//StartMotor();

	while(1)
	{
		DaisyChain();
	}
	return 0;
}
