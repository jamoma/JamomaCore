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
	*(output+0) = (255 - atom_getfloat(inputAtoms+0)) * inv255;
	*(output+1) = (255 - atom_getfloat(inputAtoms+1)) * inv255;
	*(output+2) = (255 - atom_getfloat(inputAtoms+2)) * inv255;	
}


void CMYUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 3;	
	atom_setfloat(*outputAtoms+0, 255 * (1 - *(input+0)));
	atom_setfloat(*outputAtoms+1, 255 * (1 - *(input+1)));
	atom_setfloat(*outputAtoms+2, 255 * (1 - *(input+2)));
}


/***********************************************************************************************/
HSLUnit::HSLUnit()
	: DataspaceUnit("hsl")
{;}


HSLUnit::~HSLUnit()
{;}
		
		
void HSLUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	double	h = atom_getfloat(inputAtoms+0);
	double	s = atom_getfloat(inputAtoms+1);
	double	l = atom_getfloat(inputAtoms+2);
	double	red, green, blue;
	double	m1, m2, hue, lightness, saturation;

	// scale to floating point... number range should be 360, 1, 1
	hue = h;
	saturation = s/100.0;
	lightness = l/100.0;

	if(lightness <= 0.5) 
		m2 = lightness*(1.0+saturation); 
	else 
		m2 = lightness+saturation-lightness*saturation;
	
	m1 = 2.0 * lightness-m2;
	if(saturation == 0.0){
		red = lightness;
		green = lightness;
		blue = lightness;
	} 
	else{
		red = hls_value(m1, m2, hue+120.0);
		green = hls_value(m1, m2, hue);
		blue = hls_value(m1, m2, hue-120.0);
	}
	
	*outputNumArgs = 3;
	*(output+0) = red;
	*(output+1) = green;
	*(output+2) = blue;	
}


void HSLUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	double	r = (*(input+0));
	double	g = (*(input+1));
	double	b = (*(input+2));
	double	hue, lightness, saturation;
	double	max,min,delta;
	double	H,L,S;
	
	max = r;
	if(max<g)
		max=g;
	if(max<b)
		max=b;
	
	min = r;
	if(min>g)
		min=g;
	if(min>b)
		min=b;
	
	L = (max+min)/2.0;
	if(max == min){
		S = 0;
		H = 0;
	}
	else{
		delta = max-min;
		if(L < 0.5)
			S = delta/(max+min);
		else 
			S = delta/(2.0-max-min);
		if(r == max)
			H = (g-b)/delta;
		else if(g == max)
			H = 2.0+(b-r)/delta;
		else if(b == max) 
			H = 4.0+(r-g)/delta;
	}
	
	H *= 60.0; 
	if(H < 0) 
		H += 360.0;
	
	hue = H;
	saturation = S * 100.0;
	lightness = L * 100.0;

	*outputNumArgs = 3;	
	atom_setfloat(*outputAtoms+0, hue);
	atom_setfloat(*outputAtoms+1, saturation);
	atom_setfloat(*outputAtoms+2, lightness);
}


