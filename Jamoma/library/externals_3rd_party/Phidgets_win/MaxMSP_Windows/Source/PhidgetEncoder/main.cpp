/*
  main.cpp --  A very simple Max external object.  
  Controls the Phidget Encoder from Windows
*/

#include "../../Phidget20.h"
#include "windows.h"
#include "ext.h"   // Required for all Max external objects 
 
void *this_class;  // Required. Global pointing to this class  
 
typedef struct _Encoder // Data structure for this object  
{ 
	t_object b_ob;   // Must always be the first field; used by Max  
	CPhidgetEncoderHandle phid;
	void *m_clock;
	long serial;
	long sample_rate;
	bool start;
	unsigned long taskID;
	HANDLE m_ThreadHandle;
	void *b_outlet;
} t_Encoder; 
 
// Prototypes for methods: need a method for each incoming message 
void *Encoder_new(long serial);    // object creation method 
void Encoder_version(t_Encoder *Encoder);
void Encoder_serial(t_Encoder *Encoder);
void Encoder_status(t_Encoder *Encoder);
void Encoder_reconnect(t_Encoder *Encoder);
void Encoder_setPosn(t_Encoder *Encoder, long posn);
void Encoder_read(t_Encoder *Encoder);
void Encoder_stop(t_Encoder *Encoder);
void Encoder_start(t_Encoder *Encoder);
void Encoder_setSampleRate(t_Encoder *Encoder, long rate);
void outputPosition(t_Encoder *Encoder);
void outputInput(t_Encoder *Encoder);
void *Encoder_free(t_Encoder *Encoder);
void clock_tick(t_Encoder *Encoder);
void openEncoder(t_Encoder *Encoder, long serial);
int __stdcall PositionChangeHandler(CPhidgetEncoderHandle encoderHandle, void *userptr, int Index, int time, int dir);
int __stdcall InputChangeHandler(CPhidgetEncoderHandle encoderHandle, void *userptr, int Index, int val);
DWORD WINAPI threadRead(LPVOID Encoder);
 
__declspec(dllexport) int main(void) 
{  
	// set up our class: create a class definition	
	setup((t_messlist**) &this_class, (method)Encoder_new, (method)Encoder_free, (short)sizeof(t_Encoder), 0L, A_DEFLONG, 0); 
	addmess((method)Encoder_version, "getVersion", 0);
	addmess((method)Encoder_serial, "getSerial", 0);
	addmess((method)Encoder_status, "getStatus", 0);
	addmess((method)Encoder_reconnect, "reconnect", 0);
	addmess((method)Encoder_read, "read", 0);
	addmess((method)Encoder_start, "start", 0);
	addmess((method)Encoder_stop, "stop", 0);
	addmess((method)Encoder_setSampleRate, "setSampleRate", A_LONG, 0);
	addmess((method)Encoder_setPosn, "setPosition", A_LONG, 0);
	return (0); 
} 
 
void *Encoder_new(long serial) 
{ 
	t_Encoder *Encoder; 
	if(!serial)
		serial=-1;
	// create the new instance and return a pointer to it 
	Encoder = (t_Encoder *)newobject(this_class);
	Encoder->phid=0;
	openEncoder(Encoder, serial);
	Encoder->serial = serial;
	Encoder->b_outlet = outlet_new(Encoder,0L);
	return(Encoder);      // must return a pointer to the new instance  
} 

void *Encoder_free(t_Encoder *Encoder) {
	long stat;
	CPhidget_getDeviceStatus((Encoder->phid), &stat);
	if(stat) {
		CPhidget_close((Encoder->phid));
	}
	if(Encoder->taskID)
		TerminateThread(Encoder->m_ThreadHandle, 0);
	Encoder->taskID=0;
	CPhidget_delete(Encoder->phid);
	freeobject((t_object *)Encoder->m_clock);
	return(NULL);
}

void Encoder_version(t_Encoder *Encoder) 
{  
	long ver;
	CPhidget_getDeviceVersion((Encoder->phid), &ver);
	outlet_int(Encoder->b_outlet, ver);
} 

void Encoder_serial(t_Encoder *Encoder) 
{  
	long ser;
	CPhidget_getSerialNumber((Encoder->phid), &ser);
	outlet_int(Encoder->b_outlet, ser);
} 

