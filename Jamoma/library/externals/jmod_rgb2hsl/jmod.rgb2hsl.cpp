/* 
 * jmod.rgb2hsl (previously names tl.rgb2hsl)
 * External for Jamoma: cobvert RGB color values to HSL (hue, saturation, lightness or luminance)
 * By Trond Lossius, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */



#include "ext.h"				// Max Header
#include "ext_strings.h"		// String Functions
#include "commonsyms.h"			// Common symbols used by the Max 4.5 API
#include "ext_obex.h"			// Max Object Extensions (attributes) Header

typedef struct _rgb2hsl{		// Data structure for this object 
	t_object	ob;				// Must always be the first field; used by Max
	void		*obex;
	long		attr_mode;		// Attribute: lightness (0, default) or luminance (1)
	void		*outlet;		// Pointer to outlet. Need one for each outlet 
} t_rgb2hsl;

// Prototypes for methods: need a method for each incoming message
void *rgb2hsl_new(t_symbol *s, long argc, t_atom *argv);
void rgb2hsl_list(t_rgb2hsl *x, void *attr, long argc, t_atom *argv);
void rgb2hsl_assist(t_rgb2hsl *x, void *b, long msg, long arg, char *dst);
double min_val(double a, double b, double c);
double max_val(double a, double b, double c);



// Globals
t_class		*this_class;				// Required. Global pointing to this class 



/************************************************************************************/
// Main() Function

int main(void)
{	
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	// Define our class
	c = class_new("jmod.rgb2hsl",(method)rgb2hsl_new, (method)0L, (short)sizeof(t_rgb2hsl), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_rgb2hsl, obex));				

	// Make methods accessible for our class: 
	class_addmethod(c, (method)rgb2hsl_list,				"list",		A_GIMME,	0);
	class_addmethod(c, (method)rgb2hsl_assist,				"assist",	A_CANT,		0);
	class_addmethod(c, (method)object_obex_dumpout,			"dumpout",	A_CANT,		0);  
    class_addmethod(c, (method)object_obex_quickref,		"quickref", A_CANT,		0);

	// ATTRIBUTE: mode
	attr = attr_offset_new("mode", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_rgb2hsl, attr_mode));
	class_addattr(c, attr);	
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

void *rgb2hsl_new(t_symbol *s, long argc, t_atom *argv)
{
	t_rgb2hsl *x;
	
	x = (t_rgb2hsl *)object_alloc(this_class);	// create the new instance and return a pointer to it
	if(x){
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		x->outlet = outlet_new(x, 0);			// create the outlet
		
		x->attr_mode = 0;						// set default
		attr_args_process(x, argc, argv);		// handle attribute args
	}
	return (x);
}


/************************************************************************************/
// Methods bound to input/inlets


// list input (RGB value)
void rgb2hsl_list(t_rgb2hsl *x, void *attr, long argc, t_atom *argv)
{
	float R, G, B;
	
	float var_R, var_G, var_B;
	float var_Min, var_Max, del_Max, del_R, del_G, del_B;
	float H, S, L;
	atom hsl[3];
	
	if (argc<3) {
		error("jmod.rgb2hsl: invalid list format");
		return;
	}
	
	R = atom_getfloat(argv);
	G = atom_getfloat(argv+1);
	B = atom_getfloat(argv+2);
	

	var_R = ( (float)R / 255. );				// Where RGB values = 0 Ö 255
	var_G = ( (float)G / 255. );
	var_B = ( (float)B / 255. );

	var_Min = min_val( var_R, var_G, var_B );	// Min. value of RGB
	var_Max = max_val( var_R, var_G, var_B );	// Max. value of RGB
	del_Max = var_Max - var_Min;				// Delta RGB value

	// calculate lightness:
	L = ( var_Max + var_Min )* 0.5;

	if ( del_Max == 0. )						// This is a gray, no chroma...
	{
		H = 0.;									// HSL results = 0 Ö 1
		S = 0.;
	}
	else										// Chromatic data...
	{
		if ( L < 0.5 )
			S = del_Max / ( var_Max + var_Min );
		else           
			S = del_Max / ( 2. - var_Max - var_Min );

		del_R = ( ( ( var_Max - var_R ) / 6. ) + ( del_Max / 2. ) ) / del_Max;
		del_G = ( ( ( var_Max - var_G ) / 6. ) + ( del_Max / 2. ) ) / del_Max;
		del_B = ( ( ( var_Max - var_B ) / 6. ) + ( del_Max / 2. ) ) / del_Max;

		if      ( var_R == var_Max )	H = del_B - del_G;
		else if ( var_G == var_Max )	H = ( 1. / 3. ) + del_R - del_B;
		else if ( var_B == var_Max )	H = ( 2. / 3. ) + del_G - del_R;

		if ( H < 0. )	H += 1.;
		if ( H > 1. )	H -= 1.;
	}
	
	// mode 1: recalculate L as luminance
	if (x->attr_mode) {
		L = 0.299 * var_R + 0.587 * var_G + 0.114 * var_B;
	}
	
	atom_setfloat(hsl,	 H);
	atom_setfloat(hsl+1, S);
	atom_setfloat(hsl+2, L);
		
	outlet_anything(x->outlet, _sym_list, 3, hsl);
}



// Method for Assistance Messages
void rgb2hsl_assist(t_rgb2hsl *x, void *b, long msg, long arg, char *dst)	// Display assistance messages
{
	if(msg==1)
	{ 
		switch(arg)
		{
			case 0: sprintf(dst, "(list) RGB values");
			break;	
		}
	}
	else if(msg==2)
	{
		if (arg==0)
			sprintf(dst, "(list) HSL values");
		else
			sprintf(dst, "dumpout");
	}
}




/************************************************************************************/
// Methods called by other methods

double min_val(double a, double b, double c)
{
	double temp = a;
	if (b<a)	temp = b;
	if (c<temp)	temp = c;
	return temp;
}

double max_val(double a, double b, double c)
{
	double temp = a;
	if (b>a)	temp = b;
	if (c>temp)	temp = c;
	return temp;
}