/*
	jmod.sym.compare (previously named tl.s==)
	logical comparison of symbols
    Copyright (C) 2001	Trond Lossius

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
    
    Trond Lossius
    c/o Bergen senter for elektronisk kunst (BEK)
    C. Sundsgt. 55
    N-5007 Bergen
    Norway
    
    lossius@bek.no

	20031227 modified for OSX compiling by jasch <jasch@kat.ch>
	20050922 minor tweaks to enable compiling for Windows by Tim Place
*/

#include "ext.h"

typedef struct symbEqual
{
	struct object ob;
	long rightSymbol;
	long leftSymbol;
	void *proxy;		// pointers to proxy inlets
	long inletNumber;	// where proxy will put inlet number
	void *out;			// pointer to outlet
} t_symbEqual;

void *symbEqual_class;

void symbEqual_anything(t_symbEqual *x, Symbol *s, short ac, Atom *av);
void symbEqual_assist(t_symbEqual *x, void *b, long msg, long arg, char *dst);
void *symbEqual_new(Symbol *s);
void symbEqual_free(t_symbEqual *x);

int main(void)
/********************************************************************/
/*																	*/
/*	main: Called once the first time an object is created.			*/
/*	binds messages to methods (functions)							*/
/*																	*/
/********************************************************************/
{
    //setup((t_messlist **)&symbEqual_class, (method)symbEqual_new, (short)sizeof(t_symbEqual), 0L, A_DEFSYM, 0); 
    setup((t_messlist **)&symbEqual_class, (method)symbEqual_new,0L,(short)sizeof(t_symbEqual), 0L, A_DEFSYM, 0);
 					
	addmess((method)symbEqual_assist,		"assist",		A_CANT,0);
	addmess((method)symbEqual_anything,		"anything",		A_GIMME,0);
	return 0;
}

void symbEqual_anything(t_symbEqual *x, Symbol *s, short ac, Atom *av)
/********************************************************************/
/*																	*/
/*	Receive symbols in any inlet.									*/
/*	In right inlet: Store											*/
/*	In left inlet: Compare											*/
/*																	*/
/********************************************************************/
{
	long flag;
	
	if (x->inletNumber==1) {
		x->rightSymbol = (long)s;
	}
	else {
		x->leftSymbol = (long)s;
		flag = (x->leftSymbol == x->rightSymbol);
		outlet_int(x->out, flag);
	}
	x->inletNumber = 0;
}

void symbEqual_assist(t_symbEqual *x, void *b, long msg, long arg, char *dst)	// Display assistance messages
{
	if(msg==1){ 
	switch(arg){
		case 0: sprintf(dst, "Symbol: Compared to stored symbol");break;
		case 1: sprintf(dst, "Symbol: Stored to be compared with left inlet");break;
		}
	}
	else if(msg==2){
	sprintf(dst, "1=true, 0=false");
	}
}

void *symbEqual_new(Symbol *s)
/********************************************************************/
/*																	*/
/*	Create new instance												*/
/*																	*/
/********************************************************************/
{
	t_symbEqual *x;
	
	x = (t_symbEqual *)newobject(symbEqual_class);
	//Initialize
	x->rightSymbol = (long)s;
	x->inletNumber = 0;
	//Create extra inlet
	x->proxy = proxy_new(x,1L,&x->inletNumber);
	//Create int outlet
	x->out = intout(x);
	return (x);
}

void symbEqual_free(t_symbEqual *x)
/********************************************************************/
/*																	*/
/*	Free up memory if instance is deleted							*/
/*																	*/
/********************************************************************/
{
	/*
	
	SDK Manual states that proxies has to be expicitly freed.
	As the number of proxies are known to be 1 for this object
	and the proxy are part of the tl.s== structure, normal
	freeing procedures take care of this (I belive...).
	
	*/
}