/*
  main.cpp --  A very simple Max external object.  
  Controls the Phidget Accelerometer from a Mac
  
  This shows very simply how to write MAX externals for Phidgets, in Xcode.
  For general info on setting up the build settings properly in xcode see "machodev-readme.txt"
  in the "Mach-O Development" folder of the MAX/MSP SDK, or you can just start with this project.
  
  This requires the Phidget21 framework to be installed and included (available from www.phidgets.com).
*/


#include <Phidget21/Phidget21.h>
#include "ext.h"   // Required for all Max external objects 
 
void *this_class;  // Required. Global pointing to this class  
 
typedef struct _Accelerometer // Data structure for this object  
{ 
	t_object b_ob;   // Must always be the first field; used by Max  
	CPhidgetAccelerometerHandle phid;
	void *m_clock;
	long serial;
	long sample_rate;
	bool start;
	void *b_outlet;
} t_Accelerometer; 
 
// Prototypes for methods: need a method for each incoming message 
void *Accelerometer_new(long serial);    // object creation method 
void Accelerometer_version(t_Accelerometer *Accelerometer);
void Accelerometer_serial(t_Accelerometer *Accelerometer);
void Accelerometer_status(t_Accelerometer *Accelerometer);
void Accelerometer_read(t_Accelerometer *Accelerometer);
void Accelerometer_stop(t_Accelerometer *Accelerometer);
void Accelerometer_start(t_Accelerometer *Accelerometer);
void Accelerometer_setSampleRate(t_Accelerometer *Accelerometer, long rate);
void *Accelerometer_free(t_Accelerometer *Accelerometer);
void openAccelerometer(t_Accelerometer *Accelerometer, long serial);
void clock_tick(t_Accelerometer *Accelerometer);
int AccelChangeHandler(CPhidgetAccelerometerHandle accel, void *userptr, int Index, double Value);
void outputData(t_Accelerometer *Accelerometer);
OSStatus threadRead(void* Accelerometer);
 
int main(void) 
{  
	// set up our class: create a class definition	
	setup((t_messlist**) &this_class, (method)Accelerometer_new, (method)Accelerometer_free, (short)sizeof(t_Accelerometer), 0L, A_DEFLONG, 0); 
	addmess((method)Accelerometer_version, "getVersion", 0);
	addmess((method)Accelerometer_serial, "getSerial", 0);
	addmess((method)Accelerometer_status, "getStatus", 0);
	addmess((method)Accelerometer_read, "read", 0);
	addmess((method)Accelerometer_start, "start", 0);
	addmess((method)Accelerometer_stop, "stop", 0);
	addmess((method)Accelerometer_setSampleRate, "setSampleRate", A_LONG, 0);
	return (0); 
} 
 
void *Accelerometer_new(long serial) 
{ 
	t_Accelerometer *Accelerometer; 
	if(!serial)
		serial=-1;
	// create the new instance and return a pointer to it 
	Accelerometer = (t_Accelerometer *)newobject(this_class);
	openAccelerometer(Accelerometer, serial);
	Accelerometer->serial = serial;
	Accelerometer->b_outlet = outlet_new(Accelerometer,0L);
	return(Accelerometer);      // must return a pointer to the new instance  
} 

void *Accelerometer_free(t_Accelerometer *Accelerometer) {
	CPhidget_close((CPhidgetHandle)Accelerometer->phid);
	CPhidget_delete((CPhidgetHandle)Accelerometer->phid);
	freeobject((t_object *)Accelerometer->m_clock);
}

void Accelerometer_version(t_Accelerometer *Accelerometer) 
{  
	long ver;
	CPhidget_getDeviceVersion((CPhidgetHandle)Accelerometer->phid, &ver);
	outlet_int(Accelerometer->b_outlet, ver);
} 

void Accelerometer_serial(t_Accelerometer *Accelerometer) 
{  
	long ser;
	CPhidget_getSerialNumber((CPhidgetHandle)Accelerometer->phid, &ser);
	outlet_int(Accelerometer->b_outlet, ser);
} 

void Accelerometer_status(t_Accelerometer *Accelerometer) 
{  
	long stat;
	CPhidget_getDeviceStatus((CPhidgetHandle)Accelerometer->phid, &stat);
	outlet_int(Accelerometer->b_outlet, stat);
} 

void Accelerometer_read(t_Accelerometer *Accelerometer) 
{  
	clock_unset(Accelerometer->m_clock);
	Accelerometer->start = false;
	outputData(Accelerometer);
}

void Accelerometer_start(t_Accelerometer *Accelerometer) 
{  	
	if(!(Accelerometer->sample_rate<0))
		clock_delay(Accelerometer->m_clock, Accelerometer->sample_rate);
	Accelerometer->start = true;
}


void Accelerometer_stop(t_Accelerometer *Accelerometer) 
{  
	if(!(Accelerometer->sample_rate<0))
		clock_unset(Accelerometer->m_clock);
	Accelerometer->start = false;
}

void Accelerometer_setSampleRate(t_Accelerometer *Accelerometer, long rate) 
{  
	if(rate<0)
		clock_unset(Accelerometer->m_clock);
	else
		if(Accelerometer->start == true && Accelerometer->sample_rate < 0)
			clock_delay(Accelerometer->m_clock, Accelerometer->sample_rate);
	Accelerometer->sample_rate = rate;
}

void openAccelerometer(t_Accelerometer *Accelerometer, long serial) {
	//setup timing
	Accelerometer->sample_rate = 100; //set default sample rate to 100ms
	Accelerometer->m_clock = clock_new(Accelerometer, (method)clock_tick);
	Accelerometer->start = false;

	CPhidgetAccelerometer_create(&(Accelerometer->phid));
	CPhidgetAccelerometer_set_OnAccelerationChange_Handler((Accelerometer->phid),&AccelChangeHandler,Accelerometer);
	CPhidgetAccelerometer_setAccelerationChangeTrigger((CPhidgetAccelerometerHandle)(Accelerometer->phid),0,0.0);
	CPhidgetAccelerometer_setAccelerationChangeTrigger((CPhidgetAccelerometerHandle)(Accelerometer->phid),1,0.0);
	CPhidgetAccelerometer_setAccelerationChangeTrigger((CPhidgetAccelerometerHandle)(Accelerometer->phid),2,0.0);
	
	CPhidget_open((CPhidgetHandle)Accelerometer->phid, serial);
}

void clock_tick(t_Accelerometer *Accelerometer) {
	
	clock_delay(Accelerometer->m_clock, Accelerometer->sample_rate);
	outputData(Accelerometer);
}

void outputData(t_Accelerometer *Accelerometer) {
	t_atom myList[2];
	short i;
	double accel[2];

	CPhidgetAccelerometer_getAcceleration((Accelerometer->phid), 0, &accel[0]);
	CPhidgetAccelerometer_getAcceleration((Accelerometer->phid), 1, &accel[1]);

	for (i=0; i < 2; i++) { 
		SETFLOAT(myList+i,accel[i]); /* macro for setting a t_atom */ 
	} 

	outlet_anything(Accelerometer->b_outlet, gensym("ax"), 2, myList);
}

int AccelChangeHandler(CPhidgetAccelerometerHandle accelHandle, void *userptr, int Index, double Value)
{
	t_Accelerometer *Accelerometer = (t_Accelerometer *)userptr;
	if(Accelerometer->sample_rate<0 && Accelerometer->start)
		outputData(Accelerometer);
	return 0;
}
