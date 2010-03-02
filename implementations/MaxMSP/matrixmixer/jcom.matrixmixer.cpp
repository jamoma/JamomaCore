/* 
 *	matrixmixer≈
 *	External object for Jamoma Multicore
 *	Copyright © 2009 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"


int main(void)
{
	MaxMulticoreWrappedClassOptionsPtr	options = new MaxMulticoreWrappedClassOptions;
	TTValue								value(0);

	TTMulticoreInit();
	options->append(TT("argumentDefinesNumInlets"), value);
	value = 1L;
	options->append(TT("argumentDefinesNumOutlets"), value);
	return wrapAsMaxMulticore(TT("matrixmixer"), "jcom.matrixmixer≈", NULL, options);
}
