/* 
 *	TTModularClassWrapperMax
 *	An automated class wrapper to make TTBlue object's available as objects for Max/MSP
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"
#include "ext_hashtab.h"


/** A hash of all wrapped clases, keyed on the Max class name. */
static t_hashtab*	wrappedMaxClasses = NULL;


ObjectPtr wrappedModularClass_new(SymbolPtr name, AtomCount argc, AtomPtr argv)
{	
	WrappedClass*				wrappedMaxClass = NULL;
    WrappedModularInstancePtr	x = NULL;
	TTErr						err = kTTErrNone;
#ifdef UI_EXTERNAL
	long					flags;
	t_dictionary*			d = NULL;
	
	if (!(d=object_dictionaryarg(argc,argv)))
		return NULL;
#endif
	
	// Find the WrappedClass
	hashtab_lookup(wrappedMaxClasses, name, (ObjectPtr*)&wrappedMaxClass);
	
	// If the WrappedClass has a validity check defined, then call the validity check function.
	// If it returns an error, then we won't instantiate the object.
	if(wrappedMaxClass){
		if(wrappedMaxClass->validityCheck)
			err = wrappedMaxClass->validityCheck(wrappedMaxClass->validityCheckArgument);
		else
			err = kTTErrNone;
	}
	else
		err = kTTErrGeneric;
	
	if(!err)
		x = (WrappedModularInstancePtr)object_alloc(wrappedMaxClass->maxClass);
	
    if(x){
		
		x->wrappedClassDefinition = wrappedMaxClass;
		
#ifndef ARRAY_EXTERNAL
		x->subscriberObject = NULL;
#endif
		x->useInternals = NO;
		x->address = kTTAdrsEmpty;
		x->argv = NULL;
		x->iterateInternals = NO;
		
#ifdef ARRAY_EXTERNAL
		x->arrayFormatInteger = new TTString();
		x->arrayFormatString = new TTString();
#endif
		
		// dumpout
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));
		
#ifdef UI_EXTERNAL
		flags = 0 
		| JBOX_DRAWFIRSTIN		// 0
		| JBOX_NODRAWBOX		// 1
		| JBOX_DRAWINLAST		// 2
		//	| JBOX_TRANSPARENT		// 3
		//	| JBOX_NOGROW			// 4
		//	| JBOX_GROWY			// 5
		| JBOX_GROWBOTH			// 6
		//	| JBOX_IGNORELOCKCLICK	// 7
		//	| JBOX_HILITE			// 8
		//	| JBOX_BACKGROUND		// 9
		//	| JBOX_NOFLOATINSPECTOR	// 10
		//	| JBOX_TEXTFIELD		// 11
		//    | JBOX_MOUSEDRAGDELTA	// 12
		//	| JBOX_COLOR			// 13
		//	| JBOX_BINBUF			// 14
		//	| JBOX_DRAWIOLOCKED		// 15
		//	| JBOX_DRAWBACKGROUND	// 16
		//	| JBOX_NOINSPECTFIRSTIN	// 17
		//	| JBOX_DEFAULTNAMES		// 18
		//	| JBOX_FIXWIDTH			// 19
		;
		
		jbox_new(&x->box, flags, argc, argv);
		x->box.b_firstin = (t_object *)x;
		attr_dictionary_process(x,d);
		jbox_ready((t_jbox *)x);
#endif
		
		// Make specific things
		ModularSpec *spec = (ModularSpec*)wrappedMaxClass->specificities;
		if (spec) {
			if (spec->_new)
				spec->_new((TTPtr)x, argc, argv);
		}
		else
			// handle attribute args
			attr_args_process(x, argc, argv);
	}
	return ObjectPtr(x);
}

