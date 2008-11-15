/* 
 *	gain≈
 *	External object for Max/MSP
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxbaer.h"

int main(void)
{
	TTBlueInit();
	return wrapAsMaxbaer(TT("gain"), "gain≈", NULL);
}

