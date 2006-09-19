#import "PhidgetServoController.h"
	
CPhidgetServoHandle servo;

@implementation PhidgetServoController

int gotAttach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetAdded];
	return 0;
}

int gotDetach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetRemoved];
	return 0;
}

- (void)phidgetAdded
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	long serial, version;
	int numMotors;

	CPhidget_getSerialNumber((CPhidgetHandle)servo, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)servo, &version);
	CPhidgetServo_getNumMotors(servo,&numMotors);
	
	[connectedField setTitleWithMnemonic:@"PhidgetAccelerometer Connected"];
	[serialField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];
	[numberOfServosField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numMotors]];

	[pool release];
}

- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	[connectedField setTitleWithMnemonic:@"PhidgetServo Removed"];
	[serialField setTitleWithMnemonic:@""];
	[versionField setTitleWithMnemonic:@""];
	[numberOfServosField setTitleWithMnemonic:@""];

	[pool release];
}

- (IBAction)moveServo:(id)sender
{
	CPhidgetServo_setMotorPosition(servo, [sender selectedTag], [[sender cellWithTag:[sender selectedTag]] intValue]);
}

/*
* This gets run when the GUI gets displayed
*/
- (void)awakeFromNib
{
	[mainWindow setDelegate:self];
	
	CPhidgetServo_create(&servo);
	
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)servo, gotAttach, self);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)servo, gotDetach, self);
	
	CPhidget_open((CPhidgetHandle)servo, -1);
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidget_close((CPhidgetHandle)servo);
	CPhidget_delete((CPhidgetHandle)servo);
	servo = NULL;
	[NSApp terminate:self];
}

@end
