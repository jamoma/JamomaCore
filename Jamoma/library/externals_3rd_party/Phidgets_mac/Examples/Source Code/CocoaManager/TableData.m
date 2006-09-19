//
//  TableData.m
//  CocoaRFID
//
//  Created by Allanon on 25/01/06.
//  Copyright 2006 __MyCompanyName__. All rights reserved.
//

#import "TableData.h"

@implementation TableData
- (id)init {
    self = [super init];
    if (self) {
        [self setPhidgetName: @"null"];
        [self setPhidgetVersion: @"null"];
        [self setPhidgetSerial: @"null"];
        [self setPhidgetTag: @"null"];
    }
    return self;
}

- (void)dealloc {
    [phidgetName release];
    phidgetName = nil;
    [phidgetVersion release];
    phidgetVersion = nil;
    [phidgetSerial release];
    phidgetSerial = nil;
    [phidgetTag release];
    phidgetTag = nil;
    [super dealloc];
}

- (void)setPhidgetName:(NSString *)i {
    if (phidgetName != i) {
        [phidgetName release];
        phidgetName = [i copy];
    }
}

- (NSString *)phidgetName {
    return [[phidgetName retain] autorelease];
}

- (void)setPhidgetVersion:(NSString *)i {
    if (phidgetVersion != i) {
        [phidgetVersion release];
        phidgetVersion = [i copy];
    }
}

- (NSString *)phidgetVersion {
    return [[phidgetVersion retain] autorelease];
}

- (void)setPhidgetSerial:(NSString *)i {
    if (phidgetSerial != i) {
        [phidgetSerial release];
        phidgetSerial = [i copy];
    }
}

- (NSString *)phidgetSerial {
    return [[phidgetSerial retain] autorelease];
}

- (void)setPhidgetTag:(NSString *)i {
    if (phidgetTag != i) {
        [phidgetTag release];
        phidgetTag = [i copy];
    }
}

- (NSString *)phidgetTag {
    return [[phidgetTag retain] autorelease];
}

- (void)setPhidgetType:(NSString *)i {
    if (phidgetType != i) {
        [phidgetType release];
        phidgetType = [i copy];
    }
}

- (NSString *)phidgetType {
    return [[phidgetType retain] autorelease];
}

- (BOOL)isEqual:(id)anObject{
	if (![phidgetName isEqual:[anObject phidgetName]]) return false;
	if (![phidgetSerial isEqual:[anObject phidgetSerial]]) return false;
	if (![phidgetVersion isEqual:[anObject phidgetVersion]]) return false;
	return true;
}

@end
