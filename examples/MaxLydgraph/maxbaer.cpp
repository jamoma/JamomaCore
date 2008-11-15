/* 
 *	Maxbaer
 *	A thin wrapper of the Lydbaer audio system for use in the Cycling '74 Max/MSP environment.
 *	Includes an automated class wrapper to make TTBlue object's available as objects for Max/MSP.
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxbaer.h"
#include "ext_hashtab.h"


// Data Structure for this object
typedef struct _wrappedInstance {
    t_object			obj;						///< Max audio object header
	WrappedClassPtr		wrappedClassDefinition;		///< A pointer to the class definition
	LydbaerObjectPtr	lydbaerObject;				///< The instance of the TTBlue object we are wrapping
	TTPtr				lydbaerOutlets[16];			///< Array of outlets, may eventually want this to be more dynamic
	
	TTPtr				inlets[16];					///< Array of proxy inlets beyond the first inlet
	long				inletnum;					///< The Max proxy inlet number
} WrappedInstance;

typedef WrappedInstance* WrappedInstancePtr;		///< Pointer to a wrapped instance of our object.


/** A hash of all wrapped clases, keyed on the Max class name. */
static t_hashtab*	wrappedMaxClasses = NULL;


ObjectPtr wrappedClass_new(SymbolPtr name, AtomCount argc, AtomPtr argv)
{	
	WrappedClass*		wrappedMaxClass = NULL;
    WrappedInstancePtr	x = NULL;
	TTValue				v;
	TTErr				err = kTTErrNone;
	TTUInt8				numInputs = 1;
	TTUInt8				numOutputs = 1;
	
	// Find the WrappedClass
	hashtab_lookup(wrappedMaxClasses, name, (ObjectPtr*)&wrappedMaxClass);
	
	// If the WrappedClass has a validity check defined, then call the validity check function.
	// If it returns an error, then we won't instantiate the object.
	if(wrappedMaxClass){
		if(wrappedMaxClass->validityCheck)
			err = wrappedMaxClass->validityCheck(wrappedMaxClass->validityCheckArgument);
		else
			err = kTTErrNone;
	}
	else
		err = kTTErrGeneric;
	
	if(!err)
		x = (WrappedInstancePtr)object_alloc(wrappedMaxClass->maxClass);
    if(x){
		if(wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("additionalSignalInputs"), v))
			numInputs += TTUInt8(v);
		for(TTUInt8 i=0; i<numInputs-1; i++)
			x->inlets[i] = proxy_new(x, i+1, &x->inletnum);
		
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout
		if(wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("additionalSignalOutputs"), v))
			numOutputs += TTUInt8(v);
		for(TTInt8 i=numOutputs-1; i>=0; i--)
			x->lydbaerOutlets[i] = outlet_new(x, "lydbaerObject");

		x->wrappedClassDefinition = wrappedMaxClass;
		x->lydbaerObject = new LydbaerObject(wrappedMaxClass->ttblueClassName, 1);
		
		if(wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("channelRatioInputToOutput"), v)){
			TTUInt16 numInChans = 1;
			TTUInt16 numOutChans = 1;
			
			v.get(0, numInChans);
			v.get(1, numOutChans);
			x->lydbaerObject->setInChansToOutChansRatio(numInChans, numOutChans);
		}
		if(wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("alwaysUseSidechain"), v)){
			TTBoolean alwaysUseSidechain = v;
			x->lydbaerObject->setAlwaysProcessSidechain(alwaysUseSidechain);
		}
		
		attr_args_process(x, argc, argv);
	}
	return ObjectPtr(x);
}


void wrappedClass_free(WrappedInstancePtr x)
{
	if(x->lydbaerObject)
		delete x->lydbaerObject;
}



// METHODS SPECIFIC TO LYDBAER EXTERNALS

TTErr maxbaerReset(WrappedInstancePtr x, long vectorSize)
{
	return x->lydbaerObject->resetSources(vectorSize);
}


TTErr maxbaerSetup(WrappedInstancePtr x)
{
	Atom		a[2];
	TTUInt16	i=0;
	
	atom_setobj(a+0, ObjectPtr(x->lydbaerObject));
	while(x->lydbaerOutlets[i]){
		atom_setlong(a+1, i);
		outlet_anything(x->lydbaerOutlets[i], gensym("lydbaerObject"), 2, a);
		i++;
	}
	return kTTErrNone;
}


TTErr maxbaerObject(WrappedInstancePtr x, LydbaerObjectPtr audioSourceObject, TTUInt16 sourceOutletNumber)
{
	long inletNumber = proxy_getinlet(ObjectPtr(x));
	return x->lydbaerObject->addSource(audioSourceObject, sourceOutletNumber, inletNumber);
}


