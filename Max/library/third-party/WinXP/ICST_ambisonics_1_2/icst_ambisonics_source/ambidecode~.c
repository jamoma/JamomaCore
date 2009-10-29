/*
	ambidecode~		decode first to third order ambisonic b-format to n speakers
					part of the ICST Ambisonics Tools
	
	Copyright (C) 2003 - 2007 ICST ZŸrich / Jan C. Schacher
	
	http://www.icst.net
	
	This library is free software; you can redistribute it and/or
	modify it under the terms of the GNU Lesser General Public
	License as published by the Free Software Foundation; either
	version 2.1 of the License, or (at your option) any later version.
	
	This library is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
	Lesser General Public License for more details.
	
	You should have received a copy of the GNU Lesser General Public
	License along with this library; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
      
    revision history:

    20040913 	initial beta release 			
    20050422	dsp hang & fixes 			
    20050829	rebuilt for 3 orders 		
    20060110    added input modes			
    20060324	fixed singlespeaker input 
    20060327	1.0 release
    20060519	speaker overflow fix
	20070418	added mute functionalities
*/

#include "ext.h"	
#include "ext_common.h"			
#include "z_dsp.h"		
#include <math.h>	

#define MAXINPUTS 16					// third order bformat is 16 channels W - X Y Z - R S T U V - K L N M O P Q
#define MAXORDER 3
#define MAXOUTPUTS 1024			
#define VERSION "1.2"

void *ambidecode_class;		

struct speakercoef{
	double azi, ele;
	double trig[16];
	double coef[16];
};
typedef struct speakercoef t_speakercoef;

typedef struct ambidecode{
	t_pxobject 		a_obj;				
	t_int 			**w;
	t_float 		**inlets;	 
	t_float 		**outlets;   
	t_speakercoef	*speaker[MAXOUTPUTS];
	short			s_activeflag[MAXOUTPUTS], s_activeupdate[MAXOUTPUTS];					// list of active input channels
	double			gain, zerobase, firstbase, secondbase, thirdbase;
	double			divide_pi, drophalf, drophalf2;
	short			s_order, s_numin, s_numout, debug;
} t_ambidecode;

t_int *ambidecode_perform1(t_int *w);												// MSP perform (signal) method
t_int *ambidecode_perform2(t_int *w);												// MSP perform (signal) method
t_int *ambidecode_perform3(t_int *w);												// MSP perform (signal) method

void ambidecode_dsp(t_ambidecode *x, t_signal **sp, short *connect);				// DSP method
void ambidecode_assist(t_ambidecode *x, void *b, long m, long a, char *dst);		// assistance method
void *ambidecode_new(long order, long nchannels);									// new object creation method
void ambidecode_anything(t_ambidecode *x, t_symbol *s, short ac, t_atom *av);
void ambidecode_multispeakers(t_ambidecode *x, short ac, t_atom *av);				// all speakers in one list method
void ambidecode_singlespeaker(t_ambidecode *x, short ac, t_atom *av);				// speakers as single <aed> <index> <azi> <ele> method
void ambidecode_omnibase(t_ambidecode *x, double f);								// zero order base gain
void ambidecode_onebase(t_ambidecode *x, double f);									// first order base gain
void ambidecode_twobase(t_ambidecode *x, double f);									// second order base gain
void ambidecode_threebase(t_ambidecode *x, double f);								// third order base gain
void ambidecode_defaultgains(t_ambidecode *x);										// reset gains to default values
void ambidecode_calc(t_ambidecode *x);												// calculate coefficients method
void ambidecode_active(t_ambidecode *x, short ac, t_atom *av);

void ambidecode_setcoefs(t_ambidecode *x, short ac, t_atom *av);					// set coefficients manually
void ambidecode_free(t_ambidecode *x);												// free allocated memory
void ambidecode_report(t_ambidecode *x);											// print internal state report
void ambidecode_verbose(t_ambidecode *x, long n);
void ambidecode_version(t_ambidecode *x);

t_symbol *ps_setall;
t_symbol *ps_speakers;
t_symbol *ps_active;
t_symbol *ps_omni;
t_symbol *ps_first;
t_symbol *ps_second;
t_symbol *ps_third;
t_symbol *ps_report;
t_symbol *ps_version;
t_symbol *ps_verbose;
t_symbol *ps_defaultgains;
t_symbol *ps_aed;
t_symbol *ps_setspeaker;
t_symbol *ps_setcoefs;
t_symbol *ps_set;
t_symbol *ps_debug;

