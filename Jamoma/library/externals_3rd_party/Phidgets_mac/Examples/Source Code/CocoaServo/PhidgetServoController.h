/* PhidgetServoController */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidgetServoController : NSObject
{
    IBOutlet NSTextField *connectedField;
    IBOutlet NSTextField *numberOfServosField;
    IBOutlet NSTextField *serialField;
	IBOutlet NSTextField *versionField;
	IBOutlet id mainWindow;
}
- (IBAction)moveServo:(id)sender;
@end
