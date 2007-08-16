//
//  event.h
//  Qamo
//
//  Created by Tim Place on 8/15/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface event : NSObject {
	id				cue;		// we cache the owning cue here
	NSNumber		*delay;
	NSString		*target;
	NSString		*value;
	NSNumber		*ramp;
}

- (id)init;
- (void)dealloc;
- (void)setCue:(id)owner;
- (id)getCue;
- (void)setDelay:(NSNumber *)val;
- (NSNumber *)getDelay;
- (void)setTarget:(NSString *)s;
- (NSString *)getTarget;
- (void)setValue:(NSString *)s;
- (NSString *)getValue;
- (void)setRamp:(NSNumber *)val;
- (NSNumber *)getRamp;
- (BOOL)expandable;

@end
