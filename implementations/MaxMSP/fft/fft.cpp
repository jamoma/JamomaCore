/* 
 *	fft≈
 *	External object for Jamoma Multicore
 *	Copyright © 2010 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"

int main(void)
{
	return wrapAsMaxMulticore(TT("fft"), "fft≈", NULL);
}
