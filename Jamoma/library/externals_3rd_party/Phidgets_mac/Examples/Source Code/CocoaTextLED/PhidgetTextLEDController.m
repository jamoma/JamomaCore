#import "PhidgetTextLEDController.h"

CPhidgetTextLEDHandle led;

@implementation PhidgetTextLEDController

- (IBAction)row1Changed:(id)sender
{
	CPhidgetTextLED_setDisplayString(led,0,(char *)[[row1Box  stringValue] UTF8String]);
}

- (IBAction)row2Changed:(id)sender
{
	CPhidgetTextLED_setDisplayString(led,1,(char *)[[row2Box  stringValue] UTF8String]);
}

- (IBAction)row3Changed:(id)sender
{
	CPhidgetTextLED_setDisplayString(led,3,(char *)[[row3Box  stringValue] UTF8String]);
}

- (IBAction)row4Changed:(id)sender
{
	CPhidgetTextLED_setDisplayString(led,4,(char *)[[row4Box  stringValue] UTF8String]);
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

	CPhidget_getSerialNumber((CPhidgetHandle)led, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)led, &version);
	
	[connectedField setTitleWithMnemonic:@"PhidgetTextLCD Connected"];
	[serialField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];
	
	[row1Box setEditable:true];
	[row2Box setEditable:true];
	[row3Box setEditable:true];
	[row4Box setEditable:true];

	[pool release];
}

/*
* check if it's the servo we've been controlling and if so disable the controls
*/
- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[connectedField setTitleWithMnemonic:@"PhidgetTextLED Removed"];
	[serialField setTitleWithMnemonic:@""];
	[versionField setTitleWithMnemonic:@""];
	[row1Box setEditable:false];
	[row2Box setEditable:false];
	[row3Box setEditable:false];
	[row4Box setEditable:false];
	[pool release];
}

/*
* This gets run when the GUI gets displayed
*/
- (void)awakeFromNib
{
	[mainWindow setDelegate:self];
	
	CPhidgetTextLED_create(&led);
	
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
