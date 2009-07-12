/* 
 * TTGraphicsContext Object for Jamoma
 * Copyright © 2009 by Timothy Place
 * This object implements a light wrapper around Cairo
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPHICSCONTEXT_H__
#define __TTGRAPHICSCONTEXT_H__

#include "TTBlueAPI.h"

#ifdef TTGRAPHICS_EXTENSION
#include "cairo.h"
#endif


/****************************************************************************************************/
// Class Specification

typedef enum {
    TT_FONT_SLANT_NORMAL,
    TT_FONT_SLANT_ITALIC,
    TT_FONT_SLANT_OBLIQUE
} TTGraphicsFontSlant;

typedef enum {
    TT_FONT_WEIGHT_NORMAL,
    TT_FONT_WEIGHT_BOLD
} TTGraphicsFontWeight;



/**	Creates/Manages a drawing context.  Typically this context will be displayed in a TTGraphicsWindow.	
	For the moment at least, we are passing a pointer to a surface for the window to the constructor?.
	We may not want to share this data across classes though, and instead copy the data in the Window itself.
 */
class TTGraphicsContext : public TTObject {
	TTCLASS_SETUP(TTGraphicsContext)

public:
	
	// we do this so that external objects do not have to know about cairo
#ifdef TTGRAPHICS_EXTENSION
	cairo_t*			cairoContext;
#else
	TTPtr				cairoContext;
#endif
	
	
	void selectFontFace(TTCString family, TTGraphicsFontSlant slant, TTGraphicsFontWeight weight);
	void setFontSize(double size);
	void setSourceRGB(double r, double g, double b);
	void setSourceRGBA(double r, double g, double b, double a);
	void moveTo(double x, double y);
	void lineTo(double x, double y);
	void showText(TTCString text);
	
	void setLineWidth(double width);
	void arc(double xc, double yc, double radius, double angle1, double angle2);
	void stroke();
	void fill();
    void clip();
    void newPath();
    void rectangle(double x, double y, double width, double height);
	
};


#endif // __TTGRAPHICSCONTEXT_H__