void wrappedModularClass_unregister(WrappedModularInstancePtr x)
{
	TTValue			keys, storedObject;
	TTSymbol		name;
	TTAddress		objectAddress;
	TTObjectPtr		anObject;
	TTSubscriberPtr aSubscriber;
	TTErr			err;

#ifndef ARRAY_EXTERNAL
	if (x->subscriberObject)
		TTObjectRelease(TTObjectHandle(&x->subscriberObject));
	
	if (x->wrappedObject)
		if (x->wrappedObject->getName() != kTTSym_Application)
			TTObjectRelease(&x->wrappedObject);
#endif
	
	if (x->internals) {
		if (!x->internals->isEmpty()) {
			
			err = x->internals->getKeys(keys);
			
			if (!err) {
				
				x->iterateInternals = YES;
				
				for (int i=0; i<keys.getSize(); i++) {
					
					keys.get(i, name);
					storedObject.clear();
					err = x->internals->lookup(name, storedObject);
					
					if (!err) {
						anObject = NULL;
						storedObject.get(0, (TTPtr*)&anObject);
						
						// absolute registration case : remove the address
						if (storedObject.getSize() == 2) {
							storedObject.get(1, objectAddress);
							
							JamomaDebug object_post((ObjectPtr)x, "Remove internal %s object at : %s", name.c_str(), objectAddress.c_str());
							JamomaDirectory->TTNodeRemove(objectAddress);
						}
						
						// relative registration case : get an handler on a subscriber and delete it
						if (storedObject.getSize() == 3) {
							aSubscriber = NULL;
							storedObject.get(2, (TTPtr*)&aSubscriber);
							
							if (aSubscriber)
								if (aSubscriber->valid)		// to -- should be better to understand why the subscriber is not valid
									TTObjectRelease(TTObjectHandle(&aSubscriber));
						}
						
						if (anObject)
							if (anObject->valid)	// to -- should be better to understand why the object is not valid
								TTObjectRelease(&anObject);
					}
				}
				
				x->iterateInternals = NO;
			}
			delete x->internals;
		}
	}
	
#ifndef ARRAY_EXTERNAL	
	x->subscriberObject = NULL;
	x->wrappedObject = NULL;
#endif
	
	x->internals = NULL;
}

void wrappedModularClass_free(WrappedModularInstancePtr x)
{	
	ModularSpec* spec = (ModularSpec*)x->wrappedClassDefinition->specificities;
	
	wrappedModularClass_unregister(x);
	
	if (x->argv)
		sysmem_freeptr(x->argv);
	
#ifdef UI_EXTERNAL
	notify_free((t_object *)x);
	jbox_free((t_jbox *)x);
#endif
	
	x->argv = NULL;
	
	if (spec->_free)
		spec->_free(x);
}

t_max_err wrappedModularClass_notify(TTPtr self, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	ModularSpec*				spec = (ModularSpec*)x->wrappedClassDefinition->specificities;
	TTValue						v;
	ObjectPtr					context;
	TTAddress			contextAddress;

#ifndef ARRAY_EXTERNAL
	if (x->subscriberObject) {
		x->subscriberObject->getAttributeValue(TT("context"), v);
		v.get(0, (TTPtr*)&context);
		
		// if the patcher is deleted
		if (sender == context) {
			if (msg == _sym_free) {
				
				// delete the context node if it exists
				x->subscriberObject->getAttributeValue(TT("contextAddress"), v);
				v.get(0, contextAddress);
				
				JamomaDirectory->TTNodeRemove(contextAddress);
				
				// delete
				TTObjectRelease(TTObjectHandle(&x->subscriberObject));
				
				// no more notification
				object_detach_byptr((ObjectPtr)x, context);
			}
		}
	}
#endif
	
	if (spec->_notify)
		spec->_notify(self, s, msg, sender, data);
	
#ifdef UI_EXTERNAL
	if (msg == _sym_modified)
		jbox_redraw(&x->box);	
	else if ((msg == _sym_attr_modified) && (sender == x))	
		jbox_redraw(&x->box);
	
	return jbox_notify((t_jbox*)x, s, msg, sender, data);
#else
	return MAX_ERR_NONE;
#endif
}

void wrappedModularClass_shareContextNode(TTPtr self, TTNodePtr *contextNode)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue	v;
#ifndef ARRAY_EXTERNAL
	if (x->subscriberObject) {
		x->subscriberObject->getAttributeValue(TT("contextNode"), v);
		v.get(0, (TTPtr*)contextNode);
	}
	else
#endif
		*contextNode = NULL;
}

t_max_err wrappedModularClass_attrGet(TTPtr self, ObjectPtr attr, AtomCount* argc, AtomPtr* argv)
{
	SymbolPtr	attrName = (SymbolPtr)object_method(attr, _sym_getname);
	TTValue		v;
	WrappedModularInstancePtr x = (WrappedModularInstancePtr)self;
	MaxErr		err;
	TTPtr		ptr;
	
	err = hashtab_lookup(x->wrappedClassDefinition->maxNamesToTTNames, attrName, (ObjectPtr*)&ptr);
	if (err)
		return err;
	
	TTSymbol	ttAttrName(ptr);
	
	if (selectedObject) {
		selectedObject->getAttributeValue(ttAttrName, v);
		jamoma_ttvalue_to_Atom(v, argc, argv);
	}
	
	return MAX_ERR_NONE;
}