int main(void)				
{
	setup((t_messlist **)&ambidecode_class, (method)ambidecode_new, (method)ambidecode_free, (short)sizeof(t_ambidecode), 0L, A_DEFLONG, A_DEFLONG, 0);					
	addmess((method)ambidecode_dsp, "dsp", A_CANT, 0);							// DSP method
	addmess((method)ambidecode_assist,"assist", A_CANT, 0);						// assit method
	addmess((method)ambidecode_anything,"anything", A_GIMME, 0);				// any message 
	dsp_initclass();															// setup object's class to work with MSP
	post("ambidecode~    -    Jan Schacher/ICST Zurich    -    © 2003 - 2007");

	ps_setall 		= gensym("setall");	
	ps_speakers 	= gensym("speakers");
	ps_active		= gensym("active");
	ps_omni 		= gensym("omni");
	ps_first 		= gensym("first");
	ps_second		= gensym("second");
	ps_third		= gensym("third");
	ps_report		= gensym("report");
	ps_version		= gensym("version");
	ps_verbose		= gensym("verbose");
	ps_defaultgains	= gensym("defaultgains");
	ps_aed			= gensym("aed");
	ps_setspeaker	= gensym("setspeaker");
	ps_setcoefs		= gensym("setcoefs");	
	ps_set			= gensym("set");
	ps_debug		= gensym("debug");
	return 1;
}

void *ambidecode_new(long order, long nchannels)
{
	short i;
	double	speaker_angle;
	t_ambidecode *x = (t_ambidecode *)newobject(ambidecode_class);
	
	x->s_numin = 16;
	x->s_numout = 8;
	x->s_order = 3;
	x->debug = 0;
	
	if(nchannels){
		x->s_numout = CLIP(nchannels, 1, MAXOUTPUTS);
		if(x->debug) post("numout is %ld", x->s_numout);
	}
	if(order){
		x->s_order = CLIP(order, 1, MAXORDER);
		if(x->debug) post("order is %ld", x->s_order);
	}
	if(x->s_order == 1){
		x->s_numin = 4;
	}else if(x->s_order == 2){
		x->s_numin = 9;
	}else if(x->s_order == 3){
		x->s_numin = 16;
	}
	if(x->debug) post("numin is %ld", x->s_numin);
		
	// x->inlets = t_getbytes(MAXINPUTS * sizeof(t_float*));				
	x->inlets = (t_float **)sysmem_newptr(MAXINPUTS * sizeof(t_float*));	// allocate memory for inlets
	x->outlets = (t_float **)sysmem_newptr(x->s_numout * sizeof(t_float*));	// allocate memory for outlets
	x->w = (t_int **)sysmem_newptr((MAXINPUTS + x->s_numout + 2) * sizeof(t_int*));	// allocate memory for signal vectors
	
	dsp_setup((t_pxobject *)x, x->s_numin);									// create object and inlets
	x->a_obj.z_misc = Z_NO_INPLACE; 										// necessary when outlets should have different vectors than inlets
	for (i=0; i < x->s_numout; ++i) outlet_new((t_object *)x, "signal");	// create floating-point outlets
							
	//x->pi 		= 3.141592653589793238462643383279502;
 	x->divide_pi 	= PI / 180.0;											// pi/180
	x->drophalf 	= sqrt(2.0)/2.0;										// drophalf factor: sqrt(2.0)/2.0 equiv. -3 dB (not quite)
	x->drophalf2 	= 1 - x->drophalf;										// 2 * drophalf factor
	
	for(i = 0; i< x->s_numout; i++){
		x->speaker[i] = (t_speakercoef *)sysmem_newptr(sizeof(t_speakercoef));	// speaker-structs to be loaded
		x->speaker[i]->azi = 0.0; // default values for speaker-positions
		x->speaker[i]->ele = 0.0;	
	}
	
	speaker_angle = 360.0 / (double)x->s_numout;
	for(i = 0; i < x->s_numout; i++) {
		x->speaker[i]->azi = (i * speaker_angle - (speaker_angle / 2.0)) * x->divide_pi;
			if(x->debug) post("speaker %ld angle %f", i, x->speaker[i]->azi);
		x->speaker[i]->ele = 0.0;
		x->s_activeflag[i] = 1.0;
		x->s_activeupdate[i] = 0.0;
	}
	
	x->zerobase = 0.823242;
	x->firstbase = 1.0;
	x->secondbase = 0.442259;
	x->thirdbase = 0.079101;
		
	ambidecode_calc(x);
	return (x);
}

