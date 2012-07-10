/* 
 * jcom.parameter
 * External for Jamoma: parameter definition
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "jcom.parameter.h"			// everything we need is in here
#include "TTClassWrapperMax.h"

// Globals
static ClassPtr	parameter_class;	// Required: Global pointer for our class
//static char		units[2048];

// Prototypes
int param_list_compare(t_param* x, AtomPtr a, long lengthA, AtomPtr b, long lengthB);


/************************************************************************************/
// Class Definition

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	ClassPtr		c;
	ObjectPtr		attr = NULL;
	TTValue			dataspaceNames;
	TTValue			functionNames;
	TTSymbol*		functionName;
	char			dataspaces[2048];
	char			functions[2048];
	char			drives[2048];
	short			i;

	// Initialize Globals
	jamoma_init();
	common_symbols_init();
	
	// Get list of dataspace and ramb library units
	TTGetRegisteredClassNamesForTags(dataspaceNames, TT("dataspace"));	
	dataspaces[0] = 0;
	for (int i=0; i < dataspaceNames.getSize(); i++) {
		TTSymbolPtr	name;
		dataspaceNames.get(i, &name);
		// We jump past the first 10 characters of the name string in order to
		// remove the initial "dataspace." part of the string. Resolves issue #707
		strcat(dataspaces, name->getCString()+10);
		strcat(dataspaces, " ");
	}
	
	// Get list of function names, used for ramping
	FunctionLib::getUnitNames(functionNames);
	functions[0] = 0;
	for (i=0; i<functionNames.getSize(); i++)
	{
		functionNames.get(i, &functionName);
		strcat(functions, functionName->getCString());	
		strcat(functions, " ");
	}
    
	// Get list of ramp drives, used for ramping
	RampLib::getUnitNames(functionNames); //reusing TTValue functionNames again here
	drives[0] = 0;
	for (i=0; i<functionNames.getSize(); i++)
	{
		functionNames.get(i, &functionName); //reusing TTSymbol* functionName again here
		strcat(drives, functionName->getCString());	
		strcat(drives, " ");
	}
	
	
	// Define our class
	c = class_new(OBJECT_CLASS_NAME,(method)param_new, (method)param_free, sizeof(t_param), (method)0L, A_GIMME, 0);
		
	// Make methods accessible for our class:
	// Note that we can't make the bang method directly accessible here (must go through another function)
	//	because the function pointer is in out struct, which hasn't been defined yet
	class_addmethod(c, (method)param_notify,		"notify",		A_CANT,		0);	
	class_addmethod(c, (method)param_getattrnames,	"getattrnames",	A_CANT,		0);
	class_addmethod(c, (method)param_dispatched,	"dispatched",	A_GIMME,	0);
	class_addmethod(c, (method)param_int,			"int",			A_DEFLONG,	0);
	class_addmethod(c, (method)param_float,			"float",		A_DEFFLOAT,	0);
 	class_addmethod(c, (method)param_list,			"list",			A_GIMME,	0);
	class_addmethod(c, (method)param_symbol,		"symbol",		A_DEFSYM,	0);
 	class_addmethod(c, (method)param_anything,		"anything",		A_GIMME,	0);
	class_addmethod(c, (method)param_ui_refresh,	"view/refresh",				0);
	class_addmethod(c, (method)param_inc,			"value/inc",	A_GIMME,	0);
	class_addmethod(c, (method)param_dec,			"value/dec",	A_GIMME,	0);
	class_addmethod(c, (method)param_inc,			"+",			A_GIMME,	0);
	class_addmethod(c, (method)param_dec,			"-",			A_GIMME,	0);
	class_addmethod(c, (method)param_dump,			"dump",						0);
	class_addmethod(c, (method)param_bang,			"bang",						0);
	class_addmethod(c, (method)param_assist,		"assist",		A_CANT,		0); 
#ifndef JMOD_MESSAGE
	class_addmethod(c, (method)param_reset,			"reset",					0);
#endif
	class_addmethod(c, (method)param_setcallback,	"setcallback",	A_CANT,		0);

	jcom_core_subscriber_classinit_extended(c, attr, true);		// define a name attr
	
	// ATTRIBUTE: ramp stuff
	jamoma_class_attr_new(c,		"ramp/drive",				_sym_symbol, (method)param_attr_setramp, (method)param_attr_getramp);
	CLASS_ATTR_ENUM(c,				"ramp/drive",				0, drives);
	
	jamoma_class_attr_new(c,		"ramp/function",			_sym_symbol, (method)param_attr_setrampfunction, (method)param_attr_getrampfunction);
	CLASS_ATTR_ENUM(c,				"ramp/function",			0, functions);
	

	// ATTRIBUTE: type - options are generic, integer, decimal, string, boolean, array, none
	jamoma_class_attr_new(c,		"type",						_sym_symbol, (method)param_attr_settype, (method)param_attr_gettype);
#ifdef JMOD_MESSAGE
	CLASS_ATTR_ENUM(c,				"type",	0,					"integer decimal boolean string array generic none");
#else
	CLASS_ATTR_ENUM(c,				"type",	0,					"integer decimal boolean string array generic");
#endif
	
	// Attribute: repetitions/allow
	CLASS_ATTR_STYLE(c,				"repetitions/allow",		0, "onoff");
	
	// ATTRIBUTE: view/freeze - toggles a "frozen" ui outlet so that you can save cpu
	jamoma_class_attr_new(c,		"view/freeze",				_sym_long, (method)param_attr_setfreeze, (method)param_attr_getfreeze);
	CLASS_ATTR_STYLE(c,				"view/freeze",				0,	"onoff");
	
	// ATTRIBUTE: stepsize - how much increment or decrement by
	jamoma_class_attr_new(c,		"value/stepsize",			_sym_float32, (method)param_attr_setstepsize, (method)param_attr_getstepsize);

#ifndef JMOD_MESSAGE
	// ATTRIBUTE: priority - used to determine order of parameter recall in a preset
	jamoma_class_attr_new(c,		"priority",					_sym_long, (method)param_attr_setpriority, (method)param_attr_getpriority);
#endif

	// ATTRIBUTE: value
	jamoma_class_attr_array_new(c,	"value",					_sym_atom, JAMOMA_LISTSIZE, (method)param_attr_setvalue, (method)param_attr_getvalue);

	// ATTRIBUTE: value/default
	jamoma_class_attr_array_new(c,	"value/default",			_sym_atom, JAMOMA_LISTSIZE, (method)param_attr_setdefault, (method)param_attr_getdefault);

	// ATTRIBUTE: readonly
	jamoma_class_attr_new(c,		"readonly",					_sym_long, (method)param_attr_setreadonly, (method)param_attr_getreadonly);
	CLASS_ATTR_STYLE(c,				"readonly",					0, "onoff");
	
	// ATTRIBUTES: dataspace stuff
	jamoma_class_attr_new(c,		"dataspace",				_sym_symbol, (method)param_attr_setdataspace, (method)param_attr_getdataspace);
	CLASS_ATTR_ENUM(c,				"dataspace",				0, dataspaces);
	
	jamoma_class_attr_new(c,		"dataspace/unit", 	_sym_symbol, (method)param_attr_setactiveunit, (method)param_attr_getactiveunit);
	// The override dataspace is not exposed as an attribute

#ifndef JMOD_MESSAGE
	// ATTRIBUTE: mixweight - used by preset/mix message
	jamoma_class_attr_new(c,		"mix/weight",			_sym_float32, (method)param_attr_setmixweight, (method)param_attr_getmixweight);
