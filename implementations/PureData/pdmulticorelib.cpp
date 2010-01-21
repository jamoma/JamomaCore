/* 
 *	in≈
 *	External object for PureData to provide a source for TTAudioSignals usable by a Multicore dsp chain.
 *	Copyright © 2009 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "pdmulticorelib.h"


/************************************************************************************/
// Main() Function

void pdmulticorelib_setup(void)
{
	MCoreInit();
	in_setup();
	out_setup();
}

