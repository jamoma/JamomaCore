/* 
 * Jamoma RampUnit Glue & Wrapper
 * This glue code wraps access to a RampUnit with a C++ API
 *
 * By Tim Place, Copyright � 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __RAMPUNIT_GLUE__H_
#define __RAMPUNIT_GLUE__H_

#include "ramplib.h"

class rampunit{
private:
	void							*rampunit_instance;
	rampunit_method_create_type		rampunit_method_create;	
	rampunit_method_destroy_type	rampunit_method_destroy;
	rampunit_method_attrset_type	rampunit_method_attrset;
	rampunit_method_attrget_type	rampunit_method_attrget;
	rampunit_method_setfunction_type	rampunit_method_setfunction;
	rampunit_method_getfunction_type	rampunit_method_getfunction;
	rampunit_method_go_type			rampunit_method_go;
	rampunit_method_set_type		rampunit_method_set;
	rampunit_method_stop_type		rampunit_method_stop;
	rampunit_method_tick_type		rampunit_method_tick;

public:
	// Life Cycle
	rampunit(char *filename, rampunit_method_callback_type pf_callback, void *baton);
	~rampunit(void);	

	// Attribute Accessors
	ramp_err attrset(t_symbol *attrname, double value);
	ramp_err attrget(t_symbol *attrname, double *value);
	ramp_err setFunction(t_symbol *functionName);
	ramp_err getFunction(t_symbol **functionName);

	// RampUnit Methods
	void go(short numvalues, double *values, double time);
	void set(short numvalues, double *values);
	void stop();
	void tick();
};


#endif // __RAMPUNIT_GLUE__H_
