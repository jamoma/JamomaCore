/* qamoDataSource */

#import <Cocoa/Cocoa.h>
#import "cue.h"

@interface qamoDataSource : NSObject
{
    IBOutlet NSOutlineView *outlineView;    // I am the data source of this outline view
	NSMutableArray	*cues;
}

- (IBAction)addEvent:(id)sender;
- (IBAction)addCue:(id)sender;

@end
