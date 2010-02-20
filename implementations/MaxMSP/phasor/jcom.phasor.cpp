/* 
 *	phasor≈
 *	Jamoma Multicore external object for Max
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"

int main(void)
{
	WrappedClassOptionsPtr	options = new WrappedClassOptions;
	TTValue					value(0);

	TTMulticoreInit();

	options->append(TT("generator"), value);
	return wrapAsMaxMulticore(TT("phasor"), "jcom.phasor≈", NULL, options);
}

