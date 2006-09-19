/* PhidgetWeightSensorController */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidgetWeightSensorController : NSObject
{
    IBOutlet id connectedField;
    IBOutlet id serialField;
    IBOutlet id versionField;
    IBOutlet id weightField;
    IBOutlet id weightSlider;
	IBOutlet id mainWindow;
}
@end
