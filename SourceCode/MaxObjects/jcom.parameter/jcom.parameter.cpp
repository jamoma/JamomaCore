/* 
 * jcom.paramater
 * External for Jamoma: parameter definition using pattr
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.parameter.h"		// everything we need is in here

// Globals
t_class		*parameter_class;		// Required: Global pointer for our class
t_class		*message_class;

int param_list_compare(t_atom *x, long lengthx, t_atom *y, long lengthy);

/************************************************************************************/
// Class Definition

int main(void)				// main recieves a copy of the Max function macros table
{
	t_class		*c;
	t_object	*attr = NULL;
	
	// Initialize Globals
	jamoma_init();
	common_symbols_init();

	// Define our class
	c = class_new(OBJECT_CLASS_NAME,(method)param_new, (method)param_free, sizeof(t_param), (method)0L, A_GIMME, 0);
		
	// Make methods accessible for our class:
	// Note that we can't make the bang method directly accessible here (must go through another function)
	//	because the function pointer is in out struct, which hasn't been defined yet
	class_addmethod(c, (method)param_dispatched,				"dispatched",					A_GIMME,	0);
	class_addmethod(c, (method)param_int,						"int",							A_DEFLONG,	0);
	class_addmethod(c, (method)param_float,						"float",						A_DEFFLOAT,	0);
 	class_addmethod(c, (method)param_list,						"list",							A_GIMME,	0);
 	class_addmethod(c, (method)param_symbol,					"anything",						A_GIMME,	0);
// TODO: Change this to line up with the NIME Paper.  For example:
//		ramp/drive/parameter granularity 20.0   should be changed to...
//		ramp/drive:/granularity 20.0
	class_addmethod(c, (method)param_setRampFunctionParameter,	"ramp/function/parameter",		A_GIMME,	0);
	class_addmethod(c, (method)param_getRampFunctionParameter,	"ramp/function/parameter/get",	A_GIMME,	0);
	class_addmethod(c, (method)param_setRampDriveParameter,		"ramp/drive/parameter",			A_GIMME,	0);
	class_addmethod(c, (method)param_getRampDriveParameter,		"ramp/drive/parameter/get",		A_GIMME,	0);
	class_addmethod(c, (method)param_ui_refresh,				"ui/refresh",					0);
	class_addmethod(c, (method)param_inc,						"value/inc",					A_GIMME,	0);
	class_addmethod(c, (method)param_dec,						"value/dec",					A_GIMME,	0);
	class_addmethod(c, (method)param_inc,						"+",							A_GIMME,	0);
	class_addmethod(c, (method)param_dec,						"-",							A_GIMME,	0);
	class_addmethod(c, (method)param_dump,						"dump",							0);
	class_addmethod(c, (method)param_bang,						"bang",							0);
	class_addmethod(c, (method)param_rampUpdate,				"ramp/update",					0);
	class_addmethod(c, (method)param_assist,					"assist",						A_CANT,		0); 
#ifndef JMOD_MESSAGE
	class_addmethod(c, (method)param_reset,						"reset",						0);
#endif
	class_addmethod(c, (method)param_setcallback,				"setcallback",					A_CANT,		0);

	jcom_core_subscriber_classinit_extended(c, attr, true);		// define a name attr
	
	// ATTRIBUTE: ramp
	jamoma_class_attr_new(c, "ramp/drive", _sym_symbol, (method)param_attr_setramp, (method)param_attr_getramp);
	jamoma_class_attr_new(c, "ramp/function", _sym_symbol, (method)param_attr_setrampfunction, (method)param_attr_getrampfunction);

	// ATTRIBUTE: type - options are msg_generic, msg_int, msg_float, msg_symbol, msg_toggle, msg_list, msg_none
	jamoma_class_attr_new(c, "type", _sym_symbol, (method)param_attr_settype, (method)param_attr_gettype);
	
	// ATTRIBUTE: ui/freeze - toggles a "frozen" ui outlet so that you can save cpu
	jamoma_class_attr_new(c, "ui/freeze", _sym_long, (method)param_attr_setfreeze, (method)param_attr_getfreeze);
	
	// ATTRIBUTE: stepsize - how much increment or decrement by
	jamoma_class_attr_new(c, "value/stepsize", _sym_float32, (method)param_attr_setstepsize, (method)param_attr_getstepsize);

	// ATTRIBUTE: priority - used to determine order of parameter recall in a preset
	jamoma_class_attr_new(c, "priority", _sym_long, (method)param_attr_setpriority, (method)param_attr_getpriority);

	// ATTRIBUTE: value
	jamoma_class_attr_array_new(c, "value", _sym_atom, LISTSIZE, (method)param_attr_setvalue, (method)param_attr_getvalue);

	// ATTRIBUTE: value/default
	jamoma_class_attr_array_new(c, "value/default", _sym_atom, LISTSIZE, (method)param_attr_setdefault, (method)param_attr_getdefault);

	jamoma_class_attr_new(c, "dataspace", _sym_symbol, (method)param_attr_setdataspace, (method)param_attr_getdataspace);
	jamoma_class_attr_new(c, "unit/active", _sym_symbol, (method)param_attr_setactiveunit, (method)param_attr_getactiveunit);
	jamoma_class_attr_new(c, "unit/native", _sym_symbol, (method)param_attr_setnativeunit, (method)param_attr_getnativeunit);

	// Finalize our class
	class_register(CLASS_BOX, c);
#ifdef JMOD_MESSAGE
	message_class = c;
#else
	parameter_class = c;
#endif
	return 0;
}


