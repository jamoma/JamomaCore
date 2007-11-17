/* 
 * jcom.colorspace
 * External for Jamoma: colorspace conversion
 * By Tim Place, Copyright © 2002
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 *
 * History:
 *
 * Ported to Jamoma from tap.colorspace by T. Lossius - 10 October 2006
 * Updated for Max 4.5 / TapTools 2.0 - 2 July 2004
 * Initial version T.Place - 16 January 2002
 *
 * Conversion routines were from Luke Dubois' Percolate Nato externals:
 *
 * 242.colorspace -- does colorspace conversion on an input image.
 * by r. luke dubois (luke@music.columbia.edu),
 * computer music center, columbia university, 2001.
 *
 * most of the color conversion routines in this software are taken from rafael santos'
 * color image processing toolkit.  the copyright below cites the original author.
 *
 * objects and source are provided without warranty of any kind, express or implied.
 *
 * Copyright (C) 1996, Rafael Santos.
 * Developed at the Ejima Lab / Department of Artificial Intelligence,
 * Kyushu Institute of Technology.
 */ 


#include "Jamoma.h"

typedef struct x					// Data structure for this object 
{
	Object		cs_ob;				// Must always be the first field; used by Max
	void		*obex;				// Pointer to object extensions (for attributes)
	void 		*out1;				// Pointer to outlet. need one for each outlet 
	void		*out2;
	void		*out3;
	void		*inlets[2];			// proxy inlets
	t_symbol	*attr_mode;			// Attribute storage
	t_symbol	*attr_outputtype;
	long		attr_autopack;
	Atom 		outlist[4];			// used for sending lists out
	int 		val1, calc1;
	int			val2, calc2;
	int			val3, calc3;	
}t_cs;


// Class Globals
t_class		*this_class;				// Required. Global pointing to this class

t_symbol	*ps_no_transform, *ps_rgb2cmy, *ps_cmy2rgb, *ps_rgb2hsv, *ps_hsv2rgb,
			*ps_rgb2xyz, *ps_xyz2rgb, *ps_rgb2uvw, *ps_uvw2rgb, *ps_rgb2retinalcone,
			*ps_retinalcone2rgb, *ps_rgb2lab, *ps_lab2rgb, *ps_rgb2yiq, *ps_yiq2rgb,
			*ps_rgb2hls, *ps_hls2rgb, *ps_rgb2rgbcie, *ps_rgbcie2rgb,
			*ps_rgb2rgbsmpte, *ps_rgbsmpte2rgb, *ps_rgb2hsl, *ps_hsl2rgb;
t_symbol	*ps_split, *ps_packed;			


// Prototypes for methods: need a method for each incoming message
void *cs_new(Symbol *msg, long argc, Atom *argv);			// object creation method  
void cs_free(t_cs *x);
void cs_bang(t_cs *x);										// method for "bang" message 
void cs_float(t_cs *x, double value);				// method for "float" message
void cs_int(t_cs *x, long value);					// method for "int" message
void cs_assist(t_cs *x, void *b, long m, long a, char *s); 	// assistance messages
void cs_list(t_cs *x, Symbol *msg, long argc, Atom *argv);	// method for "list" message

void no_transform(t_cs *x);
void rgb2cmy (t_cs *x, int r, int g, int b);	
void cmy2rgb(t_cs *x, int c, int m, int y);
void rgb2hsv(t_cs *x, int red, int green, int blue);
void hsv2rgb(t_cs *x, int hue, int saturation, int value);
void rgb2xyz(t_cs *x, int r, int g, int b);
void xyz2rgb(t_cs *x, int xx, int xy, int xz);
void rgb2uvw(t_cs *x, int r, int g, int b);
void uvw2rgb(t_cs *x, int u, int v, int w);
void rgb2cone(t_cs *x, int r, int g, int b);
void cone2rgb(t_cs *x, int t1, int t2, int t3);
void rgb2lab(t_cs *x, int r, int g, int b);
void lab2rgb(t_cs *x, int l, int a, int b);
void rgb2yiq(t_cs *x, int r, int g, int b);
void yiq2rgb(t_cs *x, int y, int i, int q);
void rgb2hls(t_cs *x, int red, int green, int blue);
void hls2rgb(t_cs *x, int h, int l, int s);
void rgb2rgbcie(t_cs *x, int r, int g, int b);
void rgbcie2rgb(t_cs *x, int r, int g, int b);
void rgb2rgbsmpte(t_cs *x, int r, int g, int b);
void rgbsmpte2rgb(t_cs *x, int r, int g, int b);
void rgb2hsl(t_cs *x, int red, int green, int blue);
void hsl2rgb(t_cs *x, int h, int s, int l);

