/* 
 *	matrix≈
 *	External object for Jamoma AudioGraph
 *	Copyright © 2009 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxAudioGraph.h"


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	MaxAudioGraphWrappedClassOptionsPtr	options = new MaxAudioGraphWrappedClassOptions;
	TTValue								value(0);
	
	TTAudioGraphInit();

	options->append(TT("nonadapting"), value); // don't change the number of out-channels in response to changes in the number of in-channels
	wrapAsMaxAudioGraph(TT("matrix"), "jcom.matrix≈", NULL, options);
	return 0;
}
