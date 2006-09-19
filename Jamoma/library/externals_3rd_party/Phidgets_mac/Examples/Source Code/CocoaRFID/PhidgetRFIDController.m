#import "PhidgetRFIDController.h"

CPhidgetRFIDHandle rfid=0;

@implementation PhidgetRFIDController

int gotAttach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetAdded];
	return 0;
}

int gotDetach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetRemoved];
	return 0;
}

int gotTag(CPhidgetRFIDHandle phid, void *context, unsigned char *tag) {
	[(id)context RFIDTag:tag];
	return 0;
}

int lostTag(CPhidgetRFIDHandle phid, void *context, unsigned char *tag) {
	[(id)context RFIDTagLost];
	return 0;
}

- (void)phidgetAdded
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	long serial, version;
	int numOutputs;

	CPhidget_getSerialNumber((CPhidgetHandle)rfid, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)rfid, &version);
	CPhidgetRFID_getNumOutputs(rfid, &numOutputs);
	
	[connectedField setTitleWithMnemonic:@"PhidgetRFID Connected"];
	[serialField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];
	[numberOfOutputsField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numOutputs]];
	
	
	[antennaCheck setState:0];
	[externalLEDCheck setState:0];
	[fiveVCheck setState:0];
	[onboardLEDCheck setState:0];
	if(numOutputs==2) {
		[antennaCheck setEnabled:true];
		[externalLEDCheck setEnabled:true];
		[fiveVCheck setEnabled:true];
		[onboardLEDCheck setEnabled:true];
		
		[onboardLEDCheck setState:true];
		[antennaCheck setState:true];
		CPhidgetRFID_setOutputState(rfid, 2,1);
		CPhidgetRFID_setOutputState(rfid, 3,1);
	}
	else {
		[antennaCheck setState:1];
		[antennaCheck setEnabled:false];
		[externalLEDCheck setEnabled:false];
		[fiveVCheck setEnabled:false];
		[onboardLEDCheck setEnabled:false];
	}

	[pool release];
}

- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[connectedField setTitleWithMnemonic:@"PhidgetRFID Removed"];
	[serialField setTitleWithMnemonic:@""];
	[versionField setTitleWithMnemonic:@""];
	[numberOfOutputsField setTitleWithMnemonic:@""];
	[antennaCheck setState:0];
	[externalLEDCheck setState:0];
	[fiveVCheck setState:0];
	[onboardLEDCheck setState:0];
	[antennaCheck setEnabled:false];
	[externalLEDCheck setEnabled:false];
	[fiveVCheck setEnabled:false];
	[onboardLEDCheck setEnabled:false];
	[pool release];
}

/*
* got a tag
*/
- (void)RFIDTag:(unsigned char *)tag
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[tagField setTitleWithMnemonic:[NSString stringWithFormat:@"%02x%02x%02x%02x%02x\n",tag[0],tag[1],tag[2],tag[3],tag[4]]];
	[pool release];
}

/*
* lost a tag
*/
- (void)RFIDTagLost
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[tagField setTitleWithMnemonic:@""];
	[pool release];
}

- (IBAction)antennaChecked:(id)sender
{
	CPhidgetRFID_setOutputState(rfid, 3,[sender state]);
}

- (IBAction)externalLEDChecked:(id)sender
{
	CPhidgetRFID_setOutputState(rfid, 1,[sender state]);
}

- (IBAction)fiveVChecked:(id)sender
{
	CPhidgetRFID_setOutputState(rfid, 0,[sender state]);
}

- (IBAction)onboardLEDChecked:(id)sender
{
	CPhidgetRFID_setOutputState(rfid, 2,[sender state]);
}

/*
* This gets run when the GUI gets displayed
*/
- (void)awakeFromNib
{
	[mainWindow setDelegate:self];
	
	CPhidgetRFID_create(&rfid);
	
	CPhidgetRFID_set_OnTag_Handler(rfid, gotTag, self);
	CPhidgetRFID_set_OnTagLost_Handler(rfid, lostTag, self);
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)rfid, gotAttach, self);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)rfid, gotDetach, self);
	
	CPhidget_open((CPhidgetHandle)rfid, -1);
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidget_close((CPhidgetHandle)rfid);
	CPhidget_delete((CPhidgetHandle)rfid);
	rfid = NULL;
	[NSApp terminate:self];
}

@end