double hls_value(double n1,double n2,double hue);
void tristimulus_product(double *matrix,double *input,double *output);
double cbrt(double x);
	
/*********************************************************/
//Main() Function

int main(void)			//main receives a copy of the Max function macros table 
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.colorspace",(method)cs_new, (method)cs_free, (short)sizeof(t_cs), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c,calcoffset(t_cs, obex));
	
	// Make methods available for our class:
	class_addmethod(c, (method)cs_bang,					"bang", 0L);	
    class_addmethod(c, (method)cs_int, 					"int", A_LONG, 0L);		// Input as int
    class_addmethod(c, (method)cs_float, 				"float", A_FLOAT, 0L);	// Input as float
    class_addmethod(c, (method)cs_list,					"list", A_GIMME, 0L);
    class_addmethod(c, (method)cs_assist, 				"assist", A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", A_CANT,0);      
    class_addmethod(c, (method)object_obex_quickref, 	"quickref", A_CANT, 0);

	// ATTRIBUTE: mode
	attr = attr_offset_new("mode", _sym_symbol, attrflags,
		(method)0L,(method)0L, calcoffset(t_cs, attr_mode));
	class_addattr(c, attr);
	
	// ATTRIBUTE: outputtype
	attr = attr_offset_new("outputtype", _sym_symbol, attrflags,
		(method)0L,(method)0L, calcoffset(t_cs, attr_outputtype));
	class_addattr(c, attr);

	// ATTRIBUTE: autopack
	attr = attr_offset_new("autopack", _sym_long, attrflags,
		(method)0L,(method)0L, calcoffset(t_cs, attr_autopack));
	class_addattr(c, attr);

	// initialize class globals
	ps_no_transform		= gensym("no_transform");
	ps_rgb2cmy			= gensym("rgb2cmy");
	ps_cmy2rgb			= gensym("cmy2rgb");
	ps_rgb2hsv			= gensym("rgb2hsv");
	ps_hsv2rgb			= gensym("hsv2rgb");
	ps_rgb2xyz			= gensym("rgb2xyz");
	ps_xyz2rgb			= gensym("xyz2rgb");
	ps_rgb2uvw			= gensym("rgb2uvw");
	ps_uvw2rgb			= gensym("uvw2rgb");
	ps_rgb2retinalcone	= gensym("rgb2retinalcone");
	ps_retinalcone2rgb	= gensym("retinalcone2rgb");
	ps_rgb2lab			= gensym("rgb2lab");
	ps_lab2rgb			= gensym("lab2rgb");
	ps_rgb2yiq			= gensym("rgb2yiq");
	ps_yiq2rgb			= gensym("yiq2rgb");
	ps_rgb2hls			= gensym("rgb2hls");
	ps_hls2rgb			= gensym("hls2rgb");
	ps_rgb2rgbcie		= gensym("rgb2rgbcie");
	ps_rgbcie2rgb		= gensym("rgbcie2rgb");
	ps_rgb2rgbsmpte		= gensym("rgb2rgbsmpte");
	ps_rgbsmpte2rgb		= gensym("rgbsmpte2rgb");
	ps_rgb2hsl			= gensym("rgb2hsl");
	ps_hsl2rgb			= gensym("hsl2rgb");
	
	ps_split			= gensym("split");
	ps_packed			= gensym("packed");
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;
	return 0;
}


/*********************************************************/
//Object Creation Function

void *cs_new(Symbol *msg, long argc, Atom *argv)
{
	t_cs 	*x;								// Declare an object (based on our struct)

	x = (t_cs *)object_alloc(this_class);		// Create object, store pointer to it (get 1 inlet free)
	if (x) {
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout
		x->out3 = intout(x);
		x->out2 = intout(x);
		x->out1 = intout(x);				// Create the outlet
		x->inlets[0] = proxy_new(x, 2, 0L);	// Create inlet 3
		x->inlets[1] = proxy_new(x, 1, 0L);	// Create inlet 2

		// Set defaults
		x->attr_autopack = 1;
		x->attr_mode = ps_rgb2hsl;
		x->attr_outputtype = ps_split;
		x->val1 = x->val2 = x->val3 = 1;
		
		attr_args_process(x,argc,argv);		//handle attribute args			
	}	
	return(x);								// must return a pointer to the new instance 
}


