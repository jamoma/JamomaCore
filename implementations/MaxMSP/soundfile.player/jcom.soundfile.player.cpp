/* 
 *	phasor≈
 *	Jamoma AudioGraph external object for Max
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	MaxAudioGraphWrappedClassOptionsPtr	options = new MaxAudioGraphWrappedClassOptions;
	TTValue								value(0);
	MaxAudioGraphWrappedClassPtr			c = NULL;

	TTAudioGraphInit();
    
	options->append(TT("generator"), value);
	value = 2L;
	options->append(TT("wrapperDefinesNumOutlets"), value);
	wrapAsMaxAudioGraph(TT("soundfile.player"), "jcom.soundfile.player≈", &c, options);
	
	CLASS_ATTR_STYLE(c->maxClass,		"filePath", 0,	"file");
	CLASS_ATTR_STYLE(c->maxClass,		"play",		0,	"onoff");
	CLASS_ATTR_STYLE(c->maxClass,		"loop",		0,	"onoff");	
	
	return 0;
}

