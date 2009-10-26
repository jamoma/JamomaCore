// TTRuby : Lanuguage Bindings to Make the Jamoma Runtime accessible via Ruby
// Copyright © 2009, Timothy Place
// GNU LGPL

#include "TTDSP.h"
#include "ruby.h"


//
class TTRubyInstance {
public:
	TTAudioObjectPtr	obj;
	
	TTRubyInstance()
	{
		obj = NULL;
	}
};


typedef VALUE (*TTRubyMethod)(...);
//#define TTRubyMethod

// Prototypes
extern "C" {
	void Init_TTRuby();
	VALUE TTRubyInitialize(VALUE self, VALUE className);
	VALUE TTRubySendMessage(VALUE self, VALUE messageName, VALUE args);
	VALUE TTRubyCalculate(VALUE self, VALUE x);
}


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
	
	rb_define_method(c, "initialize",		TTRubyMethod(TTRubyInitialize), 1);		// called to initialize a new object that has been created or cloned
	rb_define_method(c, "sendMessage",		TTRubyMethod(TTRubySendMessage), 2);	// send a message to the wrapped object
	rb_define_method(c, "calculate",		TTRubyMethod(TTRubyCalculate), 1);	// send a message to the wrapped object
	
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
	TTValue*		v = new TTValue;
	TTValue			args;
	TTErr			err = kTTErrNone;
	VALUE			classNameStr = StringValue(className);
	
	args.clear();
	err = TTObjectInstantiate(TT(RSTRING(classNameStr)->ptr), &instance->obj, args);
	if (!err) {
		v->setSize(1);
		v->set(0, TTPtr(instance));
		gTTRubyInstances->append(TTSymbolPtr(self), *v);
		return self;
	}
	else
		return NULL;
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
		instance = (TTRubyInstance*)TTPtr(v);
		if (instance) {
			v.clear();
			//TODO: somehow wrap args in v here
			err = instance->obj->sendMessage(TT(RSTRING(messageNameStr)->ptr), v);
		}
	}
}


VALUE TTRubyCalculate(VALUE self, VALUE x)
{
	TTRubyInstance* instance = NULL;
	TTErr			err = kTTErrNone;
	TTValue			v;
	VALUE			returnValue = rb_float_new(0.0);
	
	err = gTTRubyInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {			
			TTFloat64 fx = NUM2DBL(x);
			TTFloat64 fy = 0.0;

			//TODO: somehow wrap args in v here
			err = instance->obj->calculate(fx, fy);
			
			returnValue = rb_float_new(fy);
		}
	}
	return returnValue;
}