void cs_free(t_cs *x)
{
	freeobject((t_object *)x->inlets[0]);
	freeobject((t_object *)x->inlets[1]);
}


/*********************************************************/
//Bound to inlet Functions

// Method for Assistance Messages
void cs_assist(t_cs *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1){ 	// Inlets
		switch(arg){
			case 0: strcpy(dst, "mode $1/int/bang/list"); break;
			case 1: strcpy(dst, "int"); break;
			case 2: strcpy(dst, "int"); break;
		}
	}
	else if(msg==2){ // Outlets
		switch(arg){
			case 0: strcpy(dst, "int or list"); break;
			case 1: strcpy(dst, "int"); break;
			case 2: strcpy(dst, "int"); break;
			case 3: strcpy(dst, "dumpout"); break;
		}	
	}	
}


// INTEGER INPUT
void cs_int(t_cs *x, long value)
{
	long inletnum = proxy_getinlet((object *)x);
	switch(inletnum){
		case 0: x->val1 = value; break;
		case 1: x->val2 = value; break;
		case 2: x->val3 = value; break;
	}
	if(x->attr_autopack)
		cs_bang(x);	
}


// FLOAT INPUT
void cs_float(t_cs *x, double value)
{
	long inletnum = proxy_getinlet((object *)x);
	
	switch(inletnum){
		case 0: x->val1 = (int)value; break;
		case 1: x->val2 = (int)value; break;
		case 2: x->val3 = (int)value; break;
	}
	if(x->attr_autopack)
		cs_bang(x);	
}


// LIST INPUT
void cs_list(t_cs *x, Symbol *msg, long argc, Atom *argv)
{

	x->val1 = argv->a_w.w_long; argv++;
	x->val2 = argv->a_w.w_long; argv++;
	x->val3 = argv->a_w.w_long; argv++;
	if(x->attr_autopack)
		cs_bang(x);	
}


// BANG - calculate and output
void cs_bang(t_cs *x)
{
	if(x->attr_mode == ps_rgb2hsl) rgb2hsl(x, x->val1, x->val2, x->val3); // first for speed
	else if(x->attr_mode == ps_hsl2rgb) hsl2rgb(x, x->val1, x->val2, x->val3);
	
	else if(x->attr_mode == ps_no_transform) no_transform(x);
	else if(x->attr_mode == ps_rgb2cmy) rgb2cmy(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_cmy2rgb) cmy2rgb(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_rgb2hsv) rgb2hsv(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_hsv2rgb) hsv2rgb(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_rgb2xyz) rgb2xyz(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_xyz2rgb) xyz2rgb(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_rgb2uvw) rgb2uvw(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_uvw2rgb) uvw2rgb(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_rgb2retinalcone) rgb2cone(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_retinalcone2rgb) cone2rgb(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_rgb2lab) rgb2lab(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_lab2rgb) lab2rgb(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_rgb2yiq) rgb2yiq(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_yiq2rgb) yiq2rgb(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_rgb2hls) rgb2hls(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_hls2rgb) hls2rgb(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_rgb2rgbcie) rgb2rgbcie(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_rgbcie2rgb) rgbcie2rgb(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_rgb2rgbsmpte) rgb2rgbsmpte(x, x->val1, x->val2, x->val3);
	else if(x->attr_mode == ps_rgbsmpte2rgb) rgbsmpte2rgb(x, x->val1, x->val2, x->val3);

	if(x->attr_outputtype == ps_packed){
		Atom temp_list[3];
		SETLONG(temp_list+0, x->calc1);
		SETLONG(temp_list+1, x->calc2);
		SETLONG(temp_list+2, x->calc3);
		outlet_list(x->out1, 0L, 3, temp_list);	// output the result
	}	
	else{
		outlet_int(x->out3, x->calc3);	// output the result	
		outlet_int(x->out2, x->calc2);	// output the result	
		outlet_int(x->out1, x->calc1);	// output the result
	}	
}


/*********************************************************/
// Conversion Functions

void no_transform(t_cs *x)
{
	x->calc1 = x->val1;
	x->calc2 = x->val2;
	x->calc3 = x->val3;
}

void rgb2cmy (t_cs *x, int r, int g, int b)
{
	x->calc1 = 255 - r;
	x->calc2 = 255 - g;
	x->calc3 = 255 - b;
}