void ambidecode_free(t_ambidecode *x)												// free allocated memory for this instance of the object
{
	short i;
	dsp_free((t_pxobject *)x);
	if (x->inlets) sysmem_freeptr(x->inlets);
	if (x->outlets) sysmem_freeptr(x->outlets);
	if (x->w) sysmem_freeptr(x->w);
	for(i = 0; i< x->s_numout; i++){
		sysmem_freeptr(x->speaker[i]);
	}
	
}

void ambidecode_anything(t_ambidecode *x, t_symbol *s, short ac, t_atom *av)
{
	if((s->s_name == ps_speakers->s_name)||((s->s_name == ps_setall->s_name))){
		if(ac>0){
			ambidecode_multispeakers(x, ac, av);
		}
	} else if(s->s_name == ps_active->s_name){
		if(ac>0){
			ambidecode_active(x, ac, av);
		}
	} else if(s->s_name == ps_omni->s_name){
		if((ac>0)&&(av[0].a_type == A_FLOAT)){
			ambidecode_omnibase(x, av[0].a_w.w_float);
		}
	} else if(s->s_name == ps_first->s_name){
		if((ac>0)&&(av[0].a_type == A_FLOAT)){
			ambidecode_onebase(x, av[0].a_w.w_float);
		}
	} else if(s->s_name == ps_second->s_name){
		if((ac>0)&&(av[0].a_type == A_FLOAT)){
			ambidecode_twobase(x, av[0].a_w.w_float);
		}
	} else if(s->s_name == ps_third->s_name){
		if((ac>0)&&(av[0].a_type == A_FLOAT)){
			ambidecode_threebase(x, av[0].a_w.w_float);
		}
	} else if(s->s_name == ps_report->s_name){
		ambidecode_report(x);
	} else if(s->s_name == ps_version->s_name){
		ambidecode_version(x);
	 }else if(s->s_name == ps_verbose->s_name){
		if((ac > 0)&&(av[0].a_type == A_LONG)){
			ambidecode_verbose(x, av[0].a_w.w_long);
		}
	} else if(s->s_name == ps_defaultgains->s_name){
		ambidecode_defaultgains(x);
	} else if((s->s_name == ps_aed->s_name)||(s->s_name == ps_set->s_name)||(s->s_name == ps_setspeaker->s_name)){
		if(ac>0){
			ambidecode_singlespeaker(x, ac, av);
		}
	} else if(s->s_name == ps_setcoefs->s_name){
		ambidecode_setcoefs(x, ac, av);	
	}
}

void ambidecode_defaultgains(t_ambidecode *x)									// reset gains to default values
{	
	x->zerobase = 0.823242;
	x->firstbase = 1.0;
	x->secondbase = 0.442259;
	x->thirdbase = 0.079101;
	ambidecode_calc(x);
}

void ambidecode_assist(t_ambidecode *x, void *b, long msg, long arg, char *dst)	// assit method for in/outlet labels
{
	if(msg==1){ 																// inlets
	switch(arg){
		case 0: sprintf(dst, "<sig> B-Format W - 0th order, (msg) speaker params");break;
		case 1: sprintf(dst, "<sig> B-Format X - 1st order"); break;
		case 2: sprintf(dst, "<sig> B-Format Y - 1st order"); break;
		case 3: sprintf(dst, "<sig> B-Format Z - 1st order"); break;
		case 4: sprintf(dst, "<sig> B-Format R - 2nd order"); break;
		case 5: sprintf(dst, "<sig> B-Format S - 2nd order"); break;
		case 6: sprintf(dst, "<sig> B-Format T - 2nd order"); break;
		case 7: sprintf(dst, "<sig> B-Format U - 2nd order"); break;
		case 8: sprintf(dst, "<sig> B-Format V - 2nd order"); break;
		case 9: sprintf(dst, "<sig> B-Format K - 3rd order"); break;
		case 10: sprintf(dst, "<sig> B-Format L - 3rd order"); break;
		case 11: sprintf(dst, "<sig> B-Format M - 3rd order"); break;
		case 12: sprintf(dst, "<sig> B-Format N - 3rd order"); break;
		case 13: sprintf(dst, "<sig> B-Format O - 3rd order"); break;
		case 14: sprintf(dst, "<sig> B-Format P - 3rd order"); break;
		case 15: sprintf(dst, "<sig> B-Format Q - 3rd order"); break;
		case 16: sprintf(dst, "<sig> B-Format R - 3rd order"); break;
		}
	}
	else if(msg==2){															// outlets (same for all)
	sprintf(dst, "<sig> output %ld", arg+1);
	}
}

