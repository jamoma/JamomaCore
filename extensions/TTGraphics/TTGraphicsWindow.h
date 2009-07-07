/* 
 * TTGraphicsWindow Object for Jamoma
 * Copyright © 2009 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPHICSWINDOW_H__
#define __TTGRAPHICSWINDOW_H__

#include "TTBlueAPI.h"
#include "TTGraphicsContext.h"

#ifdef TT_PLATFORM_MAC
//#include <Carbon/Carbon.h>
#include <Cocoa/Cocoa.h>
#ifdef TTGRAPHICS_EXTENSION
#include "cairo-quartz.h"
#endif
#else
#include "cairo.h"
#endif


/****************************************************************************************************/
// Class Specifications

class TTGraphicsWindow;


@interface TTGraphicsContentView : NSView
{
@public
	TTGraphicsWindow*	x;
	TTBoolean			ownsWindow;
}
@end




// A delegate class used for getting events from the NSWindow used by AudioUnit's
// that have a Cocoa view instead of a Carbon view.

@interface TTCocoaWindowDelegate : NSObject
{
@public
	TTGraphicsWindow*	x;
}
- (BOOL)windowWillClose:(NSNotification *)notification;
@end



/**	Creates/Manages a Window on the host operating system.	*/
class TTGraphicsWindow : public TTObject {
	TTCLASS_SETUP(TTGraphicsWindow)

	TTSymbolPtr				title;			///< Window's title	
	TTCocoaWindowDelegate*	windowDelegate;
	
public:
	NSWindow*				theWindow;
	TTGraphicsContentView*	theContentView;
	NSRect					bounds;			///< Window coords
//	cairo_surface_t*		windowSurface;
	TTGraphicsContext*		context;

protected:
	TTErr updateTitle();

public:
//	TTGraphicsWindow(TTValue& arguments);
//	virtual ~TTGraphicsWindow();

	/**	Bring the window to the front and give it keyboard focus.	*/
	TTErr front();
	
	/**	Request a re-draw of the window.	*/
	TTErr refresh();
	
	/**	Accessor */
	TTErr settitle(const TTValue& v);
	
	// Needs to be public for C-callback, but not intended for public use...
	TTErr dispose();
	
	TTErr draw();
};


#endif // __TTGRAPHICSWINDOW_H__
