/* PhidgetMotorController */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidgetMotorController : NSObject
{
    IBOutlet NSTextField *connectedField;
    IBOutlet id inputs;
    IBOutlet NSTextField *numInputsField;
    IBOutlet NSTextField *numMotorsField;
    IBOutlet NSTextField *serialField;
    IBOutlet NSTextField *speed0Field;
    IBOutlet NSTextField *speed1Field;
    IBOutlet NSTextField *versionField;
	IBOutlet id mainWindow;
}
- (IBAction)accel0:(id)sender;
- (IBAction)accel1:(id)sender;
- (IBAction)speed0:(id)sender;
- (IBAction)speed1:(id)sender;
@end
