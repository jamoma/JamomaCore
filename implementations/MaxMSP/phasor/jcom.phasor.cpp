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

	TTAudioGraphInit();

	options->append(TT("generator"), value);
	return wrapAsMaxAudioGraph(TT("phasor"), "jcom.phasor≈", NULL, options);
}

