/* 
 *	trajectory≈
 *	Jamoma AudioGraph external object for Max
 *	Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	
	MaxAudioGraphWrappedClassOptionsPtr	options = new MaxAudioGraphWrappedClassOptions;
	MaxAudioGraphWrappedClassPtr			c = NULL;
		
	TTAudioGraphInit();
	options->append(TT("generator"), kTTBoolYes);
	wrapAsMaxAudioGraph(TT("trajectory"), "jcom.trajectory≈", &c, options);
	CLASS_ATTR_ENUM(c->maxClass, "mode", 0, "phasor ramp");
	wrapAsMaxAudioGraph(TT("trajectory"), "trajectory≈", &c, options);
	CLASS_ATTR_ENUM(c->maxClass, "mode", 0, "phasor ramp");
	return 0;
}