#endif

	
	// Default Attribute Order for the Inspector
	CLASS_ATTR_ORDER(c, "name",						0, "1");
	CLASS_ATTR_ORDER(c, "type",						0, "2");
	CLASS_ATTR_ORDER(c, "range/bounds",				0, "3");
	CLASS_ATTR_ORDER(c, "range/clipmode",			0, "4");
	CLASS_ATTR_ORDER(c, "ramp/drive",				0, "5");
	CLASS_ATTR_ORDER(c, "ramp/function",			0, "6");
	CLASS_ATTR_ORDER(c, "repetitions/allow",		0, "7");
	CLASS_ATTR_ORDER(c, "dataspace",				0, "8");
	CLASS_ATTR_ORDER(c, "dataspace/unit",	0, "9");
	CLASS_ATTR_ORDER(c, "priority",					0, "10");
	CLASS_ATTR_ORDER(c, "description",				0, "11");	
	CLASS_ATTR_ORDER(c, "readonly",					0, "12");	
	CLASS_ATTR_ORDER(c, "view/freeze",				0, "13");
	CLASS_ATTR_ORDER(c, "value",					0, "14");
	CLASS_ATTR_ORDER(c, "value/default",			0, "15");
	CLASS_ATTR_ORDER(c, "value/stepsize",			0, "16");
#ifndef JMOD_MESSAGE
	CLASS_ATTR_ORDER(c, "mix/weight",			0, "17");
#endif

	// Finalize our class
	class_register(_sym_box, c);
	parameter_class = c;
	return 0;
}


/************************************************************************************/
// Object Life
#pragma mark -
#pragma mark life cycle

void *param_new(SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	short			i;
	long			attrstart = attr_args_offset(argc, argv);
	t_param*		x = (t_param *)object_alloc(parameter_class);
	SymbolPtr		name = _sym_nothing;
	ObjectPtr		patcher = NULL;

	if (attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();
	
	// for instances buried inside of another object:
	// we pass a second argument which is a pointer to the patcher
	if (attrstart>1 && argv)
		patcher = ObjectPtr(atom_getobj(argv+1));

	if (x) {
		for (i=num_outlets; i > 0; i--)
			x->outlets[i-1] = outlet_new(x, 0);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);
		
		x->ui_qelem = qelem_new(x, (method)param_ui_queuefn);
		x->rampParameterNames = new TTHash;

		// TODO: we shouldn't really allocate this much memory unless we actually need it...
		x->atom_list		= new Atom[JAMOMA_LISTSIZE];
		x->atom_listTemp	= new Atom[JAMOMA_LISTSIZE];
		x->atom_listDefault = new Atom[JAMOMA_LISTSIZE];
		
		TTObjectInstantiate(TT("dataspace"), &x->dataspace_override2unit, kTTValNONE);
		TTObjectInstantiate(TT("dataspace"), &x->dataspace_unit2override, kTTValNONE);
		
		// defaulted to one long above, set list to be of size 1
		x->list_size = 1;
		x->listDefault_size = 0;
		for (i = 0; i < JAMOMA_LISTSIZE; i++) {
			atom_setlong(&x->atom_list[i], 0);
			atom_setlong(&x->atom_listTemp[i], 0);
			atom_setlong(&x->atom_listDefault[i], 0);
		}
		x->common.attr_name = name;
		x->attr_ui_freeze = 0;
		x->attr_stepsize = 1.0;
#ifndef JMOD_MESSAGE		
		x->attr_mixweight = 1.0;                    // default: include parameter in mix
		x->attr_priority = 0;						// default is no priority
#endif
		x->param_output = &param_output_generic;	// set function pointer to default
        x->attr_ramp = jps_none;
        x->attr_rampfunction = jps_linear;
		x->ramper = NULL;
		x->attr_dataspace = jps_none;
		x->attr_unit = jps_none;
		x->attr_unitOverride = jps_none;
		x->isInitialised = NO;						// the message/parameter has not yet been initialised

#ifdef JMOD_MESSAGE
		jcom_core_subscriber_new_extended(&x->common, name, jps_subscribe_message);
#else
		jcom_core_subscriber_new_extended(&x->common, name, jps_subscribe_parameter);
#endif
		if (patcher)
			x->common.container = patcher;
		
		// Any time this object subscribes, we need to (re)setup the internal direct receive object:
		jcom_core_subscriber_setcustomsubscribe_method((t_jcom_core_subscriber_common*)x, param_makereceive);
		
		attr_args_process(x, argc, argv);			// handle attribute args
		object_attach_byptr_register(x, x , _sym_box);
#ifndef JMOD_MESSAGE
		param_reset(x);	
#endif

		// We used to defer here to try and wait for the hub to exist,
		// but now the hub will ask about us once the patcher is ready and gets a loadbang [TAP]
		jcom_core_subscriber_subscribe((t_jcom_core_subscriber_common*)x);
		
		// If no type was specified by the user we call the accessor here
		// This is important because memory is configured - not just setting a default!
        if (x->common.attr_type == NULL) {
			Atom a;
			atom_setsym(&a, jps_generic);
			object_attr_setvalueof(x, jps_type, 1, &a);
		}
	}
	return (x);										// return the pointer to our new instantiation
}


void param_free(t_param *x)
{	
	jcom_core_subscriber_common_free((t_jcom_core_subscriber_common *)x);
	qelem_free(x->ui_qelem);
	if (x->ramper)
		TTObjectRelease((TTObjectPtr*)&x->ramper);
	if (x->receive)
		object_free(x->receive);
	delete x->rampParameterNames;
	
	TTObjectRelease(&x->dataspace_override2unit);
	TTObjectRelease(&x->dataspace_unit2override);
	
	delete [] x->atom_list;
	delete [] x->atom_listTemp;
	delete [] x->atom_listDefault;
}


#ifndef JMOD_MESSAGE
/************************************************************************************/
// Communication with PSTO (pattrstorage)
#pragma mark -
#pragma mark pattr support

// FROM psto
MaxErr param_setvalueof(t_param *x, AtomCount argc, AtomPtr argv)
{
	if (argc && argv) {
		sysmem_copyptr(argv, &x->atom_list[0], sizeof(Atom) * argc);
		x->list_size = argc;
		x->param_output(x);
	}	
	return MAX_ERR_NONE;
}

