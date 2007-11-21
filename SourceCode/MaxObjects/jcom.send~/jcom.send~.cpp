/* 
 * jcom.send~
 * External for Jamoma: remote audio signal communication
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

/*
	The way this should work is that we have a jcom.send object with N inlets and one outlet (dumpout)
	When the object receives a 'gettargets' message then it fills a menu via dumpout with all of the targets.
	The target is the OSC name of the target module.
	
	There is then an @target attribute, which is the jcom.in~ that this sends to.  
	
	The number of inlets are defined by an argument.  We need to check at the time that dsp is started to 
	make sure the target actually has the number of audio signals we are sending though...
	
	QUESTION:
	What about Jitter or other 'signals'?  Should they be implemented via a special mode or additions to 
	the plain vanilla jcom.send?
	
	Argument in that case will need to be type-checked: int = number of inputs, symbol = OSCname
*/

typedef struct _audiosend{	
	t_pxobject		obj;
	void			*dumpout;						///< dumpout outlet

	t_symbol		*attr_target;					///< name of the module we are sending to
	t_object		*obj_target;					///< the hub of the module we are sending to
	t_object		*obj_direct_target;				///< the jcom.in~ object in the module we are sending to
	
	long			num_inputs;						///< spec'd as an argument
	float			*audio_in[MAX_NUM_CHANNELS];	///< pointers to the audio vectors
} t_audiosend;


// Prototypes
void	*audiosend_new(t_symbol *s, long argc, t_atom *argv);
void	audiosend_free(t_audiosend *x);
void	audiosend_assist(t_audiosend *x, void *b, long msg, long arg, char *dst);
void	audiosend_bang(t_audiosend *x);
t_int*	audiosend_perform(t_int *w);
void	audiosend_dsp(t_audiosend *x, t_signal **sp, short *count);


// Globals
static t_class		*s_audiosend_class;					// Required: Global pointer for our class


/************************************************************************************/

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.send~", (method)audiosend_new, (method)audiosend_free, 
		sizeof(t_audiosend), (method)NULL, A_GIMME, 0);

	class_obexoffset_set(c, calcoffset(t_send, obex));

	// Make methods accessible for our class:
	class_addmethod(c, (method)audiosend_bang,			"bang",			0);
	class_addmethod(c, (method)audiosend_dsp,			"dsp", 			A_CANT, 0);
    class_addmethod(c, (method)audiosend_assist,		"assist", 		A_CANT, 0);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", 		A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", 	A_CANT, 0);
	
	// ATTRIBUTE: name
	attr = attr_offset_new("target", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_audiosend, attr_target));
	class_addattr(c, attr);


	// Setup our class to work with MSP
	class_dspinit(c);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	s_audiosend_class = c;
	
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *audiosend_new(t_symbol *s, long argc, t_atom *argv)
{
	long			attrstart = attr_args_offset(argc, argv);		// support normal arguments
	t_audiosend 	*x = (t_audiosend *)object_alloc(s_audiosend_class);
	if(x){
		x->dumpout = outlet_new(x, NULL);
		object_obex_store(x, _sym_dumpout, (t_object *)x->dumpout);

		if(attrstart > 0)
			x->attr_target = atom_getsym(argv);
		else
			x->attr_target = _sym_nothing;
		x->num_inputs = 2;		// TODO: make this dynamic from args
		dsp_setup((t_pxobject *)x, x->num_inputs);
		x->obj.z_misc = Z_NO_INPLACE;
		attr_args_process(x, argc, argv);					// handle attribute args
	}
	return x;
}


void audiosend_free(t_audiosend *x)
{
	dsp_free((t_pxobject *)x);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void audiosend_assist(t_audiosend *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 			// Inlets
		strcpy(dst, "input to send to a named module");
	else if(msg==2)		// Outlets
		strcpy(dst, "dumpout");
}


void audiosend_bang(t_audiosend *x)
{
	;// fill a menu with potential targets?
}


t_int* audiosend_perform(t_int *w)
{
	t_audiosend	*x = (t_audiosend*)(w[1]);
	
	object_method(x->obj_direct_target, gensym("remoteaudio"), x->audio_in, (long)(w[2]));
	return(w+3);
}


void audiosend_dsp(t_audiosend *x, t_signal **sp, short *count)
{
	long		numInputs = x->num_inputs;
	short		i, j;
	t_object	*hub;
	
	if(x->attr_target && x->attr_target != _sym_nothing){
		hub = jamoma_get_hub_for_module_named(x->attr_target);
		if(hub != x->obj_target){
			if(hub){
				x->obj_target = hub;
				// we could attach to the hub here to listen for free notifications
				// but freeing it will restart the dsp anyway, so I don't think there is any need [tap]
				x->obj_direct_target = (t_object*)object_method(hub, gensym("getobj_audioin"));
			}
		}
		if(x->obj_target){
			for(i=0, j=0; i<numInputs; i++){
				if(count[i])
					j=i;
				x->audio_in[i] = sp[i]->s_vec;
			}
			numInputs = j+1;

			dsp_add(audiosend_perform, 2, x, numInputs);
		}
	}
}

