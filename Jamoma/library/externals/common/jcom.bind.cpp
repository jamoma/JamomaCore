/* 
	jcom.bind
	shared code used by the jamoma core externals
	By Trond Lossius, Copyright © 2006
	
	Based on code from Pd. Pd is licensed according to
	the "Standard Improved BSD License":
	
	<quote>

	The software (Pd) is copyrighted by Miller Puckette and others.  The following
	terms (the "Standard Improved BSD License") apply to all files associated with
	the software unless explicitly disclaimed in individual files:

	Redistribution and use in source and binary forms, with or without
	modification, are permitted provided that the following conditions are
	met:

	1. Redistributions of source code must retain the above copyright
	   notice, this list of conditions and the following disclaimer.
	2. Redistributions in binary form must reproduce the above  
	   copyright notice, this list of conditions and the following 
	   disclaimer in the documentation and/or other materials provided
	   with the distribution.
	3. The name of the author may not be used to endorse or promote
	   products derived from this software without specific prior 
	   written permission.

	THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY
	EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
	THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
	PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR
	BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
	EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
	TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,   
	DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
	ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
	LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
	IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
	THE POSSIBILITY OF SUCH DAMAGE.
	
	</quote>
 */

/* deal with several objects bound to the same symbol.  If more than one, we
actually bind a collection object to the symbol, which forwards messages sent
to the symbol. */


#include "ext.h"				// Max Header
#include "ext_obex.h"			// Max Object Extensions (attributes) Header
#include "commonsyms.h"			// Common symbols used by the Max 4.5 API
#include "jcom.core.h"

#pragma mark -
#pragma mark Globals/Init/Etc.


t_object	*bindlist_freelist;
t_class		bindlist_class;
t_messlist	bindlist_messlist[7];

typedef struct _bindelem
{
    t_object	*obj;				// REQUIRED: Our object
    struct		_bindelem *next;	// Pointer to next element in linked list
} t_bindelem;

typedef struct _bindlist
{
    t_object	*obj;				// Pointer to object
    t_bindelem	*list;				// Pointer to next element in linked list
} t_bindlist;

// Prototypes for methods
void bindlist_bang(t_bindlist *x);
void bindlist_int(t_bindlist *x, long value);
void bindlist_float(t_bindlist *x, double value);
void bindlist_symbol(t_bindlist *x, t_symbol *msg, short argc, t_atom *argv);
void bindlist_list(t_bindlist *x, t_symbol *msg, short argc, t_atom *argv);

void jcom_bindlist_main(void);
void *bindlist_new(t_symbol *s);
void bindlist_free(t_bindlist *x);
void *bindlist_bind(t_object *x, t_symbol *s);
void bindlist_unbind(t_object *x, t_symbol *s);


// Globals
//t_class 	*bindlist_class;


// The equivalent of a main method
//
// jcom.bindlist is a "hidden" object, only existing behind the scene.
// If several different objects are to be able to bind to the same symbol,
// we will have to call this function at Max startup time, either calling it from
// jcom.meter~, or introducing some other file into the max-startup folder.
//
// For the time being it is called from jcom.receive main().

