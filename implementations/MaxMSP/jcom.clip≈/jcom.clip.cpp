/* 
 *	clip≈
 *	Jamoma AudioGraph external object for Max
 *	Copyright © 2012 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	TTAudioGraphInit();
	wrapAsMaxAudioGraph(TT("clipper"), "jcom.clip≈", NULL);
	wrapAsMaxAudioGraph(TT("clipper"), "clip≈", NULL);
	return 0;
}

