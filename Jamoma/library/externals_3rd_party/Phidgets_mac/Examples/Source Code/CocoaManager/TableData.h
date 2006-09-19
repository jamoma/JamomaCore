//
//  TableData.h
//  CocoaRFID
//
//  Created by Allanon on 25/01/06.
//  Copyright 2006 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@interface TableData : NSObject {
    NSString		*phidgetName;
	NSString		*phidgetVersion;
	NSString		*phidgetSerial;
	NSString		*phidgetTag;
	NSString		*phidgetType;
}

- (void)setPhidgetName:(NSString *)i;
- (NSString *)phidgetName;
- (void)setPhidgetVersion:(NSString *)i;
- (NSString *)phidgetVersion;
- (void)setPhidgetSerial:(NSString *)i;
- (NSString *)phidgetSerial;
- (void)setPhidgetTag:(NSString *)i;
- (NSString *)phidgetTag;
- (void)setPhidgetType:(NSString *)i;
- (NSString *)phidgetType;
- (BOOL)isEqual:(id)anObject;

@end