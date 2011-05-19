/* 
 *	array≈
 *	Array object for Jamoma AudioGraph
 *	Copyright © 2011 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	TTAudioGraphInit();
	wrapAsMaxAudioGraph(TT("array"), "jcom.array≈", NULL);
	return wrapAsMaxAudioGraph(TT("array"), "array≈", NULL);
}