void ambidecode_multispeakers(t_ambidecode *x, short ac, t_atom *av)			// list inputs speaker positions
{
	short i, j;
	long numcoefs = MIN(ac, (x->s_numout * 2));
	
	for (i = 0; i < numcoefs; i++){
		j = i/2;
		if ((i % 2) == 0) {
			switch (av[i].a_type) {
				case A_FLOAT: 	x->speaker[j]->azi = (double)av[i].a_w.w_float * x->divide_pi; break;
				case A_LONG:	x->speaker[j]->azi = (double)av[i].a_w.w_long * x->divide_pi; break;
				case A_SYM: 	error("ambidecode~: type <symbol> %s for speaker nr. %ld's azi-value", av[i].a_w.w_sym->s_name, i); break;
			}
		} else {
			switch (av[i].a_type) {
				case A_FLOAT: 	x->speaker[j]->ele = (double)av[i].a_w.w_float * x->divide_pi; break;
				case A_LONG:	x->speaker[j]->ele = (double)av[i].a_w.w_long * x->divide_pi; break;			
				case A_SYM: 	error("ambidecode~: type <symbol> %s for speaker nr. %ld's ele-value", av[i].a_w.w_sym->s_name, i); break;
			}
		}
	}
	ambidecode_calc(x);															// calculate coefs with gains
}

void ambidecode_singlespeaker(t_ambidecode *x, short ac, t_atom *av)			// single input (aed) method
{
	long channel = 0;
	
	if(ac > 0){
		if(av[0].a_type == A_LONG){
			channel = av[0].a_w.w_long - 1;
		}else if(av[0].a_type == A_FLOAT){
			channel = (long)av[0].a_w.w_float - 1;
		}else{ 
			return;
		}
	}
	if(channel < x->s_numout){
		x->speaker[channel]->azi = 0.0;
		x->speaker[channel]->ele = 0.0;
		if(ac >= 1){
			if(av[1].a_type == A_LONG){
				x->speaker[channel]->azi = (double)av[1].a_w.w_long * x->divide_pi;
			}else if(av[1].a_type == A_FLOAT){
				x->speaker[channel]->azi = av[1].a_w.w_float * x->divide_pi;
				
			}else{
				error("ambidecode~: type <symbol> %s for speaker nr. %ld's azi.value",av[channel].a_w.w_sym->s_name, channel);
			}
		}
		if(ac >= 2){
			if(av[2].a_type == A_LONG){
				x->speaker[channel]->ele = (double)av[2].a_w.w_long * x->divide_pi;
			}else if(av[2].a_type == A_FLOAT){
				x->speaker[channel]->ele = av[2].a_w.w_float * x->divide_pi;
			}else{
				error("ambidecode~: type <symbol> %s for speaker nr. %ld's ele-value",av[channel].a_w.w_sym->s_name, channel);
			}
		}
	}
	ambidecode_calc(x);		
}

void ambidecode_omnibase(t_ambidecode *x, double f)									// zeroth order gain
{
	x->zerobase = f;
	ambidecode_calc(x);										
}	

void ambidecode_onebase(t_ambidecode *x, double f)									// first order base gain
{	
	x->firstbase = f;  												
	ambidecode_calc(x);																// execute the calc of coefs
}

void ambidecode_twobase(t_ambidecode *x, double f)									// first order base gain
{	
	x->secondbase = f; 													
	ambidecode_calc(x);																// execute the calc of coefs
}

void ambidecode_threebase(t_ambidecode *x, double f)								// first order base gain
{	
	x->thirdbase = f; 													
	ambidecode_calc(x);																// execute the calc of coefs
}

void ambidecode_active(t_ambidecode *x, short ac, t_atom *av)
{
	long i;
	long numActive, currentflag = 0;
	if(ac > 0){
		numActive = MIN(ac, MAXOUTPUTS);
		for(i = 0; i < numActive; i++) {
			if(av[i].a_type == A_LONG) {
				currentflag = (av[i].a_w.w_long != 0);
			} else if (av[i].a_type == A_FLOAT) { 
				currentflag = (av[i].a_w.w_float == 0.0);
			} else if (av[i].a_type == A_SYM) { 
				currentflag = 0.0;
			}
			if(x->s_activeflag[i] != currentflag) {
				x->s_activeflag[i] = currentflag;
			}
			// post("activeflag %ld is %ld", i, x->s_activeflag[i]);
		}
		ambidecode_calc(x);
	}
}

