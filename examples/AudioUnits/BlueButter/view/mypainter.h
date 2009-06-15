/* 
 *	mypainter
 *	
 *	A simple little graphics drawing object to be used in Max
 *	Example project for Jamoma DSP
 *	Copyright © 2009 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

//#include "TTClassWrapperMax.h"
#include "TTGraphicsContext.h"
#define thisTTClass MyAUPainter


class MyAUPainter : public TTObject {
	TTObjectPtr	graphicsSurface;
	TTSymbolPtr	mode;
	
public:
	
	// Constructor
	MyAUPainter(const TTValue &v) :
	TTObject("MyAUPainter"), 
	graphicsSurface(NULL)
	{
		TTObjectInstantiate(TT("TTGraphicsSurface"), &graphicsSurface, v);	// create the surface we will draw to
		graphicsSurface->registerObserverForNotifications(*this);			// cause this object to receive 'draw' messages from the window
		
		registerAttributeSimple(mode, kTypeSymbol);
		registerMessageSimple(paint);			// send my the Max object to tell our surface to paint
		registerMessageWithArgument(draw);			// callback from TTGraphics surface
		registerMessageWithArgument(getData);
		
		setAttributeValue(TT("mode"), TT("hello"));
	}
	
	// Destructor
	virtual ~MyAUPainter()
	{
		graphicsSurface->unregisterObserverForNotifications(*this);
		TTObjectRelease(&graphicsSurface);
	}
	
	
	TTErr paint()
	{
		graphicsSurface->sendMessage(TT("clear"));
		return graphicsSurface->sendMessage(TT("draw"));
	}
	
	
	TTErr draw(const TTValue& v)
	{
		TTGraphicsContext* gc = (TTGraphicsContext*)TTPtr(v);
		
		if (mode == TT("hello")) {
			gc->selectFontFace("serif", TT_FONT_SLANT_NORMAL, TT_FONT_WEIGHT_BOLD);
			gc->setFontSize(32.0);
			gc->setSourceRGB(0.0, 0.0, 1.0);
			gc->moveTo(10.0, 50.0);
			gc->showText("Hello world!");
		}
		else if (mode == TT("arc")) {
			double xc = 128.0;
			double yc = 128.0;
			double radius = 100.0;
			double angle1 = 45.0  * (kTTPi/180.0);  // angles are specified
			double angle2 = 180.0 * (kTTPi/180.0);  // in radians
			
			gc->setLineWidth(10.0);
			gc->arc(xc, yc, radius, angle1, angle2);
			gc->stroke();
			
			gc->setSourceRGBA(1.0, 0.2, 0.2, 0.6);
			gc->setLineWidth(6.0);
			gc->arc(xc, yc, 10.0, 0, 2.0*kTTPi);
			gc->fill();
			
			gc->arc(xc, yc, radius, angle1, angle1);
			gc->lineTo(xc, yc);
			gc->arc(xc, yc, radius, angle2, angle2);
			gc->lineTo(xc, yc);
			gc->stroke();
		}
		
		// left as an exercise for someone else: implement the other examples @ http://cairographics.org/samples/
		
		return kTTErrNone;
	}
	
	
	TTErr getData(TTValue& v)
	{
		return graphicsSurface->sendMessage(TT("getData"), v);
	}	
};


TTObject* instantiateMyAUPainter(TTSymbolPtr className, TTValue& arguments)
{
	return new MyAUPainter(arguments);
}