/************************************************************************************/
// Object Life
#pragma mark -
#pragma mark life cycle

void *param_new(t_symbol *s, long argc, t_atom *argv)
{
	short		i;
	long		attrstart = attr_args_offset(argc, argv);
#ifdef JMOD_MESSAGE
	t_param		*x = (t_param *)object_alloc(message_class);
#else
	t_param		*x = (t_param *)object_alloc(parameter_class);
#endif
	t_symbol	*name = _sym_nothing;

	if(attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();

	if(x){
		for(i=num_outlets; i > 0; i--)
			x->outlets[i-1] = outlet_new(x, 0);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);
		
		x->ui_qelem = qelem_new(x, (method)param_ui_queuefn);
		x->ramp_qelem = qelem_new(x, (method)param_ramp_setup);

		// set defaults...
		x->attr_rampfunction = jps_linear;
		x->attr_ramp = _sym_nothing;
		x->ramper = NULL;

		// defaulted to one long above, set list to be of size 1
		x->list_size = 1;
		x->listDefault_size = 0;
		for(i = 0; i < LISTSIZE; i++){
			atom_setlong(&x->atom_list[i], 0);
			atom_setlong(&x->atom_listDefault[i], 0);
		}
		x->common.attr_name = name;
		atom_setsym(&x->name_atom, name);
		x->attr_ui_freeze = 0;
		x->attr_stepsize = 1.0;
		x->attr_priority = 0;						// default is no priority
		x->param_output = &param_output_generic;		// set function pointer to default
		x->attr_dataspace = jps_none;
		x->attr_unitActive = jps_none;
		x->attr_unitNative = jps_none;
		
#ifdef JMOD_MESSAGE
		jcom_core_subscriber_new_extended(&x->common, name, jps_subscribe_message);
#else
		jcom_core_subscriber_new_extended(&x->common, name, jps_subscribe_parameter);
#endif
		attr_args_process(x, argc, argv);			// handle attribute args

#ifndef JMOD_MESSAGE
		param_reset(x);	
#endif
		defer_low(x, (method)jcom_core_subscriber_subscribe, 0, 0, 0);
		
		// If no type was specified by the user we call the accessor here
		// this is important because memory is configured - not just setting a default!
		if(x->common.attr_type == NULL){
			t_atom a;
			atom_setsym(&a, jps_msg_generic);
			object_attr_setvalueof(x, jps_type, 1, &a);
		}
		if(x->attr_ramp == _sym_nothing){
			t_atom a;
			atom_setsym(&a, jps_none);
			object_attr_setvalueof(x, gensym("ramp/drive"), 1, &a);
		}
	}
	return (x);										// return the pointer to our new instantiation
}


void param_free(t_param *x)
{	
	jcom_core_subscriber_common_free((t_jcom_core_subscriber_common *)x);
	qelem_free(x->ui_qelem);
	qelem_free(x->ramp_qelem);
	if(x->ramper)
		delete x->ramper;
}


#ifndef JMOD_MESSAGE
/************************************************************************************/
// Communication with PSTO (pattrstorage)
#pragma mark -
#pragma mark pattr support

// FROM psto
t_max_err param_setvalueof(t_param *x, long argc, t_atom *argv)
{
	if(argc && argv) {
		sysmem_copyptr(argv, &x->atom_list[0], sizeof(t_atom) * argc);
		x->list_size = argc;
		x->param_output(x);
	}	
	return MAX_ERR_NONE;
}

// TO psto
t_max_err param_getvalueof(t_param *x, long *argc, t_atom **argv)
{
	if(argc && argv){
		if(*argc && *argv) {
			// use passed in memory
		} 
		else { 
			if(x->list_size > 1)
				*argv = (t_atom *)getbytes(sizeof(t_atom) * x->list_size);
			else
				*argv = (t_atom *)getbytes(sizeof(t_atom));
		}
		
		*argc = x->list_size > 1 ? x->list_size : 1;
		sysmem_copyptr(&x->atom_list[0], *argv, sizeof(t_atom) * (*argc));
	}
	return MAX_ERR_NONE;
}

#endif


/************************************************************************************/
// Methods bound to input/inlets
#pragma mark -
#pragma mark attribute accessors


// resets to default value
void param_reset(t_param *x)
{
	if(x->listDefault_size){						// copy the default values to the current value
		sysmem_copyptr(x->atom_listDefault, x->atom_list, sizeof(t_atom) * x->listDefault_size);
		x->list_size = x->listDefault_size;
	}
}


void param_setcallback(t_param *x, method newCallback, t_object *callbackArg)
{
	x->callback = newCallback;
	x->callbackArg = callbackArg;
}


