/* 
 *	overdrive≈
 *	Jamoma Multicore external object for Max
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"

int main(void)
{
	TTMulticoreInit();
	return wrapAsMaxMulticore(TT("overdrive"), "jcom.overdrive≈", NULL);
}