void cmy2rgb(t_cs *x, int c, int m, int y)
{
	x->calc1 = 255 - c;
	x->calc2 = 255 - m;
	x->calc3 = 255 - y;
}

void rgb2hsv(t_cs *x, int red, int green, int blue)
{
    long           /*i, j, roubitez, pix, red, green, blue,*/ hue, saturation, value;
    double			y,h,s,v, r,g,b, r1,g1,b1;                             

				/* first thing, convert them to 0-1*/
				r = red/255.0;
				g = green/255.0;
				b = blue/255.0;
				v = r;
				if (v<g) v=g;
				if (v<b) v=b;
				y = r;
				if (y>g) y=g;
				if (y>b) y=b;
				if (v != 0) s = (v-y)/v;
				else { s = 0; }
				if (s == 0) {
					hue = 0;
					saturation = 0;
					value = (int)(v*100);
					goto setit;
				}				
				r1 = (v-r)/(v-y);
				g1 = (v-g)/(v-y);
				b1 = (v-b)/(v-y);
				  if (r == v){
				    if (g == y) h = 5.+b1;
				    else h = 1.-g1;
				    }
				  else if (g == v){
				    if (b == y) h = r1+1.;
				    else h = 3.-b1;
				    }
				  else{
				    if (r == y) h = 3.+g1;
				    else h = 5.-r1;
				    }
				// convert it all
				h = h * 60.; 
				if (h >= 360.) h = h-360.;
				hue = (int)h;	//hue = (int)((h/360.)*255.0);
				saturation = (int)(s*100.); /* was 0-1 from the start */
				value = (int)(v*100.); /* it was 0-1 from the start */

setit:
	x->calc1 = hue;
	x->calc2 = saturation;
	x->calc3 = value;
}

// HSV-2-RGB
void hsv2rgb(t_cs *x, int hue, int saturation, int value)
{
	long	red, green, blue;
	double	h,s,v,h1, a[7], tr, tg, tb, q, f;                             

	h = (float)hue;
	s = saturation/100.0;
	v = value/100.0;
	h1 = h;
	//q = trunc(h1);
#ifdef MAC_VERSION
	q = roundf(h1);
#else
	q = (long)(h1 + 0.5);
#endif
	//q = h1 + 0.49; // round
	f = h1-q; 
	a[1] = v;
	a[2] = v;
	a[3] = v*(1-(s*f));
	a[4] = v*(1-s);
	a[5] = a[4];
	a[6] = v*(1-(s*(1-f)));

	if (q > 4) q = q-4;
	else q = q+2;
	tr=a[(int)q];

	if (q > 4) q = q-4;
	else q = q+2;
	tb=a[(int)q];

	if (q > 4) q = q-4;
	else q = q+2;
	tg=a[(int)q];
				
	// output scaling
	x->calc1 = red = (int)(tr*255.);
	x->calc2 = green = (int)(tg*255.);
	x->calc3 = blue = (int)(tb*255.);
}


// RGB-2-XYZ
void rgb2xyz(t_cs *x, int r, int g, int b)
{
	long		xc, yc, zc;
	double input[3],output[3];
	double RnGnBn_XYZ[9]    = /* from Jain 71, almost same as Pratt, 66 */
	                        { 0.60700,  0.17400,  0.20100,   
	                          0.29900,  0.58700,  0.11400,  
	                          0.00000,  0.06600,  1.11700 }; 
	                          
	input[0] = r;
	input[1] = g;
	input[2] = b;
	tristimulus_product(RnGnBn_XYZ,input,output);				
	x->calc1 = xc=output[0]; 
	x->calc2 = yc=output[1]; 
	x->calc3 = zc=output[2]; 
}


// XYZ-2-RGB
void xyz2rgb(t_cs *x, int xx, int xy, int xz)
{
	long		xc, yc, zc;
	double input[3],output[3];
	double XYZ_RnGnBn[9]    = /* inverted from the above, almost same as Pratt, 67 */
	                        { 1.91036, -0.53375, -0.28929,   
	                         -0.98438,  1.99838, -0.02682, 
	                          0.05816, -0.11808,  0.89684 }; 
	                          
	input[0] = xx;
	input[1] = xy;
	input[2] = xz;
	tristimulus_product(XYZ_RnGnBn,input,output);
	x->calc1 = xc=output[0]; 
	x->calc2 = yc=output[1]; 
	x->calc3 = zc=output[2]; 
}


