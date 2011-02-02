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
	TTAudioGraphInit();
	wrapAsMaxAudioGraph(TT("trajectory"), "jcom.trajectory≈", NULL);
	wrapAsMaxAudioGraph(TT("trajectory"), "trajectory≈", NULL);
	return 0;
}

