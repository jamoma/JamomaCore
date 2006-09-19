/*
  main.cpp --  A very simple Max external object.  
  Controls the Phidget InterfaceKit 8x8x8 from Windows
*/

#include "../../Phidget20.h"
#include "windows.h"
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
	unsigned long taskID;
	HANDLE m_ThreadHandle;
} t_InterfaceKit; 
 
// Prototypes for methods: need a method for each incoming message 
void *InterfaceKit_new(long serial);    // object creation method 
void InterfaceKit_version(t_InterfaceKit *InterfaceKit);
void InterfaceKit_serial(t_InterfaceKit *InterfaceKit);
void InterfaceKit_status(t_InterfaceKit *InterfaceKit);
void InterfaceKit_reconnect(t_InterfaceKit *InterfaceKit);
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
int __stdcall SensorChangeHandler(CPhidgetInterfaceKitHandle ifkit, void *userptr, int Index, int Value);
int __stdcall InputChangeHandler(CPhidgetInterfaceKitHandle ifkit, void *userptr, int Index, int Value);
DWORD WINAPI threadRead(LPVOID InterfaceKit);
 
__declspec(dllexport) int main(void) 
{  
	// set up our class: create a class definition	
	setup((t_messlist**) &this_class, (method)InterfaceKit_new, (method)InterfaceKit_free, (short)sizeof(t_InterfaceKit), 0L, A_DEFLONG, 0); 
	addmess((method)InterfaceKit_version, "getVersion", 0);
	addmess((method)InterfaceKit_serial, "getSerial", 0);
	addmess((method)InterfaceKit_status, "getStatus", 0);
	addmess((method)InterfaceKit_reconnect, "reconnect", 0);
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
	long stat;
	CPhidget_getDeviceStatus((InterfaceKit->phid), &stat);
	if(stat) {
		CPhidget_close((InterfaceKit->phid));
	}
	if(InterfaceKit->taskID)
		TerminateThread(InterfaceKit->m_ThreadHandle, 0);
	InterfaceKit->taskID=0;
	CPhidget_delete(InterfaceKit->phid);
	freeobject((t_object *)InterfaceKit->m_clock);
	return(NULL);
}

void InterfaceKit_version(t_InterfaceKit *InterfaceKit) 
{  
	long ver;
	CPhidget_getDeviceVersion((InterfaceKit->phid), &ver);
	outlet_int(InterfaceKit->b_outlet, ver);
} 

void InterfaceKit_serial(t_InterfaceKit *InterfaceKit) 
{  
	long ser;
	CPhidget_getSerialNumber((InterfaceKit->phid), &ser);
	outlet_int(InterfaceKit->b_outlet, ser);
} 

void InterfaceKit_status(t_InterfaceKit *InterfaceKit) 
{  
	long stat;
	CPhidget_getDeviceStatus((InterfaceKit->phid), &stat);
	outlet_int(InterfaceKit->b_outlet, stat);
}

void InterfaceKit_set(t_InterfaceKit *InterfaceKit, t_symbol *s, short argc, t_atom *argv)
{
	short i;
	for(i=0;i<argc&&i<InterfaceKit->numOutputs;i++) {
		CPhidgetInterfaceKit_setOutputState(InterfaceKit->phid, i, argv[i].a_w.w_long);
	}
}

void InterfaceKit_reconnect(t_InterfaceKit *InterfaceKit) 
{
	InterfaceKit_free(InterfaceKit);
	openInterfaceKit(InterfaceKit, (InterfaceKit->serial));
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

void openInterfaceKit(t_InterfaceKit *InterfaceKit, long serial) {
	int i;
	//setup timing
	InterfaceKit->sample_rate = 100; //set default sample rate to 100ms
	InterfaceKit->m_clock = clock_new(InterfaceKit, (method)clock_tick);
	InterfaceKit->start = false;

	CPhidgetInterfaceKit_create(&(InterfaceKit->phid));
	if(!CPhidget_open((InterfaceKit->phid), serial)) {
		CPhidgetInterfaceKit_getNumOutputs(InterfaceKit->phid, &(InterfaceKit->numOutputs));
		CPhidgetInterfaceKit_getNumInputs(InterfaceKit->phid, &(InterfaceKit->numInputs));
		CPhidgetInterfaceKit_getNumSensors(InterfaceKit->phid, &(InterfaceKit->numSensors));
		for(i=0;i<(InterfaceKit->numSensors);i++)
			CPhidgetInterfaceKit_setSensorChangeTrigger(InterfaceKit->phid,i,1);
		CPhidgetInterfaceKit_set_OnInputChange_Handler((InterfaceKit->phid),&InputChangeHandler,InterfaceKit);
		CPhidgetInterfaceKit_set_OnSensorChange_Handler((InterfaceKit->phid),&SensorChangeHandler,InterfaceKit);
		InterfaceKit->m_ThreadHandle = CreateThread(NULL, 0, threadRead,(void *)InterfaceKit, 0, &(InterfaceKit->taskID));
	}
}


int __stdcall SensorChangeHandler(CPhidgetInterfaceKitHandle ifkit, void *userptr, int Index, int Value){
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

int __stdcall InputChangeHandler(CPhidgetInterfaceKitHandle ifkit, void *userptr, int Index, int Value){
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

DWORD WINAPI threadRead(LPVOID InterfaceKit)
{
	while(1) {
		if(CPhidgetInterfaceKit_read(((t_InterfaceKit *)InterfaceKit)->phid)) break;
		CPhidgetInterfaceKit_read(((t_InterfaceKit *)InterfaceKit)->phid);
	}
	((t_InterfaceKit *)InterfaceKit)->taskID=0;
	return 0;
} 