t_max_err wrappedModularClass_attrSet(TTPtr self, ObjectPtr attr, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr x = (WrappedModularInstancePtr)self;
	SymbolPtr	attrName = (SymbolPtr)object_method(attr, _sym_getname);
	TTValue		v;
	AtomCount	ac = 0;
	AtomPtr		av = NULL;
	MaxErr		m_err;
	TTErr		err;
	TTPtr		ptr;
	
	// for an array of wrapped object
	if (x->useInternals && !x->iterateInternals) {
		
		TTValue		keys;
		
		// temporary set x->iterateInternals to YES
		x->iterateInternals = YES;
		
		// then recall this method for each element of the array
		if (x->internals) {
			err = x->internals->getKeys(keys);
			if (!err) {
				for (TTUInt32 i=0; i<keys.getSize(); i++) {
					keys.get(i, x->cursor);
					wrappedModularClass_attrSet(self, attr, argc, argv);
				}
			}
		}
		
		// reset x->iterateInternals to NO
		x->iterateInternals = NO;
		
		return MAX_ERR_NONE;
	}
	
	m_err = hashtab_lookup(x->wrappedClassDefinition->maxNamesToTTNames, attrName, (ObjectPtr*)&ptr);
	if (m_err)
		return m_err;
	
	TTSymbol	ttAttrName(ptr);
	
	// set attribute's value
	if (argc && argv) {
		
		jamoma_ttvalue_from_Atom(v, _sym_nothing, argc, argv);
		
		if (selectedObject) {
			selectedObject->setAttributeValue(ttAttrName, v);
			return MAX_ERR_NONE;
		}
		else 
			return MAX_ERR_GENERIC;

	}
	// or get it and dumpout his value
	else {
		
		if (selectedObject) {
			// don't consider array case here (they should have all the same attribute value)
			selectedObject->getAttributeValue(ttAttrName, v);
			
			jamoma_ttvalue_to_Atom(v, &ac, &av);
			object_obex_dumpout(self, attrName, ac, av);
			sysmem_freeptr(av);
			return MAX_ERR_NONE;
		}
		else 
			return MAX_ERR_GENERIC;
	}
	
	return MAX_ERR_GENERIC;
}
	
void wrappedModularClass_anything(TTPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	ModularSpec*				spec = (ModularSpec*)x->wrappedClassDefinition->specificities;
	TTErr						err;
	
	// for an array of wrapped object
	if (x->useInternals && !x->iterateInternals) {
		
		// temporary set x->iterateInternals to YES
		x->iterateInternals = YES;
		
		// then recall this method for each element of the array
		if (x->internals) {
			
			TTUInt32	i = 0;
			TTValue		keys;
			TTSymbol	memoCursor;
			
			err = x->internals->getKeys(keys);
			if (!err) {
				
				memoCursor = x->cursor;
				while (i < keys.getSize() && !err) {
					
					keys.get(i, x->cursor);

					// Is it a message of the wrapped object ?
					err = wrappedModularClass_sendMessage(self, s, argc, argv);
					
					// Is it an attribute of the wrapped object ?
					if (err)
						err = wrappedModularClass_setAttribute(self, s, argc, argv);
					
					// if error : stop the while because this is an array and all objects are the same
					if (err)
						break;
					
					i++;
				}
				x->cursor = memoCursor;
			}
			
			// don't iterate the specific anything method on each object of the array
			if (spec->_any && err)
				spec->_any(self, s, argc, argv);
		}
		
		// reset x->iterateInternals to NO
		x->iterateInternals = NO;
	}
	
	// for single wrapped object
	else {
		
		// Is it a message of the wrapped object ?
		if (!wrappedModularClass_sendMessage(self, s, argc, argv))
			return;
		
		// It could be an extended attribute (not registered in maxNamesToTTNames)
		// Is it an attribute of the wrapped object ?
		if (!wrappedModularClass_setAttribute(self, s, argc, argv))
			return;
		
		if (spec->_any)
			spec->_any(self, s, argc, argv);
	}
}

TTErr wrappedModularClass_sendMessage(TTPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			inputValue, outputValue;
	TTSymbol		ttName = NULL;
	TTMessagePtr	aMessage = NULL;
	AtomCount		ac = 0;
	AtomPtr			av = NULL;
	MaxErr			m_err;
	TTErr			err;
	
	m_err = hashtab_lookup(x->wrappedClassDefinition->maxNamesToTTNames, s, (ObjectPtr*)&ttName);
	if (!m_err) {
		
		// Is it a message of the wrapped object ?
		err = selectedObject->findMessage(ttName, &aMessage);
		if (!err) {
			// send message
			if (argc && argv) {
				
				jamoma_ttvalue_from_Atom(inputValue, _sym_nothing, argc, argv);
				selectedObject->sendMessage(ttName, inputValue, outputValue);
				
				jamoma_ttvalue_to_Atom(outputValue, &ac, &av);
				object_obex_dumpout(self, s, ac, av);
				sysmem_freeptr(av);
			}
			else
				selectedObject->sendMessage(ttName);
		}
		
		return err;
	}
	else
		return kTTErrGeneric;
}

