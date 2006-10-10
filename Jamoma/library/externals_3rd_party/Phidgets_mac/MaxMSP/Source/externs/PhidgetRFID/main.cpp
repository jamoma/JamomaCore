/*
  main.cpp --  A very simple Max external object.  
  Controls the Phidget RFID from a Mac
  
  This shows very simply how to write MAX externals for Phidgets, in Xcode.
  For general info on setting up the build settings properly in xcode see "machodev-readme.txt"
  in the "Mach-O Development" folder of the MAX/MSP SDK, or you can just start with this project.
  
  This requires the Phidget21 framework to be installed and included (available from www.phidgets.com).
*/

#include <Phidget21/Phidget21.h>
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
} t_RFID; 
 
// Prototypes for methods: need a method for each incoming message 
void *RFID_new(long serial);    // object creation method 
void RFID_version(t_RFID *RFID);
void RFID_serial(t_RFID *RFID);
void RFID_status(t_RFID *RFID);
void RFID_setOutput(t_RFID *RFID, long out, long n);
void RFID_setAntennaOn(t_RFID *RFID, long n);
void RFID_setLEDOn(t_RFID *RFID, long n);
void RFID_read(t_RFID *RFID);
void RFID_stop(t_RFID *RFID);
void RFID_start(t_RFID *RFID);
void RFID_setSampleRate(t_RFID *RFID, long rate);
void clock_tick(t_RFID *RFID);
void outputTag(t_RFID *RFID);
void outputTagLoss(t_RFID *RFID);
void *RFID_free(t_RFID *RFID);
void openRFID(t_RFID *RFID, long serial);
int RFIDTagHandler(CPhidgetRFIDHandle rfid, void *userptr, unsigned char* tag);
int RFIDTagLostHandler(CPhidgetRFIDHandle rfid, void *userptr, unsigned char* tag);
 
int main(void) 
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
	addmess((method)RFID_setOutput, "setOutput", A_LONG, A_LONG, 0);
	addmess((method)RFID_setAntennaOn, "setAntennaOn", A_LONG, 0);
	addmess((method)RFID_setLEDOn, "setLEDOn", A_LONG, 0);
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
	return(RFID);      // must return a pointer to the new instance  
} 

void *RFID_free(t_RFID *RFID) {
	CPhidget_close((CPhidgetHandle)(RFID->phid));
	CPhidget_delete((CPhidgetHandle)RFID->phid);
	freeobject((t_object *)RFID->m_clock);
}

void RFID_version(t_RFID *RFID) 
{  
	long ver;
	CPhidget_getDeviceVersion((CPhidgetHandle)(RFID->phid), &ver);
	outlet_int(RFID->b_outlet, ver);
} 

void RFID_serial(t_RFID *RFID) 
{  
	long ser;
	CPhidget_getSerialNumber((CPhidgetHandle)(RFID->phid), &ser);
	outlet_int(RFID->b_outlet, ser);
} 

void RFID_status(t_RFID *RFID) 
{  
	long stat;
	CPhidget_getDeviceStatus((CPhidgetHandle)(RFID->phid), &stat);
	outlet_int(RFID->b_outlet, stat);
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
	if(out-2<RFID->numOutputs)
		CPhidgetRFID_setOutputState(RFID->phid, out, n);
}

void RFID_setAntennaOn(t_RFID *RFID, long n)
{
	if(RFID->numOutputs>0)
		CPhidgetRFID_setAntennaOn(RFID->phid, n);
}

void RFID_setLEDOn(t_RFID *RFID, long n)
{
	if(RFID->numOutputs>0)
		CPhidgetRFID_setLEDOn(RFID->phid, n);
}

int gotAttach(CPhidgetHandle phid, void *userptr) {
	t_RFID *RFID = (t_RFID *)userptr;
		CPhidgetRFID_getNumOutputs(RFID->phid, &(RFID->numOutputs));
}

void openRFID(t_RFID *RFID, long serial) {
	//setup timing
	RFID->sample_rate = -1; //set default sample rate to onTag
	RFID->m_clock = clock_new(RFID, (method)clock_tick);
	RFID->start = true;

	CPhidgetRFID_create(&(RFID->phid));
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)(RFID->phid), gotAttach, RFID);
	CPhidgetRFID_set_OnTag_Handler((RFID->phid),&RFIDTagHandler,RFID);
	CPhidgetRFID_set_OnTagLost_Handler((RFID->phid),&RFIDTagLostHandler,RFID);
	CPhidget_open((CPhidgetHandle)(RFID->phid), serial);
}

int RFIDTagHandler(CPhidgetRFIDHandle rfid, void *userptr, unsigned char* tag)
{
	t_RFID *RFID = (t_RFID *)userptr;
	if(RFID->sample_rate<0 && RFID->start)
		outputTag(RFID);
	return 0;
}

int RFIDTagLostHandler(CPhidgetRFIDHandle rfid, void *userptr, unsigned char* tag)
{
	t_RFID *RFID = (t_RFID *)userptr;
	if(RFID->sample_rate<0 && RFID->start)
		outputTagLoss(RFID);
	return 0;
}

void outputTag(t_RFID *RFID) {
	t_atom myList;
	short i;
	char buf[11];
	unsigned char *rf;
	
	CPhidgetRFID_getLastTag(((t_RFID *)RFID)->phid, (((t_RFID *)RFID)->lastTag));
	sprintf(buf,"%02x%02x%02x%02x%02x",(RFID->lastTag)[0],(RFID->lastTag)[1],(RFID->lastTag)[2],(RFID->lastTag)[3],(RFID->lastTag)[4]);
	
	outlet_anything(RFID->b_outlet, gensym(buf), 0, &myList);
}

void outputTagLoss(t_RFID *RFID) {
	t_atom myList;
	short i;
	char buf[0];
	unsigned char *rf;

	buf[0] = '\0';

	outlet_anything(RFID->b_outlet, gensym(buf), 0, &myList);
}

void clock_tick(t_RFID *RFID) {
	
	clock_delay(RFID->m_clock, RFID->sample_rate);
	outputTag(RFID);
}
