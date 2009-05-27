/* 
 * TTGraphicsSurface Object for Jamoma
 * Copyright © 2009 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlueAPI.h"
#include "TTGraphicsSurface.h"
#include "TTGraphicsContext.h"
#define thisTTClass TTGraphicsSurface


TTGraphicsSurface::TTGraphicsSurface(const TTValue& v)
	: TTObject("TTGraphicsSurface"),
	  context(NULL)
{
	TTInt32	width = 200.0;
	TTInt32	height = 200.0;
	
	if (v.getSize() == 2) {
		v.get(0, width);
		v.get(1, height);
	}
	
	TTObjectInstantiate(TT("TTGraphicsContext"), (TTObjectPtr*)&context, v);
	//surface = cairo_quartz_surface_create(CAIRO_FORMAT_ARGB32, width, height);
	surface = cairo_image_surface_create(CAIRO_FORMAT_ARGB32, width, height);
	context->cairoContext = cairo_create(surface);
	
	registerMessageSimple(draw);
	registerMessageSimple(clear);
	registerMessageWithArgument(getData);
}


TTGraphicsSurface::~TTGraphicsSurface()
{
	cairo_destroy(context->cairoContext);
	cairo_surface_destroy(surface);
	TTObjectRelease((TTObjectPtr*)&context);
}


TTErr TTGraphicsSurface::clear()
{
	cairo_save(context->cairoContext);
	cairo_set_operator(context->cairoContext, CAIRO_OPERATOR_CLEAR);
	cairo_paint(context->cairoContext);
	cairo_restore(context->cairoContext);
	return kTTErrNone;
}


TTErr TTGraphicsSurface::draw()
{
	// when we are told to draw, that means that we need to tell all observers to send their drawing code
	// and we need to provide them with a context to which they can draw
	TTValue v = (TTObjectPtr)context;
	
	return observers->iterateObjectsSendingMessage(TT("draw"), v);
}


TTErr TTGraphicsSurface::getData(TTValue& returnedData)
{
	unsigned char*	data = cairo_image_surface_get_data(surface);
	int				width = cairo_image_surface_get_width(surface);
	int				height = cairo_image_surface_get_height(surface);
	int				stride = cairo_image_surface_get_stride(surface);
	
	returnedData.clear();
	returnedData.append(TTPtr(data));
	returnedData.append(width);
	returnedData.append(height);
	returnedData.append(stride);
	
	return kTTErrNone;
}