TTErr wrappedModularClass_setAttribute(TTPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			inputValue, outputValue;
	TTSymbol		ttName;
	TTAttributePtr	anAttribute= NULL;
	AtomCount		ac = 0;
	AtomPtr			av = NULL;
	TTErr			err;
	
	err = selectedObject->findAttribute(TT(s->s_name), &anAttribute);
	if (!err) {
		
		// set attribute's value
		if (argc && argv) {
			jamoma_ttvalue_from_Atom(inputValue, _sym_nothing, argc, argv);
			selectedObject->setAttributeValue(TT(s->s_name), inputValue);
		}
		// or get it and dumpout his value
		else {
			selectedObject->getAttributeValue(TT(s->s_name), outputValue);
			
			jamoma_ttvalue_to_Atom(outputValue, &ac, &av);
			object_obex_dumpout(self, s, ac, av);
			sysmem_freeptr(av);
		}
	}
	
	return err;
}

void wrappedModularClass_dump(TTPtr self)
{
    WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    TTValue			names, v;
    TTUInt32		i;
    TTSymbol		aName, address;
    SymbolPtr		s;
    AtomCount		ac;
    AtomPtr			av;
    Atom			a;
	
#ifndef ARRAY_EXTERNAL
    if (x->subscriberObject)
    {
    	// send out the absolute address of the subscriber
        x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
        v.get(0, address);
        atom_setsym(&a, gensym((char *) address.c_str()));
        object_obex_dumpout(self, gensym("address"), 1, &a);
    }
    else
    {   // subscriber obj. does not yet exist!
		object_warn((t_object *) self, "dump: subscriber object does not yet exist");
    }
#endif
	
    selectedObject->getAttributeNames(names);
	
    for (i=0; i<names.getSize(); i++) {
		
        names.get(i, aName);
		
		selectedObject->getAttributeValue(aName, v);
		
		s = jamoma_TTName_To_MaxName(aName);
		
		ac = 0;
		av = NULL;
		jamoma_ttvalue_to_Atom(v, &ac, &av);
		object_obex_dumpout(self, s, ac, av);
		sysmem_freeptr(av);
    }
}

#ifdef UI_EXTERNAL
void wrappedModularClass_paint(WrappedModularInstancePtr x, t_object *view)
{
	t_rect			rect;
	t_rect			r;
	t_jgraphics*	g;
	t_jsurface*		jsurface;
	unsigned char*	data;
	TTValue			v;
	TTErr			err;
	TTInt32			width;
	TTInt32			height;
	TTInt32			stride;
	
	g = (t_jgraphics*)patcherview_get_jgraphics(view);		// obtain graphics context
	jbox_get_rect_for_view((t_object *)x, view, &rect);		// this is the box rectangle -- but we draw relative to 0 0, and thus only care about width & height
	
	v.setSize(2);
	v.set(0, rect.width);
	v.set(1, rect.height);
	err = selectedObject->sendMessage(TT("resize"), v);
	err = selectedObject->sendMessage(TT("paint"));
	err = selectedObject->sendMessage(TT("getData"), v);
	if (!err) {
		data = (unsigned char*)TTPtr(v);
		v.get(1, width);
		v.get(2, height);
		v.get(3, stride);
		
		jsurface = jgraphics_image_surface_create_for_data(data, JGRAPHICS_FORMAT_ARGB32, width, height, stride, NULL, NULL);
		
		r.x = 0;
		r.y = 0;
		r.width = rect.width;
		r.height = rect.height;
		jgraphics_image_surface_draw(g, jsurface, r, r);
		jgraphics_surface_destroy(jsurface);
	}
}

TTPtr wrappedModularClass_oksize(TTPtr self, t_rect *newrect)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue					v;
	
	v.setSize(4);
	v.set(0, 0.0);
	v.set(1, 0.0);
	v.set(2, newrect->width);
	v.set(3, newrect->height);
	
	selectedObject->sendMessage(TT("verifyResize"), v);
	
	v.get(2, newrect->width); 
	v.get(3, newrect->height);
	return (void *)1;
}


void wrappedModularClass_mousedblclick(TTPtr self, ObjectPtr patcherview, t_pt pt, long modifiers)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue					v;
	
	v.setSize(3);
	v.set(0, pt.x);
	v.set(1, pt.y);
	v.set(2, convertModifiersFromMaxToTTGraphics(modifiers));
	selectedObject->sendMessage(TT("mouseDoubleClicked"), v);
	jbox_redraw((t_jbox *)x);
}

void wrappedModularClass_mousedown(TTPtr self, ObjectPtr patcherview, t_pt pt, long modifiers)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue					v;
	
	v.setSize(3);
	v.set(0, pt.x);
	v.set(1, pt.y);
	v.set(2, convertModifiersFromMaxToTTGraphics(modifiers));
	selectedObject->sendMessage(TT("mouseDown"), v);
	jbox_redraw((t_jbox *)x);
}

