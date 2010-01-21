// TTRuby : Lanuguage Bindings to Make the Jamoma Runtime accessible via Ruby
// Copyright © 2009, Timothy Place
// GNU LGPL

#include "TTMulticoreAPI.h"
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


//
class TTAudioInstance {
public:
	TTMulticoreObjectPtr	obj;
	
	TTAudioInstance()
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

	VALUE TTAudioInitialize(int argc, VALUE* argv, VALUE self);
	VALUE TTAudioSendMessage(int argc, VALUE* argv, VALUE self);
	VALUE TTAudioSetAttribute(VALUE self, VALUE attributeName, VALUE attributeValue);
	VALUE TTAudioGetAttribute(VALUE self, VALUE attributeName);
	VALUE TTAudioReset(VALUE self);
	VALUE TTAudioConnect(int argc, VALUE* argv, VALUE self);
}


// Globals and Statics
VALUE		TTRuby_class;
TTHashPtr	gTTRubyInstances = NULL;

VALUE		TTAudio_class;
TTHashPtr	gTTAudioInstances = NULL;


/*****************************************************************************************************/
// Class Definition

void Init_TTRuby()
{
	VALUE c;
	
	TTFoundationInit();
	
	c = rb_define_class("TTObject", rb_cObject);
	
	rb_define_method(c, "initialize",		TTRubyMethod(TTRubyInitialize), 1);		// called to initialize a new object that has been created or cloned
	rb_define_method(c, "send",				TTRubyMethod(TTRubySendMessage), -1);	// send a message to the wrapped object
	rb_define_method(c, "set",				TTRubyMethod(TTRubySetAttribute), 2);	// set attribute value
	rb_define_method(c, "get",				TTRubyMethod(TTRubyGetAttribute), 1);	// get attribute value
	rb_define_method(c, "calculate",		TTRubyMethod(TTRubyCalculate), 1);
	
	TTRuby_class = c;
	gTTRubyInstances = new TTHash;
	
	
	// MULTICORE / AUDIO
	
	TTMulticoreInit();

	c = rb_define_class("TTAudio", rb_cObject);
	
	rb_define_method(c, "initialize",		TTRubyMethod(TTAudioInitialize),	-1);	// called to initialize a new object that has been created or cloned
	rb_define_method(c, "send",				TTRubyMethod(TTAudioSendMessage),	-1);	// send a message to the wrapped object
	rb_define_method(c, "set",				TTRubyMethod(TTAudioSetAttribute),	2);		// set attribute value
	rb_define_method(c, "get",				TTRubyMethod(TTAudioGetAttribute),	1);		// get attribute value
	rb_define_method(c, "reset",			TTRubyMethod(TTAudioReset),			0);		// reset multicore connections
	rb_define_method(c, "connect",			TTRubyMethod(TTAudioConnect),		-1);	// connect an output of another object to our input
	
	TTAudio_class = c;
	gTTAudioInstances = new TTHash;
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



/**************************************************************************************
 * MULTICORE SUPPORT
 **************************************************************************************/


//VALUE TTAudioInitialize(VALUE self, VALUE className)
VALUE TTAudioInitialize(int argc, VALUE* argv, VALUE self)
{	
	TTAudioInstance*	instance = new TTAudioInstance;
	TTValue*			v = new TTValue;
	TTValue				args;
	TTErr				err = kTTErrNone;
	//VALUE				classNameStr = StringValue(className);
	VALUE				messageArgStr;

	if (argc < 1) {
		cout << "ERROR -- TTAudio requires at least 1 argument (the name of the object class to create)" << endl;
		return NULL;
	}

	args.clear();
	for (int i=0; i<argc; i++) {
		int t = TYPE(argv[i]);

		cout << "the type of the message arg is " << t << endl;
		switch (t) {
			case T_FLOAT:
				args.append(NUM2DBL(argv[i]));
				break;
			case T_FIXNUM:
				args.append((int)FIX2LONG(argv[i]));
				break;
			case T_BIGNUM:
				args.append((TTInt64)NUM2LL(argv[i]));
				break;
			case T_STRING:
				messageArgStr = StringValue(argv[i]);
				args.append(TT(RSTRING(messageArgStr)->ptr));
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
	
	//err = TTObjectInstantiate(TT(RSTRING(classNameStr)->ptr), &instance->obj, args);
	err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&instance->obj, args);
	
	if (!err) {
		v->setSize(1);
		v->set(0, TTPtr(instance));
		gTTAudioInstances->append(TTSymbolPtr(self), *v);
		return self;
	}
	else
		return NULL;
}


VALUE TTAudioSendMessage(int argc, VALUE* argv, VALUE self)
{
	TTAudioInstance*	instance = NULL;
	TTErr				err = kTTErrNone;
	VALUE				messageNameStr;
	VALUE				messageArgStr;
	TTValue				v;

	if (argc < 1) {
		cout << "ERROR -- TTRuby.send requires at least 1 argument (the name of the message to send)" << endl;
		goto bye;
	}

	messageNameStr = StringValue(argv[0]);	
	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		instance = (TTAudioInstance*)TTPtr(v);
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
					err = instance->obj->mUnitGenerator->sendMessage(TT(RSTRING(messageNameStr)->ptr), v);				
			}

			if (err)
				cout << "TTAudioSendMessage: Error " << err << endl;
		}
	}