// ATTRIBUTE: TYPE
// This is crucial because it sets function pointers for the optimized clipping, bang, and other functions
t_max_err param_attr_settype(t_param *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	x->common.attr_type = arg;

	if(arg == jps_msg_int){
		x->param_output = &param_output_int;
	}
	else if(arg == jps_msg_float){
		x->param_output = &param_output_float;
	}
	else if(arg == jps_msg_symbol){
		x->param_output = &param_output_symbol;
	}
	else if(arg == jps_msg_toggle){
		x->param_output = &param_output_int;
	}
	else if(arg == jps_msg_generic){
		x->param_output = &param_output_generic;
	} 
	else if(arg == jps_msg_list){
		x->param_output = &param_output_list;
	}
#ifdef JMOD_MESSAGE
	else if(arg == jps_msg_none){
		x->param_output = &param_output_none;
	}
#endif // JMOD_MESSAGE
	else{
#ifdef JMOD_MESSAGE
		error("Jamoma - invalid type specified for %s jcom.message in the %s module.", x->common.attr_name->s_name, x->common.module_name->s_name);
#else
		error("Jamoma - invalid type specified for %s jcom.parameter in the %s module.", x->common.attr_name->s_name, x->common.module_name->s_name);
#endif
		x->common.attr_type = jps_msg_generic;
		x->param_output = &param_output_generic;
	}

	qelem_set(x->ramp_qelem);	// set up the rampunit with callbacks appropriate to this data type

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: RAMP
// This is crucial because it sets function pointers
t_max_err param_attr_setramp(t_param *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	x->attr_ramp = arg;
	
	qelem_set(x->ramp_qelem);	// place a call to param_ramp_setup() at the end of the low-priority queue

	return MAX_ERR_NONE;
	#pragma unused(attr)
}

t_max_err param_attr_getramp(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, x->attr_ramp);
	return MAX_ERR_NONE;
}


t_max_err param_attr_setrampfunction(t_param *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	x->attr_rampfunction = arg;

	if(x->ramper)
		x->ramper->setAttributeValue(TT("function"), TT(x->attr_rampfunction->s_name));

	return MAX_ERR_NONE;
	#pragma unused(attr)
}

t_max_err param_attr_getrampfunction(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, x->attr_rampfunction);
	return MAX_ERR_NONE;
}


t_max_err param_attr_gettype(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, x->common.attr_type);
	return MAX_ERR_NONE;
}

	
t_max_err param_attr_getfreeze(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setlong(*argv, x->attr_ui_freeze);
	return MAX_ERR_NONE;
}

t_max_err param_attr_setfreeze(t_param *x, void *attr, long argc, t_atom *argv)
{
	if(argc && argv)
		x->attr_ui_freeze = atom_getlong(argv);
	return MAX_ERR_NONE;
}


t_max_err param_attr_getstepsize(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setfloat(*argv, x->attr_stepsize);
	return MAX_ERR_NONE;
}

t_max_err param_attr_setstepsize(t_param *x, void *attr, long argc, t_atom *argv)
{
	if(argc && argv)
		x->attr_stepsize = atom_getlong(argv);
	return MAX_ERR_NONE;
}


t_max_err param_attr_getpriority(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setlong(*argv, x->attr_priority);
	return MAX_ERR_NONE;
}

t_max_err param_attr_setpriority(t_param *x, void *attr, long argc, t_atom *argv)
{
	if(argc && argv)
		x->attr_priority = atom_getlong(argv);
	return MAX_ERR_NONE;
}


t_max_err param_attr_getvalue(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = x->list_size;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom) * x->list_size);
	sysmem_copyptr(x->atom_list, *argv, sizeof(t_atom) * x->list_size);

	return MAX_ERR_NONE;
}

t_max_err param_attr_setvalue(t_param *x, void *attr, long argc, t_atom *argv)
{
	x->list_size = argc;
	sysmem_copyptr(argv, x->atom_list, argc * sizeof(t_atom));
	return MAX_ERR_NONE;
}


t_max_err param_attr_getdefault(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = x->listDefault_size;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom) * x->listDefault_size);
		sysmem_copyptr(x->atom_listDefault, *argv, sizeof(t_atom) * x->listDefault_size);
		
		return MAX_ERR_NONE;
}

t_max_err param_attr_setdefault(t_param *x, void *attr, long argc, t_atom *argv)
{
	x->listDefault_size = argc;
	sysmem_copyptr(argv, x->atom_listDefault, argc * sizeof(t_atom));
	return MAX_ERR_NONE;
}


t_max_err param_attr_getdataspace(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, x->attr_dataspace);
	return MAX_ERR_NONE;
}

t_max_err param_attr_setdataspace(t_param *x, void *attr, long argc, t_atom *argv)
{
	if(argc && argv){
		x->attr_dataspace = atom_getsym(argv);
		jamoma_getDataspace(x->attr_dataspace, &x->dataspace);
		x->attr_unitActive = x->dataspace->neutralUnit;
		x->attr_unitNative = x->dataspace->neutralUnit;
	}
	return MAX_ERR_NONE;
}


t_max_err param_attr_getactiveunit(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, x->attr_unitActive);
	return MAX_ERR_NONE;
}

t_max_err param_attr_setactiveunit(t_param *x, void *attr, long argc, t_atom *argv)
{
	if(argc && argv){
		if(x->dataspace) {
			x->attr_unitActive = atom_getsym(argv);
			x->dataspace->setInputUnit(x->attr_unitActive);
		}
	}
	return MAX_ERR_NONE;
}


t_max_err param_attr_getnativeunit(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, x->attr_unitNative);
	return MAX_ERR_NONE;
}

