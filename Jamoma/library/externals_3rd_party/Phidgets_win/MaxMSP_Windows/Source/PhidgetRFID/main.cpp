/*
  main.cpp --  A very simple Max external object.  
  Controls the Phidget RFID from Windows
*/

#include "../../Phidget20.h"
#include "windows.h"
#include "ext.h"   // Required for all Max external objects 
 
void *this_class;  // Required. Global pointing to this class
 
typedef struct _RFID // Data structure for this object  
{ 
	t_object b_ob;   // Must always be the first field; used by Max  
	CPhidgetRFIDHandle phid;
	void *m_clock;
	long serial;
	long sample_rate;
	bool start;
	int numOutputs;
	unsigned char lastTag[5];
	void *b_outlet;
	unsigned long taskID;
	HANDLE m_ThreadHandle;
} t_RFID; 
 
// Prototypes for methods: need a method for each incoming message 
void *RFID_new(long serial);    // object creation method 
void RFID_version(t_RFID *RFID);
void RFID_serial(t_RFID *RFID);
void RFID_status(t_RFID *RFID);
void RFID_setOutput(t_RFID *RFID, long out, long n);
void RFID_reconnect(t_RFID *RFID);
void RFID_read(t_RFID *RFID);
void RFID_stop(t_RFID *RFID);
void RFID_start(t_RFID *RFID);
void RFID_setSampleRate(t_RFID *RFID, long rate);
void clock_tick(t_RFID *RFID);
void outputTag(t_RFID *RFID);
void *RFID_free(t_RFID *RFID);
void openRFID(t_RFID *RFID, long serial);
int __stdcall RFIDTagHandler(CPhidgetRFIDHandle rfid, void *userptr, unsigned char* tag);
DWORD WINAPI threadRead(LPVOID RFID);
 
__declspec(dllexport) int main(void) 
{  
	// set up our class: create a class definition	
	setup((t_messlist**) &this_class, (method)RFID_new, (method)RFID_free, (short)sizeof(t_RFID), 0L, A_DEFLONG, 0); 
	addmess((method)RFID_version, "getVersion", 0);
	addmess((method)RFID_serial, "getSerial", 0);
	addmess((method)RFID_status, "getStatus", 0);
	addmess((method)RFID_read, "read", 0);
	addmess((method)RFID_start, "start", 0);
	addmess((method)RFID_stop, "stop", 0);
	addmess((method)RFID_setSampleRate, "setSampleRate", A_LONG, 0);
	addmess((method)RFID_reconnect, "reconnect", 0);
	addmess((method)RFID_setOutput, "setOutput", A_LONG, A_LONG, 0);
	return (0); 
} 
 
void *RFID_new(long serial) 
{ 
	t_RFID *RFID; 
	if(!serial)
		serial=-1;
	// create the new instance and return a pointer to it 
	RFID = (t_RFID *)newobject(this_class);
	openRFID(RFID, serial);
	RFID->serial = serial;
	RFID->b_outlet = outlet_new(RFID,0L);
	RFID->taskID=0;
	return(RFID);      // must return a pointer to the new instance  
} 

void *RFID_free(t_RFID *RFID) {
	long stat;
	CPhidget_getDeviceStatus((RFID->phid), &stat);
	if(stat) {
		CPhidget_close((RFID->phid));
	}
	if(RFID->taskID)
		TerminateThread(RFID->m_ThreadHandle, 0);
	RFID->taskID=0;
	CPhidget_delete(RFID->phid);
	freeobject((t_object *)RFID->m_clock);
	return(NULL);
}

void RFID_version(t_RFID *RFID) 
{  
	long ver;
	CPhidget_getDeviceVersion((RFID->phid), &ver);
	outlet_int(RFID->b_outlet, ver);
} 

void RFID_serial(t_RFID *RFID) 
{  
	long ser;
	CPhidget_getSerialNumber((RFID->phid), &ser);
	outlet_int(RFID->b_outlet, ser);
} 

void RFID_status(t_RFID *RFID) 
{  
	long stat;
	CPhidget_getDeviceStatus((RFID->phid), &stat);
	outlet_int(RFID->b_outlet, stat);
}

void RFID_reconnect(t_RFID *RFID) 
{
	RFID_free(RFID);
	openRFID(RFID, (RFID->serial));
} 

void RFID_read(t_RFID *RFID) 
{  
	clock_unset(RFID->m_clock);
	RFID->start = false;
	outputTag(RFID);
}

void RFID_start(t_RFID *RFID) 
{  	
	if(!(RFID->sample_rate<0))
		clock_delay(RFID->m_clock, RFID->sample_rate);
	RFID->start = true;
}


void RFID_stop(t_RFID *RFID) 
{  
	if(!(RFID->sample_rate<0))
		clock_unset(RFID->m_clock);
	RFID->start = false;
}

void RFID_setSampleRate(t_RFID *RFID, long rate) 
{  
	if(rate<0)
		clock_unset(RFID->m_clock);
	else
		if(RFID->start == true && RFID->sample_rate < 0)
			clock_delay(RFID->m_clock, RFID->sample_rate);
	RFID->sample_rate = rate;
}

void RFID_setOutput(t_RFID *RFID, long out, long n)
{
	if(out<RFID->numOutputs)
		CPhidgetRFID_setOutputState(RFID->phid, out, n);
}

void openRFID(t_RFID *RFID, long serial) {
	//setup timing
	RFID->sample_rate = -1; //set default sample rate to onTag
	RFID->m_clock = clock_new(RFID, (method)clock_tick);
	RFID->start = true;

	CPhidgetRFID_create(&(RFID->phid));
	if(!CPhidget_open((RFID->phid), serial)) {
		CPhidgetRFID_getNumOutputs(RFID->phid, &(RFID->numOutputs));
		CPhidgetRFID_set_OnTag_Handler((RFID->phid),&RFIDTagHandler,RFID);
		RFID->m_ThreadHandle = CreateThread(NULL, 0, threadRead,(void *)RFID, 0, &(RFID->taskID));
	}
}

int __stdcall RFIDTagHandler(CPhidgetRFIDHandle rfid, void *userptr, unsigned char* tag)
{
	t_RFID *RFID = (t_RFID *)userptr;
	if(RFID->sample_rate<0 && RFID->start)
		outputTag(RFID);
	return 0;
}

void outputTag(t_RFID *RFID) {
	t_atom myList;
	short i;
	char buf[10];
	unsigned char *rf;
	
	CPhidgetRFID_getLastTag(((t_RFID *)RFID)->phid, (((t_RFID *)RFID)->lastTag));
	sprintf(buf,"%02x%02x%02x%02x%02x",(RFID->lastTag)[0],(RFID->lastTag)[1],(RFID->lastTag)[2],(RFID->lastTag)[3],(RFID->lastTag)[4]);
	
	outlet_anything(RFID->b_outlet, gensym(buf), 0, &myList);
}

void clock_tick(t_RFID *RFID) {
	
	clock_delay(RFID->m_clock, RFID->sample_rate);
	outputTag(RFID);
}

DWORD WINAPI threadRead(LPVOID RFID)
{
	while(1) {
		if(CPhidgetRFID_read(((t_RFID *)RFID)->phid)) break;
	}
	((t_RFID *)RFID)->taskID=0;
	return 0;
}