// TO psto
MaxErr param_getvalueof(t_param *x, long *argc, AtomPtr *argv)
{
	if (argc && argv) {
		if (*argc && *argv) {
			// use passed in memory
		} 
		else { 
			if (x->list_size > 1)
				*argv = (AtomPtr )getbytes(sizeof(Atom) * x->list_size);
			else
				*argv = (AtomPtr )getbytes(sizeof(Atom));
		}
		
		*argc = x->list_size > 1 ? x->list_size : 1;
		sysmem_copyptr(&x->atom_list[0], *argv, sizeof(Atom) * (*argc));
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
	Atom a[2];
	
	/* We are using @description to set @annotation of the GUI object which is connected to the leftmost outlet
	 The reason why we do it here, is that the parameter will be reset by the hub when the module is initialising.
	 By then callback has been properly set up, and can be checked for. This way we avoid setting
	 annotation when the parameter is embedded in another object (e.g. jcom.ui), ref. redmine issue 1099.
	 */
	atom_setsym(&a[0], _sym_annotation);
	atom_setsym(&a[1], x->common.attr_description);
	if (!x->callback)
		outlet_anything(x->outlets[k_outlet_set], _sym_sendbox, 2, a); //TODO: use defer_low?

	
	
	if (x->listDefault_size) {						// copy the default values to the current value
		sysmem_copyptr(x->atom_listDefault, x->atom_list, sizeof(Atom) * x->listDefault_size);
		x->list_size = x->listDefault_size;
		param_bang(x);
	}

	// Set parameter to be uninitialised, to circumvent filtering of repetitions when outputing value from default preset
	x->isInitialised = NO;
}


void param_setcallback(t_param *x, method newCallback, t_object *callbackArg)
{
	x->callback = newCallback;
	x->callbackArg = callbackArg;
}


bool param_handleProperty(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	char	osc[4096];
	char*	property;
	char*	property_property;
	bool	get = false;		// is this a getter instead of a setter?
	
	// we start with a full osc path, for example:
	//	ramp/drive:/granularity
	strncpy_zero(osc, msg->s_name, 4096);
	property = strchr(osc, ':');
	*property = 0;
	property += 2;
	
	property_property = strchr(property, ':');
	if (property_property) {
		*property_property = 0;
		property_property++;
		if (property_property) {
			if (!strcmp(property_property, "/get"))
				get = true;
		}
	}
	
	// now we have two strings, for example:
	//	osc = ramp/drive
	//	property = granularity
	
	if (!strcmp(osc, "ramp/drive")) {
		if (!strcmp(property, "update")) {
			// If the hub receives a bang, it's passed on to this method, 
			// and used to update value if @ramp/drive is set to "async".
			x->ramper->tick();
			return true;
		}
		else if (get) {	// get a property
			TTSymbol*	parameterName = TT(property);
			TTValue		parameterValue;
			int			numValues;
			AtomPtr		a;
			TTSymbol*	tempSymbol;
			double		tempValue;
			TTValue		v;
			
			// get the correct TT name for the parameter given the Max name
			// parameterName = TT(atom_getsym(argv)->s_name);
			x->rampParameterNames->lookup(parameterName, v);
			v.get(0, &parameterName);
			
			x->ramper->getAttributeValue(parameterName, parameterValue);
			numValues = parameterValue.getSize();
			
			if (numValues) {
				a = (AtomPtr )sysmem_newptr(sizeof(Atom) * (numValues+1));
				// First list item is name of parameter
				atom_setsym(a, msg);
				// Next the whole shebang is copied
				for (int i=0; i<numValues; i++) {
					if (parameterValue.getType(i) == kTypeSymbol) {
						parameterValue.get(i, &tempSymbol);
						atom_setsym(a+i+1, gensym((char*)tempSymbol->getCString()));
					}
					else {
						parameterValue.get(i, tempValue);
						atom_setfloat(a+i+1, tempValue);
					}
				}
				object_obex_dumpout(x, msg, numValues + 1, a);
				if (x->common.hub)
					object_method_typed(x->common.hub, jps_return, numValues + 1, a, NULL);
				sysmem_freeptr(a);
			}
			return true;
		}
		else {			// set a property
			if (argc && argv) {
				TTSymbol*	parameterName;
				TTValue		newValue;
				int			i;
				
				parameterName = TT(property);
				for (i=0; i<(argc); i++) {
					if (argv[i].a_type == A_SYM)
						newValue.append(TT(atom_getsym(argv+i)->s_name));
					else
						newValue.append(atom_getfloat(argv+i));
				}
				
				x->ramper->setAttributeValue(parameterName, newValue);
				return true;
			}
		}
	}
	else if (!strcmp(osc, "ramp/function")) {
		if (get) {	// get a property
			TTSymbol*	parameterName = TT(property);
			TTValue		parameterValue;
			int			numValues;
			AtomPtr		a;
			TTSymbol*	tempSymbol;
			double		tempValue;
			TTValue		v;
						
			// get the correct TT name for the parameter given the Max name
			// parameterName = TT(atom_getsym(argv)->s_name);
			x->rampParameterNames->lookup(parameterName, v);
			v.get(0, &parameterName);
			
			x->ramper->getFunctionParameterValue(parameterName, parameterValue);
			numValues = parameterValue.getSize();
			
			if (numValues) {
				a = (AtomPtr )sysmem_newptr(sizeof(Atom) * (numValues+1));
				// First list item is name of parameter
				atom_setsym(a, gensym((char*)parameterName->getCString()));
				// Next the whole shebang is copied
				for (int i=0; i<numValues; i++) {
					if (parameterValue.getType(i) == kTypeSymbol) {
						parameterValue.get(i, &tempSymbol);
						atom_setsym(a+i+1, gensym((char*)tempSymbol->getCString()));
					}
					else {
						parameterValue.get(i, tempValue);
						atom_setfloat(a+i+1, tempValue);
					}
				}
				object_obex_dumpout(x, msg, numValues + 1, a);
				if (x->common.hub)
					object_method_typed(x->common.hub, jps_return, numValues + 1, a, NULL);
				sysmem_freeptr(a);
			}
			return true;
		}
		else {			// set a property
			if (argc && argv) {
				TTSymbol*	parameterName;
				TTValue		newValue;
				int			i;
				
				parameterName = TT(property);
				for (i=0; i<(argc); i++) {
					if (argv[i].a_type == A_SYM)
						newValue.append(TT(atom_getsym(argv+i)->s_name));
					else
						newValue.append(atom_getfloat(argv+i));
				}
				
				x->ramper->setFunctionParameterValue(parameterName, newValue);
				return true;
			}
		}
	}
	
	return false;
}

// This function allocates memory -- caller must free it!
void param_getattrnames(t_param *x, long* count, SymbolPtr** names)
{
#ifndef JMOD_MESSAGE
	*count = 17;
	*names = (SymbolPtr*)sysmem_newptr(sizeof(SymbolPtr) * *count);
	
	// These should be alphabetized
	if (*count) {
		*(*names+0) = jps_name;
		*(*names+1) = jps_type;
		*(*names+2) = jps_range_bounds;
		*(*names+3) = jps_range_clipmode;
		*(*names+4) = jps_ramp_drive;
		*(*names+5) = jps_ramp_function;
		*(*names+6) = jps_repetitions_allow;
		*(*names+7) = jps_dataspace;
		*(*names+8) = jps_unit; //dataspace/unit
		*(*names+9) = jps_priority;
		*(*names+10) = jps_description;
		*(*names+11) = jps_readonly;
		*(*names+12) = gensym("ui/freeze");
		*(*names+13) = jps_value;
		*(*names+14) = jps_value_default;
		*(*names+15) = jps_value_stepsize;
		*(*names+16) = jps_mix_slash_weight;
	}	
#else
	*count = 15;
	*names = (SymbolPtr*)sysmem_newptr(sizeof(SymbolPtr) * *count);
	
	// These should be alphabetized
	if (*count) {
		*(*names+0) = jps_name;
		*(*names+1) = jps_type;
		*(*names+2) = jps_range_bounds;
		*(*names+3) = jps_range_clipmode;
		*(*names+4) = jps_ramp_drive;
		*(*names+5) = jps_ramp_function;
		*(*names+6) = jps_repetitions_allow;
		*(*names+7) = jps_dataspace;
		*(*names+8) = jps_unit; //dataspace/unit
		*(*names+9) = jps_description;
		*(*names+10) = jps_readonly;
		*(*names+11) = gensym("ui/freeze");
		*(*names+12) = jps_value;
		*(*names+13) = jps_value_default;
		*(*names+14) = jps_value_stepsize;
	}
#endif

}


// ATTRIBUTE: TYPE
// This is crucial because it sets function pointers for the optimized clipping, bang, and other functions
MaxErr param_attr_settype(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{
	SymbolPtr arg = atom_getsym(argv);
	x->common.attr_type = arg;

	if (arg == jps_integer) {
		x->param_output = &param_output_int;
	}
	else if (arg == jps_decimal) {
		x->param_output = &param_output_float;
	}
	else if (arg == jps_string) {
		x->param_output = &param_output_symbol;	
	}
	else if (arg == jps_boolean) {
		x->param_output = &param_output_int;
	}
	else if (arg == jps_generic) {
		x->param_output = &param_output_generic;
	} 
	else if (arg == jps_array) {
		x->param_output = &param_output_list;
	}

#ifdef JMOD_MESSAGE
	else if (arg == jps_none) {
		x->param_output = &param_output_none;
	}
#endif // JMOD_MESSAGE
	else {
#ifdef JMOD_MESSAGE
		error("Jamoma - invalid type specified for %s jcom.message in the %s module.", x->common.attr_name->s_name, x->common.module_name->s_name);
#else
		error("Jamoma - invalid type specified for %s jcom.parameter in the %s module.", x->common.attr_name->s_name, x->common.module_name->s_name);
#endif
		x->common.attr_type = jps_generic;
		x->param_output = &param_output_generic;
	}

	defer(x, (method)param_ramp_setup, NULL, 0, NULL);
	return MAX_ERR_NONE;
}


// ATTRIBUTE: RAMP
// This is crucial because it sets function pointers
MaxErr param_attr_setramp(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{
	SymbolPtr arg = atom_getsym(argv);
	x->attr_ramp = arg;
	
	defer(x, (method)param_ramp_setup, NULL, 0, NULL);
	return MAX_ERR_NONE;
}

MaxErr param_attr_getramp(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom));
	atom_setsym(*argv, x->attr_ramp);
	return MAX_ERR_NONE;
}


MaxErr param_attr_setrampfunction(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{
	SymbolPtr arg = atom_getsym(argv);
	x->attr_rampfunction = arg;

	if (x->ramper) {
		long		n;
		TTValue		names;
		TTSymbolPtr	aName;
		TTString	nameString;
		
		// set the function
		x->ramper->setAttributeValue(TT("function"), TT(x->attr_rampfunction->s_name));
		
		// cache the function's attribute names
		x->rampParameterNames->clear();
		x->ramper->getFunctionParameterNames(names);
		n = names.getSize();
		for (int i=0; i<n; i++) {
			names.get(i, &aName);
			nameString = aName->getCString();
			
			if (aName == TT("bypass") || aName == TT("mute") || aName == TT("maxNumChannels") || aName == TT("sampleRate"))
				continue;										// don't publish these parameters
			
			if (nameString[0] > 64 && nameString[0] < 91) {		// ignore all params not starting with upper-case
				nameString[0] += 32;							// convert first letter to lower-case for Max
				
				TTValuePtr v = new TTValue(aName);
				x->rampParameterNames->append(TT(nameString.c_str()), *v);
			}
		}	
	}
	return MAX_ERR_NONE;
}

MaxErr param_attr_getrampfunction(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom));
	atom_setsym(*argv, x->attr_rampfunction);
	return MAX_ERR_NONE;
}


