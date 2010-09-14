/* 
 *	overdrive≈
 *	Jamoma AudioGraph external object for Max
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"

int main(void)
{
	TTAudioGraphInit();
	return wrapAsMaxAudioGraph(TT("overdrive"), "jcom.overdrive≈", NULL);
}

