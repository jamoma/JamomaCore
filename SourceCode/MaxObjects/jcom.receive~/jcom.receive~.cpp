/* 
 * jcom.receive~
 * External for Jamoma: remote audio signal communication
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"


typedef struct _audioreceive{	
	t_pxobject		obj;
	void			*obex;
	void			*dumpout;						///< dumpout outlet

	t_symbol		*attr_target;					///< name of the module we are sending to
	t_object		*obj_target;					///< the hub of the module we are sending to
	t_object		*obj_direct_target;				///< the jcom.in~ object in the module we are sending to
	
	long			num_outputs;					///< spec'd as an argument
	float			*audio_out[MAX_NUM_CHANNELS];	///< pointers to the audio vectors
	void			*outlets[MAX_NUM_CHANNELS];
	int				vs;								///< cached vector-size for audio
} t_audioreceive;


// Prototypes
void	*audioreceive_new(t_symbol *s, long argc, t_atom *argv);
void	audioreceive_free(t_audioreceive *x);
void	audioreceive_assist(t_audioreceive *x, void *b, long msg, long arg, char *dst);
void	audioreceive_bang(t_audioreceive *x);
t_int*	audioreceive_perform(t_int *w);
void	audioreceive_dsp(t_audioreceive *x, t_signal **sp, short *count);


// Globals
static t_class		*s_audioreceive_class;


/************************************************************************************/

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.receive~", (method)audioreceive_new, (method)audioreceive_free, 
		sizeof(t_audioreceive), (method)NULL, A_GIMME, 0);

	class_obexoffset_set(c, calcoffset(t_audioreceive, obex));

	// Make methods accessible for our class:
	class_addmethod(c, (method)audioreceive_bang,		"bang",			0);
	class_addmethod(c, (method)audioreceive_dsp,		"dsp", 			A_CANT, 0);
    class_addmethod(c, (method)audioreceive_assist,		"assist", 		A_CANT, 0);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", 		A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", 	A_CANT, 0);
	
	// ATTRIBUTE: name
	attr = attr_offset_new("target", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_audioreceive, attr_target));
	class_addattr(c, attr);


	// Setup our class to work with MSP
	class_dspinit(c);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	s_audioreceive_class = c;
	
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *audioreceive_new(t_symbol *s, long argc, t_atom *argv)
{
	long			attrstart = attr_args_offset(argc, argv);		// support normal arguments
	t_audioreceive 	*x = (t_audioreceive *)object_alloc(s_audioreceive_class);
	short			i;
	
	if(x){
		x->dumpout = outlet_new(x, NULL);
		object_obex_store(x, _sym_dumpout, (t_object *)x->dumpout);

		if(attrstart > 0)
			x->attr_target = atom_getsym(argv);
		else
			x->attr_target = _sym_nothing;
		x->num_outputs = 2;		// TODO: make this dynamic from args
		dsp_setup((t_pxobject *)x, 1);
		for(i=0; i < x->num_outputs; i++)
			x->outlets[i] = outlet_new(x, "signal");
		
		x->obj.z_misc = Z_NO_INPLACE;
		attr_args_process(x, argc, argv);					// handle attribute args
	}
	return x;
}


void audioreceive_free(t_audioreceive *x)
{
	dsp_free((t_pxobject *)x);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void audioreceive_assist(t_audioreceive *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 			// Inlets
		strcpy(dst, "input to send to a named module");
	else if(msg==2)		// Outlets
		strcpy(dst, "dumpout");
}


void audioreceive_bang(t_audioreceive *x)
{
	;// fill a menu with potential targets?
}


t_int* audioreceive_perform(t_int *w)
{
	t_audioreceive	*x = (t_audioreceive*)(w[1]);
	int				channel;
	int				n;
	float			*vector = NULL;
	float			*out;
	
	//object_method(x->obj_direct_target, gensym("remoteaudio"), x->audio_out, (long)(w[2]));
	for(channel = 0; channel < x->num_outputs; channel++){
		n = x->vs;
		object_method(x->obj_direct_target, gensym("getAudioForChannel"), channel, &vector);
		out = x->audio_out[channel];
		if(vector){
			while(n--)
				*out++ = *vector++;
		}
	}
	
	return(w+3);
}


void audioreceive_dsp(t_audioreceive *x, t_signal **sp, short *count)
{
	long		numOutputs = x->num_outputs;
	short		i, j;
	t_object	*hub;
	
	if(x->attr_target && x->attr_target != _sym_nothing){
		hub = jamoma_get_hub_for_module_named(x->attr_target);
		if(hub != x->obj_target){
			if(hub){
				x->obj_target = hub;
				// we could attach to the hub here to listen for free notifications
				// but freeing it will restart the dsp anyway, so I don't think there is any need [tap]
				x->obj_direct_target = (t_object*)object_method(hub, gensym("getobj_audioout"));
			}
		}
		if(x->obj_target){
			for(i=0, j=0; i<numOutputs; i++){
				if(count[i+1])		// the +1 is to account for the inlet in this object
					j=i;
				x->audio_out[i] = sp[i+1]->s_vec;
			}
			numOutputs = j+1;
			
			x->vs = sp[0]->s_n;
			dsp_add(audioreceive_perform, 2, x, numOutputs);
		}
	}
}

