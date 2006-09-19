/* PhidgetManagerController */

#import <Cocoa/Cocoa.h>
#include <Phidget21/phidget21.h>

@interface PhidgetManagerController : NSObject
{
	IBOutlet id mainWindow;
    IBOutlet id tagsTable;
    NSMutableArray *tags;
}
@end
