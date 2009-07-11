#import <Cocoa/Cocoa.h>
#import <AudioUnit/AudioUnit.h>
#import <AudioToolbox/AudioToolbox.h>

#import "TTBlueAPI.h"


const long kAudioUnitCustomProperty_FilterFrequencyResponse = 'prHz';


@interface BlueButter_UIView : NSView {	
//	IBOutlet AppleDemoFilter_GraphView	*graphView;
//	IBOutlet NSTextField				*cutoffFrequencyField;
//	IBOutlet NSTextField				*resonanceField;

	IBOutlet NSImageView*	imageView;			// ui widget that displays mImage
	NSImage*				mImage;				// this is the object to which we actually draw
	TTObjectPtr				myAUPainter;		// TTGraphics object that performs the drawing
	
    AudioUnit 				mAU;
	AUEventListenerRef		mAUEventListener;
	NSRect					mRect;
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
