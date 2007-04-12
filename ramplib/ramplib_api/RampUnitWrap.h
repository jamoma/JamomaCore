/* 
 * Jamoma RampUnit Glue & Wrapper
 * RampUnits are implemented as Objective-C objects
 * This glue code loads the objective-c class from a plug-in and 
 * wraps access to with a C++ API
 *
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __RAMPUNIT_GLUE__H_
#define __RAMPUNIT_GLUE__H_

#include "ramplib.h"

class rampunit{
private:
	void	*rampunitInstance;	// This is really an Objective-C 'id' representing the relevant rampunit object
	
public:
	// Life Cycle
	rampunit(char *filename, ramplib_method_callback pf_callback, void *baton);
	~rampunit(void);	

	// Attribute Accessors
	void attrset(int selector, double value);
	double attrget(int selector);

	// RampUnit Methods
	void go(float value, double time);
	void set(float value);
	void stop();
	void tick();
};


#endif // __RAMPUNIT_GLUE__H_
