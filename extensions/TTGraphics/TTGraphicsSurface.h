/* 
 * TTGraphicsSurface Object for Jamoma
 * Copyright © 2009 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPHICSSURFACE_H__
#define __TTGRAPHICSSURFACE_H__

#include "TTBlueAPI.h"

#ifdef TT_PLATFORM_MAC
//#include <Carbon/Carbon.h>
//#include <Cocoa/Cocoa.h>
#include "cairo-quartz.h"
#else
#include "cairo.h"
#endif

class TTGraphicsContext;


/****************************************************************************************************/
// Class Specification


/**	Creates/Manages a graphics surface (image) in the Cairo sense of a surface.	*/
class TTGraphicsSurface : public TTObject {
	TTCLASS_SETUP(TTGraphicsSurface)

	cairo_surface_t*		surface;
	TTGraphicsContext*		context;		///< context used for drawing

public:
	
	/**	Constructor	*/
//	TTGraphicsSurface(TTValue& arguments);
	
	/**	Destructor	*/
//	virtual ~TTGraphicsSurface();
	
	/**	Clear the contents to a completely transparent state. */
	TTErr clear();
	
	/** Request a re-draw to our surface.	*/
	TTErr draw();
	
	/**	Request surface data. */
	TTErr getData(TTValue& returnedData);
};


#endif // __TTGRAPHICSSURFACE_H__