t_max_err param_attr_setnativeunit(t_param *x, void *attr, long argc, t_atom *argv)
{
	if(argc && argv){
		x->attr_unitNative = atom_getsym(argv);
		x->dataspace->setInputUnit(x->attr_unitNative);
	}
	return MAX_ERR_NONE;
}


void param_getRampFunctionParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv)
{
	TTSymbol*	parameterName;
	TTValue		parameterValue;
	int numValues;
	t_atom		*a;
	TTSymbol*	tempSymbol;
	double		tempValue;
	
	if(!argc){
		error("jcom.map: not enough arguments to getParameter");
		return;
	}
	
	parameterName = TT(atom_getsym(argv)->s_name);
	//obj->function->getParameter(parameterName, &ac, &av);
	obj->ramper->getFunctionParameterValue(parameterName, parameterValue);
	numValues = parameterValue.getNumValues();
	if(numValues) {
		//atom_setsym(a+0, parameterName);
		//atom_setfloat(a+1, av);
		a = (t_atom *)sysmem_newptr(sizeof(t_atom)*(numValues+1));
		// Forst list item is name of parameter
		atom_setsym(a, gensym(parameterName->getString()));
		// Next the whole shebang is copied
		for(int i=0; i<numValues; i++){
			if(parameterValue.getType(i) == kTypeSymbol){
				parameterValue.get(i, &tempSymbol);
				atom_setsym(a+i+1, gensym(tempSymbol->getString()));
			}
			else{
				parameterValue.get(i, tempValue);
				atom_setfloat(a+i+1, tempValue);
			}
		}

		object_obex_dumpout(obj, gensym("ramp.function.getParameter"), numValues+1, a);
	
		// The pointer to an atom assign in the getParameter method needs to be freed.
		sysmem_freeptr(a);
	}
}


void param_setRampFunctionParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv)
{
	TTSymbol*	parameterName;
	TTValue		newValue;
	
	if(argc < 2){
		error("jcom.map: not enough arguments to setParameter");
		return;
	}
	
	parameterName = TT(atom_getsym(argv)->s_name);
	for(int i=1; i<=(argc-1); i++){
		if(argv[i].a_type == A_SYM)
			newValue.append(TT(atom_getsym(argv+1)->s_name));
		else
			newValue.append(atom_getfloat(argv+i));
	}
	obj->ramper->setFunctionParameterValue(parameterName, newValue);	
	
}


void param_getRampDriveParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv)
{
	t_atom*		a;
	TTSymbol*	parameterName;
	TTValue		parameterValue;
	int			numValues;
	TTSymbol*	tempSymbol;
	double		tempValue;
	
	if(!argc){
		error("jcom.map: not enough arguments to getParameter");
		return;
	}
	
	parameterName = TT(atom_getsym(argv)->s_name);
	obj->ramper->getAttributeValue(parameterName, parameterValue);
	numValues = parameterValue.getNumValues();
	
	if(numValues){
		a = (t_atom *)sysmem_newptr(sizeof(t_atom) * (numValues+1));
		// First list item is name of parameter
		atom_setsym(a, gensym(parameterName->getString()));
		// Next the whole shebang is copied
		for(int i=0; i<numValues; i++){
			if(parameterValue.getType(i) == kTypeSymbol){
				parameterValue.get(i, &tempSymbol);
				atom_setsym(a+i+1, gensym(tempSymbol->getString()));
			}
			else{
				parameterValue.get(i, tempValue);
				atom_setfloat(a+i+1, tempValue);
			}
		}
		object_obex_dumpout(obj, gensym("ramp.drive.getParameter"), numValues + 1, a);
		sysmem_freeptr(a);
	}
}


void param_setRampDriveParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv)
{
	TTSymbol*	parameterName;
	TTValue		newValue;
	int			i;
	
	if(argc < 2){
		error("jcom.map: not enough arguments to setParameter");
		return;
	}

	parameterName = TT(atom_getsym(argv)->s_name);
	for(i=1; i<=(argc-1); i++){
		if(argv[i].a_type == A_SYM)
			newValue.append(TT(atom_getsym(argv+1)->s_name));
		else
			newValue.append(atom_getfloat(argv+i));
	}

	obj->ramper->setAttributeValue(parameterName, newValue);
}


/************************************************************************************/
// Methods bound to input/inlets
#pragma mark -
#pragma mark methods

// Method for Assistance Messages
void param_assist(t_param *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "input");
	else{							// Outlets
		switch(arg){
			case k_outlet_set:
					strcpy(dst, "set: connect to ui object");
					break;
			case k_outlet_direct:
					strcpy(dst, "direct: values");
					break;
			case k_outlet_dumpout:
					strcpy(dst, "dumpout");
					break;
		}
 	}		
}


