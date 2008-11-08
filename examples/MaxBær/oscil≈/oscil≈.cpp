/* 
 *	oscil≈
 *	Oscillator object for Max/Lydbær
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxbaer.h"


// Data Structure for this object
typedef struct OscilBaer {
    t_object			obj;
	LydbaerObjectPtr	lydbaer;
	TTPtr				lydbaerOutlet;
	SymbolPtr			attrWaveform;
	SymbolPtr			attrInterpolation;
	float				attrFrequency;
	float				attrGain;
};
typedef OscilBaer* OscilBaerPtr;


// Prototypes for methods
OscilBaerPtr	oscilBaerNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void			oscilBaerFree(OscilBaerPtr x);
void			oscilBaerAssist(OscilBaerPtr x, void* b, long msg, long arg, char* dst);
TTErr			oscilBaerReset(OscilBaerPtr x, long vectorSize);
TTErr			oscilBaerSetup(OscilBaerPtr x);

MaxErr oscilBaerSetMode(OscilBaerPtr x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr oscilBaerSetInterpolation(OscilBaerPtr x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr oscilBaerSetFrequency(OscilBaerPtr x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr oscilBaerSetGain(OscilBaerPtr x, void *attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sOscilBaerClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;

	TTBlueInit();	
	common_symbols_init();

	c = class_new("oscil≈", (method)oscilBaerNew, (method)oscilBaerFree, sizeof(OscilBaer), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)oscilBaerReset,			"lydbaerReset",		A_CANT, 0);
	class_addmethod(c, (method)oscilBaerSetup,			"lydbaerSetup",		A_CANT,	0);
	class_addmethod(c, (method)oscilBaerAssist,			"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",			A_CANT, 0);  
	
	CLASS_ATTR_SYM(c,		"waveform",			0,		OscilBaer,	attrWaveform);
	CLASS_ATTR_ACCESSORS(c,	"waveform",			NULL,	oscilBaerSetMode);
	
	CLASS_ATTR_SYM(c,		"interpolation",	0,		OscilBaer,	attrInterpolation);
	CLASS_ATTR_ACCESSORS(c,	"interpolation",	NULL,	oscilBaerSetInterpolation);
	
	CLASS_ATTR_FLOAT(c,		"frequency",		0,		OscilBaer,	attrFrequency);
	CLASS_ATTR_ACCESSORS(c,	"frequency",		NULL,	oscilBaerSetFrequency);
	
	CLASS_ATTR_FLOAT(c,		"gain",				0,		OscilBaer,	attrGain);
	CLASS_ATTR_ACCESSORS(c,	"gain",				NULL,	oscilBaerSetGain);

	class_register(_sym_box, c);
	sOscilBaerClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

OscilBaerPtr oscilBaerNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    OscilBaerPtr x = OscilBaerPtr(object_alloc(sOscilBaerClass));

    if(x){
		x->lydbaer = new LydbaerObject(TT("wavetable"), 1);
		x->lydbaer->addFlag(kLydbaerGenerator);

		attr_args_process(x, argc, argv);

    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));
		x->lydbaerOutlet = outlet_new((t_pxobject *)x, 0L);
	}
	return x;
}

// Memory Deallocation
void oscilBaerFree(OscilBaerPtr x)
{
	delete x->lydbaer;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void oscilBaerAssist(OscilBaerPtr x, void* b, long msg, long arg, char* dst)
{
	if(msg==1)			// Inlets
		strcpy(dst, "multichannel audio connection and control messages");		
	else if(msg==2){	// Outlets
		if(arg == 0)
			strcpy(dst, "multichannel audio connection");
		else
			strcpy(dst, "dumpout");
	}
}


TTErr oscilBaerReset(OscilBaerPtr x, long vectorSize)
{
	return x->lydbaer->resetSources(vectorSize);
}


TTErr oscilBaerSetup(OscilBaerPtr x)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(x->lydbaer));
	atom_setlong(a+1, 0);
	outlet_anything(x->lydbaerOutlet, gensym("lydbaerObject"), 2, a);
	return kTTErrNone;
}



MaxErr oscilBaerSetMode(OscilBaerPtr x, void *attr, AtomCount argc, AtomPtr argv)
{
	if(argc){
		x->attrWaveform = atom_getsym(argv);
		x->lydbaer->audioObject->setAttributeValue(TT("mode"), TT(x->attrWaveform->s_name));
	}
	return MAX_ERR_NONE;
}


MaxErr oscilBaerSetInterpolation(OscilBaerPtr x, void *attr, AtomCount argc, AtomPtr argv)
{
	if(argc){
		x->attrInterpolation = atom_getsym(argv);
		x->lydbaer->audioObject->setAttributeValue(TT("interpolation"), TT(x->attrInterpolation->s_name));
	}
	return MAX_ERR_NONE;
}


MaxErr oscilBaerSetFrequency(OscilBaerPtr x, void *attr, AtomCount argc, AtomPtr argv)
{
	if(argc){
		x->attrFrequency = atom_getfloat(argv);
		x->lydbaer->audioObject->setAttributeValue(TT("frequency"), x->attrFrequency);
	}
	return MAX_ERR_NONE;
}


MaxErr oscilBaerSetGain(OscilBaerPtr x, void *attr, AtomCount argc, AtomPtr argv)
{
	if(argc){
		x->attrGain	= atom_getfloat(argv);
		x->lydbaer->audioObject->setAttributeValue(TT("gain"), x->attrGain);
	}
	return MAX_ERR_NONE;
}


