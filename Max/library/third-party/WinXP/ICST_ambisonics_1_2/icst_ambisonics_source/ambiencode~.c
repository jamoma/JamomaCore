/*
	ambiencode~.c 	encode several mono signals to nth order ambisonic b-format
					part of the ICST Ambisonics Tools
	
	Copyright (C) 2003 - 2007 ICST ZŸrich / Jan C. Schacher
	
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

    20050829 initial release 	
    20060110 added input modes, fixed input bug 
    20060324 fixed singleinput bug
	20070418 added mute functionalities
*/

#include "ext.h"			
#include "z_dsp.h"	
#include "ext_common.h"	
#include <math.h>

#define MAXINPUTS 100		// maxinimum number of input channels to one encoder
#define MAXORDER 3
#define MAXOUTPUTS 16		// third order bformat is 16 channels W - X Y Z - R S T U V - K L N M O P Q
#define VERSION "1.2"
#define MP_PROXY_GETINLET(x) (proxy_getinlet? proxy_getinlet((t_object *)x) : x->s_inletNumber)

void *ambiencode_class;										// pointer to class

typedef struct voc {
	double 		dbunit;
	double		azi, ele, dist;	
	double		incoef[17]; 
	double		outcoef[17];
}t_voc;

typedef struct ambiencode	{
	t_pxobject 	x_obj;
	t_int 		**w;
	t_float 	**inlets;	 
	t_float 	**outlets;
	t_voc		s_voc[MAXINPUTS];							// struct containing params for each voice
	short		s_activeflag[MAXINPUTS];					// list of active input channels
	double		s_interp_fraction;
	double		s_divide_pi, s_drophalf, s_drophalf2;
	long		s_inletNumber;
	short 		s_order, s_numin, s_numout;
	short		s_debug;
	long		s_newflag[MAXINPUTS];
	long		s_origOrder;
	long		s_origInputs;
	void 		(*ptr2calc)();								// function pointer to 3 different calc functions
} t_ambiencode;

void *ambiencode_new(long order, long nchannels, double f);						
t_int *ambiencode_perform1(t_int *wAsT_int);									
t_int *ambiencode_perform2(t_int *wAsT_int);									
t_int *ambiencode_perform3(t_int *wAsT_int);									
void ambiencode_dsp(t_ambiencode *x, t_signal **sp, short *count);				
void ambiencode_assist(t_ambiencode *x, void *b, long m, long a, char *dst);	
void ambiencode_list(t_ambiencode *x, t_symbol *s, short ac, t_atom *av);		
void ambiencode_coords(t_ambiencode *x, t_symbol *s, short ac, t_atom *av);
void ambiencode_azi(t_ambiencode *x, double f);	
void ambiencode_ele(t_ambiencode *x, double f);	
void ambiencode_dist(t_ambiencode *x, double f);
void ambiencode_dbunit(t_ambiencode *x, double f);
void ambiencode_order(t_ambiencode *x, long n);
void ambiencode_active(t_ambiencode *x, t_symbol *s, short ac, t_atom *av);
void ambiencode_calc1(t_ambiencode *x, long idx);
void ambiencode_calc2(t_ambiencode *x, long idx);
void ambiencode_calc3(t_ambiencode *x, long idx);
void ambiencode_free(t_ambiencode *x);
void ambiencode_report(t_ambiencode *x);
void ambiencode_version(t_ambiencode *x);
void ambiencode_verbose(t_ambiencode *x, long n);

int main(void)													
{
	setup((t_messlist **)&ambiencode_class, (method)ambiencode_new, (method)ambiencode_free, 
		(short)sizeof(t_ambiencode), 0L, A_DEFLONG, A_DEFLONG, A_DEFFLOAT, 0);
	addmess((method)ambiencode_list,	"list", 	A_GIMME, 0);    					
	addmess((method)ambiencode_coords,	"coords", 	A_GIMME, 0);				
	addmess((method)ambiencode_coords,	"aed", 		A_GIMME, 0);
	addmess((method)ambiencode_azi,		"azi", 		A_FLOAT, 0);
	addmess((method)ambiencode_ele,		"ele", 		A_FLOAT, 0);
	addmess((method)ambiencode_dist,	"dist", 	A_FLOAT, 0);
	addmess((method)ambiencode_dbunit,	"db_unit", 	A_FLOAT, 0);
//	addmess((method)ambiencode_order,	"order",	A_LONG,	 0);
	addmess((method)ambiencode_active,	"active",	A_GIMME, 0);
	addmess((method)ambiencode_report,	"report", 	0);
	addmess((method)ambiencode_verbose,	"verbose", 	A_LONG, 0);
	addmess((method)ambiencode_version,	"version", 	0);						
	addmess((method)ambiencode_assist,	"assist", 	A_CANT, 0);
	addmess((method)ambiencode_dsp, 	"dsp", 		A_CANT, 0);		
	dsp_initclass();
	post("ambiencode~    -    Jan Schacher/ICST Zurich    -    © 2003 - 2007" );
	return 1;
}

void *ambiencode_new(long order, long nchannels, double f)
{
	short i, j;
	
	t_ambiencode *x = (t_ambiencode *)newobject(ambiencode_class);									
	x->s_debug = 0;
	x->s_order = 3;
	x->s_numout = 16;
	x->s_numin = 1;
	
	if(nchannels){
		x->s_numin = CLIP(nchannels, 1, MAXINPUTS);
		if(x->s_debug) post("numin is %ld", x->s_numin);
	}
	x->s_origInputs = x->s_numin;											// store original number of inputs
	if(order){
		x->s_order = CLIP(order, 1, MAXORDER);
		if(x->s_debug) post("order is %ld", x->s_order);
	}
	x->s_origOrder = x->s_order;											// store original order
	if(x->s_order == 1){
		x->s_numout = 4;
	}else if(x->s_order == 2){
		x->s_numout = 9;
	}else if(x->s_order == 3){
		x->s_numout = 16;
	}
	if(x->s_debug) post("numout is %ld", x->s_numout);
		
	if(x->s_order == 1){													// assign funtion pointers for calc function
		x->ptr2calc = ambiencode_calc1;
	}else if(x->s_order == 2){
		x->ptr2calc = ambiencode_calc2;
	}else if(x->s_order == 3){
		x->ptr2calc = ambiencode_calc3;
	}
	
	x->inlets = t_getbytes(x->s_numin * sizeof(t_float*));					// allocate memory for inlets
	x->outlets = t_getbytes(x->s_numout * sizeof(t_float*));				// allocate memory for outlets
	x->w = t_getbytes((x->s_numin + x->s_numout + 2) * sizeof(t_int*));		// allocate memory for signal vectors
	
	dsp_setup((t_pxobject *)x, x->s_numin);									// create object and inlets
	x->x_obj.z_misc = Z_NO_INPLACE; 										// necessary when outlets should have different vectors than inlets
	for (i=0; i < x->s_numout; ++i) outlet_new((t_object *)x, "signal");	// create floating-point outlets
			
	x->s_divide_pi 	= PI / 180.0;											// pi/180
	x->s_drophalf 	= sqrt(2.0)/2.0;										// sqrt(2.0)/2.0
	x->s_drophalf2	= 1 - x->s_drophalf;									// 1 - drophalf: 1 - ( sqrt(2.0)/2.0)
		
	for(i=0;i<x->s_numin;i++){		
		if(f){																// second argument check, set or default -3.0dB
			if((f >= 0)&&(f <= 60)){ 										// arbitrary limits to the db/unit decay factor
			x->s_voc[i].dbunit = f * -1.0;
			}
		}
		else{
			x->s_voc[i].dbunit = -3.0;		
		}
		if(x->s_debug) post("db_unit %ld is %f", i, x->s_voc[i].dbunit);
	}
	
	for(i = 0; i < MAXINPUTS; i++) {
		x->s_activeflag[i] = 1.0;
		x->s_voc[i].azi = 0.0;
		x->s_voc[i].ele = 0.0;
		x->s_voc[i].dist = 1.0;
		x->s_newflag[i] = 0;
		for(j = 0; j<17 ; j++) { 
			x->s_voc[i].outcoef[j] = 0.0;
			x->s_voc[i].incoef[j] = 0.0;
		}
		(*x->ptr2calc)(x, i); 
	}
	return (x);
}

void ambiencode_assist(t_ambiencode *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 													// inlets
		sprintf(dst, "<sig> input %ld ,<mess> controls", arg+1);
	else if(msg==2){ 											// outlets
		switch(arg){
			case 0: sprintf(dst, 	"<sig> B-Format W - 0th order"); break;
			case 1: sprintf(dst, 	"<sig> B-Format X - 1st order"); break;
			case 2: sprintf(dst, 	"<sig> B-Format Y - 1st order"); break;
			case 3: sprintf(dst,	"<sig> B-Format Z - 1st order"); break;
			case 4: sprintf(dst, 	"<sig> B-Format R - 2nd order"); break;
			case 5: sprintf(dst, 	"<sig> B-Format S - 2nd order"); break;
			case 6: sprintf(dst, 	"<sig> B-Format T - 2nd order"); break;
			case 7: sprintf(dst, 	"<sig> B-Format U - 2nd order"); break;
			case 8: sprintf(dst, 	"<sig> B-Format V - 2nd order"); break;
			case 9: sprintf(dst, 	"<sig> B-Format K - 3rd order"); break;
			case 10: sprintf(dst, 	"<sig> B-Format L - 3rd order"); break;
			case 11: sprintf(dst, 	"<sig> B-Format M - 3rd order"); break;
			case 12: sprintf(dst, 	"<sig> B-Format N - 3rd order"); break;
			case 13: sprintf(dst, 	"<sig> B-Format O - 3rd order"); break;
			case 14: sprintf(dst, 	"<sig> B-Format P - 3rd order"); break;
			case 15: sprintf(dst, 	"<sig> B-Format Q - 3rd order"); break;
			case 16: sprintf(dst, 	"<sig> B-Format R - 3rd order"); break;
		}
	}
}

