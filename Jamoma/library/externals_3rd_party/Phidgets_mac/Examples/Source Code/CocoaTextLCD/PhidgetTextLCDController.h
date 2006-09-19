/* PhidgetTextLCDController */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidgetTextLCDController : NSObject
{
    IBOutlet NSTextField *connectedField;
    IBOutlet NSSlider *contrastSlider;
    IBOutlet NSTextField *row1Box;
    IBOutlet NSTextField *row2Box;
    IBOutlet NSTextField *serialField;
    IBOutlet NSTextField *versionField;
	IBOutlet id mainWindow;
}
- (IBAction)contrastChanged:(id)sender;
- (IBAction)row1Changed:(id)sender;
- (IBAction)row2Changed:(id)sender;
@end