void wrappedModularClass_mousedrag(TTPtr self, ObjectPtr patcherview, t_pt pt, long modifiers)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue					v;
	
	v.setSize(3);
	v.set(0, pt.x);
	v.set(1, pt.y);
	v.set(2, convertModifiersFromMaxToTTGraphics(modifiers));
	selectedObject->sendMessage(TT("mouseDragged"), v);
	jbox_redraw((t_jbox *)x);
}

void wrappedModularClass_mouseup(TTPtr self, ObjectPtr patcherview, t_pt pt, long modifiers)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue					v;
	
	v.setSize(3);
	v.set(0, pt.x);
	v.set(1, pt.y);
	v.set(2, convertModifiersFromMaxToTTGraphics(modifiers));
	selectedObject->sendMessage(TT("mouseUp"), v);
	jbox_redraw((t_jbox *)x);
}


void wrappedModularClass_mouseenter(TTPtr self, ObjectPtr patcherview, t_pt pt, long modifiers)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue					v;
	
	v.setSize(3);
	v.set(0, pt.x);
	v.set(1, pt.y);
	v.set(2, convertModifiersFromMaxToTTGraphics(modifiers));
	selectedObject->sendMessage(TT("mouseEntered"), v);
	jbox_redraw((t_jbox *)x);
}

void wrappedModularClass_mousemove(TTPtr self, ObjectPtr patcherview, t_pt pt, long modifiers)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue					v;
	
	v.setSize(3);
	v.set(0, pt.x);
	v.set(1, pt.y);
	v.set(2, convertModifiersFromMaxToTTGraphics(modifiers));
	selectedObject->sendMessage(TT("mouseMoved"), v);
	jbox_redraw((t_jbox *)x);
}

void wrappedModularClass_mouseleave(TTPtr self, ObjectPtr patcherview, t_pt pt, long modifiers)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue					v;
	
	v.setSize(3);
	v.set(0, pt.x);
	v.set(1, pt.y);
	v.set(2, convertModifiersFromMaxToTTGraphics(modifiers));
	selectedObject->sendMessage(TT("mouseExited"), v);
	jbox_redraw((t_jbox *)x);
}

int convertModifiersFromMaxToTTGraphics(int maxModifiers)
{
	int ttGraphicsModifiers = 0;
	
	if (maxModifiers & eCapsLock)
		ttGraphicsModifiers |= TTModifierCapslock;
	else if (maxModifiers & eShiftKey)
		ttGraphicsModifiers |= TTModifierShiftKey;
	else if (maxModifiers & eControlKey)
		ttGraphicsModifiers |= TTModifierControlKey;
	else if (maxModifiers & eAltKey)
		ttGraphicsModifiers |= TTModifierAltKey;
	else if (maxModifiers & eCommandKey)
		ttGraphicsModifiers |= TTModifierCommandKey;
	
	return ttGraphicsModifiers;
}
#endif