void ambiencode_azi(t_ambiencode *x, double f)
{
	long idx = MP_PROXY_GETINLET(x);
	x->s_voc[idx].azi = f * x->s_divide_pi;															// input angles counterclockwise
	(*x->ptr2calc)(x, idx);			
	if(x->s_debug) post("azi %f on inlet %ld", f, idx);
}

void ambiencode_ele(t_ambiencode *x, double f)
{	
	long idx = MP_PROXY_GETINLET(x);
	x->s_voc[idx].ele = f * x->s_divide_pi; 															// degrees to radians
	(*x->ptr2calc)(x, idx);		
	if(x->s_debug) post("ele %f on inlet %ld", f, idx);
}

void ambiencode_dist(t_ambiencode *x, double f)
{	
	long idx = MP_PROXY_GETINLET(x);
	if(x->s_debug) post("dist %f on inlet %ld", f, idx);
	if((0 <= f)&&(f <= 50)){
		x->s_voc[idx].dist = f;		
		(*x->ptr2calc)(x, idx);	
	}
}

void ambiencode_dbunit(t_ambiencode *x, double f)
{	
	long idx = MP_PROXY_GETINLET(x);
	if(x->s_debug) post("dbunit %f on inlet %ld", f, idx);
	if((f >= 0)&&(f < 60)){
		x->s_voc[idx].dbunit = f * -1.0;	
		(*x->ptr2calc)(x, idx);
	}
}

void ambiencode_list(t_ambiencode *x, t_symbol *s, short ac, t_atom *av)
{	
	long i;
	double control[3];
	long idx = MP_PROXY_GETINLET(x);

	if(ac >= 3){
		for (i=0; i<3; i++) {
		switch (av[i].a_type) {
			case A_FLOAT: 
				control[i] = (double)(av[i].a_w.w_float); 
			break;
			case A_LONG: 
				control[i] = (double)(av[i].a_w.w_long); 
			break;
			case A_SYM: 
				error("ambiencode~: type <symbol> \"%s\" found in list", av[i].a_w.w_sym->s_name); 
				return;	
			break;
			}
		}
	}	
	x->s_voc[idx].azi  = control[0] * x->s_divide_pi; // * -1.0;
	x->s_voc[idx].ele  = control[1] * x->s_divide_pi;
	x->s_voc[idx].dist = control[2];	
	(*x->ptr2calc)(x, idx);
	if(x->s_debug) post("list %f %f %f on inlet %ld", control[0], control[1], control[2], idx);	
}

void ambiencode_coords(t_ambiencode *x, t_symbol *s, short ac, t_atom *av)
{
	long idx = 0;
	
	if(ac > 0){
		switch(av[0].a_type){
			case A_FLOAT: 
				idx = CLIP((long)(av[0].a_w.w_float - 1.0), 0, x->s_numin);
				x->s_voc[idx].azi = x->s_voc[idx].ele = 0.0;
				x->s_voc[idx].dist = 1.0; 
				break;
			case A_LONG: 
				idx = CLIP((av[0].a_w.w_long - 1), 0, x->s_numin);
				x->s_voc[idx].azi = x->s_voc[idx].ele = 0.0;
				x->s_voc[idx].dist = 1.0;  
				break;
			case A_SYM: 
				error("ambiencode~: type <symbol> \"%s\" found in %s", av[0].a_w.w_sym->s_name, s->s_name); 
				return;
			break;
		}
	}	
	if(ac > 1){ 
		switch (av[1].a_type) {
			case A_FLOAT: 
				x->s_voc[idx].azi = av[1].a_w.w_float * x->s_divide_pi; 
			break;
			case A_LONG: 
				x->s_voc[idx].azi = (double)(av[1].a_w.w_long * x->s_divide_pi); 
			break;
			case A_SYM: 
				error("ambiencode~: type <symbol> \"%s\" found in %s", av[1].a_w.w_sym->s_name, s->s_name); 
				return;
			break;
			}
	}
	if(ac > 2){ 
		switch (av[2].a_type) {
			case A_FLOAT: 
				x->s_voc[idx].ele = av[2].a_w.w_float * x->s_divide_pi; 
			break;
			case A_LONG: 
				x->s_voc[idx].ele = (double)(av[2].a_w.w_long * x->s_divide_pi); 
			break;
			case A_SYM: 
				error("ambiencode~: type <symbol> \"%s\" found in %s", av[2].a_w.w_sym->s_name, s->s_name); 
				return;
			break;
			}	
	}
	if(ac > 3){
		switch (av[3].a_type) {
				case A_FLOAT: 
					x->s_voc[idx].dist = MAX(av[3].a_w.w_float, 0.0); 
				break;
				case A_LONG: 
					x->s_voc[idx].dist = MAX((double)av[3].a_w.w_long, 0); 
				break;
				case A_SYM: 
					error("ambiencode~: type <symbol> \"%s\" found in %s", av[3].a_w.w_sym->s_name, s->s_name); 
					return;
				break;
			}		
	}
	(*x->ptr2calc)(x, idx);
	if(x->s_debug) post("coords %f %f %f for voice %ld", x->s_voc[idx].azi, x->s_voc[idx].ele, x->s_voc[idx].dist, idx);
}

void ambiencode_active(t_ambiencode *x, t_symbol *s, short ac, t_atom *av)
{
	long i;
	long numActive, currentflag = 0;
	if(ac > 0){
		numActive = MIN(ac, MAXINPUTS);
		for(i = 0; i < numActive; i++) {
			if(av[i].a_type == A_LONG) {
				currentflag = (av[i].a_w.w_long != 0);
				
			} else if (av[i].a_type == A_FLOAT) { 
				
				currentflag = (av[i].a_w.w_float != 0.0);
			} else if (av[i].a_type == A_SYM) { 
				
				currentflag = 0;
			}
			if(x->s_activeflag[i] != currentflag) {
				x->s_activeflag[i] = currentflag;				
				(*x->ptr2calc)(x, i);
			}
 
			if(x->s_debug) post("activeflag %ld is %ld", i, x->s_activeflag[i]);
		}
	}
}

void ambiencode_order(t_ambiencode *x, long n)
{
	int order = n;
	x->s_order = CLIP(order, 1, x->s_origOrder);
	if(x->s_debug) post("new order is %ld ¥ takes effect on restart of DSP", x->s_order);
}

void ambiencode_calc1(t_ambiencode *x, long idx)
{
	double sin_azi, cos_azi, sin_ele, cos_ele; //, sin_2ele sin_2azi, cos_2azi, sin_3azi, cos_3azi, ;	
 
	sin_azi  = sin(x->s_voc[idx].azi);																		// 1st order
	cos_azi  = cos(x->s_voc[idx].azi); 																		// 1st order
	sin_ele  = sin(x->s_voc[idx].ele);																		// 1st order
	cos_ele  = cos(x->s_voc[idx].ele);																		// 1st order	
	
	x->s_voc[idx].incoef[0] = (x->s_voc[idx].dist <= 1.0) ? x->s_voc[idx].dist :  							// global gain 1/2/3 order
		pow(10, (((x->s_voc[idx].dist - 1.0) * x->s_voc[idx].dbunit) / 20.0));		
	x->s_voc[idx].incoef[1] = x->s_voc[idx].dist <= 1.0 ? 1.0 - (x->s_drophalf2 * (x->s_voc[idx].dist*x->s_voc[idx].dist)) :	// W correction inside/outside
		x->s_drophalf * pow(10, (((x->s_voc[idx].dist - 1.0) * x->s_voc[idx].dbunit) / 20.0));

	x->s_voc[idx].incoef[2] = cos_azi * cos_ele * x->s_activeflag[idx];	 									// X-coef
	x->s_voc[idx].incoef[3] = sin_azi * cos_ele * x->s_activeflag[idx];										// Y-coef	
	x->s_voc[idx].incoef[4] = sin_ele * x->s_activeflag[idx];

																											// multiplying by activeflags for muting 
	x->s_voc[idx].incoef[0] *= x->s_activeflag[idx];
	x->s_voc[idx].incoef[1] *= x->s_activeflag[idx];
	
	x->s_newflag[idx] = 1;
	if(x->s_debug) post("calc1: voc[%ld].incoef is %f %f %f",idx, x->s_voc[idx].incoef[2], x->s_voc[idx].incoef[3], x->s_voc[idx].incoef[4]);
}