void jcom_bindlist_main(void)
{
	post("jcom.bindlist_main: entering");
    //t_class *c;
	
	// Initialize Globals
	common_symbols_init();
	
	/*
 	// Define our class
 	c = class_new("jcom.bindlist",(method)bindlist_new, (method)bindlist_free, (short)sizeof(t_bindlist), (method)0L, A_CANT, 0);
 
 	// Make methods accessible for our class:
 	class_addmethod(c, (method)bindlist_bang,				"bang",			0L,	0L);
 	class_addmethod(c, (method)bindlist_int,				"int",			A_DEFLONG,	0L);
 	class_addmethod(c, (method)bindlist_float,				"float",		A_DEFFLOAT,	0L);
  	class_addmethod(c, (method)bindlist_list,				"list",			A_GIMME, 0L);
 	class_addmethod(c, (method)bindlist_symbol,				"anything",		A_GIMME, 0L);
 
 	class_register(CLASS_NOBOX, c);
	bindlist_class = c;
 	post("jcom.bindlist_main: leaving");
	//return 0;
	
	*/
	
	// I am now attempting to set the object up in the same way as xcoll_new from MaxSDK
	// although it looks ridicoluous...
	bindlist_class.c_sym = _sym_nothing;
	bindlist_class.c_freelist = &bindlist_freelist;
	bindlist_class.c_freefun = (method)bindlist_free;
	bindlist_class.c_size = sizeof(t_bindlist);
	bindlist_class.c_tiny = 0;
	bindlist_class.c_noinlet = 1;
	
	bindlist_messlist[0].m_sym = (t_symbol *)&bindlist_class;
	bindlist_messlist[1].m_sym = gensym("bang");
	bindlist_messlist[1].m_fun = (method)bindlist_bang;
	bindlist_messlist[1].m_type[0] = A_CANT;
	bindlist_messlist[1].m_type[1] = 0;

	bindlist_messlist[2].m_sym = gensym("int");
	bindlist_messlist[2].m_fun = (method)bindlist_int;
	bindlist_messlist[2].m_type[0] = A_LONG;
	bindlist_messlist[2].m_type[1] = 0;
	
	bindlist_messlist[3].m_sym = gensym("edsave");
	bindlist_messlist[3].m_fun = (method)bindlist_float;
	bindlist_messlist[3].m_type[0] = A_FLOAT;
	bindlist_messlist[3].m_type[1] = 0;

	bindlist_messlist[4].m_sym = gensym("list");
	bindlist_messlist[4].m_fun = (method)bindlist_list;
	bindlist_messlist[4].m_type[0] = A_GIMME;
	bindlist_messlist[4].m_type[1] = 0;

	bindlist_messlist[5].m_sym = gensym("anything");
	bindlist_messlist[5].m_fun = (method)bindlist_symbol;
	bindlist_messlist[5].m_type[0] = A_GIMME;
	bindlist_messlist[5].m_type[1] = 0;
	
	bindlist_messlist[6].m_sym = 0;
	

	post("jcom.bindlist_main: leaving");
}


/************************************************************************************/
// Object Life - jcom.bindlist is a virtual external
// for each symbol only one instance will exist at any time

// currently not used
void *bindlist_new(t_symbol *s)
{
	post("bindlist_new: entering");
    t_bindlist *x;
	
	x = (t_bindlist *)newobject(s);
	
	
    return (x);
}

void bindlist_free(t_bindlist *x)
{
	short size = sizeof(t_bindlist);
	freebytes(x,size);
}



/************************************************************************************/
// Methods bound to input/inlets for invisible object

// BANG INPUT
void bindlist_bang(t_bindlist *x)
{
	t_bindelem *e;
	
	post("bindlist_bang");
	for (e = x->list; e; e=e->next)
		object_method_typed(e->obj, _sym_bang, 0, 0L, NULL);
}


// INT INPUT
void bindlist_int(t_bindlist *x, long value)
{	
	t_atom argv;
	t_bindelem *e;
	
	atom_setlong(&argv, value);
	post("bindlist_int");
	for (e = x->list; e; e=e->next)
		object_method_typed(e->obj, _sym_int, 1, &argv, NULL);
}


// FLOAT INPUT
void bindlist_float(t_bindlist *x, double value)
{
	t_atom argv;
	t_bindelem *e;
	
	post("bindlist_float");
	atom_setfloat(&argv, value);
	for (e = x->list; e; e=e->next)
		object_method_typed(e->obj, _sym_float, 1, &argv, NULL);
}


// SYMBOL INPUT
void bindlist_symbol(t_bindlist *x, t_symbol *msg, short argc, t_atom *argv)
{
	t_bindelem *e;
	
	post("bindlist_symbol");
	for (e = x->list; e; e=e->next)
		object_method_typed(e->obj, msg, argc, argv, NULL);
}


// LIST INPUT 
void bindlist_list(t_bindlist *x, t_symbol *msg, short argc, t_atom *argv)
{
	t_bindelem *e;
	
	post("bindlist_list");
	for (e = x->list; e; e=e->next)
		object_method_typed(e->obj, msg, argc, argv, NULL);
}


/************************************************************************************/
// Create and release bindings



