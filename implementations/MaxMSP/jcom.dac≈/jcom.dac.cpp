/* 
 *	dac≈
 *	Jamoma AudioGraph external object for Max
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"


// Data Structure for this object
struct Dac {
    Object					obj;
	TTAudioGraphObjectPtr	audioGraphObject;
	ObjectPtr				patcher;		// the patcher -- cached for iterating to make connections
	ObjectPtr				patcherview;	// first view of the top-level patcher (for dirty notifications)
	TTPtr					qelem;			// for clumping patcher dirty notifications
	TTPtr					outlet;			// for sending cpu load
};
typedef Dac* DacPtr;


// Prototypes for methods
DacPtr	DacNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	DacFree(DacPtr self);
MaxErr	DacNotify(DacPtr self, SymbolPtr s, SymbolPtr msg, ObjectPtr sender, TTPtr data);
void	DacQFn(DacPtr self);
void	DacAttachToPatchlinesForPatcher(DacPtr self, ObjectPtr patcher);
void	DacAssist(DacPtr self, void* b, long msg, long arg, char* dst);
TTErr	DacReset(DacPtr self);
void	DacIterateResetCallback(DacPtr self, ObjectPtr obj);
void	DacIterateSetupCallback(DacPtr self, ObjectPtr obj);
TTErr	DacConnect(DacPtr self, TTAudioGraphObjectPtr audioSourceObject, long sourceOutletNumber);
TTErr	DacInt(DacPtr self, long value);
TTErr	DacStart(DacPtr self);
TTErr	DacStop(DacPtr self);
void	DacGetDeviceNames(DacPtr self);
TTErr	DacGetCpuLoad(DacPtr self);
MaxErr	DacExportRuby(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv);
MaxErr	DacExportCpp(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv);
MaxErr	DacExportMax(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv);
// Prototypes for attribute accessors
MaxErr	DacSetSampleRate(DacPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr	DacGetSampleRate(DacPtr self, void* attr, AtomCount* argc, AtomPtr* argv);
MaxErr	DacSetVectorSize(DacPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr	DacGetVectorSize(DacPtr self, void* attr, AtomCount* argc, AtomPtr* argv);
MaxErr	DacSetDevice(DacPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr	DacGetDevice(DacPtr self, void* attr, AtomCount* argc, AtomPtr* argv);


// Globals
static ClassPtr sDacClass;


/************************************************************************************/
// Main() Function

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ClassPtr c;
	
	TTAudioGraphInit();	
	common_symbols_init();
	
	c = class_new("jcom.dac≈", (method)DacNew, (method)DacFree, sizeof(Dac), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)DacStart,			"start",				0);
	class_addmethod(c, (method)DacStop,				"stop",					0);
	class_addmethod(c, (method)DacGetDeviceNames,	"getAvailableDeviceNames",	0);
	class_addmethod(c, (method)DacInt,				"int",					A_LONG, 0);
	class_addmethod(c, (method)DacGetCpuLoad,		"getCpuLoad",			0);
	class_addmethod(c, (method)DacNotify,			"notify",				A_CANT, 0);
	class_addmethod(c, (method)DacReset,			"audio.reset",		A_CANT, 0);
	class_addmethod(c, (method)DacConnect,			"audio.connect",	A_OBJ, A_LONG, 0);
	class_addmethod(c, (method)MaxAudioGraphDrop,	"audio.drop",		A_CANT, 0);
	class_addmethod(c, (method)MaxAudioGraphObject,	"audio.object",		A_CANT, 0);
	class_addmethod(c, (method)DacExportRuby,		"exportRuby",			A_GIMME, 0);
	class_addmethod(c, (method)DacExportCpp,		"exportC++",			A_GIMME, 0);
	class_addmethod(c, (method)DacExportMax,		"exportMax",			A_GIMME, 0);
	class_addmethod(c, (method)DacAssist,			"assist",				A_CANT, 0); 
	class_addmethod(c, (method)object_obex_dumpout,	"dumpout",				A_CANT, 0);  
	
	CLASS_ATTR_LONG(c,		"sampleRate",	0,		Dac,	obj);
	CLASS_ATTR_ACCESSORS(c,	"sampleRate",	DacGetSampleRate,	DacSetSampleRate);
	
	CLASS_ATTR_LONG(c,		"vectorSize",	0,		Dac,	obj);
	CLASS_ATTR_ACCESSORS(c,	"vectorSize",	DacGetVectorSize,	DacSetVectorSize);
	
	CLASS_ATTR_SYM(c,		"device",		0,		Dac,	obj);
	CLASS_ATTR_ACCESSORS(c,	"device",		DacGetDevice,		DacSetDevice);
	
	class_register(_sym_box, c);
	sDacClass = c;
	return 0;
}


/************************************************************************************/
// Life Cycle

DacPtr DacNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    DacPtr		self = DacPtr(object_alloc(sDacClass));
	TTValue		v;
	TTErr		err;
	
    if (self) {
		v.setSize(2);
		v.set(0, TT("dac"));
		v.set(1, 2);
		err = TTObjectInstantiate(TT("audio.object"), (TTObjectPtr*)&self->audioGraphObject, v);

		v = TTPtr(self->audioGraphObject);

		attr_args_process(self, argc, argv);
		object_obex_store((void*)self, _sym_dumpout, (object*)outlet_new(self, NULL));
		self->outlet = outlet_new(self, NULL);
		self->qelem = qelem_new(self, (method)DacQFn);
	}
	return self;
}


void DacFree(DacPtr self)
{
	DacStop(self);
	if (self->patcherview) {
		object_detach_byptr(self, self->patcherview);
		self->patcherview = NULL;
	}
	TTObjectRelease((TTObjectPtr*)&self->audioGraphObject);
	qelem_free(self->qelem);
}


/************************************************************************************/
// Methods bound to input/inlets

MaxErr DacNotify(DacPtr self, SymbolPtr s, SymbolPtr msg, ObjectPtr sender, TTPtr data)
{
	if (sender == self->patcherview) {
		if (msg == _sym_attr_modified) {
			SymbolPtr name = (SymbolPtr)object_method((ObjectPtr)data, _sym_getname);
			if (name == _sym_dirty) {
				qelem_set(self->qelem);
			}
		}
		else if (msg == _sym_free)
			self->patcherview = NULL;
	}
	else {
		if (msg == _sym_free) {
			ObjectPtr	sourceBox;	
			ObjectPtr	sourceObject;
			long		sourceOutlet;
			ObjectPtr	destBox;		
			ObjectPtr	destObject;	
			long		destInlet;

			if (self->patcherview)
				goto out; // if there is no patcherview, then we are freeing the whole thing and can skip this
			
			#ifdef DEBUG_NOTIFICATIONS
			object_post(SELF, "patch line deleted");
			#endif // DEBUG_NOTIFICATIONS
			
			// get boxes and inlets
			sourceBox = jpatchline_get_box1(sender);
			if (!sourceBox)
				goto out;
			sourceObject = jbox_get_object(sourceBox);
			sourceOutlet = jpatchline_get_outletnum(sender);
			destBox = jpatchline_get_box2(sender);
			if (!destBox)
				goto out;
			destObject = jbox_get_object(destBox);
			destInlet = jpatchline_get_inletnum(sender);
			
			// if both boxes are audio graph objects 
			if ( zgetfn(sourceObject, gensym("audio.object")) && zgetfn(destObject, gensym("audio.object")) ) {
				#ifdef DEBUG_NOTIFICATIONS
				object_post(SELF, "deleting audio graph patchline!");
				#endif // DEBUG_NOTIFICATIONS
				
				object_method(destObject, gensym("audio.drop"), destInlet, sourceObject, sourceOutlet);
			}
		out:		
			;
		}
	}
	return MAX_ERR_NONE;
}


// Qelem function, which clumps together dirty notifications before making the new connections
void DacQFn(DacPtr self)
{
	t_atom result;
	
	#ifdef DEBUG_NOTIFICATIONS
	object_post(SELF, "patcher dirtied");
	#endif // DEBUG_NOTIFICATIONS
	
	object_method(self->patcher, gensym("iterate"), (method)DacIterateSetupCallback, self, PI_DEEP, &result);
	
	// attach to all of the patch cords so we will know if one is deleted
	// we are not trying to detach first -- hopefully this is okay and multiple attachments will be filtered (?)
	DacAttachToPatchlinesForPatcher(self, self->patcher);
}


void DacAttachToPatchlinesForPatcher(DacPtr self, ObjectPtr patcher)
{
	ObjectPtr	patchline = object_attr_getobj(patcher, _sym_firstline);
	ObjectPtr	box = jpatcher_get_firstobject(patcher);
	
	while (patchline) {
		object_attach_byptr_register(self, patchline, _sym_nobox);
		patchline = object_attr_getobj(patchline, _sym_nextline);
	}
	
	while (box) {
		SymbolPtr	classname = jbox_get_maxclass(box);
		
		if (classname == _sym_jpatcher) {
			ObjectPtr	subpatcher = jbox_get_object(box);
			
			DacAttachToPatchlinesForPatcher(self, subpatcher);
		}
		box = jbox_get_nextobject(box);
	}
}


// Method for Assistance Messages
void DacAssist(DacPtr self, void* b, long msg, long arg, char* dst)
{
	if (msg==1)				// Inlets
		strcpy(dst, "multichannel audio connection and control messages");		
	else if (msg==2){		// Outlets
		if(arg == 0)
			strcpy(dst, "stats on DSP graph");
		else
			strcpy(dst, "dumpout");	
		
	}		
}


TTErr DacReset(DacPtr self)
{
	return self->audioGraphObject->resetAudio();
}


TTErr DacConnect(DacPtr self, TTAudioGraphObjectPtr audioSourceObject, long sourceOutletNumber)
{
	return self->audioGraphObject->connectAudio(audioSourceObject, sourceOutletNumber);
}


void DacIterateResetCallback(DacPtr self, ObjectPtr obj)
{
	TTUInt32	vectorSize;
	method		audioResetMethod = zgetfn(obj, gensym("audio.reset"));
	
	if (audioResetMethod) {
		self->audioGraphObject->getUnitGenerator()->getAttributeValue(TT("vectorSize"), vectorSize);
		audioResetMethod(obj, vectorSize);
	}
}


void DacIterateSetupCallback(DacPtr self, ObjectPtr obj)
{
	method audioSetupMethod = zgetfn(obj, gensym("audio.setup"));
	
	if (audioSetupMethod)
		audioSetupMethod(obj);
}


TTErr DacInt(DacPtr self, long value)
{
	if (value==0)
		 DacStop(self);
	else
		DacStart(self);
	
	return kTTErrNone;
}


TTErr DacStart(DacPtr self)
{
	MaxErr					err;
	ObjectPtr				patcher = NULL;
	ObjectPtr				parent = NULL;
	ObjectPtr				patcherview = NULL;
	long					vectorSize;
	long					result = 0;
	TTAudioGraphOutputPtr	outputObject = TTAudioGraphOutputPtr(self->audioGraphObject->getUnitGenerator());
	
	outputObject->getAttributeValue(TT("vectorSize"), vectorSize);
	
	err = object_obex_lookup(self, gensym("#P"), &patcher);
	
	// first find the top-level patcher
	err = object_obex_lookup(self, gensym("#P"), &patcher);
	parent = patcher;
	while (parent) {
		patcher = parent;
		parent = object_attr_getobj(patcher, _sym_parentpatcher);
	}
	
	// Do we really want to reset any more?  It's not clear that it's needed or desired.
	//object_method(patcher, gensym("iterate"), (method)DacIterateResetCallback, self, PI_DEEP, &result);
	object_method(patcher, gensym("iterate"), (method)DacIterateSetupCallback, self, PI_DEEP, &result);
	
	// now let's attach to the patcherview to get notifications about any further changes to the patch cords
	// the patcher 'dirty' attribute is not modified for each change, but the patcherview 'dirty' attribute is
	if (!self->patcherview) {
		patcherview = jpatcher_get_firstview(patcher);
		self->patcherview = patcherview;
		self->patcher = patcher;
		object_attach_byptr_register(self, patcherview, _sym_nobox);			
	}
	
	// now we want to go a step further and attach to all of the patch cords 
	// this is how we will know if one is deleted
	DacAttachToPatchlinesForPatcher(self, self->patcher);
	
	outputObject->mInitData.vectorSize = vectorSize;
	return outputObject->sendMessage(TT("start"));
}


TTErr DacStop(DacPtr self)
{	
	return self->audioGraphObject->getUnitGenerator()->sendMessage(TT("stop"));
}


void DacGetDeviceNames(DacPtr self)
{
	TTValue		v;
	TTErr		err;
	AtomCount	ac;
	AtomPtr		ap;
	TTSymbol	name;
	
	err = self->audioGraphObject->getUnitGenerator()->sendMessage(TT("getAvailableDeviceNames"), kTTValNONE, v);
	if (!err) {
		ac = v.getSize();
		ap = new Atom[ac];
		
		for (AtomCount i=0; i<ac; i++) {
			v.get(i, name);
			atom_setsym(ap+i, gensym((char*)name.c_str()));
		}
		object_obex_dumpout(self, gensym("getAvailableDeviceNames"), ac, ap);
		delete ap;
	}
}


TTErr DacGetCpuLoad(DacPtr self)
{
	TTValue cpuload = -1.0;
	
	self->audioGraphObject->getUnitGenerator()->sendMessage(TT("getCpuLoad"), kTTValNONE, cpuload);
	outlet_float(self->outlet, TTFloat64(cpuload));
	return kTTErrNone;
}


MaxErr DacDoExportRuby(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	TTAudioGraphDescription	desc;
	TTString				fullpathToFile = "/graph-export.rb";
	
	if (argc && argv)
		fullpathToFile = atom_getsym(argv)->s_name;
	else {
		object_error(SELF, "full path required for exportRuby message");
		return MAX_ERR_GENERIC;
	}
	
	self->audioGraphObject->getAudioDescription(desc);
	desc.exportRuby(fullpathToFile);
	
	return MAX_ERR_NONE;
}


MaxErr DacExportRuby(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)DacDoExportRuby, s, argc, argv);
	return MAX_ERR_NONE;
}


MaxErr DacDoExportCpp(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	TTAudioGraphDescription	desc;
	TTString				fullpathToFile = "/graph-export.cpp";
	
	if (argc && argv)
		fullpathToFile = atom_getsym(argv)->s_name;
	else {
		object_error(SELF, "full path required for exportC++ message");
		return MAX_ERR_GENERIC;
	}
	
	self->audioGraphObject->getAudioDescription(desc);
	desc.exportCpp(fullpathToFile);
	
	return MAX_ERR_NONE;
}


MaxErr DacExportCpp(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)DacDoExportCpp, s, argc, argv);
	return MAX_ERR_NONE;
}


MaxErr DacDoExportMax(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	TTAudioGraphDescription	desc;
	TTString				fullpathToFile = "/graph-export.maxpat";
	
	if (argc && argv)
		fullpathToFile = atom_getsym(argv)->s_name;
	else {
		object_error(SELF, "full path required for exportC++ message");
		return MAX_ERR_GENERIC;
	}
	
	self->audioGraphObject->getAudioDescription(desc);
	desc.exportMax(fullpathToFile);
	
	return MAX_ERR_NONE;
}


MaxErr DacExportMax(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)DacDoExportMax, s, argc, argv);
	return MAX_ERR_NONE;
}


MaxErr DacSetSampleRate(DacPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		TTUInt32 sr = atom_getlong(argv);
		self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("sampleRate"), (uint)sr);
	}
	return MAX_ERR_NONE;
}

MaxErr DacGetSampleRate(DacPtr self, void* attr, AtomCount* argc, AtomPtr* argv)
{
	long sr;
	
	self->audioGraphObject->getUnitGenerator()->getAttributeValue(TT("sampleRate"), sr);
	
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setlong(*argv, sr);
	return MAX_ERR_NONE;
}


MaxErr DacSetVectorSize(DacPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		TTUInt32 vs = atom_getlong(argv);
		self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("vectorSize"), (uint)vs);
	}
	return MAX_ERR_NONE;
}

MaxErr DacGetVectorSize(DacPtr self, void* attr, AtomCount* argc, AtomPtr* argv)
{
	long vs;
	
	self->audioGraphObject->getUnitGenerator()->getAttributeValue(TT("vectorSize"), vs);
	
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setlong(*argv, vs);
	return MAX_ERR_NONE;
}


MaxErr DacSetDevice(DacPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		SymbolPtr s = atom_getsym(argv);
		self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("device"), TT(s->s_name));
	}
	return MAX_ERR_NONE;
}

MaxErr DacGetDevice(DacPtr self, void* attr, AtomCount* argc, AtomPtr* argv)
{
	TTValue		v;
	TTSymbol	s;
	
	self->audioGraphObject->getUnitGenerator()->getAttributeValue(TT("device"), v);
	v.get(0, s);
	if (!s)
		return MAX_ERR_GENERIC;
	
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, gensym((char*)s.c_str()));
	return MAX_ERR_NONE;
}