void ambiencode_calc2(t_ambiencode *x, long idx)
{
	double sin_azi, cos_azi, sin_2azi, cos_2azi, sin_ele, cos_ele, sin_2ele; // sin_3azi, cos_3azi, ;	
	 
	sin_azi  = sin(x->s_voc[idx].azi);																		// 1st order
	cos_azi  = cos(x->s_voc[idx].azi); 																		// 1st order
	sin_ele  = sin(x->s_voc[idx].ele);																		// 1st order
	cos_ele  = cos(x->s_voc[idx].ele);																		// 1st order	
	
	sin_2azi = sin(2.0 * x->s_voc[idx].azi);																// 2nd order			
	cos_2azi = cos(2.0 * x->s_voc[idx].azi);																// 2nd order 
	sin_2ele = sin(2.0 * x->s_voc[idx].ele);																// 2nd order
	
	x->s_voc[idx].incoef[0] = (x->s_voc[idx].dist <= 1.0) ? x->s_voc[idx].dist :  							// global gain 1/2/3 order
		pow(10, (((x->s_voc[idx].dist - 1.0) * x->s_voc[idx].dbunit) / 20.0));		
	x->s_voc[idx].incoef[1] = x->s_voc[idx].dist <= 1.0 ? 1.0 - (x->s_drophalf2 * (x->s_voc[idx].dist*x->s_voc[idx].dist)) :	// W correction inside/outside
		x->s_drophalf * pow(10, (((x->s_voc[idx].dist - 1.0) * x->s_voc[idx].dbunit) / 20.0));
	
	x->s_voc[idx].incoef[2] = cos_azi * cos_ele * x->s_activeflag[idx];	 										// X-coef
	x->s_voc[idx].incoef[3] = sin_azi * cos_ele * x->s_activeflag[idx];											// Y-coef	
	x->s_voc[idx].incoef[4] = sin_ele * x->s_activeflag[idx];													// Z-coef			
	x->s_voc[idx].incoef[5] = (1.5 * sin_ele * sin_ele - 0.5) * x->s_activeflag[idx]; 							// R-coef
	x->s_voc[idx].incoef[6] = cos_azi * sin_2ele * x->s_activeflag[idx];										// S-coef
	x->s_voc[idx].incoef[7] = sin_azi * sin_2ele * x->s_activeflag[idx];										// T-coef
	x->s_voc[idx].incoef[8] = cos_2azi * (cos_ele * cos_ele) * x->s_activeflag[idx];							// U-coef
	x->s_voc[idx].incoef[9] = sin_2azi * (cos_ele * cos_ele) * x->s_activeflag[idx];							// V-coef
																												// multiplying by activeflags for muting 
	x->s_voc[idx].incoef[0] *= x->s_activeflag[idx];
	x->s_voc[idx].incoef[1] *= x->s_activeflag[idx];

	x->s_newflag[idx] = 1;																						// flag to check for interpolation	
	if(x->s_debug) post("calc2: voc[%ld].incoef is %f %f %f %f %f %f %f %f %f",idx, x->s_voc[idx].incoef[2], x->s_voc[idx].incoef[3], x->s_voc[idx].incoef[4], x->s_voc[idx].incoef[5], x->s_voc[idx].incoef[6], x->s_voc[idx].incoef[7], x->s_voc[idx].incoef[8], x->s_voc[idx].incoef[9]);

}

void ambiencode_calc3(t_ambiencode *x, long idx)
{
	double sin_azi, cos_azi, sin_2azi, cos_2azi, sin_3azi, cos_3azi, sin_ele, cos_ele, sin_2ele;	
	if(x->s_debug) post("called calc3 with idx %ld", idx);
	 
	sin_azi  = sin(x->s_voc[idx].azi);																			// 1st order
	cos_azi  = cos(x->s_voc[idx].azi);																			// 1st order
	sin_ele  = sin(x->s_voc[idx].ele);																			// 1st order
	cos_ele  = cos(x->s_voc[idx].ele);																			// 1st order	
	
	sin_2azi = sin(2.0 * x->s_voc[idx].azi);																	// 2nd order			
	cos_2azi = cos(2.0 * x->s_voc[idx].azi);																	// 2nd order 
	sin_2ele = sin(2.0 * x->s_voc[idx].ele);																	// 2nd order

	cos_3azi = cos(3.0 * x->s_voc[idx].azi);																	// 3rd order
	sin_3azi = sin(3.0 * x->s_voc[idx].azi);																	// 3rd order
	
	x->s_voc[idx].incoef[0] = (x->s_voc[idx].dist <= 1.0) ? x->s_voc[idx].dist :								// global gain 1/2/3 order
		pow(10, (((x->s_voc[idx].dist - 1.0) * x->s_voc[idx].dbunit) / 20.0));		
	x->s_voc[idx].incoef[1] = x->s_voc[idx].dist <= 1.0 ? 1.0 - (x->s_drophalf2 * (x->s_voc[idx].dist*x->s_voc[idx].dist)) :	// W correction inside/outside
		x->s_drophalf * pow(10, (((x->s_voc[idx].dist - 1.0) * x->s_voc[idx].dbunit) / 20.0));
	
	x->s_voc[idx].incoef[2] = cos_azi * cos_ele * x->s_activeflag[idx];	 										// X-coef
	x->s_voc[idx].incoef[3] = sin_azi * cos_ele * x->s_activeflag[idx];											// Y-coef	
	x->s_voc[idx].incoef[4] = sin_ele * x->s_activeflag[idx];													// Z-coef			
	x->s_voc[idx].incoef[5] = (1.5 * sin_ele * sin_ele - 0.5) * x->s_activeflag[idx]; 							// R-coef
	x->s_voc[idx].incoef[6] = cos_azi * sin_2ele * x->s_activeflag[idx];										// S-coef
	x->s_voc[idx].incoef[7] = sin_azi * sin_2ele * x->s_activeflag[idx];										// T-coef
	x->s_voc[idx].incoef[8] = cos_2azi * (cos_ele * cos_ele) * x->s_activeflag[idx];							// U-coef
	x->s_voc[idx].incoef[9] = sin_2azi * (cos_ele * cos_ele) * x->s_activeflag[idx];							// V-coef
	x->s_voc[idx].incoef[10] = sin_ele * (5.0 * (sin_ele * sin_ele) - 3.0) * 0.5 * x->s_activeflag[idx]; 		// K-coef
	x->s_voc[idx].incoef[11] = cos_azi * cos_ele * (5.0 * (sin_ele * sin_ele) - 1) * x->s_activeflag[idx];		// L-coef
	x->s_voc[idx].incoef[12] = sin_azi * cos_ele * (5.0 * (sin_ele * sin_ele) - 1) * x->s_activeflag[idx]; 		// M-coef
	x->s_voc[idx].incoef[13] = cos_2azi * sin_ele * (cos_ele * cos_ele) * x->s_activeflag[idx];					// N-coef
	x->s_voc[idx].incoef[14] = sin_2azi * sin_ele * (cos_ele * cos_ele) * x->s_activeflag[idx];					// O-coef
	x->s_voc[idx].incoef[15] = cos_3azi * (cos_ele * cos_ele * cos_ele) * x->s_activeflag[idx];					// P-coef
	x->s_voc[idx].incoef[16] = sin_3azi * (cos_ele * cos_ele * cos_ele) * x->s_activeflag[idx];					// Q-coef
																												// multiplying by activeflags for muting 
	x->s_voc[idx].incoef[0] *= x->s_activeflag[idx];
	x->s_voc[idx].incoef[1] *= x->s_activeflag[idx];
	x->s_newflag[idx] = 1;		
	if(x->s_debug){ 
		post("calc3: voc[%ld].incoef is %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f",idx, x->s_voc[idx].incoef[2], x->s_voc[idx].incoef[3], 
		x->s_voc[idx].incoef[4], x->s_voc[idx].incoef[5], x->s_voc[idx].incoef[6], x->s_voc[idx].incoef[7], x->s_voc[idx].incoef[8], x->s_voc[idx].incoef[9],
		x->s_voc[idx].incoef[10], x->s_voc[idx].incoef[11], x->s_voc[idx].incoef[12], x->s_voc[idx].incoef[13], x->s_voc[idx].incoef[14], x->s_voc[idx].incoef[15], x->s_voc[idx].incoef[16]);
	}
}

