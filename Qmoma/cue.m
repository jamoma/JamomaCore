//
//  cue.m
//  Qamo
//
//  Created by Tim Place on 8/15/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "cue.h"


@implementation cue


- (id)init
{
    [super init];
    events = [[NSMutableArray alloc] init];
    return self;
}


- (void)dealloc
{
    [cuename release];
    [description release];
	[events release];
    [super dealloc];
}


- (void)setCueName:(NSString *)s
{
    [s retain];
    [cuename release];
    cuename = s;
}

- (NSString *)getCueName
{
    return cuename;
}



- (void)setCueDescription:(NSString *)s
{
    [s retain];
    [description release];
    description = s;
}

- (NSString *)getCueDescription
{
    return description;
}



- (void)addEvent:(event *)n
{
	[n setCue:self];
    [events addObject:n];
}


- (event *)eventAtIndex:(int)i
{
    return [events objectAtIndex:i];
}


- (int)eventCount
{
    return [events count];
}


- (BOOL)expandable
{
    return YES;
}


@end
