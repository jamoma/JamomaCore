/* 
 *	MaxAudioGraph
 *	A thin wrapper of the Lydbaer audio system for use in the Cycling '74 Max/MSP environment.
 *	Includes an automated class wrapper to make TTBlue object's available as objects for Max/MSP.
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"
#include "ext_hashtab.h"


// Data Structure for this object
typedef struct _wrappedInstance {
    t_object					obj;					///< Max audio object header
	TTAudioGraphObjectPtr		audioGraphObject;		///< The DSP instance we are wrapping -- MUST BE 2nd!
	TTPtr						audioGraphOutlets[16];	///< Array of outlets, may eventually want this to be more dynamic
	TTPtr						inlets[16];				///< Array of proxy inlets beyond the first inlet
	MaxAudioGraphWrappedClassPtr	wrappedClassDefinition;	///< A pointer to the class definition
	TTUInt8						numInputs;
	TTUInt8						numOutputs;
} WrappedInstance;

typedef WrappedInstance* WrappedInstancePtr;		///< Pointer to a wrapped instance of our object.


/** A hash of all wrapped clases, keyed on the Max class name. */
static t_hashtab*	wrappedMaxClasses = NULL;


ObjectPtr MaxAudioGraphWrappedClass_new(SymbolPtr name, AtomCount argc, AtomPtr argv)
{	
	MaxAudioGraphWrappedClassPtr	wrappedMaxClass = NULL;
    WrappedInstancePtr			self = NULL;
	TTValue						v;
	TTErr						err = kTTErrNone;

 	long						attrstart = attr_args_offset(argc, argv);		// support normal arguments
	
	// Find the WrappedClass
	hashtab_lookup(wrappedMaxClasses, name, (ObjectPtr*)&wrappedMaxClass);

	// If the WrappedClass has a validity check defined, then call the validity check function.
	// If it returns an error, then we won't instantiate the object.
	if (wrappedMaxClass) {
		if (wrappedMaxClass->validityCheck)
			err = wrappedMaxClass->validityCheck(wrappedMaxClass->validityCheckArgument);
		else
			err = kTTErrNone;
	}
	else
		err = kTTErrGeneric;
	
	if (!err)
		self = (WrappedInstancePtr)object_alloc(wrappedMaxClass->maxClass);
    if (self){
		self->numInputs = 1;
		self->numOutputs = 1;
		if (wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("argumentDefinesNumInlets"), v)) {
			long argumentOffsetToDefineTheNumberOfInlets = v;
			if ((attrstart-argumentOffsetToDefineTheNumberOfInlets > 0) && argv+argumentOffsetToDefineTheNumberOfInlets)
				self->numInputs = atom_getlong(argv+argumentOffsetToDefineTheNumberOfInlets);
		}
		if (wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("wrapperDefinesNumInlets"), v)) {
			long wrapperDefinedNumberOfInlets = v;
			if (wrapperDefinedNumberOfInlets > 0)
				self->numInputs = wrapperDefinedNumberOfInlets;
		}
		for (TTUInt16 i=self->numInputs-1; i>0; i--)
			self->inlets[i-1] = proxy_new(self, i, NULL);
		
    	object_obex_store((void*)self, _sym_dumpout, (object*)outlet_new(self, NULL));	// dumpout
		if (wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("argumentDefinesNumOutlets"), v)) {
			long argumentOffsetToDefineTheNumberOfOutlets = v;
			if ((attrstart-argumentOffsetToDefineTheNumberOfOutlets > 0) && argv+argumentOffsetToDefineTheNumberOfOutlets)
				self->numOutputs = atom_getlong(argv+argumentOffsetToDefineTheNumberOfOutlets);
		}
		if (wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("wrapperDefinesNumOutlets"), v)) {
			long wrapperDefinedNumberOfOutlets = v;
			if (wrapperDefinedNumberOfOutlets > 0) 
				self->numOutputs = wrapperDefinedNumberOfOutlets;
		}		
		for (TTInt16 i=self->numOutputs-1; i>=0; i--)
			self->audioGraphOutlets[i] = outlet_new(self, "audio.connect");

		self->wrappedClassDefinition = wrappedMaxClass;
		v.setSize(3);
		v.set(0, wrappedMaxClass->ttClassName);
		v.set(1, self->numInputs);
		v.set(2, self->numOutputs);
		err = TTObjectInstantiate(TT("audio.object"), (TTObjectPtr*)&self->audioGraphObject, v);
		if (wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("generator"), v))
			self->audioGraphObject->addAudioFlag(kTTAudioGraphGenerator);
		if (wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("nonadapting"), v))
			self->audioGraphObject->addAudioFlag(kTTAudioGraphNonAdapting);
			
		attr_args_process(self, argc, argv);
	}
	return ObjectPtr(self);
}