TTErr wrapTTModularClassAsMaxClass(TTSymbol& ttblueClassName, char* maxClassName, WrappedClassPtr* c, ModularSpec* specificities)
{
	TTObject*		o = NULL;
	TTValue			v, args;
	WrappedClass*	wrappedMaxClass = NULL;
	TTSymbol		TTName;
	SymbolPtr		MaxName = NULL;
	
	jamoma_init();
	common_symbols_init();

#ifdef UI_EXTERNAL
	TTGraphicsInit();
#endif
	
	if (!wrappedMaxClasses)
		wrappedMaxClasses = hashtab_new(0);
	
	wrappedMaxClass = new WrappedClass;
	wrappedMaxClass->maxClassName = gensym(maxClassName);
	wrappedMaxClass->maxClass = class_new(	maxClassName, 
										  (method)wrappedModularClass_new, 
										  (method)wrappedModularClass_free, 
										  sizeof(WrappedModularInstance), 
										  (method)0L, 
										  A_GIMME, 
										  0);
	wrappedMaxClass->ttblueClassName = ttblueClassName;
	wrappedMaxClass->validityCheck = NULL;
	wrappedMaxClass->validityCheckArgument = NULL;
	wrappedMaxClass->options = NULL;
	wrappedMaxClass->maxNamesToTTNames = hashtab_new(0);
	
	wrappedMaxClass->specificities = specificities;

#ifdef UI_EXTERNAL
	jbox_initclass(wrappedMaxClass->maxClass, flags);	
	wrappedMaxClass->maxClass->c_flags |= CLASS_FLAG_NEWDICTIONARY; // to specify dictionary constructor
#endif
	
	// Create a temporary instance of the class so that we can query it.
	TTObjectInstantiate(ttblueClassName, &o, args);
	
	// Register Messages as Max method
	o->getMessageNames(v);
	for (TTUInt16 i=0; i<v.getSize(); i++) {
		v.get(i, TTName);

#ifdef UI_EXTERNAL
		if (TTName == TT("mouseDown"))
			class_addmethod(wrappedMaxClass->maxClass, (method)wrappedUIClass_mousedown,	"mousedown",	A_CANT, 0);
		else if (TTName == TT("mouseDragged"))
			class_addmethod(wrappedMaxClass->maxClass, (method)wrappedUIClass_mousedrag,	"mousedrag",	A_CANT, 0);
		else if (TTName == TT("mouseUp"))
			class_addmethod(wrappedMaxClass->maxClass, (method)wrappedUIClass_mouseup,		"mouseup",		A_CANT, 0);
		else if (TTName == TT("mouseEntered"))
			class_addmethod(wrappedMaxClass->maxClass, (method)wrappedUIClass_mouseenter,	"mouseenter",	A_CANT, 0);
		else if (TTName == TT("mouseExited"))
			class_addmethod(wrappedMaxClass->maxClass, (method)wrappedUIClass_mouseleave,	"mouseleave",	A_CANT, 0);
		else if (TTName == TT("mouseMoved"))
			class_addmethod(wrappedMaxClass->maxClass, (method)wrappedUIClass_mousemove,	"mousemove",	A_CANT, 0);
		else if (TTName == TT("mouseDoubleClicked"))
			class_addmethod(wrappedMaxClass->maxClass, (method)wrappedUIClass_mousedblclick,"mousedoubleclick",	A_CANT, 0);
		else if (TTName == TT("verifyResize"))
			class_addmethod(wrappedMaxClass->maxClass, (method)wrappedUIClass_oksize,		"oksize",		A_CANT, 0);
		else 
#endif
		if (TTName == TT("test")) // to -- TTDataObject class have also a bypass attribute and some messages to hide too...
			continue;
		else if ((MaxName = jamoma_TTName_To_MaxName(TTName))) {
			hashtab_store(wrappedMaxClass->maxNamesToTTNames, MaxName, ObjectPtr(TTName.rawpointer()));
			class_addmethod(wrappedMaxClass->maxClass, (method)wrappedModularClass_anything, MaxName->s_name, A_GIMME, 0);
		}
	}
	
	// Register Attributes as Max attr
	o->getAttributeNames(v);
	for (TTUInt16 i=0; i<v.getSize(); i++) {
		TTAttributePtr	attr = NULL;
		SymbolPtr		maxType = _sym_long;
		
		v.get(i, TTName);
		
		if ((MaxName = jamoma_TTName_To_MaxName(TTName))) {
			o->findAttribute(TTName, &attr);
			
			if (attr->type == kTypeFloat32)
				maxType = _sym_float32;
			else if (attr->type == kTypeFloat64)
				maxType = _sym_float64;
			else if (attr->type == kTypeSymbol || attr->type == kTypeString)
				maxType = _sym_symbol;
			else if (attr->type == kTypeLocalValue)
				maxType = _sym_atom;
			
			hashtab_store(wrappedMaxClass->maxNamesToTTNames, MaxName, ObjectPtr(TTName.rawpointer()));
			class_addattr(wrappedMaxClass->maxClass, attr_offset_new(MaxName->s_name, maxType, 0, (method)wrappedModularClass_attrGet, (method)wrappedModularClass_attrSet, NULL));
			
			// Add display styles for the Max 5 inspector
			if (attr->type == kTypeBoolean)
				CLASS_ATTR_STYLE(wrappedMaxClass->maxClass, (char*)TTName.c_str(), 0, "onoff");
			if (TTName == TT("fontFace"))
				CLASS_ATTR_STYLE(wrappedMaxClass->maxClass,	"fontFace", 0, "font");
		}
	}
	
	TTObjectRelease(&o);
	
#ifdef UI_EXTERNAL
	class_addmethod(wrappedMaxClass->maxClass, (method)wrappedClass_paint,						"paint",				A_CANT, 0L);
#endif
	class_addmethod(wrappedMaxClass->maxClass, (method)stdinletinfo,							"inletinfo",			A_CANT, 0);
	class_addmethod(wrappedMaxClass->maxClass, (method)wrappedModularClass_notify,				"notify",				A_CANT, 0);
	class_addmethod(wrappedMaxClass->maxClass, (method)wrappedModularClass_shareContextNode,	"share_context_node",	A_CANT,	0);
	class_addmethod(wrappedMaxClass->maxClass, (method)wrappedModularClass_anything,			"anything",				A_GIMME, 0);
	
	// Register specific methods and do specific things
	if (specificities) {
		if (specificities->_wrap)
			specificities->_wrap(wrappedMaxClass);
	}
	
	class_addmethod(wrappedMaxClass->maxClass, (method)wrappedModularClass_dump,				"dump",					A_GIMME, 0);

#ifdef UI_EXTERNAL
	CLASS_ATTR_DEFAULT(wrappedMaxClass->maxClass,	"patching_rect",	0,	"0. 0. 160. 160.");
	CLASS_ATTR_MIN(wrappedMaxClass->maxClass,		"patching_size",	0,	"1. 1.");
#endif
	
#ifdef ARRAY_EXTERNAL
	
	class_addmethod(wrappedMaxClass->maxClass, (method)wrappedModularClass_ArraySelect,				"array/select",			A_GIMME,0);
	
	CLASS_ATTR_SYM(wrappedMaxClass->maxClass,			"format",	0,		WrappedModularInstance,	arrayAttrFormat);
	CLASS_ATTR_ACCESSORS(wrappedMaxClass->maxClass,		"format",			wrappedModularClass_FormatGet,	wrappedModularClass_FormatSet);
	CLASS_ATTR_ENUM(wrappedMaxClass->maxClass,			"format",	0,		"single array");
#endif
	
	class_register(_sym_box, wrappedMaxClass->maxClass);
	if (c)
		*c = wrappedMaxClass;
	
	hashtab_store(wrappedMaxClasses, wrappedMaxClass->maxClassName, ObjectPtr(wrappedMaxClass));
	return kTTErrNone;
}

