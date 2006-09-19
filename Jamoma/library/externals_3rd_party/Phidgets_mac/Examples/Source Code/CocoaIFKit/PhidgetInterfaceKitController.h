/* PhidgetInterfaceKitController */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidgetInterfaceKitController : NSObject
{
    IBOutlet id connectedField;
    IBOutlet id inputs;
    IBOutlet id mainWindow;
    IBOutlet id numInputsField;
    IBOutlet id numOutputsField;
    IBOutlet id numSensorsField;
    IBOutlet id outputs;
    IBOutlet id sensorFields;
    IBOutlet id sensorSliders;
    IBOutlet id serialField;
    IBOutlet id versionField;
	IBOutlet id sensitivityField;
}
- (IBAction)output:(id)sender;
- (IBAction)ratiometric:(id)sender;
- (IBAction)sensitivity:(id)sender;
@end
