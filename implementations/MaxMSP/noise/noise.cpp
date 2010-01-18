/* 
 *	noise≈
 *	Noiselator object for Jamoma Multicore
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"


// Data Structure for this object
typedef struct Noise {
    t_object				obj;
	TTMulticoreObjectPtr	multicoreObject;
	TTPtr					multicoreOutlet;
	SymbolPtr				attrMode;
};
typedef Noise* NoisePtr;


// Prototypes for methods
NoisePtr	NoiseNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		NoiseFree(NoisePtr self);
void		NoiseAssist(NoisePtr self, void* b, long msg, long arg, char* dst);
TTErr		NoiseReset(NoisePtr self);
TTErr		NoiseSetup(NoisePtr self);
MaxErr		NoiseSetMode(NoisePtr self, void* attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sNoiseClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	ClassPtr c;

	TTMulticoreInit();	
	common_symbols_init();

	c = class_new("noise≈", (method)NoiseNew, (method)NoiseFree, sizeof(Noise), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)NoiseReset,			"multicore.reset",	A_CANT, 0);
	class_addmethod(c, (method)NoiseSetup,			"multicore.setup",	A_CANT,	0);
	class_addmethod(c, (method)NoiseAssist,			"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,	"dumpout",			A_CANT, 0);  
	
	CLASS_ATTR_SYM(c,		"mode",			0,		Noise,	attrMode);
	CLASS_ATTR_ACCESSORS(c,	"mode",			NULL,	NoiseSetMode);
	
	class_register(_sym_box, c);
	sNoiseClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

NoisePtr NoiseNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    NoisePtr self = NoisePtr(object_alloc(sNoiseClass));
	TTValue		v;
	TTErr		err;

    if (self) {
		v.setSize(2);
		v.set(0, TT("noise"));
		v.set(1, TTUInt32(1));
		err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&self->multicoreObject, v);

		self->multicoreObject->addFlag(kTTMulticoreGenerator);

		attr_args_process(self, argc, argv);
    	object_obex_store((void*)self, _sym_dumpout, (object*)outlet_new(self, NULL));
		self->multicoreOutlet = outlet_new((t_pxobject*)self, "multicore.connect");
	}
	return self;
}

// Memory Deallocation
void NoiseFree(NoisePtr self)
{
	TTObjectRelease((TTObjectPtr*)&self->multicoreObject);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void NoiseAssist(NoisePtr self, void* b, long msg, long arg, char* dst)
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


TTErr NoiseReset(NoisePtr self)
{
	return self->multicoreObject->reset();
}


TTErr NoiseSetup(NoisePtr self)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(self->multicoreObject));
	atom_setlong(a+1, 0);
	outlet_anything(self->multicoreOutlet, gensym("multicore.connect"), 2, a);
	return kTTErrNone;
}



MaxErr NoiseSetMode(NoisePtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->attrMode = atom_getsym(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("mode"), TT(self->attrMode->s_name));
	}
	return MAX_ERR_NONE;
}

