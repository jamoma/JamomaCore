#import <Cocoa/Cocoa.h>
#import <AudioUnit/AudioUnit.h>
#import <AudioToolbox/AudioToolbox.h>

#import "TTBlueAPI.h"

//#import "BlueButter_GraphView.h"
//#import "Filter.h"

const long kAudioUnitCustomProperty_FilterFrequencyResponse = 'prHz';

//@interface AppleDemoFilter_UIView : NSView
@interface BlueButter_UIView : NSView
//@interface BlueButter_UIView : TTGraphicsContentView
{	
//	IBOutlet AppleDemoFilter_GraphView	*graphView;
//	IBOutlet NSTextField				*cutoffFrequencyField;
//	IBOutlet NSTextField				*resonanceField;
	IBOutlet NSImageView				*imageView;
	
	TTObjectPtr				myAUPainter;
	
    // Other Members
    AudioUnit 				mAU;
	AUEventListenerRef		mAUEventListener;
	
	NSRect					mRect;
	
//	FrequencyResponse 	   *mData;				// the data used to draw the filter curve
//	NSColor				   *mBackgroundColor;	// the background color (pattern) of the view
	
	NSImage*			mImage;
//	NSImageView*		mImageView;
}

#pragma mark ____ PUBLIC FUNCTIONS ____
- (void) setAU:(AudioUnit)inAU;
- (void) awakeFromNib;

#pragma mark ____ INTERFACE ACTIONS ____
- (IBAction) cutoffFrequencyChanged:(id)sender;
- (IBAction) resonanceChanged:(id)sender;

#pragma mark ____ PRIVATE FUNCTIONS
- (void)priv_synchronizeUIWithParameterValues;
- (void)priv_addListeners;
- (void)priv_removeListeners;

#pragma mark ____ LISTENER CALLBACK DISPATCHEE ____
- (void)priv_eventListener:(void *) inObject event:(const AudioUnitEvent *)inEvent value:(Float32)inValue;
@end