void ambidecode_calc(t_ambidecode *x) 												// calculate of coefs for each harmonic
{
	int i;
	double cos_azi, sin_azi, cos_ele, sin_ele, cos_2azi, sin_2azi, sin_2ele, cos_3azi, sin_3azi;
	
	
	for(i = 0; i < x->s_numout; i++) {													// calculate trigonometry factors for each speaker
		cos_azi 	= cos(x->speaker[i]->azi);
		sin_azi 	= sin(x->speaker[i]->azi);
		cos_ele 	= cos(x->speaker[i]->ele);
		sin_ele 	= sin(x->speaker[i]->ele);
		cos_2azi 	= cos(2 * x->speaker[i]->azi);
		sin_2azi 	= sin(2 * x->speaker[i]->azi);
		sin_2ele 	= sin(2 * x->speaker[i]->ele);
		cos_3azi 	= cos(3 * x->speaker[i]->azi);
		sin_3azi 	= sin(3 * x->speaker[i]->azi);
	
		x->speaker[i]->trig[1]  = cos_azi * cos_ele; 								// X trig
		x->speaker[i]->trig[2]  = sin_azi * cos_ele;								// Y trig
		x->speaker[i]->trig[3]  = sin_ele;											// Z trig
		x->speaker[i]->trig[4]  = 1.5 * sin_ele * sin_ele - 0.5; 					// R trig
		x->speaker[i]->trig[5]  = cos_azi * sin_2ele;								// S trig
		x->speaker[i]->trig[6]  = sin_azi * sin_2ele;;								// T trig
		x->speaker[i]->trig[7]  = cos_2azi * cos_ele * cos_ele; 					// U trig
		x->speaker[i]->trig[8]  = sin_2azi * cos_ele * cos_ele;  					// V trig
		x->speaker[i]->trig[9]  = sin_ele * (5.0 * sin_ele * sin_ele - 3.0) * 0.5;	// K trig
		x->speaker[i]->trig[10] = cos_azi * cos_ele * (5.0 * sin_ele * sin_ele - 1.0);	// L trig
		x->speaker[i]->trig[11] = sin_azi * cos_ele * (5.0 * sin_ele * sin_ele - 1.0); 	// M trig
		x->speaker[i]->trig[12] = cos_2azi * sin_ele * cos_ele * cos_ele;			// N trig
		x->speaker[i]->trig[13] = sin_2azi * sin_ele * cos_ele * cos_ele;			// O trig
		x->speaker[i]->trig[14] = cos_3azi * cos_ele * cos_ele * cos_ele;			// P trig
		x->speaker[i]->trig[15] = sin_3azi * cos_ele * cos_ele * cos_ele;			// Q trig

		x->speaker[i]->coef[0]  = x->zerobase * x->s_activeflag[i];										// W coeff
		x->speaker[i]->coef[1]  = x->firstbase  * x->speaker[i]->trig[1]; 			// X coeff
		x->speaker[i]->coef[2]  = x->firstbase  * x->speaker[i]->trig[2];			// Y coeff
		x->speaker[i]->coef[3]  = x->firstbase  * x->speaker[i]->trig[3];			// Z coeff
		x->speaker[i]->coef[4]  = x->secondbase * x->speaker[i]->trig[4]; 			// R coeff
		x->speaker[i]->coef[5]  = x->secondbase * x->speaker[i]->trig[5];			// S coeff
		x->speaker[i]->coef[6]  = x->secondbase * x->speaker[i]->trig[6];			// T coeff
		x->speaker[i]->coef[7]  = x->secondbase * x->speaker[i]->trig[7]; 			// U coeff
		x->speaker[i]->coef[8]  = x->secondbase * x->speaker[i]->trig[8]; 			// V coeff
		x->speaker[i]->coef[9]  = x->thirdbase  * x->speaker[i]->trig[9]; 			// K coeff
		x->speaker[i]->coef[10] = x->thirdbase  * x->speaker[i]->trig[10]; 			// L coeff
		x->speaker[i]->coef[11] = x->thirdbase  * x->speaker[i]->trig[11]; 			// M coeff
		x->speaker[i]->coef[12] = x->thirdbase  * x->speaker[i]->trig[12]; 			// N coeff
		x->speaker[i]->coef[13] = x->thirdbase  * x->speaker[i]->trig[13]; 			// O coeff
		x->speaker[i]->coef[14] = x->thirdbase  * x->speaker[i]->trig[14]; 			// P coeff
		x->speaker[i]->coef[15] = x->thirdbase  * x->speaker[i]->trig[15]; 			// Q coeff
	}
}

