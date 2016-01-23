//----------------------------------------------------------------------------------
// Project: Blink C28x Using BIOS (STARTER)
//
// Author: Eric Wilbur, www.MindshareAdvantage.com
//
// Date: Nov 2015
//
// Note: The following files are NOT needed when using BIOS:
//		 F2806x_PieCtrl.c, F2806x_PieVect.c, F2806x_DefaultIsr.c
//
//       BIOS takes care of all vector and ISR management
//       Read the EWareReadme.txt file for more details on this.
//
// Follow these steps to create this project in CCSv6.0:
// 1. Project -> New CCS Project
// 2. Select Template:
//    - TI-RTOS for C2000 -> Kernel Examples -> TI Target Ex -> Minimal ->
//    - this template does NOT contain ControlSuite or UIA/RTOS Analyzer support
// 3. Add UIA from available products
// 4. Add EWare_F28069_BIOS to project (subset of all C files)
// 5. Add F2806x_Headers_BIOS.cmd
// 6. Add main.c from TI-RTOS Workshop Solution file for this lab
// 7. Edit as needed (to add/subtract) BIOS services, delete given Task
// 8. Add include search paths (two of them from _headers and _common)
// 9. Build, load, run...
//------------------------------------------------------------------------------------


//----------------------------------------
// BIOS header files
//----------------------------------------
#include <xdc/std.h>  						//mandatory - have to include first, for BIOS types
#include <ti/sysbios/BIOS.h> 				//mandatory - if you call APIs like BIOS_start()
#include <xdc/runtime/Log.h>				//for Log_info() calls when UIA is added
#include <xdc/cfg/global.h> 				//header file for statically defined objects/handles


//-----------------------------------------
// ControlSuite Header Files
//-----------------------------------------
#include "DSP28x_Project.h"


//-----------------------------------------
// Prototypes
//-----------------------------------------
void hardware_init(void);
void software_init(void);
void ledToggle(void);
void delay(void);
void buttonPress(void);
void ledClockToggle(void);


//-----------------------------------------
// Globals
//-----------------------------------------
volatile int16_t i16ToggleCount = 0;

extern Uint16 RamfuncsLoadStart;
extern Uint16 RamfuncsLoadEnd;
extern Uint16 RamfuncsRunStart;
extern Uint16 RamfuncsLoadSize;

char ledState;

//---------------------------------------------------------------------------
// main()
//---------------------------------------------------------------------------
void main(void)
{

   hardware_init();							// init hardware via Xware
   software_init();
   BIOS_start();
}


//-----------------------------------------------------------------------------
// hardware_init()
//-----------------------------------------------------------------------------
void hardware_init(void)					//called by main
{

// Init PLL, watchdog, periph clocks - see F2806x_SysCtrl.c file
// Clock frequency set to 90 MHz - see F2806x_Examples.h
	InitSysCtrl();

// Copy InitFlash fxn to RAM and run it - sets flash wait states for 90MHz
	memcpy(&RamfuncsRunStart,&RamfuncsLoadStart,(unsigned long)&RamfuncsLoadSize);
	InitFlash();
	
// Configure GPIO34 (LD2 LED2 of Control Stick) as a GPIO output pin
	EALLOW;
	GpioCtrlRegs.GPBMUX1.bit.GPIO34 = 0;
	GpioCtrlRegs.GPBDIR.bit.GPIO34 = 1;

	GpioCtrlRegs.GPBMUX1.bit.GPIO41 = 0;
	GpioCtrlRegs.GPBDIR.bit.GPIO41 = 1;

	GpioCtrlRegs.GPAMUX1.bit.GPIO9 = 0;
	GpioCtrlRegs.GPADIR.bit.GPIO9 = 1;

	GpioCtrlRegs.GPAMUX1.bit.GPIO11 = 0;
	GpioCtrlRegs.GPADIR.bit.GPIO11 = 1;
	EDIS;

// Configure XINT1 source to be GPIO-17 (PB1)
	EALLOW;
	GpioCtrlRegs.GPAMUX2.bit.GPIO17 	= 0;		// use GPIO17 as GPIO
	GpioCtrlRegs.GPADIR.bit.GPIO17		= 0;		// GPIO17 is input

	GpioIntRegs.GPIOXINT1SEL.bit.GPIOSEL = 17;		// XINT1 source is GPIO17
	XIntruptRegs.XINT1CR.bit.POLARITY 	= 3;		// generate interrupt on rising and falling edges
	XIntruptRegs.XINT1CR.bit.ENABLE 	= 1;		// enable XINT1
	EDIS;

}

void software_init(void)
{
	ledState = 0;
}

void ledClockToggle(void){
	Semaphore_post(ledSemaphore);
}

//---------------------------------------------------------------------------
// ledToggle()
//
// Toggle LED via GPIO pin (LD2 on 28069 Control Stick)
//---------------------------------------------------------------------------
void ledToggle(void)
{
	while(1){
		Semaphore_pend(ledSemaphore, BIOS_WAIT_FOREVER);

		/* LED1 = GPIO9
		 * LED2 = GPIO11
		 * LED3 = GPIO34
		 */
		switch(ledState){
		case 0:
			// do stuff
			GpioDataRegs.GPADAT.bit.GPIO9 	= 1;
			GpioDataRegs.GPBDAT.bit.GPIO41 	= 0;

			ledState = 1;
			break;
		case 1:
			GpioDataRegs.GPADAT.bit.GPIO9 	= 0;
			GpioDataRegs.GPADAT.bit.GPIO11 	= 1;

			ledState = 2;
			break;
		case 2:
			// do stuff
			GpioDataRegs.GPADAT.bit.GPIO11 	= 0;
			GpioDataRegs.GPBDAT.bit.GPIO34 	= 1;
			ledState = 3;
			break;
		case 3:
			// do stuff
			GpioDataRegs.GPBDAT.bit.GPIO34 	= 0;
			GpioDataRegs.GPBDAT.bit.GPIO41 	= 1;
			ledState = 0;
			break;
		}
	}
}

void buttonPress(void){
	char state;

	state 	= GpioDataRegs.GPADAT.bit.GPIO17;

	if( state == 1 ){
		// Button is held down
		Task_setPri(ledTask, -1);				// disable LED toggle task

		GpioDataRegs.GPADAT.bit.GPIO9 	= 1;
		GpioDataRegs.GPADAT.bit.GPIO11 	= 1;
		GpioDataRegs.GPBDAT.bit.GPIO34 	= 1;
	} else if( state == 0 ){
		// Button is released
		Task_setPri(ledTask, 1);				// Re-enable LED toggle task
	}

}