t_int *ambiencode_perform1(t_int *wAsT_int)																	// Perform (signal) Method 
{
	double f, g;
	t_int i = 0, k, m, n;
	
	t_int **w = (t_int **)wAsT_int;	
	t_ambiencode *x = (t_ambiencode *)(w[1]);		
		
	t_float **in = x->inlets;
	t_float **out = x->outlets;	
	t_int numinlets = x->s_numin;
	t_int numoutlets = x->s_numout;
	t_float *inptr;
	t_float *outptr_0; // zeroth order
	t_float *outptr_1, *outptr_2, *outptr_3; // first order
	register double increment_0, increment_1, increment_2, increment_3, increment_4; 
	register double outcoef_0 = 0, outcoef_1 = 0, outcoef_2 = 0, outcoef_3 = 0, outcoef_4 = 0;
	if (x->x_obj.z_disabled) goto out;	
	
	for (k = 0; k < numinlets; ++k)	{																			// inlets and outlets
		in[k] = (t_float *)(w[k+3]);
	}
	for (k = 0; k < numoutlets; ++k) {
		out[k] = (t_float *)(w[numinlets+k+3]);	
	}
// --------- process first voice
	if (x->s_activeflag[0] || x->s_newflag[0]) {	
		i = 0;
		n = (t_int)(w[2]); // get vectorsize
		
		outptr_0 = out[0]; // set outpointers
		outptr_1 = out[1];
		outptr_2 = out[2];
		outptr_3 = out[3];
		
		inptr = in[i];

		if(x->s_newflag[i] == 1) {	// check to see if new coeff make interpolation neccessary (start of each vector)
			increment_0 = x->s_interp_fraction * (x->s_voc[i].incoef[0] - x->s_voc[i].outcoef[0]); // calc increment for interpolation
			increment_1 = x->s_interp_fraction * (x->s_voc[i].incoef[1] - x->s_voc[i].outcoef[1]);
			increment_2 = x->s_interp_fraction * (x->s_voc[i].incoef[2] - x->s_voc[i].outcoef[2]);
			increment_3 = x->s_interp_fraction * (x->s_voc[i].incoef[3] - x->s_voc[i].outcoef[3]);
			increment_4 = x->s_interp_fraction * (x->s_voc[i].incoef[4] - x->s_voc[i].outcoef[4]);
				
			outcoef_0   = x->s_voc[i].outcoef[0];
			outcoef_1   = x->s_voc[i].outcoef[1];
			outcoef_2   = x->s_voc[i].outcoef[2];
			outcoef_3   = x->s_voc[i].outcoef[3];
			outcoef_4   = x->s_voc[i].outcoef[4];
				
			x->s_voc[i].outcoef[0] = x->s_voc[i].incoef[0];	// put new coefs into old for next vector: rollover (end of each vector) // unwrapped
			x->s_voc[i].outcoef[1] = x->s_voc[i].incoef[1];
			x->s_voc[i].outcoef[2] = x->s_voc[i].incoef[2];
			x->s_voc[i].outcoef[3] = x->s_voc[i].incoef[3];
			x->s_voc[i].outcoef[4] = x->s_voc[i].incoef[4];
			
			x->s_newflag[i] = 0;
			m = 0;	
													
			while (n--)  // the dsp loop
			{
				m += 1;
				f = g = *inptr++;
				f *= (outcoef_0 + (m * increment_0));      // scale by distance factor for higher order	
				*outptr_0++  = g * (outcoef_1 + (m * increment_1));		// W-signal for 0th order
				*outptr_1++  = f * (outcoef_2 + (m * increment_2));		// X-signal
				*outptr_2++  = f * (outcoef_3 + (m * increment_3));		// Y-signal
				*outptr_3++  = f * (outcoef_4 + (m * increment_4));		// Z-signal	
			}
		} else { // static panning
			outcoef_0   = x->s_voc[i].outcoef[0];
			outcoef_1   = x->s_voc[i].outcoef[1];
			outcoef_2   = x->s_voc[i].outcoef[2];
			outcoef_3   = x->s_voc[i].outcoef[3];
			outcoef_4   = x->s_voc[i].outcoef[4];
			while (n--) 	// the dsp loop 
			{
				f = g = *inptr++;
				f *= outcoef_0; 									// scale by distance factor
				*outptr_0++ = g * outcoef_1; 									// W-signal		  
				*outptr_1++ = f * outcoef_2;	 								// X-signal
				*outptr_2++ = f * outcoef_3; 									// Y-signal
				*outptr_3++ = f * outcoef_4;  									// Z-signal	
			}
		}
	} else { // zero out inputvector
		n = (t_int)(w[2]); // get vectorsize		
		outptr_0 = out[0]; // set outpointers
		outptr_1 = out[1];
		outptr_2 = out[2];
		outptr_3 = out[3];
		while (n--) 	// the dsp loop 
		{

			*outptr_0++ = 0.0; 									// W-signal		  
			*outptr_1++ = 0.0;	 								// X-signal
			*outptr_2++ = 0.0; 									// Y-signal
			*outptr_3++ = 0.0;  									// Z-signal	
		}
	}
	
// --------- process loop for remaining n-1 voices
	for(i = 1; i < numinlets; i++) {
		
		if (x->s_activeflag[i] || x->s_newflag[i]) {
			n = (t_int)(w[2]); // get vectorsize
			outptr_0 = out[0]; // set outpointers
			outptr_1 = out[1];
			outptr_2 = out[2];
			outptr_3 = out[3];
			
			inptr = in[i];
			if(x->s_newflag[i] == 1){	// check to see if new coeff make interpolation neccessary (start of each vector)
				increment_0 = x->s_interp_fraction * (x->s_voc[i].incoef[0] - x->s_voc[i].outcoef[0]); // calc increment for interpolation
				increment_1 = x->s_interp_fraction * (x->s_voc[i].incoef[1] - x->s_voc[i].outcoef[1]);
				increment_2 = x->s_interp_fraction * (x->s_voc[i].incoef[2] - x->s_voc[i].outcoef[2]);
				increment_3 = x->s_interp_fraction * (x->s_voc[i].incoef[3] - x->s_voc[i].outcoef[3]);
				increment_4 = x->s_interp_fraction * (x->s_voc[i].incoef[4] - x->s_voc[i].outcoef[4]);
					
				outcoef_0   = x->s_voc[i].outcoef[0];
				outcoef_1   = x->s_voc[i].outcoef[1];
				outcoef_2   = x->s_voc[i].outcoef[2];
				outcoef_3   = x->s_voc[i].outcoef[3];
				outcoef_4   = x->s_voc[i].outcoef[4];
					
				x->s_voc[i].outcoef[0] = x->s_voc[i].incoef[0];	// put new coefs into old for next vector: rollover (end of each vector) // unwrapped
				x->s_voc[i].outcoef[1] = x->s_voc[i].incoef[1];
				x->s_voc[i].outcoef[2] = x->s_voc[i].incoef[2];
				x->s_voc[i].outcoef[3] = x->s_voc[i].incoef[3];
				x->s_voc[i].outcoef[4] = x->s_voc[i].incoef[4];
				
				x->s_newflag[i] = 0;
				m = 0;											
				while (n--)  // the dsp loop - dynamic panning
				{
					m += 1;
					f = g = *inptr++;
					f *= (outcoef_0 + (m * increment_0));    // scale by distance factor for higher order	
					*outptr_0++  += g * (outcoef_1 + (m * increment_1));	// W-signal for 0th order
					*outptr_1++  += f * (outcoef_2 + (m * increment_2));	// X-signal
					*outptr_2++  += f * (outcoef_3 + (m * increment_3));	// Y-signal
					*outptr_3++  += f * (outcoef_4 + (m * increment_4));	// Z-signal	
				}
			} else { // static panning
				outcoef_0   = x->s_voc[i].outcoef[0];
				outcoef_1   = x->s_voc[i].outcoef[1];
				outcoef_2   = x->s_voc[i].outcoef[2];
				outcoef_3   = x->s_voc[i].outcoef[3];
				outcoef_4   = x->s_voc[i].outcoef[4];
				while (n--) 
				{
					f = g = *inptr++;
					f = f * outcoef_0; 											// scale by distance factor
					*outptr_0++ += g * outcoef_1; 								// W-signal
					*outptr_1++ += f * outcoef_2;	 							// X-signal
					*outptr_2++ += f * outcoef_3; 								// Y-signal
					*outptr_3++ += f * outcoef_4;  								// Z-signal	
				}
			}
		} // end active || newflag check
	}// end loop for n-1 voices
out:
	return (wAsT_int + numinlets + numoutlets + 3);
}

