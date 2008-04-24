/* 
 * Jamoma DataspaceLib: ColorDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ColorDataspace.h"

// Utility Functions

double hls_value(double n1, double n2, double hue)
{
	if(hue > 360.0) 
		hue -= 360.;
	if(hue < 0.0) 
		hue += 360.;
	if(hue < 60.) 
		return (n1+(n2-n1)*hue/60.);
	if(hue < 180.) 
		return n2;
	if(hue < 240.) 
		return (n1+(n2-n1)*(240-hue)/60.);
	return n1;
}



// Actual Colorspace Units

CMYUnit::CMYUnit()
	: DataspaceUnit("cmy")
{;}


CMYUnit::~CMYUnit()
{;}
		

void CMYUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 3;
	*(output+0) = 255 - atom_getfloat(inputAtoms+0);
	*(output+1) = 255 - atom_getfloat(inputAtoms+1);
	*(output+2) = 255 - atom_getfloat(inputAtoms+2);	
}


void CMYUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 3;	
	atom_setfloat(*outputAtoms+0, 255 - *(input+0));
	atom_setfloat(*outputAtoms+1, 255 - *(input+1));
	atom_setfloat(*outputAtoms+2, 255 - *(input+2));
}


/***********************************************************************************************/
HSLUnit::HSLUnit()
	: DataspaceUnit("hsl")
{;}


HSLUnit::~HSLUnit()
{;}
		
		
void HSLUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	long	h = atom_getlong(inputAtoms+0);
	long	s = atom_getlong(inputAtoms+1);
	long	l = atom_getlong(inputAtoms+2);
	long	red, green, blue;
	double	m1,m2,tr,tg,tb, hue, lightness, saturation;

	// scale to floating point... number range should be 360, 1, 1
	hue = (float)h;
	//hue = ((hue/255.)*360.);
	saturation = (float)s/100.0;
	lightness = (float)l/100.0;

	if (lightness <= 0.5) 
		m2 = lightness*(1.0+saturation); 
	else 
		m2 = lightness+saturation-lightness*saturation;
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
	
	*outputNumArgs = 3;
	*(output+0) = red;
	*(output+1) = green;
	*(output+2) = blue;	
}


void HSLUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	long	red = long(*(input+0));
	long	green = long(*(input+1));
	long	blue = long(*(input+2));
	long	hue, lightness, saturation;
	double	max,min,delta;
	double	r,g,b;
	double	H,L,S;
	
	// first thing, convert them to 0-1
	r = red/255.0;
	g = green/255.0;
	b = blue/255.0;
	max = r;
	if(max<g)
		max=g;
	if(max<b)
		max=b;
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
	hue = long(H);
	saturation = long(S*100.0);
	lightness = long(L*100.0);

	*outputNumArgs = 3;	
	atom_setfloat(*outputAtoms+0, hue);
	atom_setfloat(*outputAtoms+1, lightness);
	atom_setfloat(*outputAtoms+2, saturation);
}


/***********************************************************************************************/
HSVUnit::HSVUnit()
	: DataspaceUnit("hsv")
{;}


HSVUnit::~HSVUnit()
{;}
		
		
void HSVUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	long	hue = atom_getlong(inputAtoms+0);
	long	saturation = atom_getlong(inputAtoms+1);
	long	value = atom_getlong(inputAtoms+2);
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
	*outputNumArgs = 3;
	*(output+0) = red = (int)(tr*255.);
	*(output+1) = green = (int)(tg*255.);
	*(output+2) = blue = (int)(tb*255.);	
}


void HSVUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
    long    /*i, j, roubitez, pix, red, green, blue,*/ hue, saturation, value;
    double	y,h,s,v, r,g,b, r1,g1,b1; 
	long	red = long(*(input+0));
	long	green = long(*(input+1));
	long	blue = long(*(input+2));

	// first thing, convert them to 0-1
	r = red/255.0;
	g = green/255.0;
	b = blue/255.0;
	v = r;
	
	if(v<g)
		v=g;
	if(v<b)
		v=b;
	y = r;
	if(y>g)
		y=g;
	if(y>b)
		y=b;
	if(v != 0)
		s = (v-y)/v;
	else
		s = 0;
	if(s == 0){
		hue = 0;
		saturation = 0;
		value = (int)(v*100);
		goto setit;
	}		
	r1 = (v-r)/(v-y);
	g1 = (v-g)/(v-y);
	b1 = (v-b)/(v-y);

	if (r == v){
		if(g == y)
			h = 5.+b1;
		else
			h = 1.-g1;
	}
	else if(g == v){
		if(b == y)
			h = r1+1.;
		else
			h = 3.-b1;
	}
	else{
		if(r == y)
			h = 3.+g1;
		else
			h = 5.-r1;
	}
	
	// convert it all
	h = h * 60.; 
	if(h >= 360.)
		h = h-360.;
	hue = (int)h;					//hue = (int)((h/360.)*255.0);
	saturation = (int)(s*100.);		// was 0-1 from the start
	value = (int)(v*100.);			// it was 0-1 from the start

setit:
	*outputNumArgs = 3;	
	atom_setfloat(*outputAtoms+0, hue);
	atom_setfloat(*outputAtoms+1, saturation);
	atom_setfloat(*outputAtoms+2, value);
}


/***********************************************************************************************/
RGBUnit::RGBUnit()
	: DataspaceUnit("rgb")
{;}


RGBUnit::~RGBUnit()
{;}

		
void RGBUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 3;
	*(output+0) = atom_getfloat(inputAtoms+0);
	*(output+1) = atom_getfloat(inputAtoms+1);
	*(output+2) = atom_getfloat(inputAtoms+2);	
}


void RGBUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 3;
	atom_setfloat(*outputAtoms+0, *(input+0));
	atom_setfloat(*outputAtoms+1, *(input+1));
	atom_setfloat(*outputAtoms+2, *(input+2));
}


/***********************************************************************************************/
ColorDataspace::ColorDataspace()
	: DataspaceLib("color", "rgb")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new CMYUnit,		gensym("cmy"));
	registerUnit(new HSLUnit,		gensym("hsl"));
	registerUnit(new HSVUnit,		gensym("hsv"));
	registerUnit(new RGBUnit,		gensym("rgb"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


ColorDataspace::~ColorDataspace()
{
	;
}