// DUMP: use for debugging - dump state to the Max window
void param_dump(t_param *x)
{
	char	s[256];
	t_atom	a[4];
	
	if(x->common.hub != NULL){

		sprintf(s, "%s:description", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_description);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		sprintf(s, "%s:value", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		jcom_core_atom_copy(&a[1], &x->attr_value);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		sprintf(s, "%s:type", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_type);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);

		sprintf(s, "%s:ramp/drive", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_ramp);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);

		sprintf(s, "%s:ramp/function", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_rampfunction);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);

		sprintf(s, "%s:range/bounds", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setfloat(&a[1], x->common.attr_range[0]);
		atom_setfloat(&a[2], x->common.attr_range[1]);
		object_method_typed(x->common.hub, jps_feedback, 3, a, NULL);
		
		sprintf(s, "%s:rande/clipmode", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_clipmode);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);

		sprintf(s, "%s:repetitions", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->common.attr_repetitions);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
				
		sprintf(s, "%s:dataspace", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_dataspace);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
				
		sprintf(s, "%s:unit/native", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_unitNative);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		sprintf(s, "%s:unit/active", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_unitActive);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);

		sprintf(s, "%s:ui/freeze", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attr_ui_freeze);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		sprintf(s, "%s:priority", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attr_priority);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
	}
}


// 'bang' method for user input
void param_bang(t_param *x)
{
#ifdef JMOD_MESSAGE
	t_atom	a;
	
	atom_setsym(&a, gensym(""));
	outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
	outlet_anything(x->outlets[k_outlet_set], _sym_set, 1, &a);

	// call on the hub to pass our data onward
	if(x->common.hub != NULL){
		jcom_core_atom_copy(&a, &x->name_atom);
		object_method_typed(x->common.hub, jps_feedback, 1, &a, NULL);
	}
#else
	x->param_output(x);
#endif
	if(x->callback)
		x->callback(x, x->common.attr_name, x->list_size, x->atom_list);
}


// Actual bang functions
void param_output_generic(void *z)
{
	t_param *x = (t_param *)z;
	
	if(x->list_size == 1){
		param_clip_generic(x);
		if(x->attr_value.a_type == A_LONG)
			outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
		else if(x->attr_value.a_type == A_FLOAT)
			outlet_float(x->outlets[k_outlet_direct], x->attr_value.a_w.w_float);
		else if(x->attr_value.a_type == A_SYM)
			outlet_anything(x->outlets[k_outlet_direct], x->attr_value.a_w.w_sym, 0, NULL);
	}
	else if(x->list_size > 1){
		param_clip_generic(x);
		outlet_anything(x->outlets[k_outlet_direct], _sym_list, x->list_size, x->atom_list);
	} 
	else{	// zero args
		param_output_none(x);
	}
	param_send_feedback(x);
}


void param_output_int(void *z)
{
	t_param *x = (t_param *)z;

	param_clip_int(x);
	outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
	param_send_feedback(x);
}


void param_output_float(void *z)
{
	t_param *x = (t_param *)z;

	param_clip_float(x);
	outlet_float(x->outlets[k_outlet_direct], x->attr_value.a_w.w_float);
	param_send_feedback(x);
}


void param_output_symbol(void *z)
{
	t_param *x = (t_param *)z;

	outlet_anything(x->outlets[k_outlet_direct], x->attr_value.a_w.w_sym, 0, NULL);
	param_send_feedback(x);
}


void param_output_list(void *z)
{
	t_param *x = (t_param *)z;
	
	param_clip_list(x);
	outlet_anything(x->outlets[k_outlet_direct], _sym_list, x->list_size, x->atom_list);
	param_send_feedback(x);
}


void param_output_none(void *z)
{
	t_param *x = (t_param *)z;
	t_atom output[1];
	t_atom *out = (t_atom *)(&output);

	// bang direct output
	outlet_bang(x->outlets[k_outlet_direct]);
	
	// call on the hub to pass our data onward
	// We can not use (method)param_send_feedback here as it assumes an additional argument
	if(x->common.hub != NULL){
		jcom_core_atom_copy(out, &x->name_atom);
		object_method_typed(x->common.hub, jps_feedback, 1, out, NULL);
	}
}


// INC & DEC
void param_inc(t_param *x, t_symbol *msg, long argc, t_atom *argv)
{
	float	stepmult = 1.0;
	long	ramptime = 0;		// ms
	t_atom	a[3];				// value, 'ramp', value
	short	a_len = 1;
	
	// Check for Arguments...
	if(argc){
		// Look for arg to specify the number of steps to move
		if(argv->a_type == A_FLOAT){
			stepmult = argv->a_w.w_float;
			argc--;
			argv++;
		}
		else if(argv->a_type == A_LONG){
			stepmult = argv->a_w.w_long;
			argc--;
			argv++;
		}
		
		// Look for args to specify a ramp time
		if(argc){
			if(argv->a_type == A_SYM){
				if(argv->a_w.w_sym == jps_ramp){
					argc--;
					argv++;
					if(argc){
						ramptime = atom_getlong(argv);
						if(ramptime){
							atom_setsym(a+1, jps_ramp);
							atom_setlong(a+2, ramptime);
							a_len = 3;
						}
					}
				}
			}
		}
	}
	
	if(x->ramper)
		x->ramper->stop();
		
	if(x->common.attr_type == jps_msg_int)
		atom_setlong(a, x->attr_value.a_w.w_long + (x->attr_stepsize * stepmult));
	else if((x->common.attr_type == jps_msg_float) || (x->common.attr_type == jps_msg_generic))
		atom_setfloat(a, x->attr_value.a_w.w_float + (x->attr_stepsize * stepmult));
	else if(x->common.attr_type == jps_msg_toggle){
		if(x->attr_value.a_w.w_long == 1)
			x->attr_value.a_w.w_long = 0;
		else
			x->attr_value.a_w.w_long = 1;
		param_output_int(x);
		return;
	}
	else{
		error("%s parameter (in the %s module) is an inappropriate type for the 'inc' message.");
		return;
	}

	param_dispatched(x, msg, a_len, a);
}