t_int *ambiencode_perform2(t_int *wAsT_int)																	// Perform (signal) Method 
{
	double f, g;
	t_int i = 0, k, m, n;
	
	t_int **w = (t_int **)wAsT_int;	
	t_ambiencode *x = (t_ambiencode *)(w[1]);		
		
	t_float **in = x->inlets;
	t_float **out = x->outlets;	
	t_int numinlets = x->s_numin;
	t_int numoutlets = x->s_numout;
	t_float *inptr;
	t_float *outptr_0; // zeroth order
	t_float *outptr_1, *outptr_2, *outptr_3; // first order
	t_float *outptr_4, *outptr_5, *outptr_6, *outptr_7, *outptr_8; // 2nd order
	register double increment_0, increment_1, increment_2, increment_3, increment_4; 
	register double increment_5, increment_6, increment_7, increment_8, increment_9;
	register double outcoef_0 = 0, outcoef_1 = 0, outcoef_2 = 0, outcoef_3 = 0, outcoef_4 = 0;
	register double outcoef_5 = 0, outcoef_6 = 0, outcoef_7 = 0, outcoef_8 = 0, outcoef_9 = 0;
	if (x->x_obj.z_disabled) goto out;
	
	for (k=0; k < numinlets; ++k)												// inlets and outlets
		in[k] = (t_float *)(w[k+3]);

	for (k=0; k < numoutlets; ++k)
		out[k] = (t_float *)(w[numinlets+k+3]);	

// --------- process first voice
	if (x->s_activeflag[0] || x->s_newflag[0]) {
		i = 0;
		n = (t_int)(w[2]);
		
		outptr_0 = out[0]; // set outpointers
		outptr_1 = out[1];
		outptr_2 = out[2];
		outptr_3 = out[3];
		outptr_4 = out[4];
		outptr_5 = out[5];
		outptr_6 = out[6];
		outptr_7 = out[7];
		outptr_8 = out[8];	
		inptr = in[i];
		
		if(x->s_newflag[i]){	// check to see if new coeff make interpolation neccessary (start of each vector)

			increment_0 = x->s_interp_fraction * (x->s_voc[i].incoef[0] - x->s_voc[i].outcoef[0]); // calc increment for interpolation
			increment_1 = x->s_interp_fraction * (x->s_voc[i].incoef[1] - x->s_voc[i].outcoef[1]);
			increment_2 = x->s_interp_fraction * (x->s_voc[i].incoef[2] - x->s_voc[i].outcoef[2]);
			increment_3 = x->s_interp_fraction * (x->s_voc[i].incoef[3] - x->s_voc[i].outcoef[3]);
			increment_4 = x->s_interp_fraction * (x->s_voc[i].incoef[4] - x->s_voc[i].outcoef[4]);
			increment_5 = x->s_interp_fraction * (x->s_voc[i].incoef[5] - x->s_voc[i].outcoef[5]);
			increment_6 = x->s_interp_fraction * (x->s_voc[i].incoef[6] - x->s_voc[i].outcoef[6]);
			increment_7 = x->s_interp_fraction * (x->s_voc[i].incoef[7] - x->s_voc[i].outcoef[7]);
			increment_8 = x->s_interp_fraction * (x->s_voc[i].incoef[8] - x->s_voc[i].outcoef[8]);																										
			increment_9 = x->s_interp_fraction * (x->s_voc[i].incoef[9] - x->s_voc[i].outcoef[9]);
				
			outcoef_0   = x->s_voc[i].outcoef[0];
			outcoef_1   = x->s_voc[i].outcoef[1];
			outcoef_2   = x->s_voc[i].outcoef[2];
			outcoef_3   = x->s_voc[i].outcoef[3];
			outcoef_4   = x->s_voc[i].outcoef[4];
			outcoef_5   = x->s_voc[i].outcoef[5];
			outcoef_6   = x->s_voc[i].outcoef[6];
			outcoef_7   = x->s_voc[i].outcoef[7];
			outcoef_8   = x->s_voc[i].outcoef[8];
			outcoef_9   = x->s_voc[i].outcoef[9];
						
			x->s_voc[i].outcoef[0] = x->s_voc[i].incoef[0];	// put new coefs into old for next vector: rollover (end of each vector) // unwrapped
			x->s_voc[i].outcoef[1] = x->s_voc[i].incoef[1];
			x->s_voc[i].outcoef[2] = x->s_voc[i].incoef[2];
			x->s_voc[i].outcoef[3] = x->s_voc[i].incoef[3];
			x->s_voc[i].outcoef[4] = x->s_voc[i].incoef[4];
			x->s_voc[i].outcoef[5] = x->s_voc[i].incoef[5];
			x->s_voc[i].outcoef[6] = x->s_voc[i].incoef[6];
			x->s_voc[i].outcoef[7] = x->s_voc[i].incoef[7];
			x->s_voc[i].outcoef[8] = x->s_voc[i].incoef[8];
			x->s_voc[i].outcoef[9] = x->s_voc[i].incoef[9];

			x->s_newflag[i] = 0;
			m = 0;	
													
			while (n--)  // the dsp loop
			{
				m += 1;
				f = g = *inptr++;
				f *= (outcoef_0 + (m * increment_0));      // scale by distance factor for higher order	
				*outptr_0++  = g * (outcoef_1 + (m * increment_1));		// W-signal for 0th order
				*outptr_1++  = f * (outcoef_2 + (m * increment_2));		// X-signal
				*outptr_2++  = f * (outcoef_3 + (m * increment_3));		// Y-signal
				*outptr_3++  = f * (outcoef_4 + (m * increment_4));		// Z-signal	
				*outptr_4++  = f * (outcoef_5 + (m * increment_5));		// R-signal
				*outptr_5++  = f * (outcoef_6 + (m * increment_6));		// S-signal
				*outptr_6++  = f * (outcoef_7 + (m * increment_7));		// T-signal
				*outptr_7++  = f * (outcoef_8 + (m * increment_8));		// U-signal
				*outptr_8++  = f * (outcoef_9 + (m * increment_9));		// V-signal	
			}
		}else{ // static panning
			outcoef_0   = x->s_voc[i].outcoef[0];
			outcoef_1   = x->s_voc[i].outcoef[1];
			outcoef_2   = x->s_voc[i].outcoef[2];
			outcoef_3   = x->s_voc[i].outcoef[3];
			outcoef_4   = x->s_voc[i].outcoef[4];
			outcoef_5   = x->s_voc[i].outcoef[5];
			outcoef_6   = x->s_voc[i].outcoef[6];
			outcoef_7   = x->s_voc[i].outcoef[7];
			outcoef_8   = x->s_voc[i].outcoef[8];
			outcoef_9   = x->s_voc[i].outcoef[9];
			while (n--) 	// the dsp loop 
			{
				f = g = *inptr++;
				f *= outcoef_0; 									// scale by distance factor
				*outptr_0++ = g * outcoef_1; 									// W-signal		  
				*outptr_1++ = f * outcoef_2;	 								// X-signal
				*outptr_2++ = f * outcoef_3; 									// Y-signal
				*outptr_3++ = f * outcoef_4;  									// Z-signal	
				*outptr_4++ = f * outcoef_5;									// R-signal
				*outptr_5++ = f * outcoef_6;									// S-signal
				*outptr_6++ = f * outcoef_7;									// T-signal
				*outptr_7++ = f * outcoef_8;									// U-signal
				*outptr_8++ = f * outcoef_9;									// V-signal
			}
		}
	} else { // zero out inputvector
		n = (t_int)(w[2]); // get vectorsize		
		outptr_0 = out[0]; // set outpointers
		outptr_1 = out[1];
		outptr_2 = out[2];
		outptr_3 = out[3];
		outptr_4 = out[4];
		outptr_5 = out[5];
		outptr_6 = out[6];
		outptr_7 = out[7];
		outptr_8 = out[8];	
		while (n--) 	// the dsp loop 
		 {
			
			*outptr_0++ = 0.0; 									// W-signal		  
			*outptr_1++ = 0.0;	 								// X-signal
			*outptr_2++ = 0.0; 									// Y-signal
			*outptr_3++ = 0.0;  								// Z-signal
			*outptr_4++ = 0.0;									// R-signal
			*outptr_5++ = 0.0;									// S-signal
			*outptr_6++ = 0.0;;									// T-signal
			*outptr_7++ = 0.0;									// U-signal
			*outptr_8++ = 0.0;									// V-signal
		 }
	}
	
// --------- process loop for remaining n-1 voices
	for(i=1; i<numinlets; i++){
		if (x->s_activeflag[i] || x->s_newflag[i]) {
			n = (t_int)(w[2]);
		
			outptr_0 = out[0]; // set outpointers
			outptr_1 = out[1];
			outptr_2 = out[2];
			outptr_3 = out[3];
			outptr_4 = out[4];
			outptr_5 = out[5];
			outptr_6 = out[6];
			outptr_7 = out[7];
			outptr_8 = out[8];
			
			inptr = in[i];
			if(x->s_newflag[i] == 1){	// check to see if new coeff make interpolation neccessary (start of each vector)
				increment_0 = x->s_interp_fraction * (x->s_voc[i].incoef[0] - x->s_voc[i].outcoef[0]); // calc increment for interpolation
				increment_1 = x->s_interp_fraction * (x->s_voc[i].incoef[1] - x->s_voc[i].outcoef[1]);
				increment_2 = x->s_interp_fraction * (x->s_voc[i].incoef[2] - x->s_voc[i].outcoef[2]);
				increment_3 = x->s_interp_fraction * (x->s_voc[i].incoef[3] - x->s_voc[i].outcoef[3]);
				increment_4 = x->s_interp_fraction * (x->s_voc[i].incoef[4] - x->s_voc[i].outcoef[4]);
				increment_5 = x->s_interp_fraction * (x->s_voc[i].incoef[5] - x->s_voc[i].outcoef[5]);
				increment_6 = x->s_interp_fraction * (x->s_voc[i].incoef[6] - x->s_voc[i].outcoef[6]);
				increment_7 = x->s_interp_fraction * (x->s_voc[i].incoef[7] - x->s_voc[i].outcoef[7]);
				increment_8 = x->s_interp_fraction * (x->s_voc[i].incoef[8] - x->s_voc[i].outcoef[8]);		
				increment_9 = x->s_interp_fraction * (x->s_voc[i].incoef[9] - x->s_voc[i].outcoef[9]);
					
				outcoef_0   = x->s_voc[i].outcoef[0];
				outcoef_1   = x->s_voc[i].outcoef[1];
				outcoef_2   = x->s_voc[i].outcoef[2];
				outcoef_3   = x->s_voc[i].outcoef[3];
				outcoef_4   = x->s_voc[i].outcoef[4];
				outcoef_5   = x->s_voc[i].outcoef[5];
				outcoef_6   = x->s_voc[i].outcoef[6];
				outcoef_7   = x->s_voc[i].outcoef[7];
				outcoef_8   = x->s_voc[i].outcoef[8];
				outcoef_9   = x->s_voc[i].outcoef[9];
					
				x->s_voc[i].outcoef[0] = x->s_voc[i].incoef[0];	// put new coefs into old for next vector: rollover (end of each vector) // unwrapped
				x->s_voc[i].outcoef[1] = x->s_voc[i].incoef[1];
				x->s_voc[i].outcoef[2] = x->s_voc[i].incoef[2];
				x->s_voc[i].outcoef[3] = x->s_voc[i].incoef[3];
				x->s_voc[i].outcoef[4] = x->s_voc[i].incoef[4];
				x->s_voc[i].outcoef[5] = x->s_voc[i].incoef[5];
				x->s_voc[i].outcoef[6] = x->s_voc[i].incoef[6];
				x->s_voc[i].outcoef[7] = x->s_voc[i].incoef[7];
				x->s_voc[i].outcoef[8] = x->s_voc[i].incoef[8];
				x->s_voc[i].outcoef[9] = x->s_voc[i].incoef[9];
				
				x->s_newflag[i] = 0;
				m = 0;											
				while (n--)  // the dsp loop - dynamic panning
				{
					m += 1;
					f = g = *inptr++;
					f *= (outcoef_0 + (m * increment_0));    // scale by distance factor for higher order	
					*outptr_0++  += g * (outcoef_1 + (m * increment_1));	// W-signal for 0th order
					*outptr_1++  += f * (outcoef_2 + (m * increment_2));	// X-signal
					*outptr_2++  += f * (outcoef_3 + (m * increment_3));	// Y-signal
					*outptr_3++  += f * (outcoef_4 + (m * increment_4));	// Z-signal	
					*outptr_4++  += f * (outcoef_5 + (m * increment_5));	// R-signal
					*outptr_5++  += f * (outcoef_6 + (m * increment_6));	// S-signal
					*outptr_6++  += f * (outcoef_7 + (m * increment_7));	// T-signal
					*outptr_7++  += f * (outcoef_8 + (m * increment_8));	// U-signal
					*outptr_8++  += f * (outcoef_9 + (m * increment_9));	// V-signal	
				}
			}else{ // static panning
				outcoef_0   = x->s_voc[i].outcoef[0];
				outcoef_1   = x->s_voc[i].outcoef[1];
				outcoef_2   = x->s_voc[i].outcoef[2];
				outcoef_3   = x->s_voc[i].outcoef[3];
				outcoef_4   = x->s_voc[i].outcoef[4];
				outcoef_5   = x->s_voc[i].outcoef[5];
				outcoef_6   = x->s_voc[i].outcoef[6];
				outcoef_7   = x->s_voc[i].outcoef[7];
				outcoef_8   = x->s_voc[i].outcoef[8];
				outcoef_9   = x->s_voc[i].outcoef[9];
				while (n--) 
				{
					f = g = *inptr++;
					f = f * outcoef_0;												// scale by distance factor
					*outptr_0++ += g * outcoef_1; 									// W-signal
					*outptr_1++ += f * outcoef_2;	 								// X-signal
					*outptr_2++ += f * outcoef_3; 									// Y-signal

					*outptr_3++ += f * outcoef_4;									// Z-signal	
					*outptr_4++ += f * outcoef_5;									// R-signal
					*outptr_5++ += f * outcoef_6;									// S-signal
					*outptr_6++ += f * outcoef_7;									// T-signal
					*outptr_7++ += f * outcoef_8;									// U-signal
					*outptr_8++ += f * outcoef_9;									// V-signal
				}
			}
		}
	}// end loop for n-1 voices
out:
	return (wAsT_int + numinlets + numoutlets + 3);
}

