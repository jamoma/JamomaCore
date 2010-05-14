/* 
 *	noise≈
 *	Noiselator object for Jamoma AudioGraph
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
	MaxAudioGraphWrappedClassPtr			c = NULL;

	TTAudioGraphInit();

	options->append(TT("generator"), value);
	wrapAsMaxAudioGraph(TT("noise"), "jcom.noise≈", &c, options);

	CLASS_ATTR_ENUM(c->maxClass, "mode", 0, "white pink brown blue");
	return 0;
}
