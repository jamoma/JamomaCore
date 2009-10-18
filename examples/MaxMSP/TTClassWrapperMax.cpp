/* 
 *	TTClassWrapperMax
 *	An automated class wrapper to make TTBlue object's available as objects for Max/MSP
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTClassWrapperMax.h"
#include "ext_hashtab.h"


// Data Structure for this object
typedef struct _wrappedInstance {
    t_pxobject 		obj;						///< Max audio object header
	WrappedClassPtr	wrappedClassDefinition;		///< A pointer to the class definition
	TTAudioObject*	wrappedObject;				///< The instance of the TTBlue object we are wrapping
	TTAudioSignal*	audioIn;					///< Audio input signal
	TTAudioSignal*	audioOut;					///< Audio output signal
	TTUInt16		vs;
	TTUInt16		maxNumChannels;				///< The number of channels for which this object is initialized to operate upon
	TTUInt16		numChannels;				///< The actual number of channels in use
	TTUInt16		numInputs;
	TTUInt16		numOutputs;
	TTUInt16		numControlSignals;			///< What number, a subset of numInputs, of signals are for controlling attributes?
	TTSymbolPtr*	controlSignalNames;			///< An array of attribute names for the control signals.
} WrappedInstance;

typedef WrappedInstance* WrappedInstancePtr;	///< Pointer to a wrapped instance of our object.


/** A hash of all wrapped clases, keyed on the Max class name. */
static t_hashtab*	wrappedMaxClasses = NULL;


ObjectPtr wrappedClass_new(SymbolPtr name, AtomCount argc, AtomPtr argv)
{	
	WrappedClass*		wrappedMaxClass = NULL;
    WrappedInstancePtr	x = NULL;
	TTValue				sr(sys_getsr());
	TTValue				v;
 	long				attrstart = attr_args_offset(argc, argv);		// support normal arguments
	TTErr				err = kTTErrNone;
	
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
		x->wrappedClassDefinition = wrappedMaxClass;
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);
		
		ttEnvironment->setAttributeValue(kTTSym_sr, sr);

		TTObjectInstantiate(wrappedMaxClass->ttblueClassName, &x->wrappedObject, x->maxNumChannels);
		TTObjectInstantiate(TT("audiosignal"), &x->audioIn, x->maxNumChannels);
		TTObjectInstantiate(TT("audiosignal"), &x->audioOut, x->maxNumChannels);
		
		attr_args_process(x,argc,argv);				// handle attribute args	
		
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout
		
		
		if(wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("numChannelsUseFixedRatioInputsToOutputs"), v)){
		   TTUInt16	inputs;
		   TTUInt16	outputs;
		   
		   v.get(0, inputs);
		   v.get(1, outputs);
		   x->numInputs = x->maxNumChannels * inputs;
		   x->numOutputs = x->maxNumChannels * outputs;
		}
		else{
		   x->numInputs = x->maxNumChannels;
		   x->numOutputs = x->maxNumChannels;
		}
		
		if(wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("additionalSignalInputSetsAttribute"), v)){
			x->numControlSignals = v.getSize();
			x->controlSignalNames = new TTSymbolPtr[x->numControlSignals];
			for(TTUInt16 i=0; i<x->numControlSignals; i++){
				x->numInputs++;
				v.get(i, &x->controlSignalNames[i]);
			}
		}
		
		dsp_setup((t_pxobject *)x, x->numInputs);			// inlets
		for(short i=0; i < x->numOutputs; i++)
			outlet_new((t_pxobject *)x, "signal");			// outlets

		  
		x->obj.z_misc = Z_NO_INPLACE;
	}
	return ObjectPtr(x);
}


void wrappedClass_free(WrappedInstancePtr x)
{
	dsp_free((t_pxobject *)x);
	TTObjectRelease(&x->wrappedObject);
	TTObjectRelease(&x->audioIn);
	TTObjectRelease(&x->audioOut);
	delete[] x->controlSignalNames;
}


