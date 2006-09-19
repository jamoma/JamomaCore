#import "PhidgetEncoderController.h"

CPhidgetEncoderHandle encoder;

@implementation PhidgetEncoderController

int gotAttach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetAdded];
	return 0;
}

int gotDetach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetRemoved];
	return 0;
}

int gotInputChange(CPhidgetEncoderHandle phid, void *context, int ind, int val) {
	[(id)context EncoderInputChange:ind:val];
	return 0;
}

int gotPositionChange(CPhidgetEncoderHandle phid, void *context, int ind, int time, int dir) {
	int position;
	CPhidgetEncoder_getEncoderPosition(encoder, ind, &position);
	[(id)context EncoderPositionChange:ind:position];
	return 0;
}

- (void)phidgetAdded
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	long serial, version;
	int numEncoders, numInputs;
	
	CPhidget_getSerialNumber((CPhidgetHandle)encoder, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)encoder, &version);
	CPhidgetEncoder_getNumInputs(encoder, &numInputs);
	CPhidgetEncoder_getNumEncoders(encoder, &numEncoders);
	
	[connectedField setTitleWithMnemonic:@"PhidgetEncoder Connected"];
	[serialField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];
	[numEncodersField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numEncoders]];
	[numInputsField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numInputs]];
	
	if(version >= 300 && version < 400)
	{
		[positionSlider setMaxValue:500000];
		[positionSlider setMinValue:-500000];
	}
	else
	{
		[positionSlider setMaxValue:250];
		[positionSlider setMinValue:-250];
	}
	
	[pool release];
}

- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	[connectedField setTitleWithMnemonic:@"PhidgetEncoder Removed"];
	[serialField setTitleWithMnemonic:@""];
	[versionField setTitleWithMnemonic:@""];
	[numInputsField setTitleWithMnemonic:@""];
	[numEncodersField setTitleWithMnemonic:@""];
	
	[pool release];
}

- (void)EncoderInputChange:(int)Index:(int)State
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	switch (Index) {
		case 0:
			[inputCheckBox setState:State];
			break;
		case 1:
			[inputCheckBox2 setState:State];
			break;
		case 2:
			[inputCheckBox3 setState:State];
			break;
		case 3:
			[inputCheckBox4 setState:State];
			break;
	}
	
	[pool release];
}

/* position change */
- (void)EncoderPositionChange:(int)Index:(int)Position
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	switch (Index) {
		case 0:
			[positionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", Position]];
			[positionSlider setIntValue:Position];
			break;
		case 1:
			[positionField2 setTitleWithMnemonic:[NSString stringWithFormat:@"%d", Position]];
			[positionSlider2 setIntValue:Position];
			break;
		case 2:
			[positionField3 setTitleWithMnemonic:[NSString stringWithFormat:@"%d", Position]];
			[positionSlider3 setIntValue:Position];
			break;
		case 3:
			[positionField4 setTitleWithMnemonic:[NSString stringWithFormat:@"%d", Position]];
			[positionSlider4 setIntValue:Position];
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
	
	
	CPhidgetEncoder_create(&encoder);
	
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)encoder, gotAttach, self);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)encoder, gotDetach, self);
	CPhidgetEncoder_set_OnInputChange_Handler(encoder, gotInputChange, self);
	CPhidgetEncoder_set_OnPositionChange_Handler(encoder, gotPositionChange, self);
	
	CPhidget_open((CPhidgetHandle)encoder, -1);
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidget_close((CPhidgetHandle)encoder);
	CPhidget_delete((CPhidgetHandle)encoder);
	encoder = NULL;
	[NSApp terminate:self];
}

@end
