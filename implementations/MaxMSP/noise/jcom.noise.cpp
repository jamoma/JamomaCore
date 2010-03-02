/* 
 *	noise≈
 *	Noiselator object for Jamoma Multicore
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"

int main(void)
{
	MaxMulticoreWrappedClassOptionsPtr	options = new MaxMulticoreWrappedClassOptions;
	TTValue								value(0);
	MaxMulticoreWrappedClassPtr			c = NULL;

	TTMulticoreInit();

	options->append(TT("generator"), value);
	wrapAsMaxMulticore(TT("noise"), "jcom.noise≈", &c, options);

	CLASS_ATTR_ENUM(c->maxClass, "mode", 0, "white pink brown blue");
	return 0;
}
