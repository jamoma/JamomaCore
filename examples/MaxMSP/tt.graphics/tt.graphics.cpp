/* 
 *	tt.graphics
 *	External object for Max/MSP
 *	Draw graphics in a Window
 *	Example project for Jamoma DSP
 *	Copyright © 2009 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTClassWrapperMax.h"
#include "TTGraphicsContext.h"
#define thisTTClass TTGraphicsExample


class TTGraphicsExample : public TTObject {
	TTObjectPtr	graphicsWindow;
	TTSymbolPtr	mode;
	
public:
	
	// Constructor
	TTGraphicsExample(const TTValue &v) :
		TTObject("TTGraphicsExample"), 
		graphicsWindow(NULL)
	{
		TTObjectInstantiate(TT("TTGraphicsWindow"), &graphicsWindow, v);	// create the window
		graphicsWindow->registerObserverForNotifications(*this);			// cause this object to receive 'draw' messages from the window

		registerAttributeWithSetter(mode, kTypeSymbol);
		registerMessageSimple(front);
		registerMessageSimple(refresh);
		registerMessageWithArgument(draw);
		
		setAttributeValue(TT("mode"), TT("hello"));
	}
	
	// Destructor
	virtual ~TTGraphicsExample()
	{
		graphicsWindow->unregisterObserverForNotifications(*this);
		TTObjectRelease(&graphicsWindow);
	}
	
	
	TTErr front()
	{
		return graphicsWindow->sendMessage(TT("front"));
	}
	
	TTErr refresh()
	{
		return graphicsWindow->sendMessage(TT("refresh"));
	}
	
	TTErr setmode(const TTValue& v)
	{
		mode = v;
		return refresh();
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
        else if (mode == TT("clip")) {
            gc->arc(128.0, 128.0, 76.8, 0, 2.0 * kTTPi);
            gc->clip();

            gc->newPath(); // current path is not consumed by clip()

            gc->rectangle(0, 0, 256, 256);
            gc->fill();
            gc->setSourceRGB(0, 1, 0);
            gc->moveTo(0, 0);
            gc->lineTo(256, 256);
            gc->moveTo(256, 0);
            gc->lineTo(0, 256);
            gc->setLineWidth(10.0);
            gc->stroke();
        }
		
		// left as an exercise for someone else: implement the other examples @ http://cairographics.org/samples/
		
		return kTTErrNone;
	}
};




// Because we have created this TTGraphicsExample class outside of the main TTBlue framework, 
// we have to define our own factory method that is used to create a new instance of our object.

TTObject* instantiateTTGraphicsExample(TTSymbolPtr className, TTValue& arguments)
{
	return new TTGraphicsExample(arguments);
}


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	// First, we have to register our custom subclass with the TTBlue framework.
	TTBlueInit();
	TTClassRegister(TT("TTGraphicsExample"), "graphics", &instantiateTTGraphicsExample);
	
	// Then we are able to wrap it as a Max class.
	return wrapTTClassAsMaxClass(TT("TTGraphicsExample"), "tt.graphics", NULL);
}