MaxErr param_attr_gettype(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom));
	atom_setsym(*argv, x->common.attr_type);
	return MAX_ERR_NONE;
}

	
MaxErr param_attr_getfreeze(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom));
	atom_setlong(*argv, x->attr_ui_freeze);
	return MAX_ERR_NONE;
}

MaxErr param_attr_setfreeze(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{   
	if (argc && argv){		  
		x->attr_ui_freeze = atom_getlong(argv);		
	}
	return MAX_ERR_NONE;
}


MaxErr param_attr_getstepsize(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom));
	atom_setfloat(*argv, x->attr_stepsize);
	return MAX_ERR_NONE;
}

MaxErr param_attr_setstepsize(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{
	if (argc && argv)
		x->attr_stepsize = atom_getfloat(argv);
	return MAX_ERR_NONE;
}

#ifndef JMOD_MESSAGE
MaxErr param_attr_getmixweight(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom));
	atom_setfloat(*argv, x->attr_mixweight);
	return MAX_ERR_NONE;
}

MaxErr param_attr_setmixweight(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{
	if (argc && argv) 
		x->attr_mixweight = atom_getfloat(argv);
	return MAX_ERR_NONE;
}

MaxErr param_attr_getpriority(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom));
	atom_setlong(*argv, x->attr_priority);
	return MAX_ERR_NONE;
}

MaxErr param_attr_setpriority(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{
	if (argc && argv)
		x->attr_priority = atom_getlong(argv);
	return MAX_ERR_NONE;
}
#endif


MaxErr param_attr_getreadonly(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom));
	atom_setlong(*argv, x->attr_readonly);
	return MAX_ERR_NONE;
}

MaxErr param_attr_setreadonly(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{
	if (argc && argv)
		x->attr_readonly = atom_getlong(argv);
	return MAX_ERR_NONE;
}


MaxErr param_attr_getvalue(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = x->list_size;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom) * x->list_size);
	sysmem_copyptr(x->atom_list, *argv, sizeof(Atom) * x->list_size);
	return MAX_ERR_NONE;
}

MaxErr param_attr_setvalue(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{
	x->list_size = argc;
	for (int i=0; i<argc; i++) {
		x->atom_list[i].a_type = argv[i].a_type;
		x->atom_list[i].a_w.w_long = argv[i].a_w.w_long;
	}
	return MAX_ERR_NONE;
}


MaxErr param_attr_getdefault(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = x->listDefault_size;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom) * x->listDefault_size);
	sysmem_copyptr(x->atom_listDefault, *argv, sizeof(Atom) * x->listDefault_size);
	return MAX_ERR_NONE;
}

MaxErr param_attr_setdefault(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{
	x->listDefault_size = argc;
	sysmem_copyptr(argv, x->atom_listDefault, argc * sizeof(Atom));
	return MAX_ERR_NONE;
}


MaxErr param_attr_getdataspace(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom));
	atom_setsym(*argv, x->attr_dataspace);
	return MAX_ERR_NONE;
}

MaxErr param_attr_setdataspace(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{
	if (argc && argv) {
		MaxErr		err;
		TTValue		v;
		TTSymbolPtr	s;
		
		x->attr_dataspace = atom_getsym(argv);
		
		v = TT(x->attr_dataspace->s_name);
		x->dataspace_override2unit->setAttributeValue(TT("dataspace"), v);
		x->dataspace_unit2override->setAttributeValue(TT("dataspace"), v);
		
		// If there is already a unit defined, then we try to use that
		// Otherwise we use the default (neutral) unit.
		err = MAX_ERR_GENERIC;
		if (x->attr_unit) {
			// override always defaults to the active unit
			err = x->dataspace_override2unit->setAttributeValue(TT("inputUnit"), TT(x->attr_unit->s_name));
			err = x->dataspace_override2unit->setAttributeValue(TT("outputUnit"), TT(x->attr_unit->s_name));
			
			err = x->dataspace_unit2override->setAttributeValue(TT("outputUnit"), TT(x->attr_unit->s_name));
			err = x->dataspace_unit2override->setAttributeValue(TT("inputUnit"), TT(x->attr_unit->s_name));
		}

		// TODO: Må tenke over denne her, slik at attr_unit blir satt riktig
		if (err) {
			x->dataspace_override2unit->getAttributeValue(TT("outputUnit"), v);
			v.get(0, &s);
			x->attr_unit = gensym(s->getCString());
			x->attr_unitOverride = x->attr_unit;
		}
	}
	return MAX_ERR_NONE;
}


MaxErr param_attr_getactiveunit(t_param *x, void *attr, long *argc, AtomPtr *argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr )sysmem_newptr(sizeof(Atom));
	atom_setsym(*argv, x->attr_unit);
	return MAX_ERR_NONE;
}

MaxErr param_attr_setactiveunit(t_param *x, void *attr, AtomCount argc, AtomPtr argv)
{
	if (argc && argv) {
		x->attr_unit = atom_getsym(argv);

		x->dataspace_override2unit->setAttributeValue(TT("outputUnit"), TT(x->attr_unit->s_name));
		x->dataspace_unit2override->setAttributeValue(TT("inputUnit"), TT(x->attr_unit->s_name));
	}
	return MAX_ERR_NONE;
}

MaxErr param_attr_setoverrideunit(t_param *x, SymbolPtr unit)
{
		x->attr_unitOverride = unit;		
		x->dataspace_override2unit->setAttributeValue(TT("inputUnit"), TT(x->attr_unitOverride->s_name));
		x->dataspace_unit2override->setAttributeValue(TT("outputUnit"), TT(x->attr_unitOverride->s_name));
		x->isOverriding = true;

	return MAX_ERR_NONE;
}


/************************************************************************************/

#pragma mark -
#pragma mark optimized output methods

// Actual bang functions
void param_output_generic(void *z)
{
	t_param *x = (t_param *)z;
	
	x->isSending = YES;
	if (x->list_size == 1) {
		param_clip_generic(x);
		if (x->attr_value.a_type == A_LONG)
			outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
		else if (x->attr_value.a_type == A_FLOAT)
			outlet_float(x->outlets[k_outlet_direct], x->attr_value.a_w.w_float);
		else if (x->attr_value.a_type == A_SYM)
			outlet_anything(x->outlets[k_outlet_direct], x->attr_value.a_w.w_sym, 0, NULL);
		param_send_feedback(x);
	}
	else if (x->list_size > 1) {
		if (param_clip_generic(x) && x->ramper)
			x->ramper->stop();
		outlet_anything(x->outlets[k_outlet_direct], _sym_list, x->list_size, x->atom_list);
		param_send_feedback(x);
	} 
	else {	// zero args
		param_output_none(x);
	}
	x->isSending = NO;
	x->isInitialised = YES;	// We have had our value set at least once
}

