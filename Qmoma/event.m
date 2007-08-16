//
//  event.m
//  Qamo
//
//  Created by Tim Place on 8/15/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "event.h"


@implementation event


- (id)init
{
    [super init];
    //children = [[NSMutableArray alloc] init];
//	delay = [[NSNumber alloc] init];
//	target = [[NSString alloc] init];
//	value = [[NSMutableArray alloc] init];
//	ramp = [[NSNumber alloc] init];
    return self;
}



- (void)dealloc
{
    [target release];
    [value release];
    [super dealloc];
}



- (void)setCue:(id)owner
{
    cue = owner;
}

- (id)getCue
{
    return cue;
}



- (void)setDelay:(NSNumber *)val
{
	[val retain];
	[delay release];
    delay = val;
}

- (NSNumber *)getDelay
{
    return delay;
}



- (void)setTarget:(NSString *)s
{
    [s retain];
    [target release];
    target = s;
}

- (NSString *)getTarget
{
    return target;
}



- (void)setValue:(NSString *)s
{
    [s retain];
    [value release];
    value = s;
}

- (NSString *)getValue
{
    return value;
}


- (void)setRamp:(NSNumber *)val
{
	[val retain];
	[ramp release];
    ramp = val;
}

- (NSNumber *)getRamp
{
    return ramp;
}


- (BOOL)expandable
{
    return false;
}



@end
