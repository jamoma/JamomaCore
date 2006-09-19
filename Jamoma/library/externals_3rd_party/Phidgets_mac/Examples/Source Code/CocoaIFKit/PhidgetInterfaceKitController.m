#import "PhidgetInterfaceKitController.h"

CPhidgetInterfaceKitHandle ifkit;
int numOutputs, numInputs, numSensors;

@implementation PhidgetInterfaceKitController

int gotAttach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetAdded];
	return 0;
}

int gotDetach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetRemoved];
	return 0;
}

int gotInputChange(CPhidgetInterfaceKitHandle phid, void *context, int ind, int val) {
	[(id)context InputChange:ind:val];
	return 0;
}

int gotSensorChange(CPhidgetInterfaceKitHandle phid, void *context, int ind, int val) {
	[(id)context SensorChange:ind:val];
	return 0;
}

- (void)phidgetAdded
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	long serial, version;
	
	CPhidget_getSerialNumber((CPhidgetHandle)ifkit, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)ifkit, &version);
	CPhidgetInterfaceKit_getNumSensors(ifkit, &numSensors);
	CPhidgetInterfaceKit_getNumInputs(ifkit, &numInputs);
	CPhidgetInterfaceKit_getNumOutputs(ifkit, &numOutputs);
	
	[connectedField setTitleWithMnemonic:@"PhidgetInterfaceKit Connected"];
	[serialField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];
	[numOutputsField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numOutputs]];
	[numInputsField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numInputs]];
	[numSensorsField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numSensors]];

	[pool release];
}

- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	[connectedField setTitleWithMnemonic:@"PhidgetInterfaceKit Removed"];
	[serialField setTitleWithMnemonic:@""];
	[versionField setTitleWithMnemonic:@""];
	[numInputsField setTitleWithMnemonic:@""];
	[numOutputsField setTitleWithMnemonic:@""];
	[numSensorsField setTitleWithMnemonic:@""];
	
	[pool release];
}

- (void)InputChange:(int)Index:(int)State
{
	[[inputs cellWithTag:Index] setState:State];
}

- (void)SensorChange:(int)Index:(int)Value
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	[[sensorFields cellWithTag:Index] setTitleWithMnemonic:[NSString stringWithFormat:@"%i", Value]];
	[[sensorSliders cellWithTag:Index] setIntValue:(int)Value];
	
	[pool release];
}

- (IBAction)output:(id)sender
{
	CPhidgetInterfaceKit_setOutputState(ifkit, [sender selectedTag], [[sender cellWithTag:[sender selectedTag]] state]);
}

- (IBAction)ratiometric:(id)sender
{
	CPhidgetInterfaceKit_setRatiometric(ifkit, [sender state]);
}

- (IBAction)sensitivity:(id)sender
{
	int i;
	for(i=0;i<numSensors;i++)
		CPhidgetInterfaceKit_setSensorChangeTrigger(ifkit, i, [sender intValue]);
	[sensitivityField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", [sender intValue]]];
}

/*
* This gets run when the GUI gets displayed
*/
- (void)awakeFromNib
{
	[mainWindow setDelegate:self];
			
	CPhidgetInterfaceKit_create(&ifkit);
	
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)ifkit, gotAttach, self);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)ifkit, gotDetach, self);
	CPhidgetInterfaceKit_set_OnInputChange_Handler(ifkit, gotInputChange, self);
	CPhidgetInterfaceKit_set_OnSensorChange_Handler(ifkit, gotSensorChange, self);
	
	CPhidget_open((CPhidgetHandle)ifkit, -1);
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidget_close((CPhidgetHandle)ifkit);
	CPhidget_delete((CPhidgetHandle)ifkit);
	ifkit = NULL;
	[NSApp terminate:self];
}

@end
