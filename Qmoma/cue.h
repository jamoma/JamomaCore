//
//  cue.h
//  Qamo
//
//  Created by Tim Place on 8/15/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "event.h"

@interface cue : NSObject {
	NSString		*cuename;
	NSString		*description;
	NSMutableArray	*events;
}

- (void)setCueName:(NSString *)s;
- (NSString *)getCueName;
- (void)setCueDescription:(NSString *)s;
- (NSString *)getCueDescription;
- (void)addEvent:(event *)n;
- (event *)eventAtIndex:(int)i;
- (int)eventCount;
- (BOOL)expandable;

@end
