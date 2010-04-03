/* 
 *	window≈
 *	Jamoma AudioGraph external object for Max
 *	Copyright © 2010 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxAudioGraph.h"

int main(void)
{
	TTAudioGraphInit();
	return wrapAsMaxAudioGraph(TT("WindowFunction"), "jcom.window≈", NULL);
}

