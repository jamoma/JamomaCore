//	TTObject
//	Root class for all objects in TTBlue 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import <stdio.h>
#import <Foundation/Foundation.h>
#import <objc/objc.h>


// The follow lets us be a subclass of something other than simply NSObject
// For example, we may wish to be a subclass of MaxObject when creating 
// plug-ins for MaxMSP
#ifndef TTOBJECT_BASE_CLASS
#define TTOBJECT_BASE_CLASS NSObject
#endif

#ifdef TTOBJECT_BASE_CLASS_HEADER
#include TTOBJECT_BASE_CLASS_HEADER
#endif


@interface TTObject : TTOBJECT_BASE_CLASS {
	@public
}


@end