void MaxAudioGraphWrappedClass_free(WrappedInstancePtr self)
{
	if (self->audioGraphObject)
		TTObjectRelease((TTObjectPtr*)&self->audioGraphObject);
	// FIXME: leaking proxy inlets!
}



// METHODS SPECIFIC TO AUDIO GRAPH EXTERNALS

TTErr MaxAudioGraphReset(ObjectPtr x, long vectorSize)
{
	WrappedInstancePtr self = (WrappedInstancePtr)x;
	return self->audioGraphObject->resetAudio();
}


TTErr MaxAudioGraphSetup(WrappedInstancePtr self)
{
	Atom		a[2];
	TTUInt16	i=0;
	
	atom_setobj(a+0, ObjectPtr(self->audioGraphObject));
	while (self->audioGraphOutlets[i]) {
		atom_setlong(a+1, i);
		outlet_anything(self->audioGraphOutlets[i], GENSYM("audio.connect"), 2, a);
		i++;
	}
	return kTTErrNone;
}


TTErr MaxAudioGraphConnect(ObjectPtr x, TTAudioGraphObjectPtr audioSourceObject, TTUInt16 sourceOutletNumber)
{
	WrappedInstancePtr	self = WrappedInstancePtr(x);
	long				inletNumber = proxy_getinlet(SELF);
	
	return self->audioGraphObject->connectAudio(audioSourceObject, sourceOutletNumber, inletNumber);
}


TTErr MaxAudioGraphDrop(ObjectPtr x, long inletNumber, ObjectPtr sourceMaxObject, long sourceOutletNumber)
{
	WrappedInstancePtr		self = WrappedInstancePtr(x);
	TTAudioGraphObjectPtr	sourceObject = NULL;
	TTErr 					err;
	
	err = (TTErr)int(object_method(sourceMaxObject, GENSYM("audio.object"), &sourceObject));
	if (self->audioGraphObject && sourceObject && !err)
		err = self->audioGraphObject->dropAudio(sourceObject, sourceOutletNumber, inletNumber);	
	return err;
}


TTErr MaxAudioGraphObject(ObjectPtr x, TTAudioGraphObjectPtr* returnedAudioGraphObject)
{
	WrappedInstancePtr	self = WrappedInstancePtr(x);

	*returnedAudioGraphObject = self->audioGraphObject;
	return kTTErrNone;
}


t_max_err MaxAudioGraphWrappedClass_attrGet(WrappedInstancePtr self, ObjectPtr attr, AtomCount* argc, AtomPtr* argv)
{
	SymbolPtr	attrName = (SymbolPtr)object_method(attr, _sym_getname);
	TTValue		v;
	AtomCount	i;
	TTSymbolPtr	ttAttrName = NULL;
	MaxErr		err;
	
	err = hashtab_lookup(self->wrappedClassDefinition->maxNamesToTTNames, attrName, (ObjectPtr*)&ttAttrName);
	if (err)
		return err;

	self->audioGraphObject->getUnitGenerator()->getAttributeValue(ttAttrName, v);

	*argc = v.getSize();
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom) * v.getSize());

	for (i=0; i<v.getSize(); i++) {
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


t_max_err MaxAudioGraphWrappedClass_attrSet(WrappedInstancePtr self, ObjectPtr attr, AtomCount argc, AtomPtr argv)
{
	if (argc && argv) {
		SymbolPtr	attrName = (SymbolPtr)object_method(attr, _sym_getname);
		TTValue		v;
		AtomCount	i;
		TTSymbolPtr	ttAttrName = NULL;
		MaxErr		err;
		
		err = hashtab_lookup(self->wrappedClassDefinition->maxNamesToTTNames, attrName, (ObjectPtr*)&ttAttrName);
		if (err)
			return err;
		
		v.setSize(argc);
		for (i=0; i<argc; i++) {
			if(atom_gettype(argv+i) == A_LONG)
				v.set(i, AtomGetInt(argv+i));
			else if(atom_gettype(argv+i) == A_FLOAT)
				v.set(i, atom_getfloat(argv+i));
			else if(atom_gettype(argv+i) == A_SYM)
				v.set(i, TT(atom_getsym(argv+i)->s_name));
			else
				object_error(SELF, "bad type for attribute setter");
		}
		self->audioGraphObject->getUnitGenerator()->setAttributeValue(ttAttrName, v);
		return MAX_ERR_NONE;
	}
	return MAX_ERR_GENERIC;
}


t_max_err MaxAudioGraphWrappedClass_attrGetNumChannels(WrappedInstancePtr self, ObjectPtr attr, AtomCount* argc, AtomPtr* argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr)sysmem_newptr(sizeof(Atom));
	
	atom_setlong(*argv, self->audioGraphObject->getOutputNumChannels(0));
	return MAX_ERR_NONE;
}


t_max_err MaxAudioGraphWrappedClass_attrSetNumChannels(WrappedInstancePtr self, ObjectPtr attr, AtomCount argc, AtomPtr argv)
{
	if (argc)
		self->audioGraphObject->setOutputNumChannels(0, atom_getlong(argv));
	return MAX_ERR_NONE;
}


void MaxAudioGraphWrappedClass_anything(WrappedInstancePtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{	
	TTValue		v;
	TTSymbolPtr	ttName = NULL;
	MaxErr		err;
	
	err = hashtab_lookup(self->wrappedClassDefinition->maxNamesToTTNames, s, (ObjectPtr*)&ttName);
	if (err) {
		object_post(SELF, "no method found for %s", s->s_name);
		return;
	}

	if (argc && argv) {
		v.setSize(argc);
		for (AtomCount i=0; i<argc; i++) {
			if (atom_gettype(argv+i) == A_LONG)
				v.set(i, AtomGetInt(argv+i));
			else if (atom_gettype(argv+i) == A_FLOAT)
				v.set(i, atom_getfloat(argv+i));
			else if (atom_gettype(argv+i) == A_SYM)
				v.set(i, TT(atom_getsym(argv+i)->s_name));
			else
				object_error(SELF, "bad type for message arg");
		}
		self->audioGraphObject->getUnitGenerator()->sendMessage(ttName, v);
		
		// process the returned value for the dumpout outlet
		{
			AtomCount	ac = v.getSize();

			if (ac) {
				AtomPtr		av = (AtomPtr)malloc(sizeof(Atom) * ac);
				
				for (AtomCount i=0; i<ac; i++) {
					if (v.getType() == kTypeSymbol){
						TTSymbolPtr ttSym = NULL;
						v.get(i, &ttSym);
						atom_setsym(av+i, gensym((char*)ttSym->getCString()));
					}
					else if (v.getType() == kTypeFloat32 || v.getType() == kTypeFloat64) {
						TTFloat64 f = 0.0;
						v.get(i, f);
						atom_setfloat(av+i, f);
					}
					else {
						TTInt32 l = 0;
						v.get(i, l);
						atom_setfloat(av+i, l);
					}
				}
				object_obex_dumpout(self, s, ac, av);
			}
		}
	}
	else
		self->audioGraphObject->getUnitGenerator()->sendMessage(ttName);
}


// Method for Assistance Messages
void MaxAudioGraphWrappedClass_assist(WrappedInstancePtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)		{	// Inlets
		if(arg == 0)
			strcpy(dst, "multichannel input and control messages");
		else if(arg > 0)
			snprintf(dst, 256, "multichannel input %ld", arg+1);
	}
	
	else if(msg==2) {// Outlets		
		if(arg == self->numOutputs)
			strcpy(dst, "dumpout");					
		else 
			snprintf(dst, 256, "multichannel output %ld", arg+1); 	
	}
}






TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c)
{
	return wrapAsMaxAudioGraph(ttClassName, maxClassName, c, (MaxAudioGraphWrappedClassOptionsPtr)NULL);
}

TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c, MaxAudioGraphWrappedClassOptionsPtr options)
{
	TTObject*					o = NULL;
	TTValue						v;
	TTUInt16					numChannels = 1;
	MaxAudioGraphWrappedClassPtr	wrappedMaxClass = NULL;
	TTSymbolPtr					name = NULL;
	TTCString					nameCString = NULL;
	SymbolPtr					nameMaxSymbol = NULL;
	TTUInt32					nameSize = 0;
	
	common_symbols_init();
	TTAudioGraphInit();
	
	if (!wrappedMaxClasses)
		wrappedMaxClasses = hashtab_new(0);
	
	wrappedMaxClass = new MaxAudioGraphWrappedClass;
	wrappedMaxClass->maxClassName = gensym(maxClassName);
	wrappedMaxClass->maxClass = class_new(	maxClassName, 
											(method)MaxAudioGraphWrappedClass_new, 
											(method)MaxAudioGraphWrappedClass_free, 
											sizeof(WrappedInstance), 
											(method)0L, 
											A_GIMME, 
											0);
	wrappedMaxClass->ttClassName = ttClassName;
	wrappedMaxClass->validityCheck = NULL;
	wrappedMaxClass->validityCheckArgument = NULL;
	wrappedMaxClass->options = options;
	wrappedMaxClass->maxNamesToTTNames = hashtab_new(0);
	
	// Create a temporary instance of the class so that we can query it.
	TTObjectInstantiate(ttClassName, &o, numChannels);

	o->getMessageNames(v);
	for (TTUInt16 i=0; i<v.getSize(); i++) {
		v.get(i, &name);
		nameSize = name->getString().length();
		nameCString = new char[nameSize+1];
		strncpy_zero(nameCString, name->getCString(), nameSize+1);

		nameMaxSymbol = gensym(nameCString);			
		hashtab_store(wrappedMaxClass->maxNamesToTTNames, nameMaxSymbol, ObjectPtr(name));
		class_addmethod(wrappedMaxClass->maxClass, (method)MaxAudioGraphWrappedClass_anything, nameCString, A_GIMME, 0);

		delete nameCString;
		nameCString = NULL;
	}
	
	o->getAttributeNames(v);
	for (TTUInt16 i=0; i<v.getSize(); i++) {
		TTAttributePtr	attr = NULL;
		SymbolPtr		maxType = _sym_long;
		TTValue			isGenerator = kTTBoolNo;
		
		v.get(i, &name);
		nameSize = name->getString().length();
		nameCString = new char[nameSize+1];
		strncpy_zero(nameCString, name->getCString(), nameSize+1);
		nameMaxSymbol = gensym(nameCString);
				
		if (name == TT("maxNumChannels"))
			continue;						// don't expose these attributes to Max users
		if (name == TT("bypass")) {
			if (wrappedMaxClass->options && !wrappedMaxClass->options->lookup(TT("generator"), isGenerator))
				continue;					// generators don't have inputs, and so don't really provide a bypass
		}
		
		o->findAttribute(name, &attr);
		
		if (attr->type == kTypeFloat32)
			maxType = _sym_float32;
		else if (attr->type == kTypeFloat64)
			maxType = _sym_float64;
		else if (attr->type == kTypeSymbol || attr->type == kTypeString)
			maxType = _sym_symbol;
		
		hashtab_store(wrappedMaxClass->maxNamesToTTNames, nameMaxSymbol, ObjectPtr(name));
		class_addattr(wrappedMaxClass->maxClass, attr_offset_new(nameCString, maxType, 0, (method)MaxAudioGraphWrappedClass_attrGet, (method)MaxAudioGraphWrappedClass_attrSet, NULL));
		
		// Add display styles for the Max 5 inspector
		if (attr->type == kTypeBoolean)
			CLASS_ATTR_STYLE(wrappedMaxClass->maxClass, (char*)name->getCString(), 0, (char*)"onoff");
		if (name == TT("fontFace"))
			CLASS_ATTR_STYLE(wrappedMaxClass->maxClass,	(char*)"fontFace", 0, (char*)"font");

		delete nameCString;
		nameCString = NULL;
	}
	
	TTObjectRelease(&o);
	
	class_addmethod(wrappedMaxClass->maxClass, (method)MaxAudioGraphReset,		"audio.reset",		A_CANT, 0);
	class_addmethod(wrappedMaxClass->maxClass, (method)MaxAudioGraphSetup,		"audio.setup",		A_CANT, 0);
	class_addmethod(wrappedMaxClass->maxClass, (method)MaxAudioGraphConnect,	"audio.connect",	A_OBJ, A_LONG, 0);
	class_addmethod(wrappedMaxClass->maxClass, (method)MaxAudioGraphDrop,		"audio.drop",		A_CANT, 0);
	class_addmethod(wrappedMaxClass->maxClass, (method)MaxAudioGraphObject,		"audio.object",		A_CANT, 0);
	class_addmethod(wrappedMaxClass->maxClass, (method)MaxGraphConnect,			"graph.connect",		A_OBJ, A_LONG, 0);
 	class_addmethod(wrappedMaxClass->maxClass, (method)MaxGraphDrop,			"graph.drop",			A_CANT, 0);
	class_addmethod(wrappedMaxClass->maxClass, (method)MaxGraphObject,			"graph.object",			A_CANT, 0);
    class_addmethod(wrappedMaxClass->maxClass, (method)object_obex_dumpout, 	"dumpout",				A_CANT, 0); 
	class_addmethod(wrappedMaxClass->maxClass, (method)MaxAudioGraphWrappedClass_assist, 	"assist",				A_CANT, 0L);
	class_addmethod(wrappedMaxClass->maxClass, (method)stdinletinfo,			"inletinfo",			A_CANT, 0);
	
	
	if (wrappedMaxClass->options) {
		TTValue		userCanSetNumChannels = kTTBoolNo;
		TTErr		err = wrappedMaxClass->options->lookup(TT("userCanSetNumChannels"), userCanSetNumChannels);
		
		if (!err && userCanSetNumChannels == kTTBoolYes)
			class_addattr(wrappedMaxClass->maxClass, attr_offset_new("numChannels", _sym_long, 0, 
																	 (method)MaxAudioGraphWrappedClass_attrGetNumChannels, 
																	 (method)MaxAudioGraphWrappedClass_attrSetNumChannels, 
																	 NULL));			
	}
	
	class_register(_sym_box, wrappedMaxClass->maxClass);
	if (c)
		*c = wrappedMaxClass;
	
	hashtab_store(wrappedMaxClasses, wrappedMaxClass->maxClassName, ObjectPtr(wrappedMaxClass));
	return kTTErrNone;
}


TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c, TTValidityCheckFunction validityCheck)
{
	TTErr err = wrapAsMaxAudioGraph(ttClassName, maxClassName, c);
	
	if (!err) {
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = (*c)->maxClass;
	}
	return err;
}

TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c, TTValidityCheckFunction validityCheck, MaxAudioGraphWrappedClassOptionsPtr options)
{
	TTErr err = wrapAsMaxAudioGraph(ttClassName, maxClassName, c, options);
	
	if (!err) {
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = (*c)->maxClass;
	}
	return err;
}


TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument)
{
	TTErr err = wrapAsMaxAudioGraph(ttClassName, maxClassName, c);
	
	if (!err) {
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = validityCheckArgument;
	}
	return err;
}

TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument, MaxAudioGraphWrappedClassOptionsPtr options)
{
	TTErr err = wrapAsMaxAudioGraph(ttClassName, maxClassName, c, options);
	
	if (!err) {
		(*c)->validityCheck = validityCheck;
		(*c)->validityCheckArgument = validityCheckArgument;
	}
	return err;
}
