#import "PhidgetMotorController.h"

CPhidgetMotorControlHandle motor;

@implementation PhidgetMotorController

- (IBAction)accel0:(id)sender
{
	CPhidgetMotorControl_setAcceleration(motor,0,[sender intValue]);
}

- (IBAction)accel1:(id)sender
{
	CPhidgetMotorControl_setAcceleration(motor,1,[sender intValue]);
}

- (IBAction)speed0:(id)sender
{
	CPhidgetMotorControl_setMotorSpeed(motor,0,[sender intValue]);
}

- (IBAction)speed1:(id)sender
{
	CPhidgetMotorControl_setMotorSpeed(motor,1,[sender intValue]);
}


int gotAttach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetAdded];
	return 0;
}

int gotDetach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetRemoved];
	return 0;
}

int gotInputChange(CPhidgetMotorControlHandle phid, void *context, int ind, int val) {
	[(id)context InputChange:ind:val];
	return 0;
}

int gotMotorChange(CPhidgetMotorControlHandle phid, void *context, int ind, double val) {
	[(id)context MotorChange:ind:val];
	return 0;
}

- (void)phidgetAdded
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	long serial, version;
	int numMotors, numInputs;
	
	CPhidget_getSerialNumber((CPhidgetHandle)motor, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)motor, &version);
	CPhidgetMotorControl_getNumInputs(motor, &numInputs);
	CPhidgetMotorControl_getNumMotors(motor, &numMotors);
	
	[connectedField setTitleWithMnemonic:@"PhidgetMotorControl Connected"];
	[serialField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];
	[numInputsField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numInputs]];
	[numMotorsField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numMotors]];

	[pool release];
}

- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[connectedField setTitleWithMnemonic:@"PhidgetMotorControl Removed"];
	[serialField setTitleWithMnemonic:@""];
	[versionField setTitleWithMnemonic:@""];
	[numInputsField setTitleWithMnemonic:@""];
	[numMotorsField setTitleWithMnemonic:@""];
	[pool release];
}

- (void)InputChange:(int)Index:(int)State
{
	[[inputs cellWithTag:Index] setState:State];
}

- (void)MotorChange:(int)Index:(double)Value
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	switch(Index) {
		case 0:
			[speed0Field setTitleWithMnemonic:[NSString stringWithFormat:@"%f", Value]];
			break;
		case 1:
			[speed1Field setTitleWithMnemonic:[NSString stringWithFormat:@"%f", Value]];
			break;
	}
	[pool release];
}

/*
* This gets run when the GUI gets displayed
*/
- (void)awakeFromNib
{
	[mainWindow setDelegate:self];
	
	CPhidgetMotorControl_create(&motor);
	
	CPhidgetMotorControl_set_OnInputChange_Handler(motor, &gotInputChange, self);
	CPhidgetMotorControl_set_OnMotorChange_Handler(motor, &gotMotorChange, self);
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)motor, gotAttach, self);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)motor, gotDetach, self);
	
	CPhidget_open((CPhidgetHandle)motor, -1);
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidget_close((CPhidgetHandle)motor);
	CPhidget_delete((CPhidgetHandle)motor);
	motor = NULL;
	[NSApp terminate:self];
}

@end