void ambidecode_setcoefs(t_ambidecode *x, short ac, t_atom *av)
{
	short i;
	short index = 0;
	double coef = 0.0;
	short count;
	
	// input format: <index (int/float)> <W coef (float)> <X coef (float)> <Y coef (float)> <Z coef (float)> ....
	if(ac < 2){
		error("ambidecode: setcoefs needs more than 1 argument");
		return;
	}
	if(av[0].a_type == A_LONG){
		index = CLIP(av[0].a_w.w_long, 0, MAXOUTPUTS);
	}else if(av[0].a_type == A_FLOAT){
		index = CLIP((long)av[0].a_w.w_float, 0, MAXOUTPUTS);
	}else if(av[0].a_type == A_SYM){
		error("ambidecode: setcoefs first item needs to be an int or float not %s", av[0].a_w.w_sym->s_name);
		return;
	}
	if (index >= x->s_numout) return; // prevent exceeding numbers of speakers present // thanks trond
	count = CLIP(ac, 1, 16);
	for(i = 0; i < (ac-1);i++){
		if(av[i+1].a_type == A_LONG){
			coef = (double)av[i+1].a_w.w_long;
		}else if(av[i+1].a_type == A_FLOAT){
			coef = (double)av[i+1].a_w.w_float;
		}else if(av[i+1].a_type == A_SYM){
			coef = 0.0;
		}
		x->speaker[index]->coef[i] = coef;
		if(x->debug) post("ambidecode: setcoefs speaker %ld coef %ld is %f", index, i, coef);
	}
	return;
}

t_int *ambidecode_perform1(t_int *wAlt_int)										// dsp execution method
{
	t_int k;
	t_int **w = (t_int **)wAlt_int;
	t_ambidecode *x = (t_ambidecode *)(w[1]);
	t_int n = (t_int)(w[2]);													// use integers to copy blocs faster: was suggested by David Z.
	t_float **in = x->inlets;
	t_float **out = x->outlets;
	t_float *outptr;															// pointers to outlets t_floats
	t_float *inptr_0, *inptr_1, *inptr_2, *inptr_3; 
	double coef_0, coef_1, coef_2, coef_3;										// first order
	t_int numinlets = x->s_numin;
	t_int numoutlets = x->s_numout;

	if (x->a_obj.z_disabled) goto out;											// no dsp-calculations if disabled
	
	for (k=0; k < numinlets; ++k)												// inlets and outlets
		in[k] = (t_float *)(w[k+3]);

	for (k=0; k < numoutlets; ++k)
		out[k] = (t_float *)(w[numinlets+k+3]);	
					
	for (k = 0; k < numoutlets; k++){											// iterating through number of speakers
		n = (t_int)(w[2]);														// reset loop counter to blocksize at each iteration
		outptr = out[k];
		if (x->s_activeflag[k] == 1) {
			inptr_0 = in[0];
			inptr_1 = in[1];
			inptr_2 = in[2];
			inptr_3 = in[3];
			
			coef_0 = x->speaker[k]->coef[0];
			coef_1 = x->speaker[k]->coef[1];
			coef_2 = x->speaker[k]->coef[2];
			coef_3 = x->speaker[k]->coef[3];
														
			while(n--){
				*outptr++ = 													// inner loop
				*inptr_0++  * coef_0  + 										// W 0th order
				*inptr_1++  * coef_1  + 										// X 1st order
				*inptr_2++  * coef_2  + 										// Y
				*inptr_3++  * coef_3;
			}
	 	} else {
			while(n--) {
				*outptr++ = 0.0;
			}
		}
	}
out:		
	return (wAlt_int + numinlets + numoutlets + 3);
}

