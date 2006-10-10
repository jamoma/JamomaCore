/*
  main.cpp --  A very simple Max external object.  
  Controls the PhidgetLED from a Mac
  
  This shows very simply how to write MAX externals for Phidgets, in Xcode.
  For general info on setting up the build settings properly in xcode see "machodev-readme.txt"
  in the "Mach-O Development" folder of the MAX/MSP SDK, or you can just start with this project.
  
  This requires the Phidget21 framework to be installed and included (available from www.phidgets.com).
*/

#include <Phidget21/Phidget21.h>
#include "ext.h"   // Required for all Max external objects 
 
void *this_class;  // Required. Global pointing to this class  
 
typedef struct _LED // Data structure for this object  
{ 
	t_object b_ob;   // Must always be the first field; used by Max  
	CPhidgetLEDHandle phid;
	long serial;
	int numLEDs;
	void *b_outlet;
} t_LED; 
 
// Prototypes for methods: need a method for each incoming message 
void *LED_new(long serial);    // object creation method 
void LED_version(t_LED *LED);
void LED_serial(t_LED *LED);
void LED_status(t_LED *LED);
void LED_read(t_LED *LED);
void LED_readOne(t_LED *LED, long led);
void LED_set(t_LED *LED, t_symbol *s, short argc, t_atom *argv);
void LED_setOne(t_LED *LED, long led, long n);
void *LED_free(t_LED *LED);

int main(void) 
{  
	// set up our class: create a class definition	
	setup((t_messlist**) &this_class, (method)LED_new, (method)LED_free, (short)sizeof(t_LED), 0L, A_DEFLONG, 0); 
	addmess((method)LED_version, "getVersion", 0);
	addmess((method)LED_serial, "getSerial", 0);
	addmess((method)LED_status, "getStatus", 0);
	addmess((method)LED_read, "getLEDs", 0);
	addmess((method)LED_set, "setLEDs", A_GIMME,  0);
	addmess((method)LED_readOne, "getLED", A_LONG, 0);
	addmess((method)LED_setOne, "setLED", A_LONG, A_LONG, 0);
	return (0); 
} 

int gotAttach(CPhidgetHandle phid, void *userptr) {
	t_LED *LED = (t_LED *)userptr;
	CPhidgetLED_getNumLEDs(LED->phid, &(LED->numLEDs));
}
 
void *LED_new(long serial) 
{ 
	t_LED *LED; 
	if(!serial)
		serial=-1;
	// create the new instance and return a pointer to it 
	LED = (t_LED *)newobject(this_class);
	CPhidgetLED_create(&(LED->phid));
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)(LED->phid), gotAttach, LED);
	CPhidget_open((CPhidgetHandle)(LED->phid), serial);
	LED->serial = serial;
	LED->b_outlet = outlet_new(LED,0L);
	return(LED);      // must return a pointer to the new instance  
} 

void *LED_free(t_LED *LED) {
	CPhidget_close((CPhidgetHandle)(LED->phid));
	CPhidget_delete((CPhidgetHandle)LED->phid);
}

void LED_version(t_LED *LED) 
{  
	long ver;
	CPhidget_getDeviceVersion((CPhidgetHandle)(LED->phid), &ver);
	outlet_int(LED->b_outlet, ver);
} 

void LED_serial(t_LED *LED) 
{  
	long ser;
	CPhidget_getSerialNumber((CPhidgetHandle)(LED->phid), &ser);
	outlet_int(LED->b_outlet, ser);
} 

void LED_status(t_LED *LED) 
{  
	long stat;
	CPhidget_getDeviceStatus((CPhidgetHandle)(LED->phid), &stat);
	outlet_int(LED->b_outlet, stat);
} 

void LED_read(t_LED *LED) 
{  
	t_atom ledlist[LED->numLEDs];
	short i;
	int led[LED->numLEDs];
	
	for (i=0; i < LED->numLEDs; i++) { 
		CPhidgetLED_getDiscreteLED(LED->phid, i, &led[i]);
		SETLONG(ledlist+i,led[i]); /* macro for setting a t_atom */ 
	}
	
	outlet_anything(LED->b_outlet, gensym("led"), LED->numLEDs, ledlist);
}

void LED_readOne(t_LED *LED, long led)
{
	int val;
	CPhidgetLED_getDiscreteLED(LED->phid, led, &val);
	outlet_int(LED->b_outlet, val);
}

void LED_set(t_LED *LED, t_symbol *s, short argc, t_atom *argv)
{
	short i;
	for(i=0;i<argc&&i<LED->numLEDs;i++) {
		CPhidgetLED_setDiscreteLED(LED->phid, i, argv[i].a_w.w_long);
	}
}

void LED_setOne(t_LED *LED, long led, long n)
{
	CPhidgetLED_setDiscreteLED(LED->phid, led, n);
}
