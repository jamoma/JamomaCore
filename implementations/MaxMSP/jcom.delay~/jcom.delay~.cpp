/* 
 *	jcom.delay~
 *	External object for Max/MSP
 *	Delays a signal using several interpolation methods
 *	Example project for JamomaDSP
 *	Copyright © 2009 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTClassWrapperMax.h"

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	TTDSPInit();
	return wrapTTClassAsMaxClass(TT("delay"), "jcom.delay~", NULL);
}