t_int *ambiencode_perform3(t_int *wAsT_int)																	// Perform (signal) Method 
{
	double f, g;
	t_int i = 0, k, m, n;
	
	t_int **w = (t_int **)wAsT_int;	
	t_ambiencode *x = (t_ambiencode *)(w[1]);		
		
	t_float **in = x->inlets;
	t_float **out = x->outlets;	
	t_int numinlets = x->s_numin;
	t_int numoutlets = x->s_numout;
	t_float *inptr;
	t_float *outptr_0; // zeroth order
	t_float *outptr_1, *outptr_2, *outptr_3; // first order
	t_float *outptr_4, *outptr_5, *outptr_6, *outptr_7, *outptr_8; // 2nd order
	t_float *outptr_9, *outptr_10, *outptr_11, *outptr_12, *outptr_13, *outptr_14, *outptr_15; // 3rd order
	register double increment_0, increment_1, increment_2, increment_3, increment_4, increment_5, increment_6;
	register double increment_7, increment_8, increment_9, increment_10, increment_11, increment_12, increment_13;
	register double increment_14, increment_15, increment_16; 
	register double outcoef_0 = 0, outcoef_1 = 0, outcoef_2 = 0, outcoef_3 = 0, outcoef_4 = 0, outcoef_5 = 0, outcoef_6 = 0;
	register double outcoef_7 = 0, outcoef_8 = 0, outcoef_9 = 0, outcoef_10 = 0, outcoef_11 = 0, outcoef_12 = 0, outcoef_13 = 0;
	register double outcoef_14 = 0, outcoef_15 = 0, outcoef_16 = 0;	
	if (x->x_obj.z_disabled) goto out;	
	
	for (k=0; k < numinlets; ++k)												// inlets and outlets
		in[k] = (t_float *)(w[k+3]);

	for (k=0; k < numoutlets; ++k)
		out[k] = (t_float *)(w[numinlets+k+3]);	
	
// --------- process first voice
	if (x->s_activeflag[0] || x->s_newflag[0]) {
		i = 0;
		n = (t_int)(w[2]);
		
		outptr_0 = out[0]; // set outpointers
		outptr_1 = out[1];
		outptr_2 = out[2];
		outptr_3 = out[3];
		outptr_4 = out[4];
		outptr_5 = out[5];
		outptr_6 = out[6];
		outptr_7 = out[7];
		outptr_8 = out[8];
		outptr_9 = out[9];
		outptr_10 = out[10];
		outptr_11 = out[11];
		outptr_12 = out[12];
		outptr_13 = out[13];
		outptr_14 = out[14];
		outptr_15 = out[15];
		
		inptr = in[i];
		
		if(x->s_newflag[i]){	// check to see if new coeff make interpolation neccessary (start of each vector)

			increment_0 = x->s_interp_fraction * (x->s_voc[i].incoef[0] - x->s_voc[i].outcoef[0]); // calc increment for interpolation
			increment_1 = x->s_interp_fraction * (x->s_voc[i].incoef[1] - x->s_voc[i].outcoef[1]);
			increment_2 = x->s_interp_fraction * (x->s_voc[i].incoef[2] - x->s_voc[i].outcoef[2]);
			increment_3 = x->s_interp_fraction * (x->s_voc[i].incoef[3] - x->s_voc[i].outcoef[3]);
			increment_4 = x->s_interp_fraction * (x->s_voc[i].incoef[4] - x->s_voc[i].outcoef[4]);
			increment_5 = x->s_interp_fraction * (x->s_voc[i].incoef[5] - x->s_voc[i].outcoef[5]);
			increment_6 = x->s_interp_fraction * (x->s_voc[i].incoef[6] - x->s_voc[i].outcoef[6]);
			increment_7 = x->s_interp_fraction * (x->s_voc[i].incoef[7] - x->s_voc[i].outcoef[7]);
			increment_8 = x->s_interp_fraction * (x->s_voc[i].incoef[8] - x->s_voc[i].outcoef[8]);																										
			increment_9 = x->s_interp_fraction * (x->s_voc[i].incoef[9] - x->s_voc[i].outcoef[9]);
			increment_10 = x->s_interp_fraction * (x->s_voc[i].incoef[10] - x->s_voc[i].outcoef[10]);
			increment_11 = x->s_interp_fraction * (x->s_voc[i].incoef[11] - x->s_voc[i].outcoef[11]);
			increment_12 = x->s_interp_fraction * (x->s_voc[i].incoef[12] - x->s_voc[i].outcoef[12]);
			increment_13 = x->s_interp_fraction * (x->s_voc[i].incoef[13] - x->s_voc[i].outcoef[13]);
			increment_14 = x->s_interp_fraction * (x->s_voc[i].incoef[14] - x->s_voc[i].outcoef[14]);
			increment_15 = x->s_interp_fraction * (x->s_voc[i].incoef[15] - x->s_voc[i].outcoef[15]);
			increment_16 = x->s_interp_fraction * (x->s_voc[i].incoef[16] - x->s_voc[i].outcoef[16]);
				
			outcoef_0   = x->s_voc[i].outcoef[0];
			outcoef_1   = x->s_voc[i].outcoef[1];
			outcoef_2   = x->s_voc[i].outcoef[2];
			outcoef_3   = x->s_voc[i].outcoef[3];
			outcoef_4   = x->s_voc[i].outcoef[4];
			outcoef_5   = x->s_voc[i].outcoef[5];
			outcoef_6   = x->s_voc[i].outcoef[6];
			outcoef_7   = x->s_voc[i].outcoef[7];
			outcoef_8   = x->s_voc[i].outcoef[8];
			outcoef_9   = x->s_voc[i].outcoef[9];
			outcoef_10  = x->s_voc[i].outcoef[10];
			outcoef_11  = x->s_voc[i].outcoef[11];
			outcoef_12  = x->s_voc[i].outcoef[12];
			outcoef_13  = x->s_voc[i].outcoef[13];
			outcoef_14  = x->s_voc[i].outcoef[14];
			outcoef_15  = x->s_voc[i].outcoef[15];
			outcoef_16  = x->s_voc[i].outcoef[16];
				
			x->s_voc[i].outcoef[0] = x->s_voc[i].incoef[0];	// put new coefs into old for next vector: rollover (end of each vector) // unwrapped
			x->s_voc[i].outcoef[1] = x->s_voc[i].incoef[1];
			x->s_voc[i].outcoef[2] = x->s_voc[i].incoef[2];
			x->s_voc[i].outcoef[3] = x->s_voc[i].incoef[3];
			x->s_voc[i].outcoef[4] = x->s_voc[i].incoef[4];
			x->s_voc[i].outcoef[5] = x->s_voc[i].incoef[5];
			x->s_voc[i].outcoef[6] = x->s_voc[i].incoef[6];
			x->s_voc[i].outcoef[7] = x->s_voc[i].incoef[7];
			x->s_voc[i].outcoef[8] = x->s_voc[i].incoef[8];
			x->s_voc[i].outcoef[9] = x->s_voc[i].incoef[9];
			x->s_voc[i].outcoef[10] = x->s_voc[i].incoef[10];
			x->s_voc[i].outcoef[11] = x->s_voc[i].incoef[11];
			x->s_voc[i].outcoef[12] = x->s_voc[i].incoef[12];
			x->s_voc[i].outcoef[13] = x->s_voc[i].incoef[13];
			x->s_voc[i].outcoef[14] = x->s_voc[i].incoef[14];
			x->s_voc[i].outcoef[15] = x->s_voc[i].incoef[15];
			x->s_voc[i].outcoef[16] = x->s_voc[i].incoef[16];			
			
			x->s_newflag[i] = 0;
			m = 0;	
													
			while (n--)  // the dsp loop
			{
				m += 1;
				f = g = *inptr++;
				f *= (outcoef_0 + (m * increment_0));      // scale by distance factor for higher order	
				*outptr_0++  = g * (outcoef_1 + (m * increment_1));		// W-signal for 0th order
				*outptr_1++  = f * (outcoef_2 + (m * increment_2));		// X-signal
				*outptr_2++  = f * (outcoef_3 + (m * increment_3));		// Y-signal
				*outptr_3++  = f * (outcoef_4 + (m * increment_4));		// Z-signal	
				*outptr_4++  = f * (outcoef_5 + (m * increment_5));		// R-signal
				*outptr_5++  = f * (outcoef_6 + (m * increment_6));		// S-signal
				*outptr_6++  = f * (outcoef_7 + (m * increment_7));		// T-signal
				*outptr_7++  = f * (outcoef_8 + (m * increment_8));		// U-signal
				*outptr_8++  = f * (outcoef_9 + (m * increment_9));		// V-signal	
				*outptr_9++  = f * (outcoef_10 + (m * increment_10));	// K-signal
				*outptr_10++ = f * (outcoef_11 + (m * increment_11));	// L-signal
				*outptr_11++ = f * (outcoef_12 + (m * increment_12));	// M-signal
				*outptr_12++ = f * (outcoef_13 + (m * increment_13));	// N-signal
				*outptr_13++ = f * (outcoef_14 + (m * increment_14));	// O-signal
				*outptr_14++ = f * (outcoef_15 + (m * increment_15));	// P-signal
				*outptr_15++ = f * (outcoef_16 + (m * increment_16));	// Q-signal		
			}
		}else{ // static panning
			outcoef_0   = x->s_voc[i].outcoef[0];
			outcoef_1   = x->s_voc[i].outcoef[1];
			outcoef_2   = x->s_voc[i].outcoef[2];
			outcoef_3   = x->s_voc[i].outcoef[3];
			outcoef_4   = x->s_voc[i].outcoef[4];
			outcoef_5   = x->s_voc[i].outcoef[5];
			outcoef_6   = x->s_voc[i].outcoef[6];
			outcoef_7   = x->s_voc[i].outcoef[7];
			outcoef_8   = x->s_voc[i].outcoef[8];
			outcoef_9   = x->s_voc[i].outcoef[9];
			outcoef_10  = x->s_voc[i].outcoef[10];
			outcoef_11  = x->s_voc[i].outcoef[11];
			outcoef_12  = x->s_voc[i].outcoef[12];
			outcoef_13  = x->s_voc[i].outcoef[13];
			outcoef_14  = x->s_voc[i].outcoef[14];
			outcoef_15  = x->s_voc[i].outcoef[15];
			outcoef_16  = x->s_voc[i].outcoef[16];										
			while (n--) 	// the dsp loop 
			{
				f = g = *inptr++;
				f *= outcoef_0; 									// scale by distance factor
				*outptr_0++ = g * outcoef_1; 									// W-signal		  
				*outptr_1++ = f * outcoef_2;	 								// X-signal
				*outptr_2++ = f * outcoef_3; 									// Y-signal
				*outptr_3++ = f * outcoef_4;  									// Z-signal	
				*outptr_4++ = f * outcoef_5;									// R-signal
				*outptr_5++ = f * outcoef_6;									// S-signal
				*outptr_6++ = f * outcoef_7;									// T-signal
				*outptr_7++ = f * outcoef_8;									// U-signal
				*outptr_8++ = f * outcoef_9;									// V-signal
				*outptr_9++ = f * outcoef_10;									// K-signal
				*outptr_10++ = f * outcoef_11;								// L-signal
				*outptr_11++ = f * outcoef_12;								// M-signal
				*outptr_12++ = f * outcoef_13;								// N-signal
				*outptr_13++ = f * outcoef_14;								// O-signal
				*outptr_14++ = f * outcoef_15;								// P-signal
				*outptr_15++ = f * outcoef_16;								// Q-signal
			}
		}
	} else { // zero out inputvector
		n = (t_int)(w[2]); // get vectorsize		
		outptr_0 = out[0]; // set outpointers
		outptr_1 = out[1];
		outptr_2 = out[2];
		outptr_3 = out[3];
		outptr_4 = out[4];
		outptr_5 = out[5];
		outptr_6 = out[6];
		outptr_7 = out[7];
		outptr_8 = out[8];
		outptr_9 = out[9];
		outptr_10 = out[10];
		outptr_11 = out[11];
		outptr_12 = out[12];
		outptr_13 = out[13];
		outptr_14 = out[14];
		outptr_15 = out[15];
		while (n--) 	// the dsp loop 
		{
			*outptr_0++ = 0.0; 									// W-signal		  
			*outptr_1++ = 0.0;	 								// X-signal
			*outptr_2++ = 0.0; 									// Y-signal
			*outptr_3++ = 0.0;  								// Z-signal
			*outptr_4++ = 0.0;									// R-signal
			*outptr_5++ = 0.0;									// S-signal
			*outptr_6++ = 0.0;;									// T-signal
			*outptr_7++ = 0.0;									// U-signal
			*outptr_8++ = 0.0;									// V-signal
			*outptr_9++ = 0.0;									// K-signal
			*outptr_10++ = 0.0;								// L-signal
			*outptr_11++ = 0.0;								// M-signal
			*outptr_12++ = 0.0;								// N-signal
			*outptr_13++ = 0.0;								// O-signal
			*outptr_14++ = 0.0;								// P-signal
			*outptr_15++ = 0.0;								// Q-signal
		 }
	}
// --------- process loop for remaining n-1 voices
	for(i = 1; i < numinlets; i++){
		if (x->s_activeflag[i] || x->s_newflag[i]) {
			n = (t_int)(w[2]);
		
			outptr_0 = out[0]; // set outpointers
			outptr_1 = out[1];
			outptr_2 = out[2];
			outptr_3 = out[3];
			outptr_4 = out[4];
			outptr_5 = out[5];
			outptr_6 = out[6];
			outptr_7 = out[7];
			outptr_8 = out[8];
			outptr_9 = out[9];
			outptr_10 = out[10];
			outptr_11 = out[11];
			outptr_12 = out[12];
			outptr_13 = out[13];
			outptr_14 = out[14];
			outptr_15 = out[15];
			
			inptr = in[i];
			if(x->s_newflag[i] == 1){	// check to see if new coeff make interpolation neccessary (start of each vector)
				increment_0 = x->s_interp_fraction * (x->s_voc[i].incoef[0] - x->s_voc[i].outcoef[0]); // calc increment for interpolation
				increment_1 = x->s_interp_fraction * (x->s_voc[i].incoef[1] - x->s_voc[i].outcoef[1]);
				increment_2 = x->s_interp_fraction * (x->s_voc[i].incoef[2] - x->s_voc[i].outcoef[2]);
				increment_3 = x->s_interp_fraction * (x->s_voc[i].incoef[3] - x->s_voc[i].outcoef[3]);
				increment_4 = x->s_interp_fraction * (x->s_voc[i].incoef[4] - x->s_voc[i].outcoef[4]);
				increment_5 = x->s_interp_fraction * (x->s_voc[i].incoef[5] - x->s_voc[i].outcoef[5]);
				increment_6 = x->s_interp_fraction * (x->s_voc[i].incoef[6] - x->s_voc[i].outcoef[6]);
				increment_7 = x->s_interp_fraction * (x->s_voc[i].incoef[7] - x->s_voc[i].outcoef[7]);
				increment_8 = x->s_interp_fraction * (x->s_voc[i].incoef[8] - x->s_voc[i].outcoef[8]);		
				increment_9 = x->s_interp_fraction * (x->s_voc[i].incoef[9] - x->s_voc[i].outcoef[9]);
				increment_10 = x->s_interp_fraction * (x->s_voc[i].incoef[10] - x->s_voc[i].outcoef[10]);
				increment_11 = x->s_interp_fraction * (x->s_voc[i].incoef[11] - x->s_voc[i].outcoef[11]);
				increment_12 = x->s_interp_fraction * (x->s_voc[i].incoef[12] - x->s_voc[i].outcoef[12]);
				increment_13 = x->s_interp_fraction * (x->s_voc[i].incoef[13] - x->s_voc[i].outcoef[13]);
				increment_14 = x->s_interp_fraction * (x->s_voc[i].incoef[14] - x->s_voc[i].outcoef[14]);
				increment_15 = x->s_interp_fraction * (x->s_voc[i].incoef[15] - x->s_voc[i].outcoef[15]);
				increment_16 = x->s_interp_fraction * (x->s_voc[i].incoef[16] - x->s_voc[i].outcoef[16]);
					
				outcoef_0   = x->s_voc[i].outcoef[0];
				outcoef_1   = x->s_voc[i].outcoef[1];
				outcoef_2   = x->s_voc[i].outcoef[2];
				outcoef_3   = x->s_voc[i].outcoef[3];
				outcoef_4   = x->s_voc[i].outcoef[4];
				outcoef_5   = x->s_voc[i].outcoef[5];
				outcoef_6   = x->s_voc[i].outcoef[6];
				outcoef_7   = x->s_voc[i].outcoef[7];
				outcoef_8   = x->s_voc[i].outcoef[8];
				outcoef_9   = x->s_voc[i].outcoef[9];
				outcoef_10  = x->s_voc[i].outcoef[0];
				outcoef_11  = x->s_voc[i].outcoef[11];
				outcoef_12  = x->s_voc[i].outcoef[12];
				outcoef_13  = x->s_voc[i].outcoef[13];
				outcoef_14  = x->s_voc[i].outcoef[14];
				outcoef_15  = x->s_voc[i].outcoef[15];
				outcoef_16  = x->s_voc[i].outcoef[16];
					
				x->s_voc[i].outcoef[0] = x->s_voc[i].incoef[0];	// put new coefs into old for next vector: rollover (end of each vector) // unwrapped
				x->s_voc[i].outcoef[1] = x->s_voc[i].incoef[1];
				x->s_voc[i].outcoef[2] = x->s_voc[i].incoef[2];
				x->s_voc[i].outcoef[3] = x->s_voc[i].incoef[3];
				x->s_voc[i].outcoef[4] = x->s_voc[i].incoef[4];
				x->s_voc[i].outcoef[5] = x->s_voc[i].incoef[5];
				x->s_voc[i].outcoef[6] = x->s_voc[i].incoef[6];
				x->s_voc[i].outcoef[7] = x->s_voc[i].incoef[7];
				x->s_voc[i].outcoef[8] = x->s_voc[i].incoef[8];
				x->s_voc[i].outcoef[9] = x->s_voc[i].incoef[9];
				x->s_voc[i].outcoef[10] = x->s_voc[i].incoef[10];
				x->s_voc[i].outcoef[11] = x->s_voc[i].incoef[11];
				x->s_voc[i].outcoef[12] = x->s_voc[i].incoef[12];
				x->s_voc[i].outcoef[13] = x->s_voc[i].incoef[13];
				x->s_voc[i].outcoef[14] = x->s_voc[i].incoef[14];
				x->s_voc[i].outcoef[15] = x->s_voc[i].incoef[15];
				x->s_voc[i].outcoef[16] = x->s_voc[i].incoef[16];			
				
				x->s_newflag[i] = 0;
				m = 0;											
				while (n--)  // the dsp loop - dynamic panning
				{
					m += 1;
					f = g = *inptr++;
					f *= (outcoef_0 + (m * increment_0));    // scale by distance factor for higher order	
					*outptr_0++  += g * (outcoef_1 + (m * increment_1));	// W-signal for 0th order
					*outptr_1++  += f * (outcoef_2 + (m * increment_2));	// X-signal
					*outptr_2++  += f * (outcoef_3 + (m * increment_3));	// Y-signal
					*outptr_3++  += f * (outcoef_4 + (m * increment_4));	// Z-signal	
					*outptr_4++  += f * (outcoef_5 + (m * increment_5));	// R-signal
					*outptr_5++  += f * (outcoef_6 + (m * increment_6));	// S-signal
					*outptr_6++  += f * (outcoef_7 + (m * increment_7));	// T-signal
					*outptr_7++  += f * (outcoef_8 + (m * increment_8));	// U-signal
					*outptr_8++  += f * (outcoef_9 + (m * increment_9));	// V-signal	
					*outptr_9++  += f * (outcoef_10 + (m * increment_10));	// K-signal
					*outptr_10++ += f * (outcoef_11 + (m * increment_11));	// L-signal
					*outptr_11++ += f * (outcoef_12 + (m * increment_12));	// M-signal
					*outptr_12++ += f * (outcoef_13 + (m * increment_13));	// N-signal
					*outptr_13++ += f * (outcoef_14 + (m * increment_14));	// O-signal
					*outptr_14++ += f * (outcoef_15 + (m * increment_15));	// P-signal
					*outptr_15++ += f * (outcoef_16 + (m * increment_16));	// Q-signal		
				}
			}else{ // static panning
				outcoef_0   = x->s_voc[i].outcoef[0];
				outcoef_1   = x->s_voc[i].outcoef[1];
				outcoef_2   = x->s_voc[i].outcoef[2];
				outcoef_3   = x->s_voc[i].outcoef[3];
				outcoef_4   = x->s_voc[i].outcoef[4];
				outcoef_5   = x->s_voc[i].outcoef[5];
				outcoef_6   = x->s_voc[i].outcoef[6];
				outcoef_7   = x->s_voc[i].outcoef[7];
				outcoef_8   = x->s_voc[i].outcoef[8];
				outcoef_9   = x->s_voc[i].outcoef[9];
				outcoef_10  = x->s_voc[i].outcoef[0];
				outcoef_11  = x->s_voc[i].outcoef[11];
				outcoef_12  = x->s_voc[i].outcoef[12];
				outcoef_13  = x->s_voc[i].outcoef[13];
				outcoef_14  = x->s_voc[i].outcoef[14];
				outcoef_15  = x->s_voc[i].outcoef[15];
				outcoef_16  = x->s_voc[i].outcoef[16];
				while (n--) 
				{
					f = g = *inptr++;
					f = f * outcoef_0; 											// scale by distance factor
					*outptr_0++ += g * outcoef_1; 									// W-signal
					*outptr_1++ += f * outcoef_2;	 								// X-signal
					*outptr_2++ += f * outcoef_3; 									// Y-signal
					*outptr_3++ += f * outcoef_4;  								// Z-signal	
					*outptr_4++ += f * outcoef_5;									// R-signal
					*outptr_5++ += f * outcoef_6;									// S-signal
					*outptr_6++ += f * outcoef_7;									// T-signal
					*outptr_7++ += f * outcoef_8;									// U-signal
					*outptr_8++ += f * outcoef_9;									// V-signal
					*outptr_9++ += f * outcoef_10;									// K-signal
					*outptr_10++ += f * outcoef_11;								// L-signal
					*outptr_11++ += f * outcoef_12;								// M-signal
					*outptr_12++ += f * outcoef_13;								// N-signal
					*outptr_13++ += f * outcoef_14;								// O-signal
					*outptr_14++ += f * outcoef_15;								// P-signal
					*outptr_15++ += f * outcoef_16;								// Q-signal
				}
			} 
		}
	}// end loop for n-1 voices
out:
	return (wAsT_int + numinlets + numoutlets + 3);
}