void *bindlist_bind(t_object *x, t_symbol *s)
{
	t_bindlist *b;

	post(" ");
	post("***bindlist_bind");
	// The symbol exists, and is bound to something
	if (s != _sym_nothing && s->s_thing) {
		// but it is not bound to jcom.bindlist
		if (ob_messlist(s->s_thing) != bindlist_messlist) {
			error("jcom.bindlist: name %s in use",s->s_name);
			return (0);
		} else {
		// The symbol is currently pointing to jcom.bindlist
			post("bindlist_bind: The symbol is currently pointing to bindlist_class");
            b = (t_bindlist *)s->s_thing;
            t_bindelem *e = (t_bindelem *)getbytes(sizeof(t_bindelem));
			e->next = b->list;
            e->obj = x;
            b->list = e;
			post("x pointer = %ld", (long)x);
			post("b pointer = %ld", (long)b);
			post("e pointer = %ld", (long)e);
			post("b->list pointer = %ld", (long)b->list);
			post("e->obj pointer = %ld", (long)e->obj);
			post("e->next pointer = %ld", (long)e->next);
			post("s_thing pointer = %ld", (long)s->s_thing);
		}
	} else {
		post("The symbol wasn't used beforehand");
			
		b = (t_bindlist *)newobject(bindlist_messlist);
		t_bindelem *e = (t_bindelem *)getbytes(sizeof(t_bindelem));
		b->list = e;
		e->obj = x;
		e->next = 0;
		s->s_thing = (t_object *)b;
		post("x pointer = %ld", (long)x);
		post("b pointer = %ld", (long)b);
		post("e pointer = %ld", (long)e);
		post("b->list pointer = %ld", (long)b->list);
		post("e->obj pointer = %ld", (long)e->obj);
		post("e->next pointer = %ld", (long)e->next);
		post("s_thing pointer = %ld", (long)s->s_thing);
	}
	return b;
}

void bindlist_unbind(t_object *x, t_symbol *s)
{
	t_bindlist *b;
	t_bindelem *e, *e2;


	post(" ");
	post("---bindlist_unbind: entering");
	// The symbol exists, and is bound to something
	if (s != _sym_nothing && s->s_thing)
	{
		post("The symbol %s exists, and is bound to something", s->s_name);
		if (ob_messlist(s->s_thing) != bindlist_messlist)
		{   
			post("bindlist_unbind: symbol %s not bound to jcom.bindlist", s->s_name);
			error("%s: couldn't unbind", s->s_name);
			return;
		}
		else
		{
			post("bindlist_unbind: symbol %s bound to jcom.bindlist", s->s_name);
			b = (t_bindlist *)s->s_thing;
			e = b->list;
			if (e->next == 0)
			{
				post("This is the only instance left bound to %s", s->s_name);
				s->s_thing = 0;
				bindlist_free(b);
				freebytes(e, sizeof(t_bindelem));
			}
			else
			{	
				post("Other instances using %s still remains", s->s_name);
				post("x pointer = %ld", (long)x);
				post("traversing searching for x");

				post("checking beginning of linked list");
				e = b->list;
				if (e->obj == x)
				{
					post("gotcha");
					post("resetting b->list to %ld", (long)e->next);
					b->list = e->next;
					post("freeing %ld", (long)e);
					freebytes(e, sizeof(t_bindelem));
					return;
				}
				post("--- nope");
				
				// traversing the rest of the list
				for (e = b->list; e2 = e->next; e = e2)
				{
					post("e pointer = %ld", (long)e);
					post("e->obj pointer = %ld", (long)e->obj);
					post("e->next pointer = %ld", (long)e->next);
					post("e2 pointer = %ld", (long)e2);
					post("e2->obj pointer = %ld", (long)e2->obj);
					post("e2->next pointer = %ld", (long)e2->next);
					post("s_thing pointer = %ld", (long)s->s_thing);	
					
					if (e2->obj == x)
					{
						post("gotcha");
						e->next = e2->next;
						post("resetting e->next = e2->next = %ld", (long)e->next);
						post("freeing %ld", (long)e2);
						freebytes(e2, sizeof(t_bindelem));
						break;
					}
					post("--- nope");
				}
			}
		}
	}
	else
	{
		error("%s: couldn't unbind", s->s_name);
	}
}