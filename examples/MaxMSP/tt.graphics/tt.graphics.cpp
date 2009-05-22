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
//#include "TTGraphicsWindow.h"
#include "TTGraphicsContext.h"
#define thisTTClass TTGraphicsExample


class TTGraphicsExample : public TTObject {
	TTObjectPtr	graphicsWindow;
	
public:
	
	// Constructor
	TTGraphicsExample(const TTValue &v) :
		TTObject("TTGraphicsExample"), 
		graphicsWindow(NULL)
	{
		TTObjectInstantiate(TT("TTGraphicsWindow"), &graphicsWindow, v);	// create the window
		graphicsWindow->registerObserverForNotifications(*this);			// cause this object to receive 'draw' messages from the window

		registerMessageSimple(front);
		registerMessageWithArgument(draw);
	}
	
	// Destructor
	virtual ~TTGraphicsExample()
	{
		graphicsWindow->unregisterObserverForNotifications(*this);
	}
	
	
	TTErr front()
	{
		return graphicsWindow->sendMessage(TT("front"));
	}
	
	
	TTErr draw(const TTValue& v)
	{
		TTGraphicsContext* gc = (TTGraphicsContext*)TTPtr(v);
		
		gc->selectFontFace("serif", TT_FONT_SLANT_NORMAL, TT_FONT_WEIGHT_BOLD);
		gc->setFontSize(32.0);
		gc->setSourceRGB(0.0, 0.0, 1.0);
		gc->moveTo(10.0, 50.0);
		gc->showText("Hello world!");
		
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