void param_output_int(void *z)
{
	t_param *x = (t_param *)z;
		
	// Dataspace conversion
	if (x->isOverriding)
	{
		long	ac = 0;
		AtomPtr	av = NULL;
		bool	alloc = false;
		
		param_convert_units(x, 1, &x->attr_valueTemp, &ac, &av, &alloc);
		atom_setfloat(&x->attr_valueTemp, atom_getfloat(av));
		
		if (alloc)
			delete[] av;
	}
	
	// Clipping
	if (param_clip_int(x) && x->ramper)
		x->ramper->stop();							// stop the ramp
	
	// If ramping, then round to integer, else truncate
	if (x->ramper)
		atom_setlong(&x->attr_valueTemp, round(atom_getfloat(&x->attr_valueTemp)));
	else
		atom_setlong(&x->attr_valueTemp, atom_getfloat(&x->attr_valueTemp));
	
	// Test for repetitions before outputting
	if (!x->isInitialised || x->common.attr_repetitions || (atom_getlong(&x->attr_valueTemp) != atom_getlong(&x->attr_value))) {
		
		// Update stored value
		atom_setlong(&x->attr_value, atom_getlong(&x->attr_valueTemp));
		
		x->isSending = YES;
		outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
		param_send_feedback(x);
		x->isSending = NO;
		
		x->isInitialised = YES;	// We have had our value set at least once
	}
}


void param_output_float(void *z)
{
	t_param *x = (t_param *)z;
	
	// Dataspace conversion
	if (x->isOverriding)
	{
		long	ac = 0;
		AtomPtr	av = NULL;
		bool	alloc = false;
		
		param_convert_units(x, 1, &x->attr_valueTemp, &ac, &av, &alloc);
		atom_setfloat(&x->attr_valueTemp, atom_getfloat(av));
		
		if (alloc)
			delete[] av;
	}
	
	// Clip to specified range, depending on clipmode
	if (param_clip_float(x) && x->ramper)
		x->ramper->stop();							// stop the ramp
	
	// Test for repetitions before outputting
	if (!x->isInitialised || x->common.attr_repetitions || (atom_getfloat(&x->attr_valueTemp) != atom_getfloat(&x->attr_value))) {
		
		// Update stored value
		atom_setfloat(&x->attr_value, atom_getfloat(&x->attr_valueTemp));
		
		x->isSending = YES;
		outlet_float(x->outlets[k_outlet_direct], x->attr_value.a_w.w_float);
		param_send_feedback(x);
		x->isSending = NO;
		
		x->isInitialised = YES;	// We have had our value set at least once
	}
}

void param_output_symbol(void *z)
{
	t_param *x = (t_param *)z;
	
	char string[24];
	t_symbol *mySymbol;
	
	if (atom_gettype(&x->attr_valueTemp) == A_SYM) {
		// Store as new value
		atom_setsym(&x->attr_value, atom_getsym(&x->attr_valueTemp));
		x->isSending = YES;
		outlet_anything(x->outlets[k_outlet_direct], atom_getsym(&x->attr_value), 0, NULL);
		param_send_feedback(x);
		x->isSending = NO;
		x->isInitialised = YES;	// We have had our value set at least once
	}
	else if (atom_gettype(&x->attr_valueTemp) == A_FLOAT) {
		
		// Convert float to string and store as new value
		sprintf (string, "%f", atom_getfloat(&x->attr_valueTemp));
		mySymbol = gensym(string);
		atom_setsym(&x->attr_value, mySymbol);
		
		x->isSending = YES;
		outlet_anything(x->outlets[k_outlet_direct], atom_getsym(&x->attr_value), 0, NULL);
		param_send_feedback(x);
		x->isSending = NO;
		x->isInitialised = YES;	// We have had our value set at least once
	}
	else if (atom_gettype(&x->attr_valueTemp) == A_LONG) {
		
		//Convert int to string and stoe as new value
		sprintf (string, "%ld", atom_getlong(&x->attr_valueTemp));
		mySymbol = gensym(string);
		atom_setsym(&x->attr_value, mySymbol);
		
		x->isSending = YES;
		outlet_anything(x->outlets[k_outlet_direct], atom_getsym(&x->attr_value), 0, NULL);
		param_send_feedback(x);
		x->isSending = NO;
		x->isInitialised = YES;	// We have had our value set at least once
	}
}

void param_output_list(void *z)
{
	int i;
	t_param *x = (t_param *)z;
	
	// Dataspace conversion
	if (x->isOverriding)
	{
		long	ac = 0;
		AtomPtr	av = NULL;
		bool	alloc = false;
		
		param_convert_units(x, x->listTemp_size, x->atom_listTemp, &ac, &av, &alloc);
		for (i=0; i<x->listTemp_size; i++)
			atom_setfloat(&x->atom_listTemp[i], atom_getfloat(av+i));
		
		if (alloc)
			delete[] av;
	}
	
	// Clip to specified range, depending on clipmode
	if (param_clip_list(x) && x->ramper)
		x->ramper->stop();							// stop the ramp
	
	// Test for repetitions before outputting	
	if (!x->isInitialised || x->common.attr_repetitions || param_list_compare(x, x->atom_listTemp, x->listTemp_size, x->atom_list, x->list_size)) {
	
		// Update stored values
		x->list_size = x->listTemp_size;
		for (i=0; i<x->listTemp_size; i++)
			atom_setfloat(&x->atom_list[i], atom_getfloat(&x->atom_listTemp[i]));
		
		x->isSending = YES;
		outlet_anything(x->outlets[k_outlet_direct], _sym_list, x->list_size, x->atom_list);
		param_send_feedback(x);
		x->isSending = NO;
	
		x->isInitialised = YES;	// We have had our value set at least once
	}
}


void param_output_none(void *z)
{
	t_param *x = (t_param *)z;
	Atom output[1];
	AtomPtr out = (AtomPtr )(&output);
	
	x->isSending = YES;
	
	// bang direct output
	outlet_bang(x->outlets[k_outlet_direct]);
	
	// call on the hub to pass our data onward
	// We can not use (method)param_send_feedback here as it assumes an additional argument
	if (x->common.hub != NULL) {
		
		// send to the object in which this parameter is embedded
		if (x->callback)
			x->callback(x->callbackArg, x->common.attr_name, x->list_size, x->atom_list);
		
		atom_setsym(out, x->common.attr_name);
		object_method_typed(x->common.hub, jps_feedback, 1, out, NULL);
	}
	
	x->isSending = NO;
	x->isInitialised = YES;	// We have had our value set at least once
}


#pragma mark -
#pragma mark methods bound to input/inlets