t_max_err wrappedClass_attrGet(WrappedInstancePtr x, ObjectPtr attr, AtomCount* argc, AtomPtr* argv)
{
	SymbolPtr	attrName = (SymbolPtr)object_method(attr, _sym_getname);
	TTValue		v;
	AtomCount	i;
	
	x->lydbaerObject->audioObject->getAttributeValue(TT(attrName->s_name), v);

	*argc = v.getSize();
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom) * v.getSize());

	for(i=0; i<v.getSize(); i++){
		if(v.getType(i) == kTypeFloat32 || v.getType(i) == kTypeFloat64){
			TTFloat64	value;
			v.get(i, value);
			atom_setfloat(*argv+i, value);
		}
		else if(v.getType(i) == kTypeSymbol){
			TTSymbolPtr	value = NULL;
			v.get(i, &value);
			atom_setsym(*argv+i, gensym((char*)value->getCString()));
		}
		else{	// assume int
			TTInt32		value;
			v.get(i, value);
			atom_setlong(*argv+i, value);
		}
	}	
	return MAX_ERR_NONE;
}


t_max_err wrappedClass_attrSet(WrappedInstancePtr x, ObjectPtr attr, AtomCount argc, AtomPtr argv)
{
	if(argc && argv){
		SymbolPtr	attrName = (SymbolPtr)object_method(attr, _sym_getname);
		TTValue		v;
		AtomCount	i;
		
		for(i=0; i<argc; i++){
			if(atom_gettype(argv+i) == A_LONG)
				v.set(i, atom_getlong(argv+i));
			else if(atom_gettype(argv+i) == A_FLOAT)
				v.set(i, atom_getfloat(argv+i));
			else if(atom_gettype(argv+i) == A_SYM)
				v.set(i, TT(atom_getsym(argv+i)->s_name));
			else
				object_error(ObjectPtr(x), "bad type for attribute setter");
		}
		x->lydbaerObject->audioObject->setAttributeValue(TT(attrName->s_name), v);
		return MAX_ERR_NONE;
	}
	return MAX_ERR_GENERIC;
}


void wrappedClass_anything(WrappedInstancePtr x, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	if(argc && argv){
		TTValue	v;
		
		for(AtomCount i=0; i<argc; i++){
			if(atom_gettype(argv+i) == A_LONG)
				v.set(i, atom_getlong(argv+i));
			else if(atom_gettype(argv+i) == A_FLOAT)
				v.set(i, atom_getfloat(argv+i));
			else if(atom_gettype(argv+i) == A_SYM)
				v.set(i, TT(atom_getsym(argv+i)->s_name));
			else
				object_error(ObjectPtr(x), "bad type for message arg");
		}
		x->lydbaerObject->audioObject->sendMessage(TT(s->s_name), v);
		
		// process the returned value for the dumpout outlet
		{
			AtomCount	ac = v.getSize();

			if(ac){
				AtomPtr		av = (AtomPtr)malloc(sizeof(Atom) * ac);
				
				for(AtomCount i=0; i<ac; i++){
					if(v.getType() == kTypeSymbol){
						TTSymbolPtr ttSym = NULL;
						v.get(i, &ttSym);
						atom_setsym(av+i, gensym((char*)ttSym->getCString()));
					}
					else if(v.getType() == kTypeFloat32 || v.getType() == kTypeFloat64){
						TTFloat64 f = 0.0;
						v.get(i, f);
						atom_setfloat(av+i, f);
					}
					else{
						TTInt32 l = 0;
						v.get(i, l);
						atom_setfloat(av+i, l);
					}
				}
				object_obex_dumpout(x, s, ac, av);
			}
		}
	}
	else
		x->lydbaerObject->audioObject->sendMessage(TT(s->s_name));
}


// Method for Assistance Messages
void wrappedClass_assist(WrappedInstancePtr x, void *b, long msg, long arg, char *dst)
{
	if(msg==1)			// Inlets
		strcpy(dst, "multichannel input and control messages");		
	else if(msg==2){	// Outlets
		if(arg == 0)
			strcpy(dst, "multichannel output");
		else
			strcpy(dst, "dumpout");
	}
}






TTErr wrapAsMaxbaer(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c)
{
	return wrapAsMaxbaer(ttblueClassName, maxClassName, c, (WrappedClassOptionsPtr)NULL);
}

