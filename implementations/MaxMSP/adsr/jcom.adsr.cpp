/* 
 *	adsr≈
 *	Envelope Generator object for Jamoma Audio Graph
 *	Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	MaxAudioGraphWrappedClassOptionsPtr	options = new MaxAudioGraphWrappedClassOptions;
	//	TTValue								value(0);
	MaxAudioGraphWrappedClassPtr			c = NULL;
	
	TTAudioGraphInit();
	
	options->append(TT("generator"), kTTBoolYes);
	options->append(TT("userCanSetNumChannels"), kTTBoolYes);
	wrapAsMaxAudioGraph(TT("adsr"), "jcom.adsr≈", &c, options);
	CLASS_ATTR_ENUM(c->maxClass, "mode", 0, "exponential hybrid");

	wrapAsMaxAudioGraph(TT("adsr"), "adsr≈", &c, options);
	CLASS_ATTR_ENUM(c->maxClass, "mode", 0, "exponential hybrid");
	return 0;
}
