//
//  AccelView.h
//  CocoaAccelerometer
//
//  Created by Allanon on 09/11/05.
//  Copyright 2005 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AccelView : NSView {
	double xaxis, yaxis, zaxis;
}
- (void)setX:(double)number;
- (void)setY:(double)number;
- (void)setZ:(double)number;
- (void) circles:(CGContextRef)context:(CGRect)rect;
@end
