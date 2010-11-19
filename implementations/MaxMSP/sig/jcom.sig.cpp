/* 
 *	sig≈
 *	Object to generate a signal from a constant for Jamoma Audio Graph
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
	
	//	options->append(TT("generator"), value);
	options->append(TT("generator"), kTTBoolYes);
	options->append(TT("userCanSetNumChannels"), kTTBoolYes);
	wrapAsMaxAudioGraph(TT("audio.sig"), "jcom.sig≈", &c, options);
	wrapAsMaxAudioGraph(TT("audio.sig"), "sig≈", &c, options);
	
	//CLASS_ATTR_ENUM(c->maxClass, "mode", 0, "white pink brown blue");
	return 0;
}