t_max_err wrappedClass_attrGet(TTPtr self, ObjectPtr attr, AtomCount* argc, AtomPtr* argv)
{
	SymbolPtr	attrName = (SymbolPtr)object_method(attr, _sym_getname);
	TTValue		v;
	AtomCount	i;
	WrappedInstancePtr x = (WrappedInstancePtr)self;
		
	x->wrappedObject->getAttributeValue(TT(attrName->s_name), v);

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

#ifdef __LP64__
TTInt64	AtomGetInt(AtomPtr a)
{
	return (TTInt64)atom_getlong(a);
}
#else
int AtomGetInt(AtomPtr a)
{
	return (int)atom_getlong(a);
}
#endif

t_max_err wrappedClass_attrSet(TTPtr self, ObjectPtr attr, AtomCount argc, AtomPtr argv)
{
	WrappedInstancePtr x = (WrappedInstancePtr)self;
	
	if(argc && argv){
		SymbolPtr	attrName = (SymbolPtr)object_method(attr, _sym_getname);
		TTValue		v;
		AtomCount	i;
		
		v.setSize(argc);
		for(i=0; i<argc; i++){
			if(atom_gettype(argv+i) == A_LONG)
				v.set(i, AtomGetInt(argv+i));
			else if(atom_gettype(argv+i) == A_FLOAT)
				v.set(i, atom_getfloat(argv+i));
			else if(atom_gettype(argv+i) == A_SYM)
				v.set(i, TT(atom_getsym(argv+i)->s_name));
			else
				object_error(ObjectPtr(x), "bad type for attribute setter");
		}
		x->wrappedObject->setAttributeValue(TT(attrName->s_name), v);
		return MAX_ERR_NONE;
	}
	return MAX_ERR_GENERIC;
}


void wrappedClass_anything(TTPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	WrappedInstancePtr x = (WrappedInstancePtr)self;
	
	if(argc && argv){
		TTValue	v;
		
		v.setSize(argc);
		for(AtomCount i=0; i<argc; i++){
			if(atom_gettype(argv+i) == A_LONG)
				v.set(i, AtomGetInt(argv+i));
			else if(atom_gettype(argv+i) == A_FLOAT)
				v.set(i, atom_getfloat(argv+i));
			else if(atom_gettype(argv+i) == A_SYM)
				v.set(i, TT(atom_getsym(argv+i)->s_name));
			else
				object_error(ObjectPtr(x), "bad type for message arg");
		}
		x->wrappedObject->sendMessage(TT(s->s_name), v);
	}
	else
		x->wrappedObject->sendMessage(TT(s->s_name));
}


// Method for Assistance Messages
void wrappedClass_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if(msg==1)			// Inlets
		strcpy(dst, "signal input, control messages");		
	else if(msg==2)		// Outlets
		strcpy(dst, "signal output");
}


// Perform (signal) Method
t_int *wrappedClass_perform(t_int *w)
{
   	WrappedInstancePtr	x = (WrappedInstancePtr)(w[1]);
	short				i, j;

	for(i=0; i < x->numControlSignals; i++){
		t_float* value = (t_float*)(w[x->numChannels+i]);
		x->wrappedObject->setAttributeValue(x->controlSignalNames[i], *value);
	}
	
	for(i=0; i<x->numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, x->vs, (TTFloat32*)w[j+1]);
	}
	
	if(!x->obj.z_disabled)										// if we are not muted...
		x->wrappedObject->process(x->audioIn, x->audioOut);		// Actual process
	
	for(i=0; i<x->numChannels; i++){
		j = (i*2) + 1;
		x->audioOut->getVector(i, x->vs, (TTFloat32*)w[j+2]);
	}
	
	return w + ((x->numChannels*2)+2);				// +2 = +1 for the x pointer and +1 to point to the next object
}