void param_dec(t_param *x, t_symbol *msg, long argc, t_atom *argv)
{
	float	stepmult = 1.0;
	long	ramptime = 0;		// ms
	t_atom	a[3];				// value, 'ramp', value
	short	a_len = 1;

	// Check for Arguments...
	if(argc){
		// Look for arg to specify the number of steps to move
		if(argv->a_type == A_FLOAT){
			stepmult = argv->a_w.w_float;
			argc--;
			argv++;
		}
		else if(argv->a_type == A_LONG){
			stepmult = argv->a_w.w_long;
			argc--;
			argv++;
		}
		
		// Look for args to specify a ramp time
		if(argc){
			if(argv->a_type == A_SYM){
				if(argv->a_w.w_sym == jps_ramp){
					argc--;
					argv++;
					if(argc){
						ramptime = atom_getlong(argv);
						if(ramptime){
							atom_setsym(a+1, jps_ramp);
							atom_setlong(a+2, ramptime);
							a_len = 3;
						}
					}
				}
			}
		}
	}

	// new input - halt any ramping...
	if(x->ramper)
		x->ramper->stop();
		
	if(x->common.attr_type == jps_msg_int)
		atom_setlong(a, x->attr_value.a_w.w_long - (x->attr_stepsize * stepmult));
	else if((x->common.attr_type == jps_msg_float) || (x->common.attr_type == jps_msg_generic))
		atom_setfloat(a, x->attr_value.a_w.w_float - (x->attr_stepsize * stepmult));
	else if(x->common.attr_type == jps_msg_toggle){
		if(x->attr_value.a_w.w_long == 1)
			x->attr_value.a_w.w_long = 0;
		else
			x->attr_value.a_w.w_long = 1;
		param_output_int(x);
		return;
	}
	else{
		error("%s parameter (in the %s module) is an inappropriate type for the 'dec' message.");
		return;
	}

	param_dispatched(x, msg, a_len, a);
}


// /ramp/update INPUT

void param_rampUpdate(t_param *x)
{
	//post("Requested to update.");
	
	x->ramper->tick();
}


// INT INPUT
void param_int(t_param *x, long value)
{
	x->list_size = 1;
	if(x->common.attr_repetitions == 0){
		if(value == atom_getlong(&x->attr_value))
			return;
	}
	// new input - halt any ramping...
	if(x->ramper)
		x->ramper->stop();
	atom_setlong(&x->attr_value, value);
	x->param_output(x);
}


// FLOAT INPUT
void param_float(t_param *x, double value)
{
	x->list_size = 1;
	if(x->common.attr_repetitions == 0){
		if(value == atom_getfloat(&x->attr_value))
			return;
	}
	// new input - halt any ramping...
	if(x->ramper)
		x->ramper->stop();
	
	// this block added for implementing the dataspace features [TAP]
	{
		t_atom	a;
		t_atom*	r;
		bool	alloc;
		long	count;
		
		atom_setfloat(&a, value);
		param_convert_units(x, 1, &a, &count, &r, &alloc);
		atom_setfloat(&x->attr_value, r->a_w.w_float);
		if(alloc)
			sysmem_freeptr(r);
	}
//	atom_setfloat(&x->attr_value, value);
	x->param_output(x);
}


// SYMBOL INPUT
void param_symbol(t_param *x, t_symbol *msg, long argc, t_atom *argv)
{
	x->list_size = 1;
	if(x->common.attr_repetitions == 0){
		if(jcom_core_atom_compare(x->common.attr_type, &x->attr_value, argv))
			return;
	}
	atom_setsym(&x->attr_value, msg);
	x->param_output(x);

}


void param_ui_refresh(t_param *x)
{
	outlet_anything(x->outlets[k_outlet_set], _sym_set, x->list_size, &x->attr_value);
}


// Send feedback to the hub
void param_send_feedback(t_param *x)
{
	t_atom output[LISTSIZE + 1];
	t_atom *out = (t_atom *)(&output);
	
	// send to our ui outlet
	if(x->attr_ui_freeze == 0)
		qelem_set(x->ui_qelem);

	// send to the object in which this parameter is embedded
	if(x->callback)
		x->callback(x->callbackArg, x->common.attr_name, x->list_size, x->atom_list);
	
	// call on the hub to pass our data onward
	if(x->common.hub != NULL){
		jcom_core_atom_copy(out, &x->name_atom);
		jcom_core_atom_copy(out+1, &x->attr_value);
		// copy any remaining atoms
		if(x->list_size > 1) 
			sysmem_copyptr(&x->atom_list[1], out + 2, sizeof(t_atom) * (x->list_size - 1));
		object_method_typed(x->common.hub, jps_feedback, x->list_size + 1, out, NULL);
	}
	// notify listeners (pattr or jcom.paramui) that we have modified data
#ifndef JMOD_MESSAGE
	object_notify(x, _sym_modified, NULL);
#endif
}


// Send values to a potentially connected ui object at the first outlet
void param_ui_queuefn(t_param *x)
{
	outlet_anything(x->outlets[k_outlet_set], _sym_set, x->list_size, &x->attr_value);
}


