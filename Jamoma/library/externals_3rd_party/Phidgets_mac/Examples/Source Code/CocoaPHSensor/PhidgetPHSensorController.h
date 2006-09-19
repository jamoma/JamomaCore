/* PhidgetPHSensorController */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidgetPHSensorController : NSObject
{
    IBOutlet id connectedField;
    IBOutlet id phField;
    IBOutlet id serialField;
    IBOutlet id versionField;
	IBOutlet id mainWindow;
}
@end
