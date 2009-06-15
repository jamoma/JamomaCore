#import "BlueButter_ViewFactory.h"
#import "BlueButter_UIView.h"
#import "mypainter.h"

@implementation BlueButterView_ViewFactory

static bool sInit = false;

// version 0
- (unsigned) interfaceVersion 
{
	return 0;
}


// string description of the Cocoa UI
- (NSString *) description 
{
	return @"BlueButter Custom View!";
}


// N.B.: this class is simply a view-factory,
// returning a new autoreleased view each time it's called.
- (NSView *)uiViewForAudioUnit:(AudioUnit)inAU withSize:(NSSize)inPreferredSize 
{
//	NSRect rect;
	
//	rect.origin.x = 0;
//	rect.origin.y = 0;
//	rect.size.width = 200.0;
//	rect.size.height = 200.0;
    
	if (!sInit) {
		TTBlueInit();
		TTClassRegister(TT("MyAUPainter"), "graphics", &instantiateMyAUPainter);
		sInit = true;
	}
	
	if (! [NSBundle loadNibNamed: @"CocoaView" owner:self]) {
		NSLog (@"Unable to load nib for view.");
		return nil;
	}
	
	
//	BlueButter_UIView* uiFreshlyLoadedView = [[BlueButter_UIView alloc] initWithFrame:rect];
	
    // This particular nib has a fixed size, so we don't do anything with the inPreferredSize argument.
    // It's up to the host application to handle.
    [uiFreshlyLoadedView setAU:inAU];
    
    NSView *returnView = uiFreshlyLoadedView;
    uiFreshlyLoadedView = nil;	// zero out pointer.  This is a view factory.  Once a view's been created
                                // and handed off, the factory keeps no record of it.
    
    return [returnView autorelease];
}

@end