/***********************************************************************************************

Code for RGB <-> HSV convertion is based on source code provided by Marcelo Gattass:
http://www.tecgraf.puc-rio.br/~mgattass/color/ColorIndex.html
Last retrieved 2009-07-30

License:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/


HSVUnit::HSVUnit()
	: DataspaceUnit("hsv")
{;}


HSVUnit::~HSVUnit()
{;}
		
		
void HSVUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	double	h = atom_getfloat(inputAtoms+0)/360.;
	double	s = atom_getfloat(inputAtoms+1)/100.;
	double	v = atom_getfloat(inputAtoms+2)/100.;
	double	r, g, b;
	//double	h1, a[7], q, f;                             

	if ( s == 0 )
	{
		r = v;
		g = v;
		b = v;
	}
	else
	{
		double var_h = h * 6;
		double var_i = floor( var_h );
		double var_1 = v * ( 1 - s );
		double var_2 = v * ( 1 - s * ( var_h - var_i ) );
		double var_3 = v * ( 1 - s * ( 1 - ( var_h - var_i ) ) );

		if      ( var_i == 0 ) { r = v     ; g = var_3 ; b = var_1; }
		else if ( var_i == 1 ) { r = var_2 ; g = v     ; b = var_1; }
		else if ( var_i == 2 ) { r = var_1 ; g = v     ; b = var_3; }
		else if ( var_i == 3 ) { r = var_1 ; g = var_2 ; b = v;     }
		else if ( var_i == 4 ) { r = var_3 ; g = var_1 ; b = v;     }
		else                   { r = v     ; g = var_1 ; b = var_2; }
	}
				
	*outputNumArgs = 3;
	*(output+0) = r;
	*(output+1) = g;
	*(output+2) = b;	
}


void HSVUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	double r = *(input+0);
	double g = *(input+1);
	double b = *(input+2);

	double h,s,v;

	double var_Min;
	double var_Max;
	double del_Max;

	//Min. value of RGB
	var_Min = r;
	if (g<var_Min) var_Min = g;
	if (b<var_Min) var_Min = b;
		
	//Max. value of RGB
	var_Max = r;
	if (g>var_Max) var_Max = g;
	if (b>var_Max) var_Max = b;
	
	//Delta RGB value
	del_Max = var_Max - var_Min;

	v = var_Max;

	if ( del_Max == 0 )
	{
	   h = 0;
	   s = 0;
	}
	else
	{
	   double del_R = ( ( ( var_Max - r ) / 6 ) + ( del_Max / 2 ) ) / del_Max;
	   double del_G = ( ( ( var_Max - g ) / 6 ) + ( del_Max / 2 ) ) / del_Max;
	   double del_B = ( ( ( var_Max - b ) / 6 ) + ( del_Max / 2 ) ) / del_Max;

	   s = del_Max / var_Max;

	   if      ( r == var_Max ) h = del_B - del_G;
	   else if ( g == var_Max ) h = ( 1 / 3 ) + del_R - del_B;
	   else if ( g == var_Max ) h = ( 2 / 3 ) + del_G - del_R;

	   if ( h < 0 ) h += 1;
	   if ( h > 1 ) h -= 1;
	}

	*outputNumArgs = 3;	
	atom_setfloat(*outputAtoms+0, h*360);
	atom_setfloat(*outputAtoms+1, s*100);
	atom_setfloat(*outputAtoms+2, v*100);


	/*
    double  hue, saturation, value;
	double  min, max;   // y, v
    double	y,h,s,v, r,g,b, r1,g1,b1; 
	
	r = *(input+0);
	g = *(input+1);
	b = *(input+2);

	// Find max color
	max = r;	
	if(max<g)
		max=g;
	if(max<b)
		max=b;

	// Find min color
	min = r;
	if(min>g)
		min=g;
	if(min>b)
		min=b;

	if(max != 0)
		s = (max-min)/v;
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
	hue = h;					//hue = (int)((h/360.)*255.0);
	saturation = (s*100.);		// was 0-1 from the start
	value = (v*100.);			// it was 0-1 from the start

setit:
	*outputNumArgs = 3;	
	atom_setfloat(*outputAtoms+0, hue);
	atom_setfloat(*outputAtoms+1, saturation);
	atom_setfloat(*outputAtoms+2, value);
	*/
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
RGB8Unit::RGB8Unit()
	: DataspaceUnit("rgb8")
{;}


RGB8Unit::~RGB8Unit()
{;}

		
void RGB8Unit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 3;
	
	*(output+0) = atom_getfloat(inputAtoms+0)*inv255;
	*(output+1) = atom_getfloat(inputAtoms+1)*inv255;
	*(output+2) = atom_getfloat(inputAtoms+2)*inv255;	
}


void RGB8Unit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 3;
	
	atom_setfloat(*outputAtoms+0, *(input+0)*255);
	atom_setfloat(*outputAtoms+1, *(input+1)*255);
	atom_setfloat(*outputAtoms+2, *(input+2)*255);
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
	registerUnit(new RGB8Unit,		gensym("rgb8"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


ColorDataspace::~ColorDataspace()
{
	;
}
