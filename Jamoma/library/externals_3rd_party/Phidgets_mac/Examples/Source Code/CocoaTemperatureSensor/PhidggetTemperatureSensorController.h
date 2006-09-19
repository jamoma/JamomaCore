/* PhidggetTemperatureSensorController */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidggetTemperatureSensorController : NSObject
{
    IBOutlet NSTextField *connectedField;
    IBOutlet NSTextField *numInputsField;
    IBOutlet NSTextField *serialField;
    IBOutlet NSTextField *temp0Field;
    IBOutlet NSTextField *temp1Field;
    IBOutlet NSTextField *versionField;
	IBOutlet id mainWindow;
}
@end
