/* PhidgetLEDControllers */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidgetLEDControllers : NSObject
{
    IBOutlet NSSlider *brightnessSlider;
    IBOutlet NSTextField *connectedField;
    IBOutlet id mainWindow;
    IBOutlet NSTextField *numLEDsField;
    IBOutlet NSTextField *serialField;
    IBOutlet NSTextField *versionField;
}
- (IBAction)out:(id)sender;
- (IBAction)slide:(id)sender;
@end
