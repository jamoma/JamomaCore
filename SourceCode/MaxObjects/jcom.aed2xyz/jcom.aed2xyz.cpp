/* 
 * jcom.aed2xyz
 * External for Jamoma: conversion between SpatDIF-compliant xyz and aed coordinate systems
 * By Trond Lossius, © 2007
 * Based on code © 2006 Jan Schacher / ICST Zurich
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 *
 * History:
 *
 * 20071021: jcom.aed2xyz: ICST code ported and adopted to Jamoma
 * 20070905: icst.3Dcartopol.c released: Based on code from ICST ambisonics modules
 */ 

#include "jamoma.h"

const double rad2deg = 180.0 / 3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068;
const double deg2rad = 3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068 / 180.0;

typedef struct x					// Data structure for this object 
{
	Object		ob;					// Must always be the first field; used by Max
	void		*obex;				// Pointer to object extensions (for attributes)
	void 		*outlet;			// Pointer to outlet. need one for each outlet 
	Atom 		outlist[3];			// used for sending lists out	
}t_aed2xyz;



// Class Globals
t_class		*this_class;				// Required. Global pointing to this class


// Prototypes for methods: need a method for each incoming message
void *aed2xyz_new(void);									// object creation method  
void aed2xyz_bang(t_aed2xyz *x);							// method for "bang" message 
void aed2xyz_assist(t_aed2xyz *x, void *b, long m, long a, char *s); 	// assistance messages
void aed2xyz_list(t_aed2xyz *x, Symbol *msg, long argc, t_atom *argv);	// method for "list" message

	
/*********************************************************/
//Main() Function

int main(void)			//main receives a copy of the Max function macros table 
{
	t_class *c;
	
	common_symbols_init();

	// Define our class
	c = class_new("jcom.aed2xyz",(method)aed2xyz_new, (method)0L, (short)sizeof(t_aed2xyz), (method)0L, 0, 0);
	class_obexoffset_set(c,calcoffset(t_aed2xyz, obex));
	
	// Make methods available for our class:
	class_addmethod(c, (method)aed2xyz_bang,			"bang", 	0L);	
    class_addmethod(c, (method)aed2xyz_list,			"list", 	A_GIMME, 0L);
    class_addmethod(c, (method)aed2xyz_assist, 			"assist", 	A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", 	A_CANT,0);      
    class_addmethod(c, (method)object_obex_quickref, 	"quickref", A_CANT, 0);

	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;
	return 0;
}


/*********************************************************/
//Object Creation Function

void *aed2xyz_new(void)
{
	t_aed2xyz 	*x;								// Declare an object (based on our struct)

	x = (t_aed2xyz *)object_alloc(this_class);	// Create object, store pointer to it (get 1 inlet free)
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
void aed2xyz_assist(t_aed2xyz *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1){ 	// Inlets
		switch(arg){
			case 0: strcpy(dst, "(list) aed"); break;
		}
	}
	else if(msg==2){ // Outlets
		switch(arg){
			case 0: strcpy(dst, "(list) xyz"); break;
		}	
	}	
}


// LIST INPUT - calculate and output
void aed2xyz_list(t_aed2xyz *x, Symbol *msg, long argc, t_atom *argv)
{
	double a, e, d;
	
	if (argc=3) {
		a = (90. - atom_getfloat(argv)) * deg2rad;
		e = (atom_getfloat(argv+1) * deg2rad);
		d = atom_getfloat(argv+2);
	
		atom_setfloat(&x->outlist[0], cos(a) * cos(e) * d);
		atom_setfloat(&x->outlist[1], sin(a) * cos(e) * d);
		atom_setfloat(&x->outlist[2], sin(e) * d);
		
		aed2xyz_bang(x);
	}
	else
		error("jcom.aed2xyz: Invalid list content.");
}


// BANG - output
void aed2xyz_bang(t_aed2xyz *x)
{
		outlet_anything(x->outlet, _sym_list, 3, x->outlist);	// output the result
}