// RGB-2-UVW
void rgb2uvw(t_cs *x, int r, int g, int b)
{
	long	uc, vc, wc;
	double input[3],output[3];
	double RnGnBn_UVW[9]    =  /* matches both Jain, 71 and Pratt, 66 */
	                        { 0.40500,  0.11600,  0.13300,  
	                          0.29900,  0.58700,  0.11400,
	                          0.14500,  0.82700,  0.62700 };
            
	input[0] = r;
	input[1] = g;
	input[2] = b;
	tristimulus_product(RnGnBn_UVW,input,output);
	x->calc1 = uc=output[0]; 
	x->calc2 = vc=output[1]; 
	x->calc3 = wc=output[2]; 
}


// UVW-2-RGB
void uvw2rgb(t_cs *x, int u, int v, int w)
{
	long	red, green, blue;
	double input[3],output[3];
	double UVW_RnGnBn[9]    =  /* inverted from above, almost same as Pratt, 67 */
	                        { 2.43104,  0.33085, -0.57583, 
	                          -1.51794,  2.08365, -0.05686, 
	                          1.43993, -2.82480,  1.80306 };  

	input[0] = u;
	input[1] = v;
	input[2] = w;
	tristimulus_product(UVW_RnGnBn,input,output);
	x->calc1 = red=output[0]; 
	x->calc2 = green=output[1]; 
	x->calc3 = blue=output[2]; 
}


// RGB-2-RETINAL CONE
void rgb2cone(t_cs *x, int r, int g, int b)
{
	long	t1, t2, t3;
	double input[3],output[3];
	double RnGnBn_XYZ[9]    = /* from Jain 71, almost same as Pratt, 66 */
	                        { 0.60700,  0.17400,  0.20100,   
	                          0.29900,  0.58700,  0.11400,  
	                          0.00000,  0.06600,  1.11700 }; 
	double XYZ_RetinalCone[9] = /* from Pratt, 73 */
	                        { 0.00000,  1.00000,  0.00000,
	                         -0.46000,  1.35900,  0.10100,
	                          0.00000,  0.00000,  1.00000 };

	input[0] = r/255.;
	input[1] = g/255.;
	input[2] = b/255.;
	tristimulus_product(RnGnBn_XYZ,input,output);
	tristimulus_product(XYZ_RetinalCone,output,input);
	x->calc1 = t1=(int)(output[0]*255.); 
	x->calc2 = t2=(int)(output[1]*255.); 
	x->calc3 = t3=(int)(output[2]*255.); 
}


// RETINAL CONE-2-RGB
void cone2rgb(t_cs *x, int t1, int t2, int t3)
{
	long	red, green, blue;
	double input[3],output[3];
	double XYZ_RnGnBn[9]    = /* inverted from the above, almost same as Pratt, 67 */
	                        { 1.91036, -0.53375, -0.28929,   
	                         -0.98438,  1.99838, -0.02682, 
	                          0.05816, -0.11808,  0.89684 }; 
	double RetinalCone_XYZ[9] = /* inverted from above */
	                        { 2.95435, -2.17391,  0.21957,
				1.00000,  0.00000,  0.00000,	
				0.00000,  0.00000,  1.00000 };

	input[0] = t1/255.;
	input[1] = t2/255.;
	input[2] = t3/255.;
	tristimulus_product(RetinalCone_XYZ,input,output);
	tristimulus_product(XYZ_RnGnBn,output,input);
	x->calc1 = red=(int)(output[0]*255.); 
	x->calc2 = green=(int)(output[1]*255.); 
	x->calc3 = blue=(int)(output[2]*255.); 
}


// RGB-2-L*A*B
void rgb2lab(t_cs *x, int r, int g, int b)
{
	long	ls, as, bs;
	double X0 = 0.982, Y0 = 1.000, Z0 = 1.183;
	double X,Y,Z,Ls,As,Bs,Xn,Yn,Zn,X3,Y3,Z3;
	double input[3],output[3];
	double RnGnBn_XYZ[9]    =
	                        { 0.60700,  0.17400,  0.20100,   
	                          0.29900,  0.58700,  0.11400,  
	                          0.00000,  0.06600,  1.11700 }; 
            
	input[0] = r/255.;
	input[1] = r/255.;
	input[2] = r/255.;
	tristimulus_product(RnGnBn_XYZ,input,output);
	X=output[0]; 
	Y=output[1]; 
	Z=output[2]; 

	Yn = 100*Y/Y0;
	Ls = 25*cbrt(Yn)-16.;
	Xn = X/X0;  
	Yn = Y/Y0;  
	Zn = Z/Z0;  
	X3 = cbrt(Xn);
	Y3 = cbrt(Yn);
	Z3 = cbrt(Zn);

	As = 500*(X3-Y3);
	Bs = 200*(Y3-Z3);
				
	x->calc1 = ls = (int)(((Ls+16.)/116.04)*255.);  
	x->calc2 = as = (int)(((As+137.82)/234.)*255.);  
	x->calc3 = bs = (int)(((Bs+99.23)/232.97)*255.);
}