// DSP Method
void wrappedClass_dsp(WrappedInstancePtr x, t_signal **sp, short *count)
{
	short		i, j, k=0;
	void		**audioVectors = NULL;
	
	// make sure that the global sample rate used by the environment is updated, in case it has changed
	ttEnvironment->setAttributeValue(kTTSym_sr, sys_getsr());
		
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->maxNumChannels * 2) + 1 + x->numControlSignals));
	audioVectors[k] = x;
	k++;
	
	x->numChannels = 0;
	x->vs = 0;
	for(i=0; i < x->maxNumChannels; i++){
		j = x->maxNumChannels + x->numControlSignals + i;
		if(count[i] && count[j]){
			x->numChannels++;
			if(sp[i]->s_n > x->vs)
				x->vs = sp[i]->s_n;
			
			audioVectors[k] = sp[i]->s_vec;
			k++;
			audioVectors[k] = sp[j]->s_vec;
			k++;
		}
	}
	
	x->audioIn->setAttributeValue(TT("numChannels"), x->numChannels);
	x->audioOut->setAttributeValue(TT("numChannels"), x->numChannels);
	x->audioIn->setAttributeValue(TT("vectorSize"), x->vs);
	x->audioOut->setAttributeValue(TT("vectorSize"), x->vs);
	//audioIn will be set in the perform method
	x->audioOut->sendMessage(TT("alloc"));
	
	x->wrappedObject->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	j=i;
	for(i=0; i < x->numControlSignals; i++){
		audioVectors[k] = sp[j]->s_vec;
		j++;
		k++;
	}
	
	dsp_addv(wrappedClass_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}


TTErr wrapTTClassAsMaxClass(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c)
{
	return wrapTTClassAsMaxClass(ttblueClassName, maxClassName, c, (WrappedClassOptionsPtr)NULL);
}

TTErr wrapTTClassAsMaxClass(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, WrappedClassOptionsPtr options)
{
	TTObject*		o = NULL;
	TTValue			v;
	TTUInt16		numChannels = 1;
	WrappedClass*	wrappedMaxClass = NULL;

	common_symbols_init();
	TTDSPInit();
	
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
	
	TTObjectRelease(&o);
	
 	class_addmethod(wrappedMaxClass->maxClass, (method)wrappedClass_dsp, 		"dsp",			A_CANT, 0L);
    class_addmethod(wrappedMaxClass->maxClass, (method)object_obex_dumpout, 	"dumpout",		A_CANT, 0); 
	class_addmethod(wrappedMaxClass->maxClass, (method)wrappedClass_assist, 	"assist",		A_CANT, 0L);
	class_addmethod(wrappedMaxClass->maxClass, (method)stdinletinfo,			"inletinfo",	A_CANT, 0);
	
	class_dspinit(wrappedMaxClass->maxClass);
	class_register(_sym_box, wrappedMaxClass->maxClass);
	if(c)
		*c = wrappedMaxClass;
	
	hashtab_store(wrappedMaxClasses, wrappedMaxClass->maxClassName, ObjectPtr(wrappedMaxClass));
	return kTTErrNone;
}


TTErr wrapTTClassAsMaxClass(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck)
{
	TTErr err = wrapTTClassAsMaxClass(ttblueClassName, maxClassName, c);
	
	if(!err){
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = (*c)->maxClass;
	}
	return err;
}

TTErr wrapTTClassAsMaxClass(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, WrappedClassOptionsPtr options)
{
	TTErr err = wrapTTClassAsMaxClass(ttblueClassName, maxClassName, c, options);
	
	if(!err){
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = (*c)->maxClass;
	}
	return err;
}


TTErr wrapTTClassAsMaxClass(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument)
{
	TTErr err = wrapTTClassAsMaxClass(ttblueClassName, maxClassName, c);
	
	if(!err){
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = validityCheckArgument;
	}
	return err;
}

TTErr wrapTTClassAsMaxClass(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument, WrappedClassOptionsPtr options)
{
	TTErr err = wrapTTClassAsMaxClass(ttblueClassName, maxClassName, c, options);
	
	if(!err){
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = validityCheckArgument;
	}
	return err;
}



TTErr TTValueFromAtoms(TTValue& v, AtomCount ac, AtomPtr av)
{
	v.clear();
	
	// For now we assume floats for speed (e.g. in the performance sensitive jcom.dataspace object)
	for (int i=0; i<ac; i++)
		v.append((TTFloat64)atom_getfloat(av+i));
	return kTTErrNone;
}

TTErr TTAtomsFromValue(const TTValue& v, AtomCount* ac, AtomPtr* av)
{
	int	size = v.getSize();
	
	*ac = size;
	*av = (t_atom*)sysmem_newptr(sizeof(t_atom) * size);
	for (int i=0; i<size; i++) {
		atom_setfloat((*av)+i, v.getFloat64(i));
	}
	return kTTErrNone;
}
