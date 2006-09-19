/*
  main.cpp --  A very simple Max external object.  
  Controls the Phidget InterfaceKit 8x8x8 from a Mac
  
  This shows very simply how to write MAX externals for Phidgets, in Xcode.
  For general info on setting up the build settings properly in xcode see "machodev-readme.txt"
  in the "Mach-O Development" folder of the MAX/MSP SDK, or you can just start with this project.
  
  This requires the Phidget21 framework to be installed and included (available from www.phidgets.com).
*/

#include <Phidget21/Phidget21.h>
#include "ext.h"   // Required for all Max external objects 
 
void *this_class;  // Required. Global pointing to this class  
 
typedef struct _InterfaceKit // Data structure for this object  
{ 
	t_object b_ob;   // Must always be the first field; used by Max  
	CPhidgetInterfaceKitHandle phid;
	void *m_clock;
	long serial;
	long sample_rate;
	bool start;
	int numInputs, numOutputs, numSensors;
	void *b_outlet;
} t_InterfaceKit; 
 
// Prototypes for methods: need a method for each incoming message 
void *InterfaceKit_new(long serial);    // object creation method 
void InterfaceKit_version(t_InterfaceKit *InterfaceKit);
void InterfaceKit_serial(t_InterfaceKit *InterfaceKit);
void InterfaceKit_status(t_InterfaceKit *InterfaceKit);
void InterfaceKit_set(t_InterfaceKit *InterfaceKit, t_symbol *s, short argc, t_atom *argv);
void *InterfaceKit_free(t_InterfaceKit *InterfaceKit);
void InterfaceKit_read(t_InterfaceKit *InterfaceKit);
void InterfaceKit_stop(t_InterfaceKit *InterfaceKit);
void InterfaceKit_start(t_InterfaceKit *InterfaceKit);
void InterfaceKit_setSampleRate(t_InterfaceKit *InterfaceKit, long rate);
void clock_tick(t_InterfaceKit *InterfaceKit);
void openInterfaceKit(t_InterfaceKit *InterfaceKit, long serial);
void outputSensors(t_InterfaceKit *InterfaceKit);
void outputInputs(t_InterfaceKit *InterfaceKit);
int SensorChangeHandler(CPhidgetInterfaceKitHandle ifkit, void *userptr, int Index, int Value);
int InputChangeHandler(CPhidgetInterfaceKitHandle ifkit, void *userptr, int Index, int Value);
OSStatus threadRead(void* InterfaceKit);
 
int main(void) 
{  
	// set up our class: create a class definition	
	setup((t_messlist**) &this_class, (method)InterfaceKit_new, (method)InterfaceKit_free, (short)sizeof(t_InterfaceKit), 0L, A_DEFLONG, 0); 
	addmess((method)InterfaceKit_version, "getVersion", 0);
	addmess((method)InterfaceKit_serial, "getSerial", 0);
	addmess((method)InterfaceKit_status, "getStatus", 0);
	addmess((method)InterfaceKit_read, "read", 0);
	addmess((method)InterfaceKit_start, "start", 0);
	addmess((method)InterfaceKit_stop, "stop", 0);
	addmess((method)InterfaceKit_setSampleRate, "setSampleRate", A_LONG, 0);
	addmess((method)InterfaceKit_set, "setoutput", A_GIMME,  0);
	return (0); 
} 
 
void *InterfaceKit_new(long serial) 
{ 
	t_InterfaceKit *InterfaceKit; 
	if(!serial)
		serial=-1;
	// create the new instance and return a pointer to it 
	InterfaceKit = (t_InterfaceKit *)newobject(this_class);
	openInterfaceKit(InterfaceKit, serial);
	InterfaceKit->serial = serial;
	InterfaceKit->b_outlet = outlet_new(InterfaceKit,0L);
	return(InterfaceKit);      // must return a pointer to the new instance  
} 

void *InterfaceKit_free(t_InterfaceKit *InterfaceKit) {
	CPhidget_close((CPhidgetHandle)(InterfaceKit->phid));
	CPhidget_delete((CPhidgetHandle)InterfaceKit->phid);
	freeobject((t_object *)InterfaceKit->m_clock);
}

void InterfaceKit_version(t_InterfaceKit *InterfaceKit) 
{  
	long ver;
	CPhidget_getDeviceVersion((CPhidgetHandle)(InterfaceKit->phid), &ver);
	outlet_int(InterfaceKit->b_outlet, ver);
} 

void InterfaceKit_serial(t_InterfaceKit *InterfaceKit) 
{  
	long ser;
	CPhidget_getSerialNumber((CPhidgetHandle)(InterfaceKit->phid), &ser);
	outlet_int(InterfaceKit->b_outlet, ser);
} 

void InterfaceKit_status(t_InterfaceKit *InterfaceKit) 
{  
	long stat;
	CPhidget_getDeviceStatus((CPhidgetHandle)(InterfaceKit->phid), &stat);
	outlet_int(InterfaceKit->b_outlet, stat);
} 

