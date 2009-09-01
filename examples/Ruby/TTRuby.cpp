// TTRuby : Lanuguage Bindings to Make the Jamoma Runtime accessible via Ruby
// Copyright © 2009, Timothy Place
// GNU LGPL

#include "TTFoundationAPI.h"
#include "ruby.h"

//
class TTRubyInstance {
	TTObjectPtr	obj;
};


// Prototypes
VALUE TTRubyInitialize(VALUE self, VALUE className);
VALUE TTRubySendMessage(VALUE self, VALUE messageName, VALUE args);


// Globals and Statics
VALUE		TTRuby_class;
TTHashPtr	gTTRubyInstances = NULL;


/*****************************************************************************************************/
// Class Definition

void Init_TTRuby()
{
	VALUE c;
	
	TTFoundationInit();
	
	c = rb_define_class("TTRuby", rb_cObject);
	
	rb_define_method(c, "initialize", TTRubyInitialize, 1);		// called to initialize a new object that has been created or cloned
	rb_define_method(c, "sendMessage", TTRubySendMessage, 2);	// send a message to the wrapped object
	
	TTRuby_class = c;
	
	gTTRubyInstances = new TTHash;
}


/*****************************************************************************************************/
// Life Cycle

// See pg 292 for an example of how to setup the message binding for this one
// VALUE TTRubyAlloc(VALUE ttruby_class)

VALUE TTRubyInitialize(VALUE self, VALUE className)
{	
	TTRubyInstance* instance = new TTRubyInstance;
	TTValue*		v = new TTValue(TTPtr(instance));
	TTValue			args;
	TTErr			err = kTTErrNone;
	VALUE			classNameStr = StringValue(className);
	
	args.clear();
	err = TTObjectInstantiate(TT(RSTRING(classNameStr)->ptr), &instance->obj, args);
	if (!err) {
		gTTRubyInstances->append(TTSymbolPtr(self), v);
		return self;
	}
	else
		return NULL
}

// VALUE TTRubyInitializeCopy(VALUE self, VALUE orig)

// See page 285 about wrapping and freeing structs


/*****************************************************************************************************/
// Methods

VALUE TTRubySendMessage(VALUE self, VALUE messageName, VALUE args)
{
	TTRubyInstance* instance = NULL;
	TTErr			err = kTTErrNone;
	VALUE			messageNameStr = StringValue(messageName);
	TTValue			v;
	
	err = gTTRubyInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		instance = TTPtr(v);
		if (instance) {
			v.clear();
			//TODO: somehow wrap args in v here
			err = instance->sendMessage(TT(RSTRING(classNameStr)->ptr), v);
		}
	}
}