// messages received from jcom.hub
void param_dispatched(t_param *x, t_symbol *msg, long argc, t_atom *argv)
{
	// new input - halt any ramping...
	if(x->ramper)
		x->ramper->stop();

	if(argc == 1){
		// If repetitions are disabled, we check for a repetition by treating
		// this as a 1 element list
		if(x->common.attr_repetitions == 0 && param_list_compare(x->atom_list, 
			x->list_size, argv, argc)) 
			return;

		if(x->dataspace){
			t_atom* r = (t_atom*)sysmem_newptr(sizeof(t_atom));
			x->dataspace->convert(1, argv, &x->list_size, &r);
			jcom_core_atom_copy(&x->attr_value, r);
		}
		else
			jcom_core_atom_copy(&x->attr_value, argv);
		x->list_size = 1;				
		
		x->param_output(x);
	} else if(argc > 1) {
		param_list(x, msg, argc, argv);
	}
	else { 	// no args
#ifndef JMOD_MESSAGE
		// generic parameters may have no arg -- i.e. to open a dialog that defines the arg
		if(x->common.attr_type == jps_msg_generic)
			x->list_size = 0;
#endif			
		x->param_output(x);
	}
}

// Returns true if lists are identical
int param_list_compare(t_atom *x, long lengthx, t_atom *y, long lengthy)
{
	// If lists differ in length they're obviously not the same
	if(lengthx == lengthy) {
		short type;
		for(int i = 0; i < lengthx; i++) {
			if((x->a_type) != (y->a_type))
				return 0; // not identical, types differ
			
			type = x->a_type;
			if((type == A_FLOAT) && (x->a_w.w_float != y->a_w.w_float))
				return 0;
			else if((type == A_LONG) && (x->a_w.w_long != y->a_w.w_long))
				return 0;
			else if((type == A_SYM) && (x->a_w.w_sym != y->a_w.w_sym))
				return 0;
			
			x++; y++;  // keep going
		}
	} 
	else {
		return 0; // list lengths differ
	}
	
	return 1;
}


void param_convert_units(t_param* x,long argc, t_atom* argv, long* rc, t_atom** rv, bool* alloc)
{
	if(x->attr_dataspace && (x->attr_unitActive != x->attr_unitNative)){
		long	count;

		*rv = (t_atom*)sysmem_newptr(sizeof(t_atom) * argc);
		
		for(int i=0; i<argc; i++){
		/*
			Note that for now we assume that we are converting from 1 value to 1 value.
			This isn't always true though.  
			Maybe there could be triplets that would be converted into one value or something?
		*/
			x->dataspace->convert(1, argv+i, &count, rv+i);
		}
		*alloc = true;
	}
	else{
		*rc = argc;
		*rv = argv;
		*alloc = false;
	}
}


