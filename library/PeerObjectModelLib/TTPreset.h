/* 
 * A Preset Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_PRESET_H__
#define __TT_PRESET_H__

#include "TTPeerObjectModel.h"

/**	TTPreset ... TODO : an explanation
 */
class TTPOM_EXPORT TTPreset : public TTObject
{
	TTCLASS_SETUP(TTPreset)
	
	public:
	
	private:
	
	public:
	
	private :
	
};

typedef TTPreset* TTPresetPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTFOUNDATION_EXPORT TTPresetCallback(TTPtr baton, TTValue& data);

#endif // __TT_PRESET_H__
