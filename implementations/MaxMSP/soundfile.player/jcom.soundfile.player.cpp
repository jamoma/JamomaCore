/* 
 *	phasor≈
 *	Jamoma AudioGraph external object for Max
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxAudioGraph.h"

int main(void)
{
	MaxAudioGraphWrappedClassOptionsPtr	options = new MaxAudioGraphWrappedClassOptions;
	TTValue								value(0);
	MaxAudioGraphWrappedClassPtr			c = NULL;

	TTAudioGraphInit();

	options->append(TT("generator"), value);
	wrapAsMaxAudioGraph(TT("soundfile.player"), "jcom.soundfile.player≈", &c, options);
	
	CLASS_ATTR_STYLE(c->maxClass,		"play",	0,	"onoff");
	CLASS_ATTR_STYLE(c->maxClass,		"loop",	0,	"onoff");
	return 0;
}