// L*A*B-2-RGB
void lab2rgb(t_cs *x, int ls, int as, int bs)
{
	long	red, green, blue;
	double ltemp,xtemp,ytemp,ztemp, l, a, b;
	double X0 = 0.982, Y0 = 1.000, Z0 = 1.183;
	double X,Y,Z;
	double input[3],output[3];
	double XYZ_RnGnBn[9]    = /* inverted from the above, almost same as Pratt, 67 */
	                        { 1.91036, -0.53375, -0.28929,   
	                         -0.98438,  1.99838, -0.02682, 
	                          0.05816, -0.11808,  0.89684 }; 
            
	l = (((ls/255.)*116.04)-16.);
	a = (((as/255.)*234.)-137.82);
	b = (((bs/255.)*232.97)-99.23);
	ltemp = (l+16.)/25.;
	xtemp = X0*pow((a/500.+cbrt(0.01)*ltemp),3.);
	ytemp = Y0*pow(ltemp,3.)/100.; /* ha-haa, Pratt forgot this /100. */
	ztemp = Z0*pow(cbrt(0.01)*ltemp-(b/200.),3.);

	input[0] = X = xtemp;
	input[1] = Y = ytemp;
	input[2] = Z = ztemp;
	tristimulus_product(XYZ_RnGnBn,input,output);
	x->calc1 = red=output[0]*255.; 
	x->calc2 = green=output[1]*255.; 
	x->calc3 = blue=output[2]*255.; 
}


// RGB-2-YIQ
void rgb2yiq(t_cs *x, int r, int g, int b)
{
	long	Y,I,Q;
	double input[3],output[3];
	double RnGnBn_YIQ[9]    =  /* matches Pratt 66 and Jain 71 */
	                        { 0.29900,  0.58700,  0.11400,   
	                          0.59600, -0.27400, -0.32200,
	                          0.21100, -0.52300,  0.31200 };
            
	input[0] = r;
	input[1] = g;
	input[2] = b;
	tristimulus_product(RnGnBn_YIQ,input,output);
	x->calc1 = Y=output[0]; 
	x->calc2 = I=output[1]; 
	x->calc3 = Q=output[2]; 
}


// YIQ-2-RGB
void yiq2rgb(t_cs *x, int y, int i, int q)
{
	long	red, green, blue;
	double input[3],output[3];
	double YIQ_RnGnBn[9]    =  /* inverted from above, almost same as Pratt, 67 */
	                        { 1.00000,  0.95617,  0.62143,   
	                          1.00000, -0.27269, -0.64681, 
	                          1.00000, -1.10374,  1.70062 } ; 
           
	input[0] = y;
	input[1] = i;
	input[2] = q;
	tristimulus_product(YIQ_RnGnBn,input,output);
	x->calc1 = red=output[0]; 
	x->calc2 = green=output[1]; 
	x->calc3 = blue=output[2]; 
}


// RGB-2-HLS
void rgb2hls(t_cs *x, int red, int green, int blue)
{
	long           /*i, j, roubitez, pix, */hue, lightness, saturation/*, red, green, blue*/;
	double max,min,delta;
	double r,g,b;
	double H,L,S;
	
	/* first thing, convert them to 0-1*/
	r = red/255.0;
	g = green/255.0;
	b = blue/255.0;
	max = r;
	if (max<g) max=g;
	if (max<b) max=b;
	min = r;
	if (min>g) min=g;
	if (min>b) min=b;
	L = (max+min)/2.0;
	if (max == min){
		S = 0;
		H = 0;
	}
	else{
		delta = max-min;
		if (L < 0.5) S = delta/(max+min);
		else S = delta/(2.0-max-min);
		if (r == max) H = (g-b)/delta;
		else if (g == max) H = 2.0+(b-r)/delta;
		else if (b == max) H = 4.0+(r-g)/delta;
	}
	H *= 60.; if (H < 0) H += 360.;   
//	hue = (int)((H/360.)*255.0);
	hue = (int)H;
	saturation = S*100.;
	lightness = L*100.;

	x->calc1 = hue;
	x->calc2 = lightness;
	x->calc3 = saturation;
}


