/* 
 *	jcom.fft~
 *	External object for Max/MSP
 *	
 *	Example project for Jamoma DSP
 *	Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTClassWrapperMax.h"
#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

#include "TTDSP.h"					// Jamoma DSP Interfaces...


// Data Structure for this object
typedef struct _fft {
	t_pxobject				obj;
	long					attr_shape;
	long					attr_mode;
	float					attr_position;
	TTUInt16				numChannels;
	TTAudioObjectPtr		fft;
	TTAudioSignalPtr		audioIn;
	TTAudioSignalPtr		audioOut;
} FFT;
typedef FFT* FFTPtr;


// Prototypes for methods
TTPtr	FFTNew(SymbolPtr s, AtomCount argc, AtomPtr argv);
t_int*	FFTPerform(t_int* w);
void	FFTDsp(FFTPtr self, t_signal** sp, short* count);
void	FFTFree(FFTPtr self);


// Globals
static ClassPtr sFFTClass;


/************************************************************************************/
// Main() Function

int TTCLASSWRAPPERMAX_EXPORT main(void)				// main recieves a copy of the Max function macros table
{
	ClassPtr	c;
	
	TTDSPInit();
	common_symbols_init();
	
	// Define our class
	c = class_new("jcom.fft~", (method)FFTNew, (method)FFTFree, sizeof(FFT), (method)NULL, A_GIMME, 0);
	
	// Make methods accessible for our class: 
	class_addmethod(c, (method)FFTDsp, 					"dsp",		A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",	A_CANT,0);
		
	// Setup our class to work with MSP
	class_dspinit(c);
	
	// Finalize our class
	class_register(_sym_box, c);
	sFFTClass = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
TTPtr FFTNew(SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	short i;
	
	FFTPtr self = (FFTPtr)object_alloc(sFFTClass);
	if (self) {
		object_obex_store((TTPtr)self, _sym_dumpout, (object*)outlet_new(self, NULL));	// dumpout
		
		self->numChannels = 1;
		
		dsp_setup((t_pxobject*)self, self->numChannels);	// Create Object and N Inlets (last argument)
		self->obj.z_misc = Z_NO_INPLACE;							// ESSENTIAL!   		
		for (i=0; i< (self->numChannels*2); i++)
			outlet_new((t_pxobject*)self, "signal");
		
		TTObjectInstantiate(TT("fft"),			&self->fft,			self->numChannels);
		TTObjectInstantiate(kTTSym_audiosignal,	&self->audioIn,		self->numChannels);
		TTObjectInstantiate(kTTSym_audiosignal,	&self->audioOut,	self->numChannels);
				
		attr_args_process(self, argc, argv);
	}
	return (self);
}

// Destroy
void FFTFree(FFTPtr self)
{
	dsp_free((t_pxobject*)self);		// Always call dsp_free first in this routine
	
	TTObjectRelease(&self->fft);
	TTObjectRelease(&self->audioIn);
	TTObjectRelease(&self->audioOut);
}


/************************************************************************************/
// Methods bound to input/inlets

t_int* FFTPerform(t_int *w)
{
   	FFTPtr		self = (FFTPtr)(w[1]);
	TTUInt16	vs = self->audioIn->getVectorSize();
	TTFloat32*	in = (TTFloat32*)(w[2]);
	TTFloat32*	out1 = (TTFloat32*)(w[3]);
	TTFloat32*	out2 = (TTFloat32*)(w[4]);

	self->audioIn->setVector(0, vs, in);
	self->fft->process(self->audioIn, self->audioOut);
	self->audioOut->getVector(0, vs, out1);
	self->audioOut->getVector(1, vs, out2);
	
	return w+5;
}


// DSP Method
void FFTDsp(FFTPtr self, t_signal **sp, short *count)
{
	TTUInt16	numChannels = 1;
	TTUInt16	vs = sp[0]->s_n;
	
	self->audioIn->setnumChannels(numChannels);
	self->audioOut->setmaxNumChannels(numChannels*2);
	self->audioOut->setnumChannels(numChannels*2);
	self->audioIn->setvectorSize(vs);
	self->audioOut->setvectorSize(vs);
	//audioIn will be set in the perform method
	self->audioOut->alloc();	
	self->fft->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_add(FFTPerform, 4, self, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec);
}

