/* 
 *	tt.overdrive~
 *	External object for Max/MSP
 *	
 *	Example project for TTBlue
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

#include "TTBlueAPI.h"				// TTBlue Interfaces...


// Data Structure for this object
typedef struct _op {
    t_pxobject 		obj;
	TTOperator		*op;
	TTAudioSignal	*audioIn;
	TTAudioSignal	*audioOut;
    float			attrOperand;
    t_symbol*		attrOperator;
	long			maxNumChannels;
} t_op;


// Prototypes for methods: need a method for each incoming message type
void*		op_new(t_symbol *msg, short argc, t_atom *argv);					// New Object Creation Method
void		op_free(t_op *x);
void		op_assist(t_op *x, void *b, long msg, long arg, char *dst);	// Assistance Method
t_int*		op_perform(t_int *w);												// An MSP Perform (signal) Method
void		op_dsp(t_op *x, t_signal **sp, short *count);					// DSP Method
t_max_err	op_setOperator(t_op *x, void *attr, long argc, t_atom *argv);
t_max_err	op_setOperand(t_op *x, void *attr, long argc, t_atom *argv);


// Globals
t_class *s_op_class;


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;

	TTBlueInit();	
	common_symbols_init();

	c = class_new("tt.op~",(method)op_new, (method)op_free, sizeof(t_op), (method)0L, A_GIMME, 0);
	
 	class_addmethod(c, (method)op_dsp,					"dsp",			A_CANT, 0);		
	class_addmethod(c, (method)op_assist,				"assist",		A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout", 		A_CANT, 0);  
	
	CLASS_ATTR_SYM(c,		"operator",		0,	t_op,	attrOperator);
	CLASS_ATTR_ACCESSORS(c,	"operator",		NULL,	op_setOperator);
	
	CLASS_ATTR_FLOAT(c,		"operand",		0,	t_op,	attrOperand);
	CLASS_ATTR_ACCESSORS(c,	"operand",		NULL,	op_setOperand);

	class_dspinit(c);						// Setup object's class to work with MSP
	class_register(CLASS_BOX, c);
	s_op_class = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

void* op_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_op	*x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
   
    x = (t_op *)object_alloc(s_op_class);
    if(x){
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		ttEnvironment->setAttributeValue(kTTSym_sr, sr);
		x->op = new TTOperator(x->maxNumChannels);
		x->audioIn = new TTAudioSignal(x->maxNumChannels);
		x->audioOut = new TTAudioSignal(x->maxNumChannels);

		attr_args_process(x,argc,argv);				// handle attribute args	
				
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, x->maxNumChannels);								// inlets
		for(i=0; i < x->maxNumChannels; i++)
			outlet_new((t_pxobject *)x, "signal");									// outlets
		
		x->obj.z_misc = Z_NO_INPLACE;
	}
	return (x);										// Return the pointer
}

// Memory Deallocation
void op_free(t_op *x)
{
	dsp_free((t_pxobject *)x);
	delete x->op;
	delete x->audioIn;
	delete x->audioOut;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void op_assist(t_op *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input, control messages");		
	else if(msg==2) // Outlets
		strcpy(dst, "(signal) Filtered output");
}


// Perform (signal) Method
t_int *op_perform(t_int *w)
{
   	t_op	*x = (t_op *)(w[1]);
	short		i, j;
	TTUInt8		numChannels = x->audioIn->getNumChannels();
	TTUInt16	vs = x->audioIn->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, vs, (t_float *)(w[j+1]));
	}

	if(!x->obj.z_disabled)
		x->op->process(*x->audioIn, *x->audioOut);

	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioOut->getVector(i, vs, (t_float *)(w[j+2]));
	}

	return w + ((numChannels*2)+2);
}


// DSP Method
void op_dsp(t_op *x, t_signal **sp, short *count)
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
	
	x->op->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(op_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}


t_max_err op_setOperator(t_op *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrOperator = atom_getsym(argv);
		x->op->setAttributeValue(TT("operator"), TT(x->attrOperator->s_name));
	}
	return MAX_ERR_NONE;
}


t_max_err op_setOperand(t_op *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrOperand = atom_getfloat(argv);
		x->op->setAttributeValue(TT("operand"), x->attrOperand);
	}
	return MAX_ERR_NONE;
}

