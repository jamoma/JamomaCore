/* 
 * SpatDisplay
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlueAPI.h"
#include "TTGraphicsContext.h"

#define thisTTClass			SpatDisplay
#define thisTTClassName		"SpatDisplay"
#define thisTTClassTags		"graphics, widget, spatialization"


/**	A basic user interface for spatial positioning. */
class SpatDisplay : TTObject {
	TTCLASS_SETUP(SpatDisplay)

	TTObjectPtr		graphicsSurface;
	TTFloat64		width;
	TTFloat64		height;
	TTFloat64		position; // range [0.0, 1.0]	
	
	TTErr paint();
	TTErr draw(const TTValue& v);
	TTErr getData(TTValue& v);
	
	TTErr mouseDown(const TTValue& v);
	TTErr mouseDragged(const TTValue& v);
	TTErr mouseUp(const TTValue& v);
	TTErr mouseEntered(const TTValue& v);
	TTErr mouseExited(const TTValue& v);
	TTErr mouseMoved(const TTValue& v);
	
};


TT_OBJECT_CONSTRUCTOR,
	graphicsSurface(NULL)
{
	arguments.get(0, width);
	arguments.get(1, height);
	
	TTObjectInstantiate(TT("TTGraphicsSurface"), &graphicsSurface, arguments);	// create the surface we will draw to
	graphicsSurface->registerObserverForNotifications(*this);			// cause this object to receive 'draw' messages from the window
	
	//registerAttributeSimple(mode, kTypeSymbol);
	registerAttributeSimple(position, kTypeFloat64);
	
	registerMessageSimple(paint);				// send my the Max object to tell our surface to paint
	registerMessageWithArgument(draw);			// callback from TTGraphics surface
	registerMessageWithArgument(getData);
	
	registerMessageWithArgument(mouseDown);
	registerMessageWithArgument(mouseDragged);
	registerMessageWithArgument(mouseUp);
	registerMessageWithArgument(mouseEntered);
	registerMessageWithArgument(mouseExited);
	registerMessageWithArgument(mouseMoved);
	
	//setAttributeValue(TT("mode"), TT("hello"));
	setAttributeValue(TT("position"), 0.25);
}


SpatDisplay::~SpatDisplay()
{
	graphicsSurface->unregisterObserverForNotifications(*this);
	TTObjectRelease(&graphicsSurface);
}


TTErr SpatDisplay::paint()
{
	graphicsSurface->sendMessage(TT("clear"));
	return graphicsSurface->sendMessage(TT("draw"));
}


TTErr SpatDisplay::draw(const TTValue& v)
{
	TTGraphicsContext* gc = (TTGraphicsContext*)TTPtr(v);
	char cstr[16];
	
	// Draw background
	gc->setSourceRGBA(0.2, 0.2, 0.2, 1.0);
	gc->rectangle(0.0, 0.0, width, height);
	gc->fill();
	
	// Draw text
	gc->selectFontFace("Helvetica Neue", TT_FONT_SLANT_NORMAL, TT_FONT_WEIGHT_NORMAL);
	gc->setFontSize(18.0);
	gc->setSourceRGBA(0.8, 0.8, 0.8, 1.0);
	gc->moveTo(10.0, 20.0);
	gc->showText("Spat Display");
	
	gc->setFontSize(12.0);
	gc->moveTo(width-100.0, height-60.0);
	snprintf(cstr, 16, "%ld Hz", (long)(position*20000.0));
	gc->showText(cstr);
	
	// position attr is [0.0, 1.0], and here we convert it into an angle in degrees [0.0, 360.0]
	double deg = 180.0 - (position * 360.0) + 90.0;
	
	// draw dial
	double xc = width/2.0;
	double yc = height/2.0;
	double radius = (height/2.0) * 0.8;
	double angle1 = (360.0 - deg) * (kTTPi/180.0);  // angles for cairo are specified in radians
	double angle2 = 90.0 * (kTTPi/180.0);
	
	gc->moveTo(width/2.0, height/2.0);
	gc->setSourceRGBA(0.4, 0.4, 0.4, 1.0);
	gc->setLineWidth(10.0);
	gc->arc(xc, yc, radius, angle2, angle1);
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
	
	return kTTErrNone;
}


TTErr SpatDisplay::getData(TTValue& v)
{
	return graphicsSurface->sendMessage(TT("getData"), v);
}



TTErr SpatDisplay::mouseDown(const TTValue& v)
{
	return kTTErrGeneric;	// return an error if we don't handle the mouse gesture
}

TTErr SpatDisplay::mouseDragged(const TTValue& v)
{
	TTFloat64 x;
	TTFloat64 y;
	
	v.get(0, x);
	v.get(1, y);
	
	if (x < width && x > 0 && y < height && y > 0) {
		// logMessage("groovy: %f, %f\n", x, y);
		// TODO: the above debug message causes memory corruption!
		
		setAttributeValue(TT("position"), y/height);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;	// return an error if we don't handle the mouse gesture
}

TTErr SpatDisplay::mouseUp(const TTValue& v)
{
	return kTTErrGeneric;	// return an error if we don't handle the mouse gesture
}

TTErr SpatDisplay::mouseEntered(const TTValue& v)
{
	return kTTErrGeneric;	// return an error if we don't handle the mouse gesture
}

TTErr SpatDisplay::mouseExited(const TTValue& v)
{
	return kTTErrGeneric;	// return an error if we don't handle the mouse gesture
}

TTErr SpatDisplay::mouseMoved(const TTValue& v)
{
	return kTTErrGeneric;	// return an error if we don't handle the mouse gesture
}




extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTBlueInit();
	SpatDisplay::registerClass();
	return kTTErrNone;
}

