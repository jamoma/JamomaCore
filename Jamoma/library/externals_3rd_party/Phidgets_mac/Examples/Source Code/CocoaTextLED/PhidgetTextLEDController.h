/* PhidgetTextLEDController */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidgetTextLEDController : NSObject
{
    IBOutlet NSTextField *connectedField;
    IBOutlet NSTextField *row1Box;
    IBOutlet NSTextField *row2Box;
    IBOutlet NSTextField *row3Box;
    IBOutlet NSTextField *row4Box;
    IBOutlet NSTextField *serialField;
    IBOutlet NSTextField *versionField;
	IBOutlet id mainWindow;
}
- (IBAction)row1Changed:(id)sender;
- (IBAction)row2Changed:(id)sender;
- (IBAction)row3Changed:(id)sender;
- (IBAction)row4Changed:(id)sender;
@end
