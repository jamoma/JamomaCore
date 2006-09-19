/* PhidgetRFIDController */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidgetRFIDController : NSObject
{
    IBOutlet NSButton *antennaCheck;
    IBOutlet NSTextField *connectedField;
    IBOutlet NSButton *externalLEDCheck;
    IBOutlet NSButton *fiveVCheck;
    IBOutlet NSTextField *numberOfOutputsField;
    IBOutlet NSButton *onboardLEDCheck;
    IBOutlet NSTextField *serialField;
    IBOutlet NSTextField *versionField;
	IBOutlet id tagField;
	IBOutlet id mainWindow;
}
- (IBAction)antennaChecked:(id)sender;
- (IBAction)externalLEDChecked:(id)sender;
- (IBAction)fiveVChecked:(id)sender;
- (IBAction)onboardLEDChecked:(id)sender;
@end
