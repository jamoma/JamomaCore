/* 
 *	External object for Max/MSP
 *	Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTClassWrapperMax.h"

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	WrappedClassOptionsPtr	options = new WrappedClassOptions;
	TTValue					value;
	
	TTFoundationInit();
	
	value.clear();
	value.append(0);
	options->append(TT("fixedNumChannels"), value);
	
	return wrapTTClassAsMaxClass(TT("net.send"), "jcom.net.send", NULL, options);
}