TTErr makeInternals_data(TTPtr self, TTAddress address, TTSymbol name, SymbolPtr callbackMethod, TTPtr context, TTSymbol service, TTObjectPtr *returnedData)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTNodePtr		aNode;
	TTBoolean		nodeCreated;
	TTAddress dataAddress, dataName;
	TTValue			storedObject;
	
	// Prepare arguments to create a TTData object
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueBaton->append(TTPtr(callbackMethod));
	
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	args.append(service);
	
	*returnedData = NULL;
	TTObjectInstantiate(kTTSym_Data, TTObjectHandle(returnedData), args);
	
	// absolute registration
	dataAddress = address.appendAddress(name.c_str());
	JamomaDirectory->TTNodeCreate(dataAddress, *returnedData, context, &aNode, &nodeCreated);
	
	aNode->getAddress(dataAddress);
	aNode->getAddress(dataName, address);

	// absolute registration case : set the address in second position (see in unregister method)
	storedObject = TTValue(TTPtr(*returnedData));
	storedObject.append(dataAddress);
	x->internals->append(TT(dataName.c_str()), storedObject);
	
	JamomaDebug object_post((ObjectPtr)x, "makes internal \"%s\" %s at : %s", dataName.c_str(), service.c_str(), dataAddress.c_str());
	
	return kTTErrNone;
}

TTErr makeInternals_explorer(TTPtr self, TTSymbol name, SymbolPtr callbackMethod, TTObjectPtr *returnedExplorer)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			args, storedObject;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueBaton->append(TTPtr(callbackMethod));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	args.append((TTPtr)jamoma_explorer_default_filter_bank());
	
	*returnedExplorer = NULL;
	TTObjectInstantiate(kTTSym_Explorer, TTObjectHandle(returnedExplorer), args);
	
	// default registration case : store object only (see in unregister method)
	storedObject = TTValue(TTPtr(*returnedExplorer));
	x->internals->append(name, storedObject);
	return kTTErrNone;
}

TTErr makeInternals_viewer(TTPtr self, TTAddress address, TTSymbol name, SymbolPtr callbackMethod, TTObjectPtr *returnedViewer)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			args, storedObject;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTAddress adrs;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueBaton->append(TTPtr(callbackMethod));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedViewer = NULL;
	TTObjectInstantiate(kTTSym_Viewer, TTObjectHandle(returnedViewer), args);
	
	// Set address attributes
	adrs = address.appendAddress(name.c_str());
										 
	(*returnedViewer)->setAttributeValue(kTTSym_address, adrs);
	
	// default registration case : store object only (see in unregister method)
	storedObject = TTValue(TTPtr(*returnedViewer));
	x->internals->append(name, storedObject);
	return kTTErrNone;
}

TTErr makeInternals_receiver(TTPtr self, TTAddress address, TTSymbol name, SymbolPtr callbackMethod, TTObjectPtr *returnedReceiver)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			args, storedObject;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTAddress adrs;
	
	// prepare arguments
	
	// we don't want the address back
	args.append(NULL);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueBaton->append(TTPtr(callbackMethod));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedReceiver = NULL;
	TTObjectInstantiate(kTTSym_Receiver, TTObjectHandle(returnedReceiver), args);
	
	// Set address attributes
	adrs = address.appendAddress(name.c_str());
	
	(*returnedReceiver)->setAttributeValue(kTTSym_address, adrs);
	
	// default registration case : store object only (see in unregister method)
	storedObject = TTValue(TTPtr(*returnedReceiver));
	x->internals->append(name, storedObject);
	return kTTErrNone;
}