// HLS-2-RGB
void hls2rgb(t_cs *x, int h, int l, int s)
{
	long            red, green, blue;
	double	m1,m2,tr,tg,tb, hue, lightness, saturation;

	// scale to floating point... number range should be 360, 1, 1
	hue = (float)h;
	//hue = ((hue/255.)*360.);
	saturation = (float)s/100.0;
	lightness = (float)l/100.0;

	if (lightness <= 0.5) m2 = lightness*(1.0+saturation); 
	else m2 = lightness+saturation-lightness*saturation;
	m1 = 2.0*lightness-m2;
	if (saturation == 0.0){
		tr = lightness;
		tg = lightness;
		tb = lightness;
	} 
	else{
		tr = hls_value(m1,m2,hue+120.);
		tg = hls_value(m1,m2,hue);
		tb = hls_value(m1,m2,hue-120.);
	}
	red = (int)(tr*255.);
	green = (int)(tg*255.);
	blue = (int)(tb*255.);
	
	x->calc1 = red;
	x->calc2 = green;
	x->calc3 = blue;
}

	
// RGB-2-RGBCIE
void rgb2rgbcie(t_cs *x, int r, int g, int b)
{
	double input[3],output[3];
	double RnGnBn_RcGcBc[9] = /* confirmed in Jain, 71 & Pratt, 66 */ 
	                        { 1.16675, -0.14580, -0.15136,  
	                          0.11377,  0.75243,  0.15874, 
	                         -0.00165,  0.05918,  1.12839 }; 

	input[0] = r;
	input[1] = g;
	input[2] = b;
	tristimulus_product(RnGnBn_RcGcBc,input,output);
	x->calc1 = r = output[0];
	x->calc2 = g = output[1];
	x->calc3 = b = output[2];
}


// RGBCIE-2-RGB
void rgbcie2rgb(t_cs *x, int r, int g, int b)
{
	double input[3],output[3];
	double RnGnBn_RcGcBc[9] = /* from inverse of RnGnB_RcGcBc, confirmed in Pratt, 66 */
	                        { 0.84200,  0.15600,  0.09100,  
	                         -0.12900,  1.32000, -0.20300, 
	                          0.00800, -0.06900,  0.89700 };

	input[0] = r;
	input[1] = g;
	input[2] = b;
	tristimulus_product(RnGnBn_RcGcBc,input,output);
	x->calc1 = r = output[0];
	x->calc2 = g = output[1];
	x->calc3 = b = output[2];
}


// RGB-2-RGBSMPTE
void rgb2rgbsmpte(t_cs *x, int r, int g, int b)
{
	double input[3],output[3];
	double RnGnBn_RsGsBs[9] = /* From Pratt, 66, unverified */ 
	                        { 1.60900, -0.44700, -0.10400,  
	                         -0.05800,  0.97700,  0.05100, 
	                         -0.02500, -0.03700,  1.16200 }; 

	input[0] = r;
	input[1] = g;
	input[2] = b;
	tristimulus_product(RnGnBn_RsGsBs,input,output);
	x->calc1 = r = output[0];
	x->calc2 = g = output[1];
	x->calc3 = b = output[2];
}


// RGBSMPTE-2-RGB
void rgbsmpte2rgb(t_cs *x, int r, int g, int b)
{
	double input[3],output[3];
	double RsGsBs_RnGnBn[9] = /* Inverted from above, expect some rounding errors */ 
	                        { 0.63268,  0.29113,  0.04385,
			      0.03679,  1.03877, -0.04230,
			      0.01478,  0.03934,  0.86018 };

	input[0] = r;
	input[1] = g;
	input[2] = b;
	tristimulus_product(RsGsBs_RnGnBn,input,output);
	x->calc1 = r = output[0];
	x->calc2 = g = output[1];
	x->calc3 = b = output[2];
}


