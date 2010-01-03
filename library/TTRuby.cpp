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
	VALUE TTRubySendMessage(int argc, VALUE* argv, VALUE self);
	VALUE TTRubySetAttribute(VALUE self, VALUE attributeName, VALUE attributeValue);
	VALUE TTRubyGetAttribute(VALUE self, VALUE attributeName);
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
	rb_define_method(c, "send",				TTRubyMethod(TTRubySendMessage), -1);	// send a message to the wrapped object
	rb_define_method(c, "set",				TTRubyMethod(TTRubySetAttribute), 2);	// set attribute value
	rb_define_method(c, "get",				TTRubyMethod(TTRubyGetAttribute), 1);	// get attribute value
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

VALUE TTRubySendMessage(int argc, VALUE* argv, VALUE self)
{
	TTRubyInstance* instance = NULL;
	TTErr			err = kTTErrNone;
	VALUE			messageNameStr;
	VALUE			messageArgStr;
	TTValue			v;
	
	if (argc < 1) {
		cout << "ERROR -- TTRuby.send requires at least 1 argument (the name of the message to send)" << endl;
		goto bye;
	}
	
	messageNameStr = StringValue(argv[0]);	
	err = gTTRubyInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		instance = (TTRubyInstance*)TTPtr(v);
		if (instance) {
			if (argc == 1) {		// no arguments...
				err = instance->obj->sendMessage(TT(RSTRING(messageNameStr)->ptr));
			}
			else {					// we have arguments...
				v.clear();
				
				for (int i=1; i<argc; i++) {
					int t = TYPE(argv[i]);
					
					cout << "the type of the message arg is " << t << endl;
					switch (t) {
						case T_FLOAT:
							v.append(NUM2DBL(argv[i]));
							break;
						case T_FIXNUM:
							v.append((int)FIX2LONG(argv[i]));
							break;
						case T_BIGNUM:
							v.append((TTInt64)NUM2LL(argv[i]));
							break;
						case T_STRING:
							messageArgStr = StringValue(argv[i]);
							v.append(TT(RSTRING(messageArgStr)->ptr));
							break;
						case T_ARRAY:
							cout << "TTError: Array arguments for messages not yet supported in Ruby" << endl;
							err = kTTErrGeneric;
							break;
						case T_OBJECT:
							cout << "TTError: Object arguments for messages not yet supported in Ruby" << endl;
							err = kTTErrGeneric;
							break;
						default:
							// assume no arguments for now...
							break;
					}
				}				

				if (!err)
					err = instance->obj->sendMessage(TT(RSTRING(messageNameStr)->ptr), v);				
			}
			
			if (err)
				cout << "TTRubySendMessage: Error " << err << endl;
		}
	}
bye:
	;
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


VALUE TTRubyGetAttribute(VALUE self, VALUE attributeName)
{
	TTRubyInstance* instance = NULL;
	TTErr			err = kTTErrNone;
	VALUE			attributeNameStr = StringValue(attributeName);
	VALUE			attributeValueStr;
	TTValue			v;
	VALUE			returnValue = rb_float_new(0.0);
	TTSymbolPtr		s;
	TTCString		c;
	
	err = gTTRubyInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		instance = (TTRubyInstance*)TTPtr(v);
		if (instance) {
			err = instance->obj->getAttributeValue(TT(RSTRING(attributeNameStr)->ptr), v);
			if (err) {
				cout << "TTRubyGetAttribute: Error " << err << endl;
				goto out;
			}

			// TODO: not handling array attrs yet...
			
			switch (v.getType(0)) {
				case kTypeFloat64:
				case kTypeFloat32:
					returnValue = rb_float_new(v);
					break;
				case kTypeInt8:
				case kTypeUInt8:
				case kTypeInt16:
				case kTypeUInt16:
				case kTypeInt32:
				case kTypeUInt32:
					returnValue = INT2NUM(v);
					break;
				case kTypeInt64:
				case kTypeUInt64:
					returnValue = LL2NUM((TTInt64)v);
					break;
				case kTypeBoolean:\
					returnValue = TTBoolean(v);
					break;
				case kTypeSymbol:
					s = v;
					c = (TTCString)s->getCString();
					returnValue = rb_str_new(c, strlen(c));
					break;
			}
		}
	}
out:
	return returnValue;
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



