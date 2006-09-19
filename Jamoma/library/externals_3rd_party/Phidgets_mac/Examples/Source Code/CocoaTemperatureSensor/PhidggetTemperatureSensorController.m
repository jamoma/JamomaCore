#import "PhidggetTemperatureSensorController.h"

CPhidgetTemperatureSensorHandle temp;

@implementation PhidggetTemperatureSensorController

int gotAttach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetAdded];
	return 0;
}

int gotDetach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetRemoved];
	return 0;
}

int gotTemperature(CPhidgetTemperatureSensorHandle phid, void *context, int ind, double val) {
	[(id)context gotTemperatureChange:ind:val];
	return 0;
}

- (void)gotTemperatureChange:(int)Index:(double)Value
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	if(Index == 0)
		[temp0Field setTitleWithMnemonic:[NSString stringWithFormat:@"%0.3f", Value]];
	else
		[temp1Field setTitleWithMnemonic:[NSString stringWithFormat:@"%0.3f", Value]];
		
	[pool release];
}

- (void)phidgetAdded
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	long serial, version;
	int numInputs;

	CPhidget_getSerialNumber((CPhidgetHandle)temp, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)temp, &version);
	CPhidgetTemperatureSensor_getNumTemperatureInputs(temp,&numInputs);
	
	[connectedField setTitleWithMnemonic:@"PhidgetTemperatureSensor Connected"];
	[serialField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];
	[numInputsField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numInputs]];
	
	CPhidgetTemperatureSensor_setTemperatureChangeTrigger(temp,0,0);
	CPhidgetTemperatureSensor_setTemperatureChangeTrigger(temp,1,0);

	[pool release];
}

- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	[connectedField setTitleWithMnemonic:@"PhidgetTemperatureSensor Removed"];
	[serialField setTitleWithMnemonic:@""];
	[versionField setTitleWithMnemonic:@""];
	[numInputsField setTitleWithMnemonic:@""];

	[pool release];
}



/*
* This gets run when the GUI gets displayed
*/
- (void)awakeFromNib
{
	[mainWindow setDelegate:self];
	
	CPhidgetTemperatureSensor_create(&temp);
	
	CPhidgetTemperatureSensor_set_OnTemperatureChange_Handler(temp, gotTemperature, self);
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)temp, gotAttach, self);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)temp, gotDetach, self);
	
	CPhidget_open((CPhidgetHandle)temp, -1);
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidget_close((CPhidgetHandle)temp);
	CPhidget_delete((CPhidgetHandle)temp);
	temp = NULL;
	[NSApp terminate:self];
}

@end