TTErr wrapAsMaxbaer(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, WrappedClassOptionsPtr options)
{
	TTObject*		o = NULL;
	TTValue			v;
	TTUInt16		numChannels = 1;
	WrappedClass*	wrappedMaxClass = NULL;

	common_symbols_init();
	TTBlueInit();
	
	if(!wrappedMaxClasses)
		wrappedMaxClasses = hashtab_new(0);
	
	wrappedMaxClass = new WrappedClass;
	wrappedMaxClass->maxClassName = gensym(maxClassName);
	wrappedMaxClass->maxClass = class_new(	maxClassName, 
											(method)wrappedClass_new, 
											(method)wrappedClass_free, 
											sizeof(WrappedInstance), 
											(method)0L, 
											A_GIMME, 
											0);
	wrappedMaxClass->ttblueClassName = ttblueClassName;
	wrappedMaxClass->validityCheck = NULL;
	wrappedMaxClass->validityCheckArgument = NULL;
	wrappedMaxClass->options = options;
	
	// Create a temporary instance of the class so that we can query it.
	TTObjectInstantiate(ttblueClassName, &o, numChannels);

	o->getMessageNames(v);
	for(TTUInt16 i=0; i<v.getSize(); i++){
		TTSymbolPtr			name = NULL;
		
		v.get(i, &name);
		if(name == TT("updateMaxNumChannels") || name == TT("updateSr"))
			continue;	// don't expose these attributes to Max users

		class_addmethod(wrappedMaxClass->maxClass, (method)wrappedClass_anything, (char*)name->getCString(), A_GIMME, 0);
	}
	
	o->getAttributeNames(v);
	for(TTUInt16 i=0; i<v.getSize(); i++){
		TTSymbolPtr		name = NULL;
		TTAttributePtr	attr = NULL;
		t_symbol*		maxType = _sym_long;
		
		v.get(i, &name);
		if(name == TT("maxNumChannels") || name == TT("processInPlace"))
			continue;	// don't expose these attributes to Max users
		
		o->findAttribute(name, &attr);

		if(attr->type == kTypeFloat32)
			maxType = _sym_float32;
		else if(attr->type == kTypeFloat64)
			maxType = _sym_float64;
		else if(attr->type == kTypeSymbol || attr->type == kTypeString)
			maxType = _sym_symbol;
		
		class_addattr(wrappedMaxClass->maxClass, attr_offset_new((char*)name->getCString(), maxType, 0, (method)wrappedClass_attrGet, (method)wrappedClass_attrSet, NULL));

		// Add display styles for the Max 5 inspector
		if(attr->type == kTypeBoolean)
			CLASS_ATTR_STYLE(wrappedMaxClass->maxClass, (char*)name->getCString(), 0, "onoff");
	}
	
	TTObjectRelease(o);
	
	class_addmethod(wrappedMaxClass->maxClass, (method)maxbaerReset,			"lydbaerReset",		A_CANT, 0);
	class_addmethod(wrappedMaxClass->maxClass, (method)maxbaerSetup,			"lydbaerSetup",		A_CANT, 0);
	class_addmethod(wrappedMaxClass->maxClass, (method)maxbaerObject,			"lydbaerObject",	A_OBJ, A_LONG, 0);
    class_addmethod(wrappedMaxClass->maxClass, (method)object_obex_dumpout, 	"dumpout",			A_CANT, 0); 
	class_addmethod(wrappedMaxClass->maxClass, (method)wrappedClass_assist, 	"assist",			A_CANT, 0L);
	class_addmethod(wrappedMaxClass->maxClass, (method)stdinletinfo,			"inletinfo",		A_CANT, 0);
	
	class_register(_sym_box, wrappedMaxClass->maxClass);
	if(c)
		*c = wrappedMaxClass;
	
	hashtab_store(wrappedMaxClasses, wrappedMaxClass->maxClassName, ObjectPtr(wrappedMaxClass));
	return kTTErrNone;
}


TTErr wrapAsMaxbaer(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck)
{
	TTErr err = wrapAsMaxbaer(ttblueClassName, maxClassName, c);
	
	if(!err){
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = (*c)->maxClass;
	}
	return err;
}

TTErr wrapAsMaxbaer(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, WrappedClassOptionsPtr options)
{
	TTErr err = wrapAsMaxbaer(ttblueClassName, maxClassName, c, options);
	
	if(!err){
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = (*c)->maxClass;
	}
	return err;
}


TTErr wrapAsMaxbaer(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument)
{
	TTErr err = wrapAsMaxbaer(ttblueClassName, maxClassName, c);
	
	if(!err){
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = validityCheckArgument;
	}
	return err;
}

TTErr wrapAsMaxbaer(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument, WrappedClassOptionsPtr options)
{
	TTErr err = wrapAsMaxbaer(ttblueClassName, maxClassName, c, options);
	
	if(!err){
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = validityCheckArgument;
	}
	return err;
}

