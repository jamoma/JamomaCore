/* 
 * TTGraphicsPane Object for Jamoma
 * Copyright © 2009 by Timothy Place
 *
 * Like a TTGraphicsWindow, but without he window...
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTGraphicsPane.h"
#define thisTTClass TTGraphicsPane


TTGraphicsPane::TTGraphicsPane(const TTValue& v) :
	TTObject("TTGraphicsPane"), 
//	theWindow(NULL),
	context(NULL)
{
	TTPtr osContext = v;
	
//	registerAttributeWithSetter(title, kTypeSymbol);
	registerMessageSimple(front);
	registerMessageSimple(refresh);

	TT_ASSERT("TTGraphicsPane passed legit NSView pointer.", osContext != NULL);
	theContentView = (TTGraphicsContentView*)osContext;
	//v.clear();
	TTObjectInstantiate(TT("TTGraphicsContext"), (TTObjectPtr*)&context, v);
	theContentView->x = (TTGraphicsWindow*)this;
	
	// TODO: make bounds an attribute
	bounds.origin.x = 200;
	bounds.origin.y = 200;
	bounds.size.width = 600;
	bounds.size.height = 400;
	
	setAttributeValue(TT("title"), TT("Jamoma Graphics"));
}


TTGraphicsPane::~TTGraphicsPane()
{
	dispose();
	TTObjectRelease((TTObjectPtr*)&context);
}


TTErr TTGraphicsPane::dispose()
{
//	if (theWindow)
//		[theWindow release];	
	return kTTErrNone;
}


TTErr TTGraphicsPane::front()
{
//	if (!theWindow) {		
//		theWindow = [[NSWindow alloc] initWithContentRect:bounds 
//												styleMask:NSTitledWindowMask|NSClosableWindowMask 
//												  backing:NSBackingStoreBuffered 
//													defer:NO];
//
//		theContentView = [[TTGraphicsContentView alloc] initWithFrame:bounds];
//		theContentView->x = this;
//		[theWindow setContentView:theContentView];
//		
//		windowDelegate = [[TTCocoaWindowDelegate alloc] init];
//		windowDelegate->x = this;
//		[theWindow setDelegate:windowDelegate];
//		
//		updateTitle();	
//	}
//
//	[theWindow orderFrontRegardless];
//	[theWindow makeKeyWindow];
//
	return kTTErrNone;
}


TTErr TTGraphicsPane::refresh()
{
//	if (theWindow)
//		[theWindow display];
	return kTTErrNone;
}


TTErr TTGraphicsPane::updateTitle()
{
//	NSString*	nsTitle = [[NSString alloc] initWithCString:title->getCString()];
//
//	if (theWindow)
//		[theWindow setTitle:nsTitle];
	// TODO: are we leaking an NSString here?
	return kTTErrNone;
}


TTErr TTGraphicsPane::settitle(const TTValue& v)
{
//	title = v;
	return updateTitle();
}


TTErr TTGraphicsPane::draw()
{
	// when we are told to draw, that means that we need to tell all observers to send their drawing code
	// and we need to provide them with a context to which they can draw
	TTValue v = (TTObjectPtr)context;
	
	return observers->iterateObjectsSendingMessage(TT("draw"), v);
}

