/* 
 * TTGraphics
 * Extension Class for TTBlue
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlueAPI.h"
#include "TTGraphicsWindow.h"
#include "TTGraphicsContext.h"
#include "TTGraphicsSurface.h"

/*
extern "C" TT_EXTENSION_EXPORT TTObjectPtr instantiateTTGraphicsObject(TTSymbolPtr className, TTValue& arguments)
{	
	if(className == TT("TTGraphicsWindow"))
		return new TTGraphicsWindow(arguments);
	else if(className == TT("TTGraphicsContext"))
		return new TTGraphicsContext(arguments);
	else if(className == TT("TTGraphicsSurface"))
		return new TTGraphicsSurface(arguments);
	return NULL;
}
*/

extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTBlueInit();

	//TTClassRegister(TT("TTGraphicsWindow"),		"graphics",	&instantiateTTGraphicsObject);
	//TTClassRegister(TT("TTGraphicsContext"),	"graphics",	&instantiateTTGraphicsObject);
	//TTClassRegister(TT("TTGraphicsSurface"),	"graphics",	&instantiateTTGraphicsObject);
	TTGraphicsWindow::registerClass();
	TTGraphicsContext::registerClass();
	TTGraphicsSurface::registerClass();
	
	return kTTErrNone;
}

