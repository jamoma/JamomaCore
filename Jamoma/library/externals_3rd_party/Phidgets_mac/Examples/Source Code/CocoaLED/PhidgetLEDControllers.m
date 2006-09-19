#import "PhidgetLEDControllers.h"

CPhidgetLEDHandle led;

int lastLED=-1;

@implementation PhidgetLEDControllers

- (IBAction)out:(id)sender
{
	int index = 0;
	index = strtol([[sender title] UTF8String],NULL,10);
	if([sender state]) {
		CPhidgetLED_setDiscreteLED(led, index, [brightnessSlider intValue]);
		lastLED=index;
	}
	else {
		CPhidgetLED_setDiscreteLED(led, index, 0);
		lastLED=-1;
	}
}

- (IBAction)slide:(id)sender
{
	if(lastLED!=-1)
		CPhidgetLED_setDiscreteLED(led, lastLED, [brightnessSlider intValue]);
}

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
	int numLEDs;

	CPhidget_getSerialNumber((CPhidgetHandle)led, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)led, &version);
	CPhidgetLED_getNumLEDs(led,&numLEDs);
	
	[connectedField setTitleWithMnemonic:@"PhidgetLED Connected"];
	[serialField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];
	[numLEDsField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numLEDs]];

	[pool release];
}

- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[connectedField setTitleWithMnemonic:@"PhidgetLED Removed"];
	[serialField setTitleWithMnemonic:@""];
	[versionField setTitleWithMnemonic:@""];
	[numLEDsField setTitleWithMnemonic:@""];
	[pool release];
}

/*
* This gets run when the GUI gets displayed
*/
- (void)awakeFromNib
{
	[mainWindow setDelegate:self];
	
	CPhidgetLED_create(&led);
	
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)led, gotAttach, self);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)led, gotDetach, self);
	
	CPhidget_open((CPhidgetHandle)led, -1);
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidget_close((CPhidgetHandle)led);
	CPhidget_delete((CPhidgetHandle)led);
	led = NULL;
	[NSApp terminate:self];
}

@end
