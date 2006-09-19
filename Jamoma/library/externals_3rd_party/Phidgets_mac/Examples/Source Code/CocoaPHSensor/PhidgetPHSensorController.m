#import "PhidgetPHSensorController.h"

CPhidgetPHSensorHandle ph;

@implementation PhidgetPHSensorController

int gotAttach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetAdded];
	return 0;
}

int gotDetach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetRemoved];
	return 0;
}

int gotPH(CPhidgetPHSensorHandle phid, void *context, double val) {
	[(id)context gotPHChange:val];
	return 0;
}

- (void)gotPHChange:(double)val
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[phField setTitleWithMnemonic:[NSString stringWithFormat:@"%0.4f",val]];
	[pool release];
}

- (void)phidgetAdded
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	long serial, version;

	CPhidget_getSerialNumber((CPhidgetHandle)ph, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)ph, &version);
	
	[connectedField setTitleWithMnemonic:@"PhidgetPHSensor Connected"];
	[serialField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];

	[pool release];
}

- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[connectedField setTitleWithMnemonic:@"PhidgetPHSensor Removed"];
	[serialField setTitleWithMnemonic:@""];
	[versionField setTitleWithMnemonic:@""];
	[pool release];
}

/*
* This gets run when the GUI gets displayed
*/
- (void)awakeFromNib
{
	[mainWindow setDelegate:self];
	
	CPhidgetPHSensor_create(&ph);
	
	CPhidgetPHSensor_set_OnPHChange_Handler(ph, gotPH, self);
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)ph, gotAttach, self);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)ph, gotDetach, self);
	
	CPhidget_open((CPhidgetHandle)ph, -1);
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidget_close((CPhidgetHandle)ph);
	CPhidget_delete((CPhidgetHandle)ph);
	ph = NULL;
	[NSApp terminate:self];
}

@end