// RGB-2-HSL
void rgb2hsl(t_cs *x, int red, int green, int blue)
{
	long           /*i, j, roubitez, pix, */hue, lightness, saturation/*, red, green, blue*/;
	double max,min,delta;
	double r,g,b;
	double H,L,S;
	
	/* first thing, convert them to 0-1*/
	r = red/255.0;
	g = green/255.0;
	b = blue/255.0;
	max = r;
	if (max<g) max=g;
	if (max<b) max=b;
	min = r;
	if (min>g) min=g;
	if (min>b) min=b;
	L = (max+min)/2.0;
	if (max == min){
		S = 0;
		H = 0;
	}
	else{
		delta = max-min;
		if (L < 0.5) S = delta/(max+min);
		else S = delta/(2.0-max-min);
		if (r == max) H = (g-b)/delta;
		else if (g == max) H = 2.0+(b-r)/delta;
		else if (b == max) H = 4.0+(r-g)/delta;
	}
	H *= 60.; if (H < 0) H += 360.;   
//	hue = (int)((H/360.)*255.0);
	hue = (int)H;
	saturation = S*100.;
	lightness = L*100.;

	x->calc1 = hue;
	x->calc2 = saturation;	
	x->calc3 = lightness;
}


// HSL-2-RGB
void hsl2rgb(t_cs *x, int h, int s, int l)
{
	long            red, green, blue;
	double	m1,m2,tr,tg,tb, hue, lightness, saturation;

	// scale to floating point... number range should be 360, 1, 1
	hue = (float)h;
	//hue = ((hue/255.)*360.);
	saturation = (float)s/100.0;
	lightness = (float)l/100.0;

	if (lightness <= 0.5) m2 = lightness*(1.0+saturation); 
	else m2 = lightness+saturation-lightness*saturation;
	m1 = 2.0*lightness-m2;
	if (saturation == 0.0){
		tr = lightness;
		tg = lightness;
		tb = lightness;
	} 
	else{
		tr = hls_value(m1,m2,hue+120.);
		tg = hls_value(m1,m2,hue);
		tb = hls_value(m1,m2,hue-120.);
	}
	red = (int)(tr*255.);
	green = (int)(tg*255.);
	blue = (int)(tb*255.);
	
	x->calc1 = red;
	x->calc2 = green;
	x->calc3 = blue;
}


/*********************************************************/
// Additional Functions

double hls_value(double n1,double n2,double hue)
{
	if (hue > 360.0) hue -= 360.;
	if (hue < 0.0) hue += 360.;
	if (hue < 60.) return (n1+(n2-n1)*hue/60.);
	if (hue < 180.) return n2;
	if (hue < 240.) return (n1+(n2-n1)*(240-hue)/60.);
	return n1;
}


// tristimulus product used for matrix conversions
void tristimulus_product(double *matrix,double *input,double *output)
{
	int f;
	for(f=0;f<3;f++)
		output[f] = input[0]*matrix[f*3+0]+input[1]*matrix[f*3+1]+input[2]*matrix[f*3+2];
}


// CBRT

//double cbrt(x)
//double x;
double cbrt(double x)
{
	int e, rem, sign;
	double z;
	//double frexp(), ldexp();
	short CBT2[] = {0x3ff4,0x28a2,0xf98d,0x728b};
	short CBT4[] = {0x3ff9,0x65fe,0xa53d,0x6e3d};
	double CBRT2 = *(double *)CBT2;
	double CBRT4 =*(double *)CBT4;

	if( x == 0 )
		return( 0.0 );
	if( x > 0 )
		sign = 1;
	else{
		sign = -1;
		x = -x;
	}

	z = x;
	/* extract power of 2, leaving
	 * mantissa between 0.5 and 1 */
	x = frexp( x, &e );

	/* Approximate cube root of number between .5 and 1,
	 * peak relative error = 6.36e-4 */
	x = (-1.9150215751434832257e-1  * x
	    + 6.9757045195246484393e-1) * x
	    + 4.9329566506409572486e-1;

	/* exponent divided by 3 */
	if( e >= 0 ){
		rem = e;
		e /= 3;
		rem -= 3*e;
		if( rem == 1 )
			x *= CBRT2;
		else if( rem == 2 )
			x *= CBRT4;
	}else{						// argument less than 1
		e = -e;
		rem = e;
		e /= 3;
		rem -= 3*e;
		if( rem == 1 )
			x /= CBRT2;
		else if( rem == 2 )
			x /= CBRT4;
		e = -e;
	}

	x = ldexp( x, e );			// multiply by power of 2

	x -= ( x - (z/(x*x)) )/3.0;	// Newton iteration...
	x -= ( x - (z/(x*x)) )/3.0;
	x -= ( x - (z/(x*x)) )/3.0;

	if( sign < 0 )
		x = -x;
	return(x);
}