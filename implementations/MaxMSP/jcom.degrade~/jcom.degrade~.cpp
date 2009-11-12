/* 
 *	tt.degrade~
 *	External object for Max/MSP
 *	
 *	Example project for TTBlue
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTClassWrapperMax.h"

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	WrappedClassOptionsPtr	options = new WrappedClassOptions;
	TTValue					value;

	TTDSPInit();

	value.clear();
	value.append(TT("srRatio"));
	value.append(TT("bitdepth"));

// TODO: experimental:
//	options->append(TT("additionalSignalInputSetsAttribute"), value);
	
	return wrapTTClassAsMaxClass(TT("degrade"), "jcom.degrade~", NULL, options);
}

