/* 
 *	tt.degrade~
 *	External object for Max/MSP
 *	Make audio sound really bad
 *	Example project for TTBlue
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMaxObject.h"	// TTBlue extended API for writing Max objects
#include "TTDegrade.h"		// TTBlue class that we are going to wrap


// Data Structure for this object
typedef struct _degrade	{
	TTMaxObject		kjerne;
	TTDegrade		*degrade;
	long			attrBitdepth;
	float			attrSrRatio;
} t_degrade;


// Prototypes for methods: need a method for each incoming message type
void*		degrade_new(t_symbol *msg, short argc, t_atom *argv);					// New Object Creation Method
void		degrade_free(t_degrade *x);
void		degrade_assist(t_degrade *x, void *b, long msg, long arg, char *dst);	// Assistance Method
t_int*		degrade_perform(t_int *w);												// An MSP Perform (signal) Method
void		degrade_dsp(t_degrade *x, t_signal **sp, short *count);					// DSP Method
t_max_err	degrade_setBitdepth(t_degrade *x, void *attr, long argc, t_atom *argv);
t_max_err	degrade_setSrRatio(t_degrade *x, void *attr, long argc, t_atom *argv);

// Globals
t_class *degrade_class;				// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c = class_new("tt.degrade~",
				(method)degrade_new,
				(method)degrade_free,
				sizeof(t_degrade), 
				(method)0L, 
				A_GIMME, 0);

	ttMaxObjectInit(c, degrade_perform);	// pass the class and the perform routine to the TTBlue layer

	// Add any messages here -- this object doesn't really have any to add
	class_addmethod(c, (method)degrade_assist, 	"assist",	A_CANT, 0L); 

	// Add any attributes here...
	class_addattr(c, attr_offset_new("bitdepth", _sym_long, 0,
		(method)0L, (method)degrade_setBitdepth, calcoffset(t_degrade, attrBitdepth)));

	class_addattr(c, attr_offset_new("srRatio", _sym_float, 0,
		(method)0L, (method)degrade_setSrRatio, calcoffset(t_degrade, attrSrRatio)));

	class_dspinit(c);
	class_register(CLASS_BOX, c);
	degrade_class = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

void* degrade_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_degrade *x = (t_degrade *)object_alloc(degrade_class);
    if(x){
		ttMaxObjectCreate((TTMaxObject *) x, msg, argc, argv);		
		x->degrade = new TTDegrade(x->kjerne.maxNumChannels);
		ttMaxObjectAdd((TTMaxObject *) x, (TTAudioObject*)x->degrade);
	}
	return x;
}

// Memory Deallocation
void degrade_free(t_degrade *x)
{
	ttMaxObjectFree((TTMaxObject*) x);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void degrade_assist(t_degrade *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input, control messages");		
	else if(msg==2) // Outlets
		strcpy(dst, "(signal) Filtered output");
}


// Perform (signal) Method
t_int *degrade_perform(t_int *w)
{
   	t_degrade	*x = (t_degrade *)(w[1]);
	short		i, j;
	
	for(i=0; i < x->kjerne.audioIn->numChannels; i++){
		j = (i*2) + 1;
		x->kjerne.audioIn->setVector(i, (t_float *)(w[j+1]));
		x->kjerne.audioOut->setVector(i, (t_float *)(w[j+2]));
	}

	if(!x->kjerne.obj.z_disabled)							// if we are not muted...
		x->degrade->process(*x->kjerne.audioIn, *x->kjerne.audioOut);		// Actual DC-Blocker process

	return w + ((x->kjerne.audioIn->numChannels*2)+2);				// +2 = +1 for the x pointer and +1 to point to the next object
}


t_max_err degrade_setBitdepth(t_degrade *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrBitdepth = atom_getlong(argv);
		x->degrade->setParameterValue(TT("bitdepth"), x->attrBitdepth);
	}
	return MAX_ERR_NONE;
}


t_max_err degrade_setSrRatio(t_degrade *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrSrRatio = atom_getlong(argv);
		x->degrade->setParameterValue(TT("srRatio"), x->attrSrRatio);
	}
	return MAX_ERR_NONE;
}

