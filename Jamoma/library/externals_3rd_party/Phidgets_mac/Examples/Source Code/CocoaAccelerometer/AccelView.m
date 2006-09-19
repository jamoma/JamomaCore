//
//  AccelView.m
//  CocoaAccelerometer
//
//  Created by Allanon on 09/11/05.
//  Copyright 2005 __MyCompanyName__. All rights reserved.
//

#import "AccelView.h"
#import <ApplicationServices/ApplicationServices.h>

#define PI M_PI /* From <math.h>. */

/* A convenience function to get a CGRect from an NSRect. You can also use
 * the *(CGRect *)&nsRect sleight-of-hand, but this way is clearer. */

static inline CGRect
convertToCGRect(NSRect rect)
{
    return CGRectMake(rect.origin.x, rect.origin.y,
		      rect.size.width, rect.size.height);
}

@implementation AccelView

- (void)setX:(double)number{
	xaxis = number;
}

- (void)setY:(double)number{
	yaxis = number;
}

- (void)setZ:(double)number{
	zaxis = number;
}

- (id)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];
    if (self == nil)
	return nil;

    xaxis = 0;
	yaxis = 0;
	zaxis = 0;
	
    return self;
}

- (void)drawRect:(NSRect)rect
{
    CGRect r;
    CGContextRef context;

    r = convertToCGRect(rect);
    context = [[NSGraphicsContext currentContext] graphicsPort];
    
	[self circles:context:r];
}

-(void) circles:(CGContextRef)context:(CGRect)rect
{
    float w, h, r;

    /* Draw a cricle */
	w = CGRectGetWidth(rect);
	h = CGRectGetHeight(rect);
	r = (w < h) ? w/2.5 : h/2.5;
	
	CGContextBeginPath(context);
	CGContextAddArc(context, CGRectGetMidX(rect), CGRectGetMidY(rect), r, 0, 2*PI, false);
	CGContextSetRGBFillColor(context, 1, 1, 1, 0.5);
	CGContextFillPath(context);
	
	if(zaxis >= 0)
		CGContextSetRGBStrokeColor(context, 0, 0, 1.0, 1);
	else
		CGContextSetRGBStrokeColor(context, 1.0, 0, 0, 1);
	CGContextAddArc(context, CGRectGetMidX(rect), CGRectGetMidY(rect), zaxis*r, 0, 2*PI, false);
	CGContextStrokePath(context);
	
	CGContextSetRGBStrokeColor(context, 0, 0, 0, 1);
	CGContextMoveToPoint(context, CGRectGetMidX(rect), CGRectGetMidY(rect));
	CGContextAddLineToPoint(context, -1*xaxis*r + CGRectGetMidX(rect), yaxis*r + CGRectGetMidY(rect));
	CGContextStrokePath(context);
	CGContextClosePath(context);
}

@end
