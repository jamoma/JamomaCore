/* PhidgetEncoderController */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidgetEncoderController : NSObject
{
    IBOutlet NSTextField *connectedField;
    IBOutlet NSButton *inputCheckBox;
    IBOutlet NSButton *inputCheckBox2;
    IBOutlet NSButton *inputCheckBox3;
    IBOutlet NSButton *inputCheckBox4;
    IBOutlet NSTextField *numEncodersField;
    IBOutlet NSTextField *numInputsField;
    IBOutlet NSTextField *positionField;
    IBOutlet NSTextField *positionField2;
    IBOutlet NSTextField *positionField3;
    IBOutlet NSTextField *positionField4;
    IBOutlet NSSlider *positionSlider;
    IBOutlet NSSlider *positionSlider2;
    IBOutlet NSSlider *positionSlider3;
    IBOutlet NSSlider *positionSlider4;
    IBOutlet NSTextField *serialField;
    IBOutlet NSTextField *versionField;
	IBOutlet id mainWindow;
}
@end
