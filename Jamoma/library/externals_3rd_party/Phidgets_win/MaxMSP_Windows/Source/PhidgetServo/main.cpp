/*
  main.cpp --  A very simple Max external object.  
  Controls the Phidget Servo from Windows
*/

#include "../../phidget20.h"
#include "ext.h"   // Required for all Max external objects 
 
void *this_class;  // Required. Global pointing to this class  
 
typedef struct _Servo // Data structure for this object  
{ 
	t_object b_ob;   // Must always be the first field; used by Max  
	CPhidgetServoHandle phid;
	int motor;
	long serial;
	void *b_outlet;
} t_Servo; 
 
// Prototypes for methods: need a method for each incoming message 
void *Servo_new(long serial);    // object creation method  
void Servo_int(t_Servo *Servo, long n);
void Servo_float(t_Servo *Servo, float n);
void Servo_move(t_Servo *Servo, long motor, long n);
void Servo_in1(t_Servo *Servo, int n);
void Servo_version(t_Servo *Servo);
void Servo_serial(t_Servo *Servo);
void Servo_status(t_Servo *Servo);
void Servo_numMotors(t_Servo *Servo);
void Servo_motorPosition(t_Servo *Servo, int motor);
void Servo_Position(t_Servo *Servo);
void Servo_reconnect(t_Servo *Servo);
void *Servo_free(t_Servo *Servo);
 
__declspec(dllexport) void main(void) 
{  
	// set up our class: create a class definition	
	setup((t_messlist**) &this_class, (method)Servo_new, (method)Servo_free, (short)sizeof(t_Servo), 0L, A_DEFLONG, 0); 
	addint((method)Servo_int);
	addfloat((method)Servo_float);
	addinx((method)Servo_in1, 1);
	addmess((method)Servo_int, "setPosition", A_LONG, 0);
	addmess((method)Servo_move, "setMotorPosition", A_LONG, A_LONG, 0);
	addmess((method)Servo_version, "getVersion", 0);
	addmess((method)Servo_serial, "getSerial", 0);
	addmess((method)Servo_status, "getStatus", 0);
	addmess((method)Servo_numMotors, "getNumMotors", 0);
	addmess((method)Servo_reconnect, "reconnect", 0);
	addmess((method)Servo_motorPosition, "getMotorPosition", A_LONG, 0);
	addmess((method)Servo_Position, "getPosition", 0);
} 

void *Servo_new(long serial) 
{ 
	t_Servo *Servo; 
	if(!serial)
		serial=-1;
	// create the new instance and return a pointer to it 
	Servo = (t_Servo *)newobject(this_class);
	CPhidgetServo_create(&(Servo->phid));
	CPhidget_open((Servo->phid), serial);
	Servo->motor=0;
	Servo->serial = serial;
	Servo->b_outlet = outlet_new(Servo,0L);
	intin(Servo,1);
	return(Servo);      // must return a pointer to the new instance  
} 

void *Servo_free(t_Servo *Servo) {
	long stat;
	CPhidget_getDeviceStatus((Servo->phid), &stat);
	if(stat) {
		CPhidget_close((Servo->phid));
	}
	CPhidget_delete(Servo->phid);
	return(NULL);
}
 
void Servo_int(t_Servo *Servo, long n) 
{  
	CPhidgetServo_setMotorPosition((Servo->phid), (Servo->motor), n);
	Servo_motorPosition(Servo, (Servo->motor));
} 
 
void Servo_float(t_Servo *Servo, float n) 
{  
	CPhidgetServo_setMotorPosition((Servo->phid), (Servo->motor), n);
	Servo_motorPosition(Servo, (Servo->motor));
} 

void Servo_move(t_Servo *Servo, long motor, long n)
{  
	CPhidgetServo_setMotorPosition((Servo->phid), motor, n);
	Servo_motorPosition(Servo, motor);
} 

void Servo_in1(t_Servo *Servo, int n) 
{  
	Servo->motor=n;
} 

void Servo_version(t_Servo *Servo) 
{  
	long ver;
	CPhidget_getDeviceVersion((Servo->phid), &ver);
	outlet_int(Servo->b_outlet, ver);
} 

void Servo_serial(t_Servo *Servo) 
{  
	long ser;
	CPhidget_getSerialNumber((Servo->phid), &ser);
	outlet_int(Servo->b_outlet, ser);
} 

void Servo_status(t_Servo *Servo) 
{  
	long stat;
	CPhidget_getDeviceStatus((Servo->phid), &stat);
	outlet_int(Servo->b_outlet, stat);
} 

void Servo_numMotors(t_Servo *Servo) 
{  
	int num;
	CPhidgetServo_getNumMotors((Servo->phid), &num);
	outlet_int(Servo->b_outlet, num);
} 

void Servo_motorPosition(t_Servo *Servo, int motor) 
{  
	double posn;
	CPhidgetServo_getMotorPosition((Servo->phid), motor, &posn);
	outlet_float(Servo->b_outlet, posn);
}

void Servo_Position(t_Servo *Servo) 
{  
	double posn;
	CPhidgetServo_getMotorPosition((Servo->phid), (Servo->motor), &posn);
	outlet_float(Servo->b_outlet, posn);
}

void Servo_reconnect(t_Servo *Servo) 
{
	Servo_free(Servo);
	CPhidgetServo_create(&(Servo->phid));
	CPhidget_open((Servo->phid), (Servo->serial));
} 
