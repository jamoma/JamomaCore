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


/**	A basic user interface for spatial positioning. */
class SpatDisplay : public TTObject {
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

