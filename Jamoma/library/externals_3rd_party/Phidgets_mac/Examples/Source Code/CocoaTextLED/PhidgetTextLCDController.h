/* PhidgetTextLCDController */

#import <Cocoa/Cocoa.h>

@interface PhidgetTextLCDController : NSObject
{
    IBOutlet NSTextField *connectedField;
    IBOutlet PhidgetInfo *phidgetInfo;
    IBOutlet NSTextField *row1Box;
    IBOutlet NSTextField *row2Box;
    IBOutlet NSTextField *row3Box;
    IBOutlet NSTextField *row4Box;
    IBOutlet NSTextField *serialField;
    IBOutlet NSTextField *versionField;
}
- (IBAction)row1Changed:(id)sender;
- (IBAction)row2Changed:(id)sender;
- (IBAction)row3Changed:(id)sender;
- (IBAction)row4Changed:(id)sender;
@end