void Encoder_status(t_Encoder *Encoder) 
{  
	long stat;
	CPhidget_getDeviceStatus((Encoder->phid), &stat);
	outlet_int(Encoder->b_outlet, stat);
} 

void Encoder_setPosn(t_Encoder *Encoder, long posn)
{
	t_atom myList1[1];
	CPhidgetEncoder_setEncoderPosition(Encoder->phid, 0, posn);
	
	SETLONG(myList1,posn); /* macro for setting a t_atom */ 
	outlet_anything(Encoder->b_outlet, gensym("posn"), 1, myList1);
}

void Encoder_reconnect(t_Encoder *Encoder) 
{
	Encoder_free(Encoder);
	openEncoder(Encoder, (Encoder->serial));
} 

void Encoder_read(t_Encoder *Encoder) 
{  
	clock_unset(Encoder->m_clock);
	Encoder->start = false;
	outputPosition(Encoder);
	outputInput(Encoder);
}

void Encoder_start(t_Encoder *Encoder) 
{  	
	if(!(Encoder->sample_rate<0))
		clock_delay(Encoder->m_clock, Encoder->sample_rate);
	Encoder->start = true;
}


void Encoder_stop(t_Encoder *Encoder) 
{  
	if(!(Encoder->sample_rate<0))
		clock_unset(Encoder->m_clock);
	Encoder->start = false;
}

void Encoder_setSampleRate(t_Encoder *Encoder, long rate) 
{  
	if(rate<0)
		clock_unset(Encoder->m_clock);
	else
		if(Encoder->start == true && Encoder->sample_rate<0)
			clock_delay(Encoder->m_clock, Encoder->sample_rate);
	Encoder->sample_rate = rate;
}

void openEncoder(t_Encoder *Encoder, long serial) {
	//setup timing
	Encoder->sample_rate = -1; //set default sample rate to device rate
	Encoder->m_clock = clock_new(Encoder, (method)clock_tick);
	Encoder->start = true;

	CPhidgetEncoder_create(&(Encoder->phid));
	if(!CPhidget_open((Encoder->phid), serial)) {
		CPhidgetEncoder_set_OnPositionChange_Handler((Encoder->phid),&PositionChangeHandler,Encoder);
		CPhidgetEncoder_set_OnInputChange_Handler((Encoder->phid),&InputChangeHandler,Encoder);
		Encoder->m_ThreadHandle = CreateThread(NULL, 0, threadRead,(void *)Encoder, 0, &(Encoder->taskID));
	}
}

int __stdcall PositionChangeHandler(CPhidgetEncoderHandle encoderHandle, void *userptr, int Index, int time, int dir)
{
	t_Encoder *Encoder = (t_Encoder *)userptr;
	if(Encoder->sample_rate<0 && Encoder->start)
		outputPosition(Encoder);
	return 0;
}

void outputPosition(t_Encoder *Encoder) {
	t_atom myList2[1];
	int posn;
	
	CPhidgetEncoder_getEncoderPosition(Encoder->phid, 0, &posn);
	
	SETLONG(myList2,posn); /* macro for setting a t_atom */ 
	
	outlet_anything(Encoder->b_outlet, gensym("posn"), 1, myList2);
}

int __stdcall InputChangeHandler(CPhidgetEncoderHandle encoderHandle, void *userptr, int Index, int val)
{
	t_Encoder *Encoder = (t_Encoder *)userptr;
	if(Encoder->sample_rate<0 && Encoder->start)
		outputInput(Encoder);
	return 0;
}

void outputInput(t_Encoder *Encoder) {
	t_atom myList1[1];
	int state;

	CPhidgetEncoder_getInputState(Encoder->phid, 0, &state);
	
	SETLONG(myList1,state); /* macro for setting a t_atom */ 
	
	outlet_anything(Encoder->b_outlet, gensym("state"), 1, myList1);
}

void clock_tick(t_Encoder *Encoder) {
	
	clock_delay(Encoder->m_clock, Encoder->sample_rate);
	outputPosition(Encoder);
	outputInput(Encoder);
}

DWORD WINAPI threadRead(LPVOID Encoder)
{
	while(1) {
		if(CPhidgetEncoder_read(((t_Encoder *)Encoder)->phid)) break;
	}
	((t_Encoder *)Encoder)->taskID=0;
	return 0;
}