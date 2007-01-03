/* 
 * jcom.equals (previously names tl.s==)
 * External for Jamoma: logical comparison of symbols
 * By Trond Lossius, Copyright © 2001
 * 20031227 modified for OSX compiling by jasch <jasch@kat.ch>
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"

typedef struct symbEqual
{
	t_object		ob;	
	long			rightSymbol;
	long			leftSymbol;
	void			*proxy;			// pointers to proxy inlet
	void			*out;			// pointer to outlet
} t_symbEqual;

// Prototypes
void symbEqual_anything(t_symbEqual *x, Symbol *s, short ac, Atom *av);
void symbEqual_assist(t_symbEqual *x, void *b, long msg, long arg, char *dst);
void *symbEqual_new(Symbol *s);
void symbEqual_free(t_symbEqual *x);

// Globals
void *symbEqual_class;


/************************************************************************************/
// Main() Function

int main(void)
{
    setup((t_messlist **)&symbEqual_class, (method)symbEqual_new, (method)symbEqual_free,(short)sizeof(t_symbEqual), 0L, A_DEFSYM, 0);				
	addmess((method)symbEqual_assist,		"assist",		A_CANT,0);
	addmess((method)symbEqual_anything,		"anything",		A_GIMME,0);
	return 0;
}


/************************************************************************************/
// Object Life

void *symbEqual_new(Symbol *s)
{
	t_symbEqual *x = (t_symbEqual *)newobject(symbEqual_class);
	x->rightSymbol = (long)s;			//Initialize
	x->proxy = proxy_new(x, 1, 0L);		//Create 2nd inlet
	x->out = intout(x);					//Create int outlet
	return (x);
}

void symbEqual_free(t_symbEqual *x)
{
	freeobject((t_object *)(x->proxy));
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void symbEqual_assist(t_symbEqual *x, void *b, long msg, long arg, char *dst)	// Display assistance messages
{
	if(msg==1){ 
		switch(arg){
			case 0: sprintf(dst, "Symbol: Compared to stored symbol"); break;
			case 1: sprintf(dst, "Symbol: Stored to be compared with left inlet"); break;
		}	
	}
	else if(msg==2)
		sprintf(dst, "1=true, 0=false");
}


// Receive symbols in any inlet
void symbEqual_anything(t_symbEqual *x, Symbol *s, short ac, Atom *av)
{
	long	flag;
	long	inlet = proxy_getinlet((t_object *)x);
	
	if(inlet == 1)
		x->rightSymbol = (long)s;
	else{
		x->leftSymbol = (long)s;
		flag = (x->leftSymbol == x->rightSymbol);
		outlet_int(x->out, flag);
	}
}