TTErr removeInternals_data(TTPtr self, TTAddress address, TTAddress name)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			storedObject;
	TTObjectPtr		aData;
	TTAddress dataAddress;
	TTErr			err;
	
	err = x->internals->lookup(name, storedObject);
	
	if (!err) {
		storedObject.get(0, (TTPtr*)&aData);
		storedObject.get(1, dataAddress);
		
		JamomaDebug object_post((ObjectPtr)x, "Remove internal %s object at : %s", name.c_str(), dataAddress.c_str());
		JamomaDirectory->TTNodeRemove(dataAddress);
		
		if (aData)
			if (aData->valid)	// to -- should be better to understand why the data is not valid
				TTObjectRelease(&aData);
		
		x->internals->remove(name);
	}
	
	return kTTErrNone;
}

TTObjectPtr	getSelectedObject(WrappedModularInstancePtr x)
{
	if (x->useInternals) {
		TTValue v;
		TTObjectPtr o;
		TTErr err;
		err = x->internals->lookup(x->cursor, v);
		if (!err)
			v.get(0, (TTPtr*)&o);
		else o = NULL;
		
		return o;
	}
#ifndef ARRAY_EXTERNAL
	else
		return x->wrappedObject;
#else
	else
		return NULL;
#endif
}

void copy_msg_argc_argv(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTBoolean	copyMsg = false;
	TTUInt8		i;
	
	if (msg != _sym_nothing && msg != _sym_int && msg != _sym_float && msg != _sym_symbol && msg != _sym_list)
		copyMsg = true;
	
	x->msg = msg;
	x->argc = argc;
	if (copyMsg)
		x->argc++;
	
	x->argv = NULL;
	x->argv = (AtomPtr)sysmem_newptr(sizeof(t_atom) * x->argc);
	
	if (x->argc) {
		if (copyMsg) {
			atom_setsym(&x->argv[0], msg);
			for (i=1; i<x->argc; i++)
				x->argv[i] = argv[i-1];
		}
		else
			for (i=0; i<x->argc; i++)
				x->argv[i] = argv[i];
	}
}

#ifdef ARRAY_EXTERNAL
t_max_err wrappedModularClass_FormatGet(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if ((*ac)&&(*av)) {
		//memory passed in, use it
	} else {
		//otherwise allocate memory
		*ac = 1;
		if (!(*av = (AtomPtr)getbytes(sizeof(Atom)*(*ac)))) {
			*ac = 0;
			return MAX_ERR_OUT_OF_MEM;
		}
	}
	
	atom_setsym(*av, x->arrayAttrFormat);
	
	return MAX_ERR_NONE;
}

t_max_err wrappedModularClass_FormatSet(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av) 
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (ac&&av) {
		x->arrayAttrFormat = atom_getsym(av);
	} else {
		// no args, set to single
		x->arrayAttrFormat = gensym("single");
	}
	return MAX_ERR_NONE;
}

void wrappedModularClass_ArraySelect(TTPtr self, SymbolPtr msg, AtomCount ac, AtomPtr av)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					instanceAddress;
	TTUInt8						i;
	TTValue						v;
	
	if (x->internals) {
		
		if (ac && av) {
			if (atom_gettype(av) == A_LONG) {
				i = atom_getlong(av);
				if (i > 0 && i <= x->arraySize) {
					x->arrayIndex = i;
					jamoma_edit_numeric_instance(x->arrayFormatInteger, &instanceAddress, i);
					x->cursor = TT(instanceAddress->s_name);
				}
				else
					object_error((ObjectPtr)x, "array/select : %ld is not a valid index", i);
			}
			else if (atom_gettype(av) == A_SYM) {
				
				if (atom_getsym(av) == gensym("*")) {
					x->arrayIndex = 0;
					jamoma_edit_numeric_instance(x->arrayFormatInteger, &instanceAddress, 1);
					x->cursor = TT(instanceAddress->s_name);
				}
				else
					object_error((ObjectPtr)x, "array/select : %s is not a valid index", i);
			}
		}
		else {
			if (msg == gensym("*")) {
				x->arrayIndex = 0;
				jamoma_edit_numeric_instance(x->arrayFormatInteger, &instanceAddress, 1);
				x->cursor = TT(instanceAddress->s_name);
			}
			else
				object_error((ObjectPtr)x, "array/select : %s is not a valid index", i);
		}
	}
	else
		object_error((ObjectPtr)x, "array/select : the array is empty");
}
#endif

