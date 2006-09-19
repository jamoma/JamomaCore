#import "PhidgetWeightSensorController.h"

CPhidgetWeightSensorHandle weight;

@implementation PhidgetWeightSensorController

int gotAttach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetAdded];
	return 0;
}

int gotDetach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetRemoved];
	return 0;
}
int gotWeight(CPhidgetWeightSensorHandle phid, void *context, double val) {
	[(id)context gotWeightChange:val];
	return 0;
}

- (void)gotWeightChange:(double)Weight
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	[weightField setTitleWithMnemonic:[NSString stringWithFormat:@"0.2f kg", Weight]];
	[weightSlider setIntValue:(int)Weight];

	[pool release];
}

- (void)phidgetAdded
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	long serial, version;

	CPhidget_getSerialNumber((CPhidgetHandle)weight, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)weight, &version);
	
	[connectedField setTitleWithMnemonic:@"PhidgetWeightSensor Connected"];
	[serialField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];

	[pool release];
}

- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[connectedField setTitleWithMnemonic:@"PhidgetWeightSensor Removed"];
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
	
	CPhidgetWeightSensor_create(&weight);
	
	CPhidgetWeightSensor_set_OnWeightChange_Handler(weight, gotWeight, self);
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)weight, gotAttach, self);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)weight, gotDetach, self);
	
	CPhidget_open((CPhidgetHandle)weight, -1);
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidget_close((CPhidgetHandle)weight);
	CPhidget_delete((CPhidgetHandle)weight);
	weight = NULL;
	[NSApp terminate:self];
}

@end