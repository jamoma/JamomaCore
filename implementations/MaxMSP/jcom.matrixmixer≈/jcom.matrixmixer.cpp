/* 
 *	matrixmixer≈
 *	External object for Jamoma AudioGraph
 *	Copyright © 2009 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	MaxAudioGraphWrappedClassOptionsPtr	options = new MaxAudioGraphWrappedClassOptions;
	TTValue								value(0);

	TTAudioGraphInit();
	options->append(TT("argumentDefinesNumInlets"), value);
	value = 1L;
	options->append(TT("argumentDefinesNumOutlets"), value);
	wrapAsMaxAudioGraph(TT("matrixmixer"), "jcom.matrixmixer≈", NULL, options);
	wrapAsMaxAudioGraph(TT("matrixmixer"), "matrixmixer≈", NULL, options);
	return 0;
}
