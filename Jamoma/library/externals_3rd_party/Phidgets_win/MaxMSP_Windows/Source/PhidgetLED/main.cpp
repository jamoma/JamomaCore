/*
  main.cpp --  A very simple Max external object.  
  Controls the PhidgetLED from Windows
*/

#include "../../phidget20.h"
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
void LED_reconnect(t_LED *LED);
void LED_set(t_LED *LED, t_symbol *s, short argc, t_atom *argv);
void LED_setOne(t_LED *LED, long led, long n);
void *LED_free(t_LED *LED);

__declspec(dllexport) int main(void) 
{  
	// set up our class: create a class definition	
	setup((t_messlist**) &this_class, (method)LED_new, (method)LED_free, (short)sizeof(t_LED), 0L, A_DEFLONG, 0); 
	addmess((method)LED_version, "getVersion", 0);
	addmess((method)LED_serial, "getSerial", 0);
	addmess((method)LED_status, "getStatus", 0);
	addmess((method)LED_reconnect, "reconnect", 0);
	addmess((method)LED_read, "getLEDs", 0);
	addmess((method)LED_set, "setLEDs", A_GIMME,  0);
	addmess((method)LED_readOne, "getLED", A_LONG, 0);
	addmess((method)LED_setOne, "setLED", A_LONG, A_LONG, 0);
	return (0); 
} 
 
void *LED_new(long serial) 
{ 
	t_LED *LED; 
	if(!serial)
		serial=-1;
	// create the new instance and return a pointer to it 
	LED = (t_LED *)newobject(this_class);
	CPhidgetLED_create(&(LED->phid));
	CPhidget_open((LED->phid), serial);
	LED->serial = serial;
	LED->b_outlet = outlet_new(LED,0L);
	CPhidgetLED_getNumLEDs(LED->phid, &(LED->numLEDs));
	return(LED);      // must return a pointer to the new instance  
} 

void *LED_free(t_LED *LED) {
	long stat;
	CPhidget_getDeviceStatus((LED->phid), &stat);
	if(stat) {
		CPhidget_close((LED->phid));
	}
	CPhidget_delete(LED->phid);
	return(NULL);
}

void LED_version(t_LED *LED) 
{  
	long ver;
	CPhidget_getDeviceVersion((LED->phid), &ver);
	outlet_int(LED->b_outlet, ver);
} 

void LED_serial(t_LED *LED) 
{  
	long ser;
	CPhidget_getSerialNumber((LED->phid), &ser);
	outlet_int(LED->b_outlet, ser);
} 

void LED_status(t_LED *LED) 
{  
	long stat;
	CPhidget_getDeviceStatus((LED->phid), &stat);
	outlet_int(LED->b_outlet, stat);
} 

void LED_read(t_LED *LED) 
{  
	t_atom *ledlist = (t_atom *)malloc(LED->numLEDs*sizeof(t_atom));
	short i;
	int *led = (int *)malloc(LED->numLEDs*sizeof(int));
	
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

void LED_reconnect(t_LED *LED) 
{
	LED_free(LED);
	CPhidgetLED_create(&(LED->phid));
	CPhidget_open((LED->phid), (LED->serial));
	CPhidgetLED_getNumLEDs(LED->phid, &(LED->numLEDs));
}
