#import "PhidgetTextLCDController.h"

CPhidgetTextLCDHandle lcd;

@implementation PhidgetTextLCDController

- (IBAction)row1Changed:(id)sender
{
	CPhidgetTextLCD_setDisplayString(lcd,0,(char *)[[row1Box  stringValue] UTF8String]);
}

- (IBAction)row2Changed:(id)sender
{
	CPhidgetTextLCD_setDisplayString(lcd,1,(char *)[[row2Box  stringValue] UTF8String]);
}

- (IBAction)contrastChanged:(id)sender
{
	CPhidgetTextLCD_setContrast(lcd,[contrastSlider intValue]);
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

	CPhidget_getSerialNumber((CPhidgetHandle)lcd, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)lcd, &version);
	
	[connectedField setTitleWithMnemonic:@"PhidgetTextLCD Connected"];
	[serialField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];
	
	[row1Box setEditable:true];
	[row2Box setEditable:true];

	[pool release];
}

- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[connectedField setTitleWithMnemonic:@"PhidgetTextLCD Removed"];
	[serialField setTitleWithMnemonic:@""];
	[versionField setTitleWithMnemonic:@""];
	[row1Box setEditable:false];
	[row2Box setEditable:false];
	[pool release];
}

/*
* This gets run when the GUI gets displayed
*/
- (void)awakeFromNib
{
	[mainWindow setDelegate:self];
	
	CPhidgetTextLCD_create(&lcd);
	
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)lcd, gotAttach, self);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)lcd, gotDetach, self);
	
	CPhidget_open((CPhidgetHandle)lcd, -1);
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidget_close((CPhidgetHandle)lcd);
	CPhidget_delete((CPhidgetHandle)lcd);
	lcd = NULL;
	[NSApp terminate:self];
}
@end
