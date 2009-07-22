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


/**	An entity within the SpatDisplay that is located in 3d space. 
	Examples include mic positions, source locations, and speaker coords. */
class SpatDisplayEntity : TTElement {
public:
	TTFloat64		x;				///< x
	TTFloat64		y;				///< y 
	TTFloat64		z;				///< z  
	TTFloat64		yaw;			///< rotation on the horizontal plane
	TTFloat64		pitch;			///< rotation on the z axis
	TTFloat64		directivity;	///< how directional is the entity
	TTFloat64		intensity;		///< the intensity of the signal for the entity
	
	SpatDisplayEntity():
	x(0), y(0), z(0), yaw(0), pitch(0), directivity(0), intensity(0)
	{
		;
	}
};


/**	A basic user interface for spatial positioning. */
class SpatDisplay : TTObject {
	TTCLASS_SETUP(SpatDisplay)

	TTObjectPtr			graphicsSurface;
	TTGraphicsContext*	g;
	TTListPtr			sources;
	TTListPtr			microphones;
	TTFloat64			width;
	TTFloat64			height;
	
	
	TTErr setnumSources(const TTValue& newValue);
	TTErr getnumSources(TTValue& returnedValue);
	TTErr setnumMicrophones(const TTValue& newValue);
	TTErr getnumMicrophones(TTValue& returnedValue);
	TTErr drawSource(const TTValue& v);
	TTErr drawMicrophone(const TTValue& v);
	
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
	
	sources = new TTList;
	microphones = new TTList;
			
	//registerAttributeSimple(mode, kTypeSymbol);
	//registerAttributeSimple(position, kTypeFloat64);
	registerAttributeWithSetterAndGetter(numSources, kTypeUInt16);
	registerAttributeWithSetterAndGetter(numMicrophones, kTypeUInt16);
	registerMessageWithArgument(drawSource);
	registerMessageWithArgument(drawMicrophone);
	
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
	delete sources;
	delete microphones;
}


TTErr SpatDisplay::setnumSources(const TTValue& newValue)
{
	TTUInt16	oldNumSources = sources->getSize();
	TTUInt16	newNumSources = newValue;
	
	// we could try to preseve the old source data here
	// for now we are just going to be lazy and obliterate it
	if (oldNumSources)
		sources->free();
		// FIXME: memory leak: we free the TTValue, but not the entity pointed to by the value!
	
	for (TTUInt16 i=0; i<newNumSources; i++) {
		SpatDisplayEntity*	source = new SpatDisplayEntity;
		TTValue*			v = new TTValue(TTPtr(source));
		
		sources->append(v);
	}
	return kTTErrNone;
}

TTErr SpatDisplay::getnumSources(TTValue& returnedValue)
{
	returnedValue = sources->getSize();
	return kTTErrNone;
}


TTErr SpatDisplay::setnumMicrophones(const TTValue& newValue)
{
	TTUInt16	oldNumMicrophones = microphones->getSize();
	TTUInt16	newNumMicrophones = newValue;
	
	// we could try to preseve the old source data here
	// for now we are just going to be lazy and obliterate it
	if (oldNumMicrophones)
		microphones->clear();
	
	for (TTUInt16 i=0; i<newNumMicrophones; i++) {
		SpatDisplayEntity*	mic = new SpatDisplayEntity;
		microphones->append(TTPtr(mic));
	}
	return kTTErrNone;
}

TTErr SpatDisplay::getnumMicrophones(TTValue& returnedValue)
{
	returnedValue = microphones->getSize();
	return kTTErrNone;
}




TTErr SpatDisplay::paint()
{
	graphicsSurface->sendMessage(TT("clear"));
	return graphicsSurface->sendMessage(TT("draw"));
}


TTErr SpatDisplay::draw(const TTValue& v)
{
	char				cstr[16];
	TTFloat64			xc = width/2.0;
	TTFloat64			yc = height/2.0;
	TTGraphicsColor		fillColor(0.1, 0.1, 0.1, 1.0);
	TTGraphicsColor		borderColor(0.4, 0.4, 0.4, 1.0);
	TTFloat64			f;
	
	g = (TTGraphicsContext*)TTPtr(v);
	
	// Draw background
	g->setSourceRGBA(0.2, 0.2, 0.2, 1.0);
	g->rectangle(0.0, 0.0, width, height);
	g->fill();
	
	// Draw text
	g->selectFontFace("Helvetica Neue", TT_FONT_SLANT_NORMAL, TT_FONT_WEIGHT_NORMAL);
	g->setFontSize(18.0);
	g->setSourceRGBA(0.8, 0.8, 0.8, 1.0);
	g->moveTo(10.0, 20.0);
	g->showText("Spat Display");
	
	g->setFontSize(12.0);
	g->moveTo(width-100.0, height-60.0);
	snprintf(cstr, 16, "Hi there...");
	g->showText(cstr);
		
	// draw unit circle and grid
	g->filledCircle(xc, yc, (height/2.0) * 0.75, 3.0, fillColor, borderColor);
	fillColor.set(0.15, 0.15, 0.15, 1.0);
	g->filledCircle(xc, yc, (height/2.0) * 0.6,  3.0, fillColor, borderColor);
	g->filledCircle(xc, yc, (height/2.0) * 0.45, 1.0, fillColor, borderColor);
	g->filledCircle(xc, yc, (height/2.0) * 0.3,  1.0, fillColor, borderColor);
	g->filledCircle(xc, yc, (height/2.0) * 0.15, 1.0, fillColor, borderColor);
	
	f = sin(kTTPi*0.25);
	f = height * 0.6 * 0.5 * f;
	g->lineSegment(xc, height*0.2, xc, height*0.8, 1.0, borderColor);
	g->lineSegment(xc-(height*0.6*0.5), yc, xc+(height*0.6*0.5), yc, 1.0, borderColor);
	g->lineSegment(xc-f, yc-f, xc+f, yc+f, 1.0, borderColor);
	g->lineSegment(xc+f, yc-f, xc- f, yc+f, 1.0, borderColor);
	
	// draw moveable entities
	sources->iterate(this, TT("drawSource"));
	microphones->iterate(this, TT("drawMicrophone"));
		
	return kTTErrNone;
}


TTErr SpatDisplay::drawSource(const TTValue& v)
{
	SpatDisplayEntity*	source = (SpatDisplayEntity*)(TTPtr(v));
	TTGraphicsColor		fillColor(0.1, 0.5, 0.1, 1.0);
	TTGraphicsColor		borderColor(0.1, 0.7, 0.1, 1.0);

	g->filledCircle((width*0.5)+source->x, (height*0.5)+source->y, 3.0, 2.0, fillColor, borderColor);
	return kTTErrNone;
}


TTErr SpatDisplay::drawMicrophone(const TTValue& v)
{
	SpatDisplayEntity*	mic = (SpatDisplayEntity*)(TTPtr(v));
	TTGraphicsColor		fillColor(0.4, 0.1, 0.1, 1.0);
	TTGraphicsColor		borderColor(0.7, 0.1, 0.1, 1.0);
	
	g->filledCircle((width*0.5)+mic->x, (height*0.5)+mic->y, 3.0, 2.0, fillColor, borderColor);
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