void InterfaceKit_set(t_InterfaceKit *InterfaceKit, t_symbol *s, short argc, t_atom *argv)
{
	short i;
	for(i=0;i<argc&&i<InterfaceKit->numOutputs;i++) {
		CPhidgetInterfaceKit_setOutputState(InterfaceKit->phid, i, argv[i].a_w.w_long);
	}
}

void InterfaceKit_read(t_InterfaceKit *InterfaceKit) 
{  
	clock_unset(InterfaceKit->m_clock);
	InterfaceKit->start = false;
	outputSensors(InterfaceKit);
	outputInputs(InterfaceKit);
}

void InterfaceKit_start(t_InterfaceKit *InterfaceKit) 
{  	
	if(!(InterfaceKit->sample_rate<0))
		clock_delay(InterfaceKit->m_clock, InterfaceKit->sample_rate);
	InterfaceKit->start = true;
}


void InterfaceKit_stop(t_InterfaceKit *InterfaceKit) 
{  
	if(!(InterfaceKit->sample_rate<0))
		clock_unset(InterfaceKit->m_clock);
	InterfaceKit->start = false;
}

void InterfaceKit_setSampleRate(t_InterfaceKit *InterfaceKit, long rate) 
{  
	if(rate<0)
		clock_unset(InterfaceKit->m_clock);
	else
		if(InterfaceKit->start == true && InterfaceKit->sample_rate < 0)
			clock_delay(InterfaceKit->m_clock, InterfaceKit->sample_rate);
	InterfaceKit->sample_rate = rate;
}

void clock_tick(t_InterfaceKit *InterfaceKit) {
	
	clock_delay(InterfaceKit->m_clock, InterfaceKit->sample_rate);
	outputSensors(InterfaceKit);
	outputInputs(InterfaceKit);
}

int gotAttach(CPhidgetHandle phid, void *userptr) {
	int i, num;
	t_InterfaceKit *InterfaceKit = (t_InterfaceKit *)userptr;
	CPhidgetInterfaceKit_getNumOutputs(InterfaceKit->phid, &(InterfaceKit->numOutputs));
	CPhidgetInterfaceKit_getNumInputs(InterfaceKit->phid, &(InterfaceKit->numInputs));
	CPhidgetInterfaceKit_getNumSensors(InterfaceKit->phid, &(InterfaceKit->numSensors));
	for(i=0;i<(InterfaceKit->numSensors);i++)
		CPhidgetInterfaceKit_setSensorChangeTrigger(InterfaceKit->phid,i,1);
}

void openInterfaceKit(t_InterfaceKit *InterfaceKit, long serial) {
	int i;
	//setup timing
	InterfaceKit->sample_rate = 100; //set default sample rate to 100ms
	InterfaceKit->m_clock = clock_new(InterfaceKit, (method)clock_tick);
	InterfaceKit->start = false;

	CPhidgetInterfaceKit_create(&(InterfaceKit->phid));
	CPhidgetInterfaceKit_set_OnInputChange_Handler((InterfaceKit->phid),InputChangeHandler,InterfaceKit);
	CPhidgetInterfaceKit_set_OnSensorChange_Handler((InterfaceKit->phid),SensorChangeHandler,InterfaceKit);
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)(InterfaceKit->phid), gotAttach, InterfaceKit);
	CPhidget_open((CPhidgetHandle)(InterfaceKit->phid), serial);
}


int SensorChangeHandler(CPhidgetInterfaceKitHandle ifkit, void *userptr, int Index, int Value){
	t_InterfaceKit *InterfaceKit = (t_InterfaceKit *)userptr;
	if(InterfaceKit->sample_rate<0 && InterfaceKit->start)
		outputSensors(InterfaceKit);
	return 0;
}

void outputSensors(t_InterfaceKit *InterfaceKit) {
	t_atom analog[16];
	short i;
	int ai[16];

	for (i=0; i < InterfaceKit->numSensors; i++) { 
		CPhidgetInterfaceKit_getSensorValue(InterfaceKit->phid, i, &ai[i]);
		SETLONG(analog+i,ai[i]); /* macro for setting a t_atom */ 
	}
	
	outlet_anything(InterfaceKit->b_outlet, gensym("ai"), InterfaceKit->numSensors, analog);
}

int InputChangeHandler(CPhidgetInterfaceKitHandle ifkit, void *userptr, int Index, int Value){
	t_InterfaceKit *InterfaceKit = (t_InterfaceKit *)userptr;
	if(InterfaceKit->sample_rate<0 && InterfaceKit->start)
		outputInputs(InterfaceKit);
	return 0;
}

void outputInputs(t_InterfaceKit *InterfaceKit) {
	t_atom digital[16];
	short i;
	int di[16];

	for (i=0; i < InterfaceKit->numInputs; i++) { 
		CPhidgetInterfaceKit_getInputState(InterfaceKit->phid, i, &di[i]);
		SETLONG(digital+i,di[i]); /* macro for setting a t_atom */ 
	} 
	
	outlet_anything(InterfaceKit->b_outlet, gensym("di"), InterfaceKit->numInputs, digital);
}

