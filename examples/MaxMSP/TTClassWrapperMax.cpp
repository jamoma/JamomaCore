/* 
 *	tt.degrade~
 *	External object for Max/MSP
 *	
 *	Example project for TTBlue
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTClassWrapperMax.h"


// Data Structure for this object
typedef struct _wrappedInstance {
    t_pxobject 		obj;
	TTAudioObject*	wrappedObject;
	TTAudioSignal*	audioIn;
	TTAudioSignal*	audioOut;
	TTUInt16		maxNumChannels;
} WrappedInstance;


typedef struct _wrappedClass {
	ClassPtr	maxClass;
	SymbolPtr	maxClassName;
	TTSymbolPtr ttblueClassName;
} WrappedClass;


typedef WrappedInstance* WrappedInstancePtr;


static WrappedClass* wrappedMaxClass = NULL;



ObjectPtr wrappedClass_new(SymbolPtr name, AtomCount argc, AtomPtr argv)
{
    WrappedInstancePtr	x;
	TTValue				sr(sys_getsr());
 	long				attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short				i;
	
    x = (WrappedInstancePtr)object_alloc(wrappedMaxClass->maxClass);
    if(x){
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);
		
		ttEnvironment->setAttributeValue(kTTSym_sr, sr);

		TTObjectInstantiate(wrappedMaxClass->ttblueClassName, &x->wrappedObject, x->maxNumChannels);
		x->audioIn = new TTAudioSignal(x->maxNumChannels);
		x->audioOut = new TTAudioSignal(x->maxNumChannels);
		
		attr_args_process(x,argc,argv);				// handle attribute args	
		
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, x->maxNumChannels);								// inlets
		for(i=0; i < x->maxNumChannels; i++)
			outlet_new((t_pxobject *)x, "signal");									// outlets
		
		x->obj.z_misc = Z_NO_INPLACE;
	}
	return ObjectPtr(x);
}


void wrappedClass_free(WrappedInstancePtr x)
{
	dsp_free((t_pxobject *)x);
	TTObjectRelease(x->wrappedObject);
	delete x->audioIn;
	delete x->audioOut;
}


t_max_err wrappedClass_attrGet(WrappedInstancePtr x, ObjectPtr attr, AtomCount* argc, AtomPtr* argv)
{
	SymbolPtr	attrName = (SymbolPtr)object_method(attr, _sym_getname);
	TTValue		v;
	AtomCount	i;
	
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
		x->wrappedObject->setAttributeValue(TT(attrName->s_name), v);
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
		x->wrappedObject->sendMessage(TT(s->s_name), v);
	}
	else
		x->wrappedObject->sendMessage(TT(s->s_name));
}


// Perform (signal) Method
t_int *wrappedClass_perform(t_int *w)
{
   	WrappedInstancePtr	x = (WrappedInstancePtr)(w[1]);
	short				i, j;
	TTUInt8				numChannels = x->audioIn->getNumChannels();
	TTUInt16			vs = x->audioIn->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, vs, (t_float *)(w[j+1]));
	}
	
	if(!x->obj.z_disabled)											// if we are not muted...
		x->wrappedObject->process(*x->audioIn, *x->audioOut);		// Actual process
	
	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioOut->getVector(i, vs, (t_float *)(w[j+2]));
	}
	
	return w + ((numChannels*2)+2);				// +2 = +1 for the x pointer and +1 to point to the next object
}


// DSP Method
void wrappedClass_dsp(WrappedInstancePtr x, t_signal **sp, short *count)
{
	short		i, j, k=0;
	void		**audioVectors = NULL;
	TTUInt8		numChannels = 0;
	TTUInt16	vs = 0;
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->maxNumChannels * 2) + 1));
	audioVectors[k] = x;
	k++;
	
	for(i=0; i < x->maxNumChannels; i++){
		j = x->maxNumChannels + i;
		if(count[i] && count[j]){
			numChannels++;
			if(sp[i]->s_n > vs)
				vs = sp[i]->s_n;
			
			audioVectors[k] = sp[i]->s_vec;
			k++;
			audioVectors[k] = sp[j]->s_vec;
			k++;
		}
	}
	
	x->audioIn->setNumChannels(numChannels);
	x->audioOut->setNumChannels(numChannels);
	x->audioIn->setVectorSize(vs);
	x->audioOut->setVectorSize(vs);
	//audioIn will be set in the perform method
	x->audioOut->alloc();
	
	x->wrappedObject->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(wrappedClass_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}


TTErr wrapTTClassAsMaxClass(TTSymbolPtr ttblueClassName, char* maxClassName, ClassPtr* c)
{
	TTObject*	o;
	TTValue		v;
	TTUInt16	numChannels = 1;

	common_symbols_init();
	TTBlueInit();
	
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
	}
	
	TTObjectRelease(o);
	
 	class_addmethod(wrappedMaxClass->maxClass, (method)wrappedClass_dsp, 		"dsp",		A_CANT, 0L);
    class_addmethod(wrappedMaxClass->maxClass, (method)object_obex_dumpout, 	"dumpout", 	A_CANT, 0); 
//	class_addmethod(wrappedMaxClass->maxClass, (method)wrappedClass_assist, 	"assist",	A_CANT, 0L);
	
	class_dspinit(wrappedMaxClass->maxClass);
	class_register(_sym_box, wrappedMaxClass->maxClass);
	if(c)
		*c = wrappedMaxClass->maxClass;
	return kTTErrNone;
}