t_int *ambidecode_perform2(t_int *wAlt_int)										// dsp execution method
{
	t_int k;
	t_int **w = (t_int **)wAlt_int;
	t_ambidecode *x = (t_ambidecode *)(w[1]);
	t_int n = (t_int)(w[2]);													// use integers to copy blocs faster: was suggested by David Z.
	t_float **in = x->inlets;
	t_float **out = x->outlets;
	t_float *outptr;															// pointers to outlets t_floats
	t_float *inptr_0, *inptr_1, *inptr_2, *inptr_3; 
	t_float *inptr_4, *inptr_5, *inptr_6, *inptr_7, *inptr_8;
	double coef_0, coef_1, coef_2, coef_3;										// first order
	double coef_4, coef_5, coef_6, coef_7, coef_8;								// second order temp speaker_coef variables to avoid references in the inner loop
	t_int numinlets = x->s_numin;
	t_int numoutlets = x->s_numout;

	if (x->a_obj.z_disabled) goto out;											// no dsp-calculations if disabled
	
	for (k=0; k < numinlets; ++k)												// inlets and outlets
		in[k] = (t_float *)(w[k+3]);

	for (k=0; k < numoutlets; ++k)
		out[k] = (t_float *)(w[numinlets+k+3]);	
					
	for (k=0; k < numoutlets; k++){												// iterating through number of speakers
		n = (t_int)(w[2]);							// reset loop counter to blocksize at each iteration
		outptr = out[k];
		if (x->s_activeflag[k] == 1) {
			inptr_0 = in[0];
			inptr_1 = in[1];
			inptr_2 = in[2];
			inptr_3 = in[3];
			inptr_4 = in[4];
			inptr_5 = in[5];
			inptr_6 = in[6];
			inptr_7 = in[7];
			inptr_8 = in[8];
			
			coef_0 = x->speaker[k]->coef[0];
			coef_1 = x->speaker[k]->coef[1];
			coef_2 = x->speaker[k]->coef[2];
			coef_3 = x->speaker[k]->coef[3];
			coef_4 = x->speaker[k]->coef[4];
			coef_5 = x->speaker[k]->coef[5];
			coef_6 = x->speaker[k]->coef[6];
			coef_7 = x->speaker[k]->coef[7];
			coef_8 = x->speaker[k]->coef[8];
			
			while(n--) {
				*outptr++ = 													// inner loop
				*inptr_0++  * coef_0  + 										// W 0th order
				*inptr_1++  * coef_1  + 										// X 1st order
				*inptr_2++  * coef_2  + 										// Y
				*inptr_3++  * coef_3  + 										// Z
				*inptr_4++  * coef_4  + 										// R 2nd order
				*inptr_5++  * coef_5  +				 							// S
				*inptr_6++  * coef_6  +											// T
				*inptr_7++  * coef_7  + 										// U
				*inptr_8++  * coef_8;
			}
		} else {
			while(n--) {
				*outptr++ = 0.0;
			}
		}
	}
out:		
	return (wAlt_int + numinlets + numoutlets + 3);
}

t_int *ambidecode_perform3(t_int *wAlt_int)										// dsp execution method
{
	t_int k;
	t_int **w = (t_int **)wAlt_int;
	t_ambidecode *x = (t_ambidecode *)(w[1]);
	t_int n = (t_int)(w[2]);													// use integers to copy blocs faster: was suggested by David Z.
	t_float **in = x->inlets;
	t_float **out = x->outlets;
	t_float *outptr;															// pointers to outlets t_floats
	t_float *inptr_0, *inptr_1, *inptr_2, *inptr_3; 
	t_float *inptr_4, *inptr_5, *inptr_6, *inptr_7, *inptr_8;
	t_float *inptr_9, *inptr_10,*inptr_11, *inptr_12, *inptr_13, *inptr_14, *inptr_15;		// pointers to inlets t_floats
	double coef_0, coef_1, coef_2, coef_3;										// first order
	double coef_4, coef_5, coef_6, coef_7, coef_8;								// second order temp speaker_coef variables to avoid references in the inner loop
	double coef_9, coef_10, coef_11, coef_12, coef_13, coef_14, coef_15; 		// third order
	t_int numinlets = x->s_numin;
	t_int numoutlets = x->s_numout;

	if (x->a_obj.z_disabled) goto out;											// no dsp-calculations if disabled
	
	for (k=0; k < numinlets; ++k)												// inlets and outlets
		in[k] = (t_float *)(w[k+3]);

	for (k=0; k < numoutlets; ++k)
		out[k] = (t_float *)(w[numinlets+k+3]);	
					
	for (k=0; k < numoutlets; k++){												// iterating through number of speakers
		n = (t_int)(w[2]);														// reset loop counter to blocksize at each iteration
		outptr = out[k];
		if (x->s_activeflag[k] == 1) {
			inptr_0 = in[0];
			inptr_1 = in[1];
			inptr_2 = in[2];
			inptr_3 = in[3];
			inptr_4 = in[4];
			inptr_5 = in[5];
			inptr_6 = in[6];
			inptr_7 = in[7];
			inptr_8 = in[8];
			inptr_9 = in[9];
			inptr_10 = in[10];
			inptr_11 = in[11];
			inptr_12 = in[12];
			inptr_13 = in[13];
			inptr_14 = in[14];
			inptr_15 = in[15];
			
			coef_0 = x->speaker[k]->coef[0];
			coef_1 = x->speaker[k]->coef[1];
			coef_2 = x->speaker[k]->coef[2];
			coef_3 = x->speaker[k]->coef[3];
			coef_4 = x->speaker[k]->coef[4];
			coef_5 = x->speaker[k]->coef[5];
			coef_6 = x->speaker[k]->coef[6];
			coef_7 = x->speaker[k]->coef[7];
			coef_8 = x->speaker[k]->coef[8];
			coef_9 = x->speaker[k]->coef[9];
			coef_10 = x->speaker[k]->coef[10];
			coef_11 = x->speaker[k]->coef[11];
			coef_12 = x->speaker[k]->coef[12];
			coef_13 = x->speaker[k]->coef[13];
			coef_14 = x->speaker[k]->coef[14];
			coef_15 = x->speaker[k]->coef[15];
			while(n--){
				*outptr++ = 													// inner loop
				*inptr_0++  * coef_0  + 										// W 0th order
				*inptr_1++  * coef_1  + 										// X 1st order
				*inptr_2++  * coef_2  + 										// Y
				*inptr_3++  * coef_3  + 										// Z
				*inptr_4++  * coef_4  + 										// R 2nd order
				*inptr_5++  * coef_5  +				 							// S
				*inptr_6++  * coef_6  +											// T
				*inptr_7++  * coef_7  + 										// U
				*inptr_8++  * coef_8  +											// V
				*inptr_9++  * coef_9  + 		 								// K 3rd order
				*inptr_10++ * coef_10 + 										// L
				*inptr_11++ * coef_11 +											// M
				*inptr_12++ * coef_12 + 										// N	
				*inptr_13++ * coef_13 + 										// O
				*inptr_14++ * coef_14 +											// P
				*inptr_15++ * coef_15;											// Q
			}
		} else {
			while(n--) {
				*outptr++ = 0.0;
			}
		}
	}
out:		
	return (wAlt_int + numinlets + numoutlets + 3);
}