// LIST INPUT <value, ramptime>
void param_list(t_param *x, t_symbol *msg, long argc, t_atom *argv)
{
	double		start[LISTSIZE], 
				values[LISTSIZE], 
				time;
	int			i;
	t_atom*		ramp;
	t_symbol*	unit;
	bool		hasRamp = false;
	bool		hasUnit = false;
	long		ac = 0;				// These two hold the input, but the input is converted into the native units
	t_atom*		av = NULL;
	bool		alloc = false;
	
	/*	If the list is only 1 atom, then we know it is just a value 
		If it is two atoms, then it could be 2 values or a value + a unit
		If it is three atoms, then it could be 3 values, 2 values + a unit, or 1 value + a ramp
		If it is four atoms, then it could be 4 values, 3 values + a unit, 2 values + a ramp, or 1 value with a unit and a ramp
		etc.
	 */
	
	if(argc == 1)
		;	// nothing to do
	else if(argc == 2){
		if(atom_gettype(argv) != A_SYM && atom_gettype(argv+1) == A_SYM){	// assume the second atom is a unit
			hasUnit = true;
			unit = atom_getsym(argv+1);
		}
	}
	else if(argc == 3){
		ramp = argv + (argc - 2);
		if(ramp->a_type == A_SYM && ramp->a_w.w_sym == jps_ramp){
			hasRamp = true;
		}
		else if(atom_gettype(argv) != A_SYM && atom_gettype(argv+2) == A_SYM){	// assume the last atom is a unit
			hasUnit = true;
			unit = atom_getsym(argv+2);
		}
	}
	else{	// 4 or more atoms (could have both a ramp and a unit
		ramp = argv + (argc - 2);
		if(ramp->a_type == A_SYM && ramp->a_w.w_sym == jps_ramp){
			hasRamp = true;
		}
		if(atom_gettype(argv) != A_SYM && atom_gettype(argv+2) == A_SYM){	// assume the last atom is a unit
			hasUnit = true;
			if(hasRamp)
				unit = atom_getsym(argv+(argc-3));
			else
				unit = atom_getsym(argv+(argc-1));
		}
	}
	
	// The current implementation does not override the active unit temporarily or anything fancy
	//	It just sets the active unit and then runs with it...
	if(hasUnit)
		object_attr_setsym(x, gensym("unit/active"), unit);
	
	/*
		For this initial implementation we are converting the values prior to ramping, as it is easier.
		Ultimately though, we actually want to convert the units after the ramping, 
		for example to perform a sweep that is linear vs logarithmic
	 */
	if(hasRamp && hasUnit)
		param_convert_units(x, argc-3, argv, &ac, &av, &alloc);
	else if(hasRamp)
		param_convert_units(x, argc-2, argv, &ac, &av, &alloc);
	else if(hasUnit)
		param_convert_units(x, argc-1, argv, &ac, &av, &alloc);
	else
		param_convert_units(x, argc, argv, &ac, &av, &alloc);
	
	// Check the second to last item in the list first, which when ramping should == the string ramp
//	ramp = argv + (argc - 2);
//	if (ramp->a_type == A_SYM && ramp->a_w.w_sym == jps_ramp) {
	if(hasRamp){
		time = atom_getfloat(argv+(argc-1));

		// Only one list member if @type is msg_int of msg_float
		if( x->common.attr_type == jps_msg_int || x->common.attr_type == jps_msg_float)
			ac = 1;
//		else
//			argc = argc - 2;
		
		for(i=0; i<ac; i++){
			values[i] = atom_getfloat(av+i);
			if (i <= x->list_size)
				start[i] = atom_getfloat(&x->atom_list[i]);
			else
				start[i] = atom_getfloat(&x->atom_list[(x->list_size)-1]);
		}

		if(time <= 0){
			jcom_core_atom_copy(&x->attr_value, av);
			x->param_output(x);
			return;
		}	

		if(x->common.attr_repetitions == 0){
			if(param_list_compare(x->atom_list, x->list_size, av, ac))
				return;	// nothing to do
		}

		x->list_size = ac;
		x->ramper->set(ac, start);
		x->ramper->go(ac, values, time);
	} 
	else{
		// Don't output if the input data is identical
		if(!x->common.attr_repetitions){
			if(param_list_compare(x->atom_list, x->list_size, av, ac))
				return;	// nothing to do
		}
		
		// Avoid copying more than one atom if the type only can have one argument
		if(x->common.attr_type != jps_msg_list && x->common.attr_type != jps_msg_generic
			&& x->common.attr_type != jps_msg_none){
			// If attr_type is != to anyone of the above values then we know 
			// that it must be == to a scalar type.  This ensures it will behave
			// as a scalar and not a list.
			ac = 1;
		}
			
		for(i = 0; i < ac; i++){
			switch(av[i].a_type){
				case A_LONG:
					atom_setlong(&x->atom_list[i], atom_getlong(av + i));
					break;
				case A_FLOAT:
					atom_setfloat(&x->atom_list[i], atom_getfloat(av + i));
					break;
				case A_SYM:
					atom_setsym(&x->atom_list[i], atom_getsym(av + i));
					break;
				default:
					error("param_list: no type specification");
					break;
			}
		}
		x->list_size = ac;
		x->param_output(x);
	}
	
	if(alloc)
		sysmem_freeptr(av);
}


#pragma mark -
#pragma mark Ramp Units

void param_ramp_callback_float(void *v, long, double *value)
{
	t_param *x = (t_param *)v;
	float	oldval = atom_getfloat(&x->attr_value);
	
	if(x->common.attr_repetitions || *value != oldval){
		atom_setfloat(&x->attr_value, *value);
		param_output_float(x);
	}
}


void param_ramp_callback_int(void *v, long, double *value)
{
	t_param	*x= (t_param *)v;
	long	val	= *value;
	long	oldval;

	oldval = atom_getlong(&x->attr_value);
	if (x->common.attr_repetitions || val != oldval){
		atom_setlong(&x->attr_value, val);
		param_output_int(x);
	}
}


void param_ramp_callback_list(void *v, long argc, double *value)
{
	long i;
	t_param *x = (t_param *)v;
	
	// we won't bother about avoiding repetitions for list, so never mind oldval

	for (i=0; i<argc; i++)
		atom_setfloat(&x->atom_list[i], value[i]);
	param_output_list(x);	
}


void param_ramp_setup(t_param *x)
{
	// 1. destroy the old rampunit
	if(x->ramper != NULL) {
		delete x->ramper;
		x->ramper = NULL;
	}
		
	// 2. create the new rampunit
	// For some types ramping doesn't make sense, so they will be set to none
	if((x->common.attr_type == jps_msg_none) || (x->common.attr_type == jps_msg_symbol) || (x->common.attr_type == jps_msg_generic))
		x->attr_ramp = gensym("none");
		
		
	if((x->common.attr_type == jps_msg_int) || (x->common.attr_type == jps_msg_toggle))
		RampLib::createUnit(TT(x->attr_ramp->s_name), &x->ramper, param_ramp_callback_int, (void *)x);
	else if (x->common.attr_type == jps_msg_list)
		RampLib::createUnit(TT(x->attr_ramp->s_name), &x->ramper, param_ramp_callback_list, (void *)x);
	else
		RampLib::createUnit(TT(x->attr_ramp->s_name), &x->ramper, param_ramp_callback_float, (void *)x);

	if(x->ramper == NULL)
		error("jcom.parameter (%s module): could not allocate memory for ramp unit!", x->common.module_name);
		
	if(x->attr_rampfunction && x->attr_rampfunction != _sym_nothing && x->attr_rampfunction != gensym("linear"))
		object_attr_setsym(x, gensym("ramp/function"), x->attr_rampfunction);
}
