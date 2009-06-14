/* 
 * TTGraphicsPane Object for Jamoma
 * Copyright © 2009 by Timothy Place
 *
 * Like a TTGraphicsWindow, but without he window...
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPHICSPANE_H__
#define __TTGRAPHICSPANE_H__

#include "TTBlueAPI.h"
#include "TTGraphicsContext.h"
//#ifdef TTGRAPHICS_EXTENSION
#include "TTGraphicsWindow.h"	// contains objc NSView subclass (which should probably be in its own file)
//#endif

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



/**	Creates/Manages a 'Pane' within a window on the host operating system.	*/
class TTGraphicsPane : public TTObject {
//	TTSymbolPtr				title;			///< Window's title	
//	TTCocoaWindowDelegate*	windowDelegate;
	
public:
//	NSWindow*				theWindow;
#ifdef TTGRAPHICS_EXTENSION
	TTGraphicsContentView*	theContentView;
#else
	TTPtr					theContentView;
#endif
	NSRect					bounds;			///< Window coords
//	cairo_surface_t*		windowSurface;
	TTGraphicsContext*		context;

protected:
	TTErr updateTitle();

public:
	TTGraphicsPane(const TTValue& v);
	virtual ~TTGraphicsPane();

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


#endif // __TTGRAPHICSPANE_H__