void ambidecode_dsp(t_ambidecode *x, t_signal **sp, short *connect) 				// dsp setup method
{
	t_int i, num = x->s_numin + x->s_numout; 										// number of inlets and outlets 
	t_int **w = x->w;

	w[0] = (t_int *)x;																// object
	w[1] = (t_int *)sp[0]->s_n;														// sample rate
	for (i=0; i<num; ++i){
		w[i+2] = (t_int *)sp[i]->s_vec;												// vectors for input + output	
	}
	num += 2;
	switch(x->s_order){ 															// x and n
		case 1: dsp_addv(ambidecode_perform1, num, (void **)w); break;
		case 2: dsp_addv(ambidecode_perform2, num, (void **)w); break;	
		case 3: dsp_addv(ambidecode_perform3, num, (void **)w); break;
	}

}

void ambidecode_report(t_ambidecode *x)
{
	short i, j;
	post("ambidecode~");  
	post("    version "VERSION" - compiled " __DATE__ " " __TIME__);
	post("    order %ld", x->s_order);
	post("    omni factor (zeroth order: W) = %f", x->zerobase);
	post("    first order factor (X Y Z) = %f", x->firstbase);
	post("    second order factor (R S T U V) = %f", x->secondbase);
	post("    third order factor (K L M N O P Q) = %f", x->thirdbase);
	post("    setup for %ld speakers: (azimuth, elevation in radians)", x->s_numout);
	post("    speaker struct size is %dl Bytes", (short)sizeof(t_speakercoef));
	post("    instance size is %ld Bytes", (short)sizeof(t_ambidecode));
	for (i = 0; i < x->s_numout; i++) {
		post("    *** speaker %ld: %f %f ***", i+1, x->speaker[i]->azi, x->speaker[i]->ele);
		for(j=0; j<16; j++){
			post("			speaker[%ld]->coeff[%ld] is %2.8f",i, j, x->speaker[i]->coef[j]);
		}
		post("			activeflag %ld is %ld", i, x->s_activeflag[i]);
	}		
}

void ambidecode_version(t_ambidecode *x)
{
	post("ambidecode~    -    jasch/ICST Zurich    -    © 2003 - 2007");
	post("    version "VERSION" compiled "__DATE__" "__TIME__);
}

void ambidecode_verbose(t_ambidecode *x, long n)
{
	x->debug = CLIP(n, 0, 1);
}
