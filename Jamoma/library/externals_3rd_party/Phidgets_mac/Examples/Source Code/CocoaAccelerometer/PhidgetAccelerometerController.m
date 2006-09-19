
#import "PhidgetAccelerometerController.h"
	
CPhidgetAccelerometerHandle accel;

@implementation PhidgetAccelerometerController

int gotAttach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetAdded];
	return 0;
}

int gotDetach(CPhidgetHandle phid, void *context) {
	[(id)context phidgetRemoved];
	return 0;
}

int gotAccel(CPhidgetAccelerometerHandle phid, void *context, int index, double value) {
	[(id)context gotAccelChange:index:value];
	return 0;
}

- (void)gotAccelChange:(int)index:(double)value
{
	int i=0;
	double out = 0;
	
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	if(index == 0) {
		xaxis[6] = value;
		for(i=0;i<6;i++) {
			xaxis[i] = xaxis[i+1];
			out = out + xaxis[i];
		}
		[customView setX:out/6.0];
		//[customView setX:[accelInfo getVal]];
	}
	else if(index == 1){
		yaxis[6] = value;
		for(i=0;i<6;i++) {
			yaxis[i] = yaxis[i+1];
			out = out + yaxis[i];
		}
		[customView setY:out/6.0];
		//[customView setY:[accelInfo getVal]];
	}
	else {
		zaxis[6] = value;
		for(i=0;i<6;i++) {
			zaxis[i] = zaxis[i+1];
			out = out + zaxis[i];
		}
		[customView setZ:out/6.0];
		//[customView setZ:[accelInfo getVal]];
	}
	
	double xaxis1, yaxis1, zaxis1;
	CPhidgetAccelerometer_getAcceleration(accel, 0, &xaxis1);
	CPhidgetAccelerometer_getAcceleration(accel, 1, &yaxis1);
	CPhidgetAccelerometer_getAcceleration(accel, 2, &zaxis1);
	
	//printf("X: %2.4f Y: %2.4f Z: %2.4f\n",xaxis1,yaxis1,zaxis1);
	
    [customView setNeedsDisplay:YES];
	
	[pool release];
}

- (void)phidgetAdded
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	long serial, version;
	int numAxes;

	CPhidget_getSerialNumber((CPhidgetHandle)accel, &serial);
	CPhidget_getDeviceVersion((CPhidgetHandle)accel, &version);
	CPhidgetAccelerometer_getNumAxis(accel,&numAxes);
	
	[connectedField setTitleWithMnemonic:@"PhidgetAccelerometer Connected"];
	[serialNumberField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", serial]];
	[versionField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", version]];
	[numberOfAxesField setTitleWithMnemonic:[NSString stringWithFormat:@"%i", numAxes]];

	[pool release];
}

- (void)phidgetRemoved
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	[connectedField setTitleWithMnemonic:@"PhidgetAccelerometer Removed"];
	[serialNumberField setTitleWithMnemonic:@""];
	[versionField setTitleWithMnemonic:@""];
	[numberOfAxesField setTitleWithMnemonic:@""];
	
	[pool release];
}

/*
* This gets run when the GUI gets displayed
*/
- (void)awakeFromNib
{
	[mainWindow setDelegate:self];
	
	CPhidgetAccelerometer_create(&accel);
	
	CPhidgetAccelerometer_set_OnAccelerationChange_Handler(accel, gotAccel, self);
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)accel, gotAttach, self);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)accel, gotDetach, self);
	
	CPhidget_open((CPhidgetHandle)accel, -1);
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidget_close((CPhidgetHandle)accel);
	CPhidget_delete((CPhidgetHandle)accel);
	accel = NULL;
	[NSApp terminate:self];
}

@end
