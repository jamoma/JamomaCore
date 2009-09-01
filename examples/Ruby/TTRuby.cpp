// TTRuby : Lanuguage Bindings to Make the Jamoma Runtime accessible via Ruby
// Copyright © 2009, Timothy Place
// GNU LGPL

#include "ruby.h"


// Prototypes
VALUE TTRubyInitialize(VALUE self, VALUE className);
VALUE TTRubySendMessage(VALUE self, VALUE messageName, VALUE args);


// Globals and Statics
VALUE TTRuby_class;


/*****************************************************************************************************/
// Class Definition

void Init_TTRuby()
{
	VALUE c = rb_define_class("TTRuby", rb_cObject);
	
	rb_define_method(c, "initialize", TTRubyInitialize, 1);		// called to initialize a new object that has been created or cloned
	rb_define_method(c, "sendMessage", TTRubySendMessage, 2);	// send a message to the wrapped object
	
	TTRuby_class = c;
}


/*****************************************************************************************************/
// Life Cycle

VALUE TTRubyInitialize(VALUE self, VALUE className)
{
	;
}


/*****************************************************************************************************/
// Methods

VALUE TTRubySendMessage(VALUE self, VALUE messageName, VALUE args)
{
	;
}



