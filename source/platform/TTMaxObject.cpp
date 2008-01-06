/* 
 * TTBlue MaxObject Layer for writing externals for Max/MSP
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMaxObject.h"


void ttMaxObjectInit(t_class *c, t_perfroutine performRoutine)
{
	common_symbols_init();
	class_obexoffset_set(c, calcoffset(TTMaxObject, obex));

 	class_addmethod(c, (method)ttMaxObjectDSP, 	"dsp",		A_CANT, 0L);		

	class_addattr(c, attr_offset_new("bypass", _sym_long, 0,
		(method)0L,(method)ttMaxObjectSetBypass, calcoffset(TTMaxObject, attrBypass)));
}


void ttMaxObjectCreate(TTMaxObject *x, t_symbol *msg, short argc, t_atom *argv)
{
	TTValue		sr(sys_getsr());
	long		attrstart = attr_args_offset(argc, argv);
 	short		i;

	x->objectCount = 0;
	x->attrBypass = 0;
	x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
	if(attrstart && argv)
		x->maxNumChannels = atom_getlong(argv);

	attr_args_process(x,argc,argv);				// handle attribute args	
			
	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	dsp_setup((t_pxobject *)x, x->maxNumChannels);								// inlets
	for(i=0; i < x->maxNumChannels; i++)
		outlet_new((t_pxobject *)x, "signal");									// outlets
	
	x->obj.z_misc = Z_NO_INPLACE;

	TTAudioObject::setGlobalParameterValue(TT("sr"), sr);

	x->audioIn = new TTAudioSignal(x->maxNumChannels);
	x->audioOut = new TTAudioSignal(x->maxNumChannels);
}


void ttMaxObjectFree(TTMaxObject *x)
{
	short i;

	dsp_free((t_pxobject *)x);
	for(i=0; i < x->objectCount; i++)
		delete x->objectList[i];

	delete x->audioIn;
	delete x->audioOut;
}


void ttMaxObjectAdd(TTMaxObject *x, TTAudioObject *ttobj)
{
	x->objectList[x->objectCount] = ttobj;
	x->objectCount++;
}


// DSP Method
void ttMaxObjectDSP(TTMaxObject *x, t_signal **sp, short *count)
{
	short	i, j, k=0;
	void	**audioVectors = NULL;
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * (x->maxNumChannels + 1));
	audioVectors[k] = x;
	k++;
	
	x->audioIn->numChannels = 0;
	x->audioOut->numChannels = 0;	
	for(i=0; i < x->maxNumChannels; i++){
		j = x->maxNumChannels + i;
		if(count[i] && count[j]){
			audioVectors[k] = sp[i]->s_vec;
			x->audioIn->numChannels++;
			x->audioIn->vs = sp[i]->s_n;
			k++;
			audioVectors[k] = sp[j]->s_vec;
			x->audioOut->numChannels++;
			x->audioIn->vs = sp[j]->s_n;
			k++;
		}
	}
	
	for(i=0; i < x->objectCount; i++)
		x->objectList[i]->setParameterValue(TT("sr"), sp[0]->s_sr);
	dsp_addv(x->performRoutine, k, audioVectors);
	sysmem_freeptr(audioVectors);
}


t_max_err ttMaxObjectSetBypass(TTMaxObject *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		short i;
	
		x->attrBypass = atom_getlong(argv);
		for(i=0; i < x->objectCount; i++)
			x->objectList[i]->setParameterValue(TT("bypass"), x->attrBypass);
	}
	return MAX_ERR_NONE;
}