// Method for Assistance Messages
void param_assist(t_param *x, void *b, long msg, long arg, char *dst)
{
	if (msg==1) 						// Inlet
		strcpy(dst, "input");
	else {							// Outlets
		switch(arg) {
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


// Receive messages from our internal jcom.receive external
void param_receive_callback(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	if (msg == _sym_int)
		param_int(x, atom_getlong(argv));
	else if (msg == _sym_float)
		param_float(x, atom_getfloat(argv));
	else if (msg == _sym_symbol)
		param_symbol(x, atom_getsym(argv));
	else if (msg == _sym_list)
		param_list(x, msg, argc, argv);
	else
		param_anything(x, msg, argc, argv);
}

// DUMP: use for debugging - dump state to the Max window
void param_dump(t_param *x)
{
	char		s[256];
	Atom		a[4];
	AtomCount	ac;
	AtomPtr		av;
	
	if (x->common.hub != NULL) {

		snprintf(s, 256, "%s:/description", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_description);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		snprintf(s, 256, "%s:/dataspace", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_dataspace);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
				
		snprintf(s, 256, "%s:/dataspace/unit", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_unit);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);

#ifndef JMOD_MESSAGE
		snprintf(s, 256, "%s:/priority", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attr_priority);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
#endif
		
		snprintf(s, 256, "%s:/ramp/drive", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_ramp);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		snprintf(s, 256, "%s:/ramp/function", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_rampfunction);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		snprintf(s, 256, "%s:/range/bounds", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setfloat(&a[1], x->common.attr_range[0]);
		atom_setfloat(&a[2], x->common.attr_range[1]);
		object_method_typed(x->common.hub, jps_feedback, 3, a, NULL);
		
		snprintf(s, 256, "%s:/range/clipmode", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_clipmode);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		snprintf(s, 256, "%s:/repetitions/allow", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->common.attr_repetitions);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		snprintf(s, 256, "%s:/readonly", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attr_readonly);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		snprintf(s, 256, "%s:/type", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_type);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		snprintf(s, 256, "%s:/value", x->common.attr_name->s_name);
		ac = x->list_size + 1;
		av = (AtomPtr)malloc(sizeof(Atom) * ac);
		atom_setsym(av+0, gensym(s));
		memcpy(av+1, x->atom_list, sizeof(Atom) * x->list_size);
		object_method_typed(x->common.hub, jps_feedback, ac, av, NULL);
		if (ac && av)
			free(av);
		
		snprintf(s, 256, "%s:/value/default", x->common.attr_name->s_name);
		ac = x->listDefault_size + 1;
		av = (AtomPtr)malloc(sizeof(Atom) * ac);
		atom_setsym(av+0, gensym(s));
		memcpy(av+1, x->atom_listDefault, sizeof(Atom) * x->listDefault_size);
		object_method_typed(x->common.hub, jps_feedback, ac, av, NULL);
		if (ac && av)
			free(av); //FIXME: do we have a memory leak if there is no default value defined?		
		
		snprintf(s, 256, "%s:/value/stepsize", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setfloat(&a[1], x->attr_stepsize);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		snprintf(s, 256, "%s:/view/freeze", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attr_ui_freeze);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);

#ifndef JMOD_MESSAGE
		snprintf(s, 256, "%s:/mix/weight", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setfloat(&a[1], x->attr_mixweight);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
#endif
	}
}


// 'bang'method for user input
void param_bang(t_param *x)
{
#ifdef JMOD_MESSAGE
	Atom	a;
	
	atom_setsym(&a, gensym(""));
	outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
	outlet_anything(x->outlets[k_outlet_set], _sym_set, 1, &a);

	// call on the hub to pass our data onward
	if (x->common.hub != NULL) {
		atom_setsym(&a, x->common.attr_name);
		object_method_typed(x->common.hub, jps_feedback, 1, &a, NULL);
	}
#else
	x->param_output(x);
	
#endif
	if (x->callback)
		x->callback(x, x->common.attr_name, x->list_size, x->atom_list);
}

// INC & DEC
void param_inc(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	float	stepmult = 1.0;
	long	ramptime = 0;		// ms
	Atom	a[3];				// value, 'ramp', value
	short	a_len = 1;
	
	// Check for Arguments...
	if (argc) {
		// Look for arg to specify the number of steps to move
		if (argv->a_type == A_FLOAT) {
			stepmult = argv->a_w.w_float;
			argc--;
			argv++;
		}
		else if (argv->a_type == A_LONG) {
			stepmult = argv->a_w.w_long;
			argc--;
			argv++;
		}
		
		// Look for args to specify a ramp time
		if (argc) {
			if (argv->a_type == A_SYM) {
				if (argv->a_w.w_sym == jps_ramp) {
					argc--;
					argv++;
					if (argc) {
						ramptime = atom_getlong(argv);
						if (ramptime) {
							atom_setsym(a+1, jps_ramp);
							atom_setlong(a+2, ramptime);
							a_len = 3;
						}
					}
				}
			}
		}
	}
	
	// New input - halt dataspace override and ramping
	x->isOverriding = false;
	if (x->ramper)
		x->ramper->stop();
		
	if (x->common.attr_type == jps_integer)
		atom_setlong(a, x->attr_value.a_w.w_long + (x->attr_stepsize * stepmult));
	else if ((x->common.attr_type == jps_decimal) || (x->common.attr_type == jps_generic))
		atom_setfloat(a, x->attr_value.a_w.w_float + (x->attr_stepsize * stepmult));
	else if (x->common.attr_type == jps_boolean) {
		if (x->attr_value.a_w.w_long == 1)
			x->attr_value.a_w.w_long = 0;
		else
			x->attr_value.a_w.w_long = 1;
		param_output_int(x);
		return;
	}
	else {
		error("%s parameter (in the %s module) is an inappropriate type for the 'inc' message.", x->common.attr_name->s_name, x->common.module_name->s_name);
		return;
	}

	param_dispatched(x, msg, a_len, a);
}


void param_dec(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	float	stepmult = 1.0;
	long	ramptime = 0;		// ms
	Atom	a[3];				// value, 'ramp', value
	short	a_len = 1;

	// Check for Arguments...
	if (argc) {
		// Look for arg to specify the number of steps to move
		if (argv->a_type == A_FLOAT) {
			stepmult = argv->a_w.w_float;
			argc--;
			argv++;
		}
		else if (argv->a_type == A_LONG) {
			stepmult = argv->a_w.w_long;
			argc--;
			argv++;
		}
		
		// Look for args to specify a ramp time
		if (argc) {
			if (argv->a_type == A_SYM) {
				if (argv->a_w.w_sym == jps_ramp) {
					argc--;
					argv++;
					if (argc) {
						ramptime = atom_getlong(argv);
						if (ramptime) {
							atom_setsym(a+1, jps_ramp);
							atom_setlong(a+2, ramptime);
							a_len = 3;
						}
					}
				}
			}
		}
	}

	// New input - halt dataspace override and ramping
	x->isOverriding = false;
	if (x->ramper)
		x->ramper->stop();
		
	if (x->common.attr_type == jps_integer)
		atom_setlong(a, x->attr_value.a_w.w_long - (x->attr_stepsize * stepmult));
	else if ((x->common.attr_type == jps_decimal) || (x->common.attr_type == jps_generic))
		atom_setfloat(a, x->attr_value.a_w.w_float - (x->attr_stepsize * stepmult));
	else if (x->common.attr_type == jps_boolean) {
		if (x->attr_value.a_w.w_long == 1)
			x->attr_value.a_w.w_long = 0;
		else
			x->attr_value.a_w.w_long = 1;
		param_output_int(x);
		return;
	}
	else {
		error("%s parameter (in the %s module) is an inappropriate type for the 'dec' message.", x->common.attr_name->s_name, x->common.module_name->s_name);
		return;
	}

	param_dispatched(x, msg, a_len, a);
}


// INT INPUT
void param_int(t_param *x, long value)
{
	if (x->common.attr_type == jps_decimal) {
		param_float(x, (double)value);
		return;
	}
	else if (x->common.attr_type == jps_string) {
		char string[16];
		sprintf (string, "%ld", value);
		t_symbol *msg = gensym(string);
		param_symbol(x, msg);
		return;
	}

	// New input - halt dataspace override and ramping
	x->isOverriding = false;
	if (x->ramper)
		x->ramper->stop();
	
	// Store new value in temp location for now
	x->listTemp_size = 1;
	atom_setlong(&x->attr_valueTemp, value);
	
	x->param_output(x);
}


// FLOAT INPUT
void param_float(t_param *x, double value)
{
	
	if (x->common.attr_type == jps_integer) {
		param_int(x, (long)value);
		return;
	}
	else if (x->common.attr_type == jps_string) {
		char string[24];
		sprintf (string, "%f", value);
		t_symbol *msg = gensym(string);
		param_symbol(x, msg);
		return;
	}
	
	// New input - halt dataspace override and ramping
	x->isOverriding = false;
	if (x->ramper)
		x->ramper->stop();

	// Store new value in temp location for now
	x->listTemp_size = 1;
	atom_setfloat(&x->attr_valueTemp, value);
	
	x->param_output(x);
}

// SYMBOL INPUT
void param_symbol(t_param *x, SymbolPtr value)
{
	x->list_size = 1;
	
	// new input - halt any ramping...
	if (x->ramper)
		x->ramper->stop();
	
	atom_setsym(&x->attr_valueTemp, value);
	x->param_output(x);
}


// LIST INPUT <value, dataspace, ramptime>
void param_list(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	double		start[JAMOMA_LISTSIZE],
	values[JAMOMA_LISTSIZE],
	time;
	int			i;
	AtomPtr		ramp;
	SymbolPtr	unit;
	bool		hasRamp = false;
	bool		hasUnit = false;
	AtomCount	vectorSize	= argc;
	
	char*	c = strrchr(msg->s_name, ':');
	
	if (c) {
		if (param_handleProperty(x, msg, argc, argv))
			return;
	}
		
	/*
	 Check for unit and/or ramp:
	 */
	
	// If the list is only 1 atom, then it is just a value 
	if (argc == 1)
		;	// nothing to do
	
	// If it is two atoms, then it could be 2 values or a value + a unit
	else if (argc == 2 && x->attr_unit != jps_none) {
		if (atom_gettype(argv) != A_SYM && atom_gettype(argv+1) == A_SYM) {	// assume the second atom is a unit
			hasUnit = true;
			unit = atom_getsym(argv+1);
		}
	}
	
	// If it is three atoms, then it could be 3 values, 2 values + a unit, or 1 value + a ramp
	else if (argc == 3) {
		ramp = argv + (argc - 2);
		if (ramp->a_type == A_SYM && ramp->a_w.w_sym == jps_ramp) {
			hasRamp = true;
		}
		else if ((x->attr_dataspace != jps_none) && atom_gettype(argv) != A_SYM && atom_gettype(argv+2) == A_SYM) {	// assume the last atom is a unit
			hasUnit = true;
			unit = atom_getsym(argv+2);
		}
	}
	
	// If the list is four or more atoms, then we might have a unit and/or a ramp
	else {
		ramp = argv + (argc - 2);
		if (ramp->a_type == A_SYM && ramp->a_w.w_sym == jps_ramp) {
			hasRamp = true;
			// Check if the 3rd last argument might be a unit
			if ((x->attr_dataspace != jps_none) && atom_gettype(argv) != A_SYM && atom_gettype(argv+argc-3) == A_SYM) {	// assume the last atom is a unit
				hasUnit = true;
				unit = atom_getsym(argv+(argc-3));
			}
		}
		// If no ramp, then we check if the last argument might be a unit
		else if ((x->attr_dataspace != jps_none) && atom_gettype(argv) != A_SYM && atom_gettype(argv+argc-1) == A_SYM) {	// assume the last atom is a unit
			hasUnit = true;
			unit = atom_getsym(argv+(argc-1));
		}
	}
	
	if (hasUnit) {
		vectorSize -= 1;
		param_attr_setoverrideunit(x, unit);
	}
	else
		x->isOverriding = false;
	
	if (hasRamp) {
		vectorSize -= 2;
		
		time = atom_getfloat(argv+(argc-1));
				
		// Only one list member if @type is integer or decimal
		if (x->common.attr_type == jps_integer || x->common.attr_type == jps_decimal) {
			if (vectorSize > 1)
				vectorSize = 1;
		}
		
		// If time is negative or zero, we hit the target instantly
		if (time <= 0) {
			for (i = 0; i < vectorSize; i++) {
				switch(argv[i].a_type) {
					case A_LONG:
						atom_setlong(&x->atom_list[i], atom_getlong(argv + i));
						break;
					case A_FLOAT:
						atom_setfloat(&x->atom_list[i], atom_getfloat(argv + i));
						break;
					case A_SYM:
						atom_setsym(&x->atom_list[i], atom_getsym(argv + i));
						break;
					default:
						error("param_list: no type specification");
						break;
				}
			}
			x->param_output(x);
			return;
		}
		
		// Upper limit on list length prevents memory corruption
		if (vectorSize > JAMOMA_LISTSIZE)
			vectorSize = JAMOMA_LISTSIZE;
		
		if (hasUnit) {
			// If we have an override unit, the start value(s) need to be converted from default unit into override unit
			AtomPtr	convertedStartValues = NULL;
			long	ac = 0;
			bool	alloc = false;
			
			param_inverseConvert_units(x, x->list_size, x->atom_list, &ac, &convertedStartValues, &alloc);
			
			// Set the start and end value(s) for the ramp
			for (i=0; i<vectorSize; i++) {
				values[i] = atom_getfloat(argv+i);
				if (i <= x->list_size)
					start[i] = atom_getfloat(&convertedStartValues[i]);
				else
					start[i] = atom_getfloat(&convertedStartValues[(x->list_size)-1]);
			}
			
			if (alloc)
				delete[] convertedStartValues;
		}
		else {
			// Set the start an end value(s) for the ramp
			for (i=0; i<vectorSize; i++) {
				values[i] = atom_getfloat(argv+i);
				if (i <= x->list_size)
					start[i] = atom_getfloat(&x->atom_list[i]);
				else
					start[i] = atom_getfloat(&x->atom_list[(x->list_size)-1]);
			}
		}
		
		// Trigger the ramp
		
		// The ramp function will initially be used to update x->atom_listTemp, so we set the size of that list here
		x->listTemp_size = vectorSize;
		
		x->ramper->set(vectorSize, start);
		x->ramper->go(vectorSize, values, time);
	} 
	else {
		// Restrict the length of the list for @type integer, boolean, decimal and string
		if ((x->common.attr_type != jps_array) && (x->common.attr_type != jps_generic) && (x->common.attr_type != jps_none))
			if (vectorSize>1)
				vectorSize = 1;
		
		// Upper limit on list length prevents memory corruption
		if (vectorSize > JAMOMA_LISTSIZE)
			vectorSize = JAMOMA_LISTSIZE;
		
		// Copy values
		for (i = 0; i < vectorSize; i++) {
			switch(argv[i].a_type) {
				case A_LONG:
					atom_setlong(&x->atom_listTemp[i], atom_getlong(argv + i));
					break;
				case A_FLOAT:
					atom_setfloat(&x->atom_listTemp[i], atom_getfloat(argv + i));
					break;
				case A_SYM:
					atom_setsym(&x->atom_listTemp[i], atom_getsym(argv + i));
					break;
				default:
					error("param_list: no type specification");
					break;
			}
		}
		x->listTemp_size = vectorSize;
		x->param_output(x);
	}
}


// ANYTHING INPUT
void param_anything(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	char*	c = strrchr(msg->s_name, ':');
	long	ac = 0;
	AtomPtr	av = NULL;

	if (c) {
		if (param_handleProperty(x, msg, argc, argv))
			return;
	}

	ac = argc+1;
	av = (AtomPtr)malloc(sizeof(Atom) * ac);
	atom_setsym(av, msg);
	memcpy(av+1, argv, sizeof(Atom) * argc);
	param_list(x, _sym_list, ac, av);
	free(av);
}


void param_ui_refresh(t_param *x)
{
	outlet_anything(x->outlets[k_outlet_set], _sym_set, x->list_size, &x->attr_value);
}

// Send values to a potentially connected ui object at the first outlet
void param_ui_queuefn(t_param *x)
{
	outlet_anything(x->outlets[k_outlet_set], _sym_set, x->list_size, &x->attr_value);
}


#pragma mark -
#pragma mark hub communication


void param_makereceive(void* z)
{
	t_param*	x = (t_param*)z;
	Atom		a;
	char		osc[512];
	SymbolPtr	module_name = object_attr_getsym(x->common.hub, _sym_name);
	
	if (x->receive) {
		object_free(x->receive);
		x->receive = NULL;
	}
	
	if (module_name && module_name != _sym_nothing) {
		strcpy(osc, module_name->s_name);
		strcat(osc, "/");
		strcat(osc, x->common.attr_name->s_name);
		
		atom_setsym(&a, gensym(osc));
		x->receive = (t_object*)object_new_typed(_sym_box, jps_jcom_receive, 1, &a);
		object_method(x->receive, jps_setcallback, &param_receive_callback, x);
	}
	else
		defer_low(x, (method)param_makereceive, 0, 0, 0);
}


// messages received from jcom.hub
void param_dispatched(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	if (!x->isSending) {
		// new input - halt any ramping...
		if (x->ramper)
			x->ramper->stop();
		x->isOverriding = 0;

		if (argc == 1) {
			jcom_core_atom_copy(&x->attr_valueTemp, argv);
			x->listTemp_size = 1;
			x->param_output(x);
		} 
		else if (argc > 1)
			param_list(x, msg, argc, argv);
		else { 	// no args
			// generic parameters may have no arg -- i.e. to open a dialog that defines the arg
			//if (x->common.attr_type == jps_generic)
			x->list_size = 0;
			if (x->common.attr_type != jps_array)	// zero length list parameters are not allowed
				x->param_output(x);
		}
	}
}


// Send feedback to the hub
void param_send_feedback(t_param *x)
{
	Atom output[JAMOMA_LISTSIZE + 1];
	AtomPtr out = (AtomPtr )(&output);
	
	// send to our ui outlet
	if (!x->attr_ui_freeze)
		qelem_set(x->ui_qelem);
	
	// send to the object in which this parameter is embedded
	if (x->callback)
		x->callback(x->callbackArg, x->common.attr_name, x->list_size, x->atom_list);
	
	// call on the hub to pass our data onward
	if (x->common.hub != NULL) {
		atom_setsym(out, x->common.attr_name);
		jcom_core_atom_copy(out+1, &x->attr_value);
		// copy any remaining atoms
		if (x->list_size > 1) 
			sysmem_copyptr(&x->atom_list[1], out + 2, sizeof(Atom) * (x->list_size - 1));
		object_method_typed(x->common.hub, jps_feedback, x->list_size + 1, out, NULL);
	}
	// notify listeners (pattr or jcom.paramui) that we have modified data
#ifndef JMOD_MESSAGE
	object_notify(x, _sym_modified, NULL);
#endif
}


#pragma mark -
#pragma mark repetition filtering

// Returns true if lists are identical
int param_list_compare(t_param* x, AtomPtr a, long lengthA, AtomPtr b, long lengthB)
{
	long length1 = lengthA;
	long length2 = lengthB;
	
	// Dedicated test for @type integer, disregards all list members but first
	if (x->common.attr_type == jps_integer) {
		if (lengthA && lengthB) {
			if (atom_getlong(a) == atom_getlong(b))
				return 1;
			else
				return 0;
		}
		else
			return 0;		
	}
	// Dedicated test for @type decimal, disregards all list members but first
	else if (x->common.attr_type==jps_decimal) {
		if (lengthA && lengthB) {
			if (atom_getfloat(a) == atom_getfloat(b))
				return 1;
			else
				return 0;
		}
		else
			return 0;		
	}
	// Dedicated test for @type string, disregards all list members but first
	else if (x->common.attr_type==jps_string) {
		// TODO
		if (lengthA && lengthB) {
			if (atom_getfloat(a) == atom_getfloat(b))
				return 1;
			else
				return 0;
		}
		else
			return 0;		
	}
	// The concept of repetition filtering doesn't make sense for @type none
	else if (x->common.attr_type==jps_none)
		return 0;
	
	// Tests for @type generic and array
	
	// If lists differ in length they're obviously not the same
	if (length1 == length2) {
		short type;
		
		for (int i = 0; i < length1; i++) {
			
			// Compare type
			type = a->a_type;
			if (type != (b->a_type))
				return 0; // not identical, types differ
			
			// Compare value
			if 		((type == A_FLOAT) && (a->a_w.w_float != b->a_w.w_float))
				return 0;
			else if ((type == A_LONG)  && (a->a_w.w_long  != b->a_w.w_long))
				return 0;
			else if ((type == A_SYM)   && (a->a_w.w_sym   != b->a_w.w_sym))
				return 0;
			
			a++; b++;  // keep going
		}
	} 
	else {
		return 0; // list lengths differ
	}
	
	return 1;
}


#pragma mark -
#pragma mark dataspace conversions

void param_convert_units(t_param* x,AtomCount argc, AtomPtr argv, long* rc, AtomPtr* rv, bool* alloc)
{
	TTLimitMax(argc, (long)JAMOMA_LISTSIZE);
	
	if ((x->attr_dataspace != _sym_none) && (x->isOverriding)) {
		TTValue	vInput, vOutput;
		
		*rv = (AtomPtr)sysmem_newptr(sizeof(Atom) * argc);
		
		TTValueFromAtoms(vInput, argc, argv);
		x->dataspace_override2unit->sendMessage(TT("convert"), vInput, vOutput);
		TTAtomsFromValue(vOutput, rc, rv);

		*alloc = true;
	}
	else {
		*rc = argc;
		*rv = argv;
		*alloc = false;
	}
}

void param_inverseConvert_units(t_param* x,AtomCount argc, AtomPtr argv, long* rc, AtomPtr* rv, bool* alloc)
{
	TTLimitMax(argc, (long)JAMOMA_LISTSIZE);
	
	if ((x->attr_dataspace != _sym_none) && (x->isOverriding)) {
		TTValue	vInput, vOutput;
		
		*rv = (AtomPtr)sysmem_newptr(sizeof(Atom) * argc);
		
		TTValueFromAtoms(vInput, argc, argv);
		x->dataspace_unit2override->sendMessage(TT("convert"), vInput, vOutput);
		TTAtomsFromValue(vOutput, rc, rv);
		
		*alloc = true;
	}
	else {
		*rc = argc;
		*rv = argv;
		*alloc = false;
	}
}

#pragma mark -
#pragma mark Ramp Units

void param_ramp_callback_float(void *v, long, double *value)
{
	t_param *x = (t_param *)v;

	atom_setfloat(&x->attr_valueTemp, *value);
	param_output_float(x);
}


void param_ramp_callback_int(void *v, long, double *value)
{
	t_param	*x= (t_param *)v;

	// We set the new value as a float for now, in order not to loose resolution before an eventual dataspace convertion
	atom_setfloat(&x->attr_valueTemp, *value);
	param_output_int(x);
}


void param_ramp_callback_list(void *v, AtomCount argc, double *value)
{
	long i;
	t_param *x = (t_param *)v;

	// x->listTemp_size was set when initiating the ramp, and we don't need to repeat that here
	
	for (i=0; i<argc; i++)
		atom_setfloat(&x->atom_listTemp[i], value[i]);
	param_output_list(x);
}


// TODO: This function can be hit multiple times when the object is first created, because it is triggered by changes to several different attributes
// We should eliminate the multiple firing since it is not very efficient at load time.
void param_ramp_setup(t_param *x)
{
	// 1. destroy the old rampunit
	if (x->ramper != NULL) {
		TTObjectRelease((TTObjectPtr*)&x->ramper);
		x->ramper = NULL;
	}
		
	// 2. create the new rampunit
	// For some types ramping doesn't make sense, so they will be set to none
	if ((x->common.attr_type == jps_none) || (x->common.attr_type == jps_string) || (x->common.attr_type == jps_generic))
		x->attr_ramp = jps_none;
		
		
	if ((x->common.attr_type == jps_integer) || (x->common.attr_type == jps_boolean))
		RampLib::createUnit(TT(x->attr_ramp->s_name), &x->ramper, param_ramp_callback_int, (void *)x);
	else if (x->common.attr_type == jps_array)
		RampLib::createUnit(TT(x->attr_ramp->s_name), &x->ramper, param_ramp_callback_list, (void *)x);
	else
		RampLib::createUnit(TT(x->attr_ramp->s_name), &x->ramper, param_ramp_callback_float, (void *)x);

	if (x->ramper == NULL)
		error("jcom.parameter (%s module): could not allocate memory for ramp unit!", x->common.module_name);
		
	if (x->attr_rampfunction && (x->attr_rampfunction != _sym_nothing) && (x->attr_rampfunction != jps_linear))
		object_attr_setsym(x, jps_ramp_function, x->attr_rampfunction);
}

void param_notify(t_param *x, SymbolPtr s, SymbolPtr msg, void *sender, void *data)
{   //TODO: if Max5 can handle dynamically created menues in the inspector, then we can display the content of 'units'. 
	//right now the menu items have to be provided at the time a parameter is created, therfore we can't change the items of the data units dynamically 
	/*t_symbol	**unitNames = NULL;
	long		numUnits = 0;
	long		i;
	
	if (x->dataspace_override2unit) {
		x->dataspace_override2unit->getAvailableUnits(&numUnits, &unitNames);
		units[0] = 0;
		for (i=0; i<numUnits; i++)
		{   
			strcat(units, unitNames[i]->s_name);
			strcat(units, " ");
		}
		//
		//post("available Dataspace-units: %s", units);
		
	}
	
	if (numUnits)
		sysmem_freeptr(unitNames);*/

}


