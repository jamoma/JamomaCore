/* 
 * jcom.xyz2aed
 * External for Jamoma: conversion between SpatDIF-compliant xyz and aed coordinate systems
 * By Trond Lossius, © 2007
 * Based on code © 2006 Jan Schacher / ICST Zurich
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 *
 * History:
 *
 * 20071021: jcom.xyz2aed: ICST code ported and adopted to Jamoma
 * 20070905: icst.3Dcartopol.c released: Based on code from ICST ambisonics modules
 */ 

#include "Jamoma.h"

double deg2rad;
double rad2deg;

typedef struct x					// Data structure for this object 
{
	Object		ob;					// Must always be the first field; used by Max
	void		*obex;				// Pointer to object extensions (for attributes)
	void 		*outlet;			// Pointer to outlet. need one for each outlet 
	Atom 		outlist[3];			// used for sending lists out	
}t_xyz2aed;



// Class Globals
t_class		*this_class;				// Required. Global pointing to this class


// Prototypes for methods: need a method for each incoming message
void *xyz2aed_new(void);									// object creation method  
void xyz2aed_bang(t_xyz2aed *x);							// method for "bang" message 
void xyz2aed_assist(t_xyz2aed *x, void *b, long m, long a, char *s); 	// assistance messages
void xyz2aed_list(t_xyz2aed *x, Symbol *msg, long argc, t_atom *argv);	// method for "list" message

	
/*********************************************************/
//Main() Function

int main(void)			//main receives a copy of the Max function macros table 
{
	t_class *c;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.xyz2aed",(method)xyz2aed_new, (method)0L, (short)sizeof(t_xyz2aed), (method)0L, 0, 0);
	class_obexoffset_set(c,calcoffset(t_xyz2aed, obex));
	
	// Make methods available for our class:
	class_addmethod(c, (method)xyz2aed_bang,			"bang", 	0L);	
    class_addmethod(c, (method)xyz2aed_list,			"list", 	A_GIMME, 0L);
    class_addmethod(c, (method)xyz2aed_assist, 			"assist", 	A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", 	A_CANT,0);      
    class_addmethod(c, (method)object_obex_quickref, 	"quickref", A_CANT, 0);

	// Used for calculations:
	rad2deg = 180.0 / 3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068;
	deg2rad = 3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068 / 180.0;
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;
	return 0;
}


/*********************************************************/
//Object Creation Function

void *xyz2aed_new(void)
{
	t_xyz2aed 	*x;								// Declare an object (based on our struct)

	x = (t_xyz2aed *)object_alloc(this_class);	// Create object, store pointer to it (get 1 inlet free)
	if (x) {
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout
		x->outlet = outlet_new(x, 0);			// Create the outlet	
		
		// Initialize		
		atom_setfloat(&x->outlist[0], 0.);
		atom_setfloat(&x->outlist[1], 0.);
		atom_setfloat(&x->outlist[2], 0.);
	}	
	return(x);									// Must return a pointer to the new instance 
}


/*********************************************************/
//Bound to inlet Functions

// Method for Assistance Messages
void xyz2aed_assist(t_xyz2aed *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1){ 	// Inlets
		switch(arg){
			case 0: strcpy(dst, "(list) xyz"); break;
		}
	}
	else if(msg==2){ // Outlets
		switch(arg){
			case 0: strcpy(dst, "(list) aed"); break;
		}	
	}	
}


// LIST INPUT - calculate and output
void xyz2aed_list(t_xyz2aed *x, Symbol *msg, long argc, t_atom *argv)
{
	double xx, yy, zz, xxsqr_plus_yysqr;
	
	if (argc=3) {
		xx = atom_getfloat(argv);
		yy = atom_getfloat(argv+1);
		zz = atom_getfloat(argv+2);
		xxsqr_plus_yysqr = (xx * xx) + (yy * yy);
	
		atom_setfloat( &x->outlist[0], atan2(xx, yy) * rad2deg );
		atom_setfloat( &x->outlist[1], atan2(zz, (pow((xxsqr_plus_yysqr), 0.5))) * rad2deg );
		atom_setfloat( &x->outlist[2], pow((xxsqr_plus_yysqr + (zz * zz)), 0.5) );
		
		xyz2aed_bang(x);
	}
	else
		error("jcom.xyz2aed: Invalid list content.");
}


// BANG - output
void xyz2aed_bang(t_xyz2aed *x)
{
		outlet_anything(x->outlet, _sym_list, 3, x->outlist);	// output the result
}





