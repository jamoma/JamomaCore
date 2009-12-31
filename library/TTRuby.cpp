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
	VALUE TTRubySetAttribute(VALUE self, VALUE attributeName, VALUE attributeValue);
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
	rb_define_method(c, "send",				TTRubyMethod(TTRubySendMessage), 2);	// send a message to the wrapped object
	rb_define_method(c, "set",				TTRubyMethod(TTRubySetAttribute), 2);	// set attribute value
	rb_define_method(c, "calculate",		TTRubyMethod(TTRubyCalculate), 1);
	
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


VALUE TTRubySetAttribute(VALUE self, VALUE attributeName, VALUE attributeValue)
{
	TTRubyInstance* instance = NULL;
	TTErr			err = kTTErrNone;
	VALUE			attributeNameStr = StringValue(attributeName);
	VALUE			attributeValueStr;
	TTValue			v;
	
	err = gTTRubyInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		instance = (TTRubyInstance*)TTPtr(v);
		if (instance) {
			int t = TYPE(attributeValue);

			v.clear();
			//cout << "the type of the attr arg is " << t << endl;
			switch (t) {
				case T_FLOAT:
					v.append(NUM2DBL(attributeValue));
					break;
				case T_FIXNUM:
					v.append((int)FIX2LONG(attributeValue));
					break;
				case T_BIGNUM:
					v.append((TTInt64)NUM2LL(attributeValue));
					break;
				case T_STRING:
					attributeValueStr = StringValue(attributeValue);
					v.append(TT(RSTRING(attributeValueStr)->ptr));
					break;
				case T_ARRAY:
					cout << "TTError: Array arguments for attributes not yet supported in Ruby" << endl;
					err = kTTErrGeneric;
					break;
				case T_OBJECT:
					cout << "TTError: Object arguments for attributes not yet supported in Ruby" << endl;
					err = kTTErrGeneric;
					break;
				default:
					cout << "TTError: Unknown type for arguments to attribute" << endl;
					err = kTTErrGeneric;
					break;
			}
			if (!err)
				err = instance->obj->setAttributeValue(TT(RSTRING(attributeNameStr)->ptr), v);
			if (err)
				cout << "TTRubySetAttribute: Error " << err << endl;
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

			err = instance->obj->calculate(fx, fy);			
			returnValue = rb_float_new(fy);
		}
	}
	return returnValue;
}



