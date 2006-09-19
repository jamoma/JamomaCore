/* PhidgetAccelerometerController */

#import <Cocoa/Cocoa.h>
#import "AccelView.h"
#include <Phidget21/phidget21.h>

@interface PhidgetAccelerometerController : NSObject
{
    IBOutlet NSTextField *connectedField;
    IBOutlet AccelView *customView;
    IBOutlet NSTextField *numberOfAxesField;
    IBOutlet NSTextField *serialNumberField;
    IBOutlet NSTextField *versionField;
	IBOutlet id mainWindow;
	
	double xaxis[7], yaxis[7], zaxis[7];
}
@end
