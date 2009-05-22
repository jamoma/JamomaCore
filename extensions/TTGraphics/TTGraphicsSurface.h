/* 
 * TTGraphicsSurface Object for Jamoma
 * Copyright © 2009 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPHICSSURFACE_H__
#define __TTGRAPHICSSURFACE_H__

#include "TTAudioObject.h"


/****************************************************************************************************/
// Class Specification


/**	Creates/Manages a graphics surface (image) in the Cairo sense of a surface.	*/
class TTGraphicsSurface : public TTObject {
public:
	TTGraphicsSurface(const TTValue& v);
	virtual ~TTGraphicsSurface();
	
	
};


#endif // __TTGRAPHICSSURFACE_H__
