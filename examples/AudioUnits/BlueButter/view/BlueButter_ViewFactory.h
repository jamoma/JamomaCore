#import <Cocoa/Cocoa.h>
#import <AudioUnit/AUCocoaUIView.h>


@class BlueButter_UIView;

@interface BlueButterView_ViewFactory : NSObject <AUCocoaUIBase>
{
//    IBOutlet BlueButter_UIView*uiFreshlyLoadedView;	// This class is the File's Owner of the CocoaView nib
}															// This data member needs to be the same class as the view class the factory will return

- (NSString *) description;	// string description of the view

@end
