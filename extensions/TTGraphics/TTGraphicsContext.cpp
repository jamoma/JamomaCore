/* 
 * TTGraphicsContext Object for Jamoma
 * Copyright © 2009 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTGraphicsContext.h"
#define thisTTClass TTGraphicsContext


TTGraphicsContext::TTGraphicsContext(const TTValue& v)
: TTObject("TTGraphicsContext")
{
//	TTPtr surface = v;
//	cairoRenderSurface = (cairo_surface_t*)TTPtr(v);
//	cairoRenderSurface = cairo_image_surface_create(CAIRO_FORMAT_ARGB32, 240, 80);
//	cairoContext = cairo_create(cairoRenderSurface);

	

}


TTGraphicsContext::~TTGraphicsContext()
{
	// 1. Free the context
//	cairo_destroy (cairoContext);
	// we don't own the cairoContext, it is given to us by a higher power (e.g. the GraphicsWindow or some other entity)
	
	// 2. Free the surface
	// TODO: the TTGraphicsWindow owns the surface, so it should free it (or at least comment on why it isn't freeing it)
//	cairo_surface_destroy (cairoRenderSurface);
}





void TTGraphicsContext::selectFontFace(TTCString family, TTGraphicsFontSlant slant, TTGraphicsFontWeight weight)
{
	cairo_select_font_face(cairoContext, family, (cairo_font_slant_t)slant, (cairo_font_weight_t)weight);
}

void TTGraphicsContext::setFontSize(double size)
{
	cairo_set_font_size(cairoContext, size);
}

void TTGraphicsContext::setSourceRGB(double r, double g, double b)
{
	cairo_set_source_rgb(cairoContext, r, g, b);
}

void TTGraphicsContext::moveTo(double x, double y)
{
	cairo_move_to(cairoContext, x, y);
}

void TTGraphicsContext::showText(TTCString text)
{
	cairo_show_text(cairoContext, text);
}

