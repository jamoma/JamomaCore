/*
main.cpp
by: Patrick McNeil

Example for MacOS X usage of Phidgets.

-Plug in a servo and and Interface kit at the same time and control the motor with any
	of the sensor inputs (ie a slider)

*/

#include <stdio.h>
#include <Phidget21/phidget21.h>
	
int gotSensor(CPhidgetInterfaceKitHandle phid, void *servo, int ind, int val) {
	if(servo) {
		CPhidgetServo_setMotorPosition((CPhidgetServoHandle)servo, 0, (val/5)+20);
	}
	return 0;
}

int main (int argc, const char * argv[]) {
	CPhidgetServoHandle servo;
	CPhidgetInterfaceKitHandle ifkit;
	
	CPhidgetServo_create(&servo);
	CPhidgetInterfaceKit_create(&ifkit);
	
	CPhidgetInterfaceKit_set_OnSensorChange_Handler(ifkit, gotSensor, servo);
	
	CPhidget_open((CPhidgetHandle)servo,-1);
	CPhidget_open((CPhidgetHandle)ifkit,-1);
	
	//wait 5 seconds for an attach
	if(CPhidget_waitForAttachment((CPhidgetHandle)ifkit, 5000))
		goto exit;
	printf("InterfaceKit found\n");
	//we've already waited 5 seconds so this should already be attached
	if(CPhidget_waitForAttachment((CPhidgetHandle)servo, 1))
		goto exit;
	printf("Servo found\n");
	
	sleep(5);

exit:
	printf("Closing\n");
	CPhidget_close((CPhidgetHandle)servo);
	CPhidget_close((CPhidgetHandle)ifkit);
	CPhidget_delete((CPhidgetHandle)servo);
	CPhidget_delete((CPhidgetHandle)ifkit);
	
	return 0;
}