bye:
	;
}


VALUE TTAudioSetAttribute(VALUE self, VALUE attributeName, VALUE attributeValue)
{
	TTAudioInstance*	instance = NULL;
	TTErr				err = kTTErrNone;
	VALUE				attributeNameStr = StringValue(attributeName);
	VALUE				attributeValueStr;
	TTValue				v;

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		instance = (TTAudioInstance*)TTPtr(v);
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
				err = instance->obj->mUnitGenerator->setAttributeValue(TT(RSTRING(attributeNameStr)->ptr), v);
			if (err)
				cout << "TTAudioSetAttribute: Error " << err << endl;
		}
	}
}


VALUE TTAudioGetAttribute(VALUE self, VALUE attributeName)
{
	TTAudioInstance*	instance = NULL;
	TTErr				err = kTTErrNone;
	VALUE				attributeNameStr = StringValue(attributeName);
	VALUE				attributeValueStr;
	TTValue				v;
	VALUE				returnValue = rb_float_new(0.0);
	TTSymbolPtr			s;
	TTCString			c;

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		instance = (TTAudioInstance*)TTPtr(v);
		if (instance) {
			err = instance->obj->mUnitGenerator->getAttributeValue(TT(RSTRING(attributeNameStr)->ptr), v);
			if (err) {
				cout << "TTAudioGetAttribute: Error " << err << endl;
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


VALUE TTAudioReset(VALUE self)
{
	TTAudioInstance*	instance = NULL;
	TTErr				err = kTTErrNone;
	TTValue				v;

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {			
			instance->obj->reset();			
		}
	}
	return self;
}


VALUE TTAudioConnect(int argc, VALUE* argv, VALUE self)
{
	TTAudioInstance*	instance = NULL;
	TTAudioInstance*	instanceToConnect = NULL;
	TTErr				err = kTTErrNone;
	TTValue				v;
	TTUInt16			inletNumberToWhichToConnect = 0;
	TTUInt16			outletNumberFromWhichToConnect = 0;

	if (argc < 1) {
		cout << "ERROR -- TTAudioConnect requires at least 1 argument (the object whose output should be connected to our input)" << endl;
		goto bye;
	}

	if (TYPE(argv[0]) == T_OBJECT) {
		err = gTTAudioInstances->lookup(TTSymbolPtr(argv[0]), v);
		if (!err) {
			v.get(0, (TTPtr*)(&instanceToConnect));
		}		
	}

	if (!instanceToConnect) {
		cout << "ERROR -- TTAudioConnect cannot verify the object you would like to connect" << endl;
		goto bye;
	}
	
	if (argc > 1) {
		inletNumberToWhichToConnect = FIX2LONG(argv[1]);
		if (argc > 2)
			outletNumberFromWhichToConnect = FIX2LONG(argv[2]);
	}

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {			
			instance->obj->connect(instanceToConnect->obj, outletNumberFromWhichToConnect, inletNumberToWhichToConnect);			
		}
	}
bye:
	return self;
}