void ambiencode_dsp(t_ambiencode *x, t_signal **sp, short *connect) 			// dsp setup method
{
	t_int i, num = x->s_numin + x->s_numout; 									// number of inlets and outlets 
	t_int **w = x->w;

	w[0] = (t_int *)x;															// object
	w[1] = (t_int *)sp[0]->s_n;													// sample rate
	for (i=0; i<num; ++i){
		w[i+2] = (t_int *)sp[i]->s_vec;											// vectors for input + output	
	}
	num += 2; 																	// x and n
	x->s_interp_fraction = 1./(double)sp[0]->s_n;								// 1 / signal vector size (for interpolation of coefs)
	switch(x->s_order){
		case 1: 
			x->ptr2calc = ambiencode_calc1;// assign funtion pointers for calc function
			x->s_numout = 4;
			dsp_addv(ambiencode_perform1, num, (void **)w); 
		break;
		case 2:	
			x->ptr2calc = ambiencode_calc2;
			x->s_numout = 9;
			dsp_addv(ambiencode_perform2, num, (void **)w); 
		break; 
		case 3:
			x->ptr2calc = ambiencode_calc3;
			x->s_numout = 16;
			dsp_addv(ambiencode_perform3, num, (void **)w);	
		break;
	}
}

void ambiencode_free(t_ambiencode *x)												// free allocated memory for this instance
{
	dsp_free((t_pxobject *)x);
	if (x->inlets) t_freebytes(x->inlets, x->s_numin * sizeof(t_float*));
	if (x->outlets) t_freebytes(x->outlets, x->s_numout * sizeof(t_float*));
	if (x->w) t_freebytes(x->w, (x->s_numin + x->s_numout + 2) * sizeof(t_int*));
}

void ambiencode_report(t_ambiencode *x)
{
	short i, j;
	post("ambiencode~");
	post("    version " VERSION " - compiled " __DATE__ " " __TIME__);
	post("    %ld order", x->s_order);
	post("    %ld inputs", x->s_numin);
	post("    %ld outputs", x->s_numout);
	post("	  %.2f  dbunits", x->s_voc[0].dbunit);

	for(i=0;i<x->s_numin;i++){
		for(j=0;j<x->s_numout; j++){
			post("outcoef[%ld][%ld] is %f", i, j, x->s_voc[i].outcoef[j]);	// put new coefs into old for next vector: rollover (end of each vector) // unwrapped
		}
		post("avtiveflag[%ld] is %ld", i, x->s_activeflag[i]);
	}		
}

void ambiencode_version(t_ambiencode *x)
{
	post("ambiencode~    -    jasch/ICST Zurich    -    © 2003 - 2007");
	post("    version "VERSION" compiled "__DATE__" "__TIME__);
}

void ambiencode_verbose(t_ambiencode *x, long n)
{
	x->s_debug = CLIP(n, 0, 1);
}