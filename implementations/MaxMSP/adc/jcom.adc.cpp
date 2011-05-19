/* 
 *	adc≈
 *	Get input from A/D converter for Jamoma AudioGraph
 *	Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"


// Data Structure for this object
typedef struct Adc {
    Object					obj;
	TTAudioGraphObjectPtr	audioGraphObject;
	TTPtr					audioGraphOutlet;
	SymbolPtr				attrMode;
};
typedef Adc* AdcPtr;


// Prototypes for methods
AdcPtr	AdcNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	AdcFree(AdcPtr self);
void	AdcAssist(AdcPtr self, void* b, long msg, long arg, char* dst);
TTErr	AdcReset(AdcPtr self);
TTErr	AdcSetup(AdcPtr self);
TTErr	AdcStart(AdcPtr self);
TTErr	AdcStop(AdcPtr self);
void	AdcGetDeviceNames(AdcPtr self);
// Prototypes for attribute accessors
MaxErr	AdcSetSampleRate(AdcPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr	AdcGetSampleRate(AdcPtr self, void* attr, AtomCount* argc, AtomPtr* argv);
MaxErr	AdcSetVectorSize(AdcPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr	AdcGetVectorSize(AdcPtr self, void* attr, AtomCount* argc, AtomPtr* argv);
MaxErr	AdcSetDevice(AdcPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr	AdcGetDevice(AdcPtr self, void* attr, AtomCount* argc, AtomPtr* argv);


// Globals
static ClassPtr sAdcClass;


/************************************************************************************/
// Main() Function

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ClassPtr c;

	TTAudioGraphInit();	
	common_symbols_init();

	c = class_new("jcom.adc≈", (method)AdcNew, (method)AdcFree, sizeof(Adc), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)AdcReset,			"audio.reset",	A_CANT, 0);
	class_addmethod(c, (method)AdcSetup,			"audio.setup",	A_CANT,	0);
	class_addmethod(c, (method)MaxAudioGraphDrop,	"audio.drop",	A_CANT, 0);
	class_addmethod(c, (method)MaxAudioGraphObject,	"audio.object",	A_CANT, 0);
	class_addmethod(c, (method)AdcStart,			"start",			0);
	class_addmethod(c, (method)AdcStop,				"stop",				0);
	class_addmethod(c, (method)AdcGetDeviceNames,	"getAvailableDeviceNames",	0);
	class_addmethod(c, (method)AdcAssist,			"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,	"dumpout",			A_CANT, 0);  

	CLASS_ATTR_LONG(c,		"sampleRate",	0,		Adc,	obj);
	CLASS_ATTR_ACCESSORS(c,	"sampleRate",	AdcGetSampleRate,	AdcSetSampleRate);
	
	CLASS_ATTR_LONG(c,		"vectorSize",	0,		Adc,	obj);
	CLASS_ATTR_ACCESSORS(c,	"vectorSize",	AdcGetVectorSize,	AdcSetVectorSize);
	
	CLASS_ATTR_SYM(c,		"device",		0,		Adc,	obj);
	CLASS_ATTR_ACCESSORS(c,	"device",		AdcGetDevice,		AdcSetDevice);
	
	class_register(_sym_box, c);
	sAdcClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

AdcPtr AdcNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    AdcPtr self = AdcPtr(object_alloc(sAdcClass));
	TTValue		v;
	TTErr		err;

    if (self) {
		v.setSize(2);
		v.set(0, TT("adc"));
		v.set(1, TTUInt32(1));
		err = TTObjectInstantiate(TT("audio.object"), (TTObjectPtr*)&self->audioGraphObject, v);

		self->audioGraphObject->addAudioFlag(kTTAudioGraphGenerator);

		attr_args_process(self, argc, argv);
    	object_obex_store((void*)self, _sym_dumpout, (object*)outlet_new(self, NULL));
		self->audioGraphOutlet = outlet_new((t_pxobject*)self, "audio.connect");
	}
	return self;
}

// Memory Deallocation
void AdcFree(AdcPtr self)
{
	TTObjectRelease((TTObjectPtr*)&self->audioGraphObject);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void AdcAssist(AdcPtr self, void* b, long msg, long arg, char* dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "multichannel audio connection and control messages");		
	else if (msg==2) {	// Outlets
		if (arg == 0)
			strcpy(dst, "multichannel audio connection");
		else
			strcpy(dst, "dumpout");
	}
}


TTErr AdcReset(AdcPtr self)
{
	return self->audioGraphObject->resetAudio();
}


TTErr AdcSetup(AdcPtr self)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(self->audioGraphObject));
	atom_setlong(a+1, 0);
	outlet_anything(self->audioGraphOutlet, gensym("audio.connect"), 2, a);
	return kTTErrNone;
}


TTErr AdcStart(AdcPtr self)
{
	return self->audioGraphObject->getUnitGenerator()->sendMessage(TT("start"));
}


TTErr AdcStop(AdcPtr self)
{	
	return self->audioGraphObject->getUnitGenerator()->sendMessage(TT("stop"));
}


void AdcGetDeviceNames(AdcPtr self)
{
	TTValue		v;
	TTErr		err;
	AtomCount	ac;
	AtomPtr		ap;
	TTSymbolPtr	name;
	
	err = self->audioGraphObject->getUnitGenerator()->sendMessage(TT("getAvailableDeviceNames"), v);
	if (!err) {
		ac = v.getSize();
		ap = new Atom[ac];
		
		for (AtomCount i=0; i<ac; i++) {
			v.get(i, &name);
			atom_setsym(ap+i, gensym((char*)name->getCString()));
		}
		object_obex_dumpout(self, gensym("getAvailableDeviceNames"), ac, ap);
		delete ap;
	}
}


MaxErr AdcSetSampleRate(AdcPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		TTUInt32 sr = atom_getlong(argv);
		self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("sampleRate"), (uint)sr);
	}
	return MAX_ERR_NONE;
}

MaxErr AdcGetSampleRate(AdcPtr self, void* attr, AtomCount* argc, AtomPtr* argv)
{
	long sr;
	
	self->audioGraphObject->getUnitGenerator()->getAttributeValue(TT("sampleRate"), sr);
	
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setlong(*argv, sr);
	return MAX_ERR_NONE;
}


MaxErr AdcSetVectorSize(AdcPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		TTUInt32 vs = atom_getlong(argv);
		self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("vectorSize"), (uint)vs);
	}
	return MAX_ERR_NONE;
}

MaxErr AdcGetVectorSize(AdcPtr self, void* attr, AtomCount* argc, AtomPtr* argv)
{
	long vs;
	
	self->audioGraphObject->getUnitGenerator()->getAttributeValue(TT("vectorSize"), vs);
	
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setlong(*argv, vs);
	return MAX_ERR_NONE;
}


MaxErr AdcSetDevice(AdcPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		SymbolPtr s = atom_getsym(argv);
		self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("device"), TT(s->s_name));
	}
	return MAX_ERR_NONE;
}

MaxErr AdcGetDevice(AdcPtr self, void* attr, AtomCount* argc, AtomPtr* argv)
{
	TTValue		v;
	TTSymbolPtr	s;
	
	self->audioGraphObject->getUnitGenerator()->getAttributeValue(TT("device"), v);
	v.get(0, &s);
	if (!s)
		return MAX_ERR_GENERIC;
	
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, gensym((char*)s->getCString()));
	return MAX_ERR_NONE;
}
