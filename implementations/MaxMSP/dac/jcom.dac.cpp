/* 
 *	dac≈
 *	Jamoma Multicore external object for Max
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"


// Data Structure for this object
struct Dac {
    Object					obj;
	TTMulticoreObjectPtr	multicoreObject;
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
TTErr	DacConnect(DacPtr self, TTMulticoreObjectPtr audioSourceObject, long sourceOutletNumber);
TTErr	DacInt(DacPtr self, long value);
TTErr	DacStart(DacPtr self);
TTErr	DacStop(DacPtr self);
TTErr	DacGetCpuLoad(DacPtr self);
MaxErr	DacExportRuby(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv);
MaxErr	DacExportCpp(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv);
MaxErr	DacExportMax(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv);
// Prototypes for attribute accessors
MaxErr	DacSetSampleRate(DacPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr	DacGetSampleRate(DacPtr self, void* attr, AtomCount* argc, AtomPtr* argv);
MaxErr	DacSetVectorSize(DacPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr	DacGetVectorSize(DacPtr self, void* attr, AtomCount* argc, AtomPtr* argv);


// Globals
static ClassPtr sDacClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	ClassPtr c;
	
	TTMulticoreInit();	
	common_symbols_init();
	
	c = class_new("jcom.dac≈", (method)DacNew, (method)DacFree, sizeof(Dac), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)DacStart,			"start",				0);
	class_addmethod(c, (method)DacStop,				"stop",					0);
	class_addmethod(c, (method)DacInt,				"int",					A_LONG, 0);
	class_addmethod(c, (method)DacGetCpuLoad,		"getCpuLoad",			0);
	class_addmethod(c, (method)DacNotify,			"notify",				A_CANT, 0);
	class_addmethod(c, (method)DacReset,			"multicore.reset",		A_CANT, 0);
	class_addmethod(c, (method)DacConnect,			"multicore.connect",	A_OBJ, A_LONG, 0);
	class_addmethod(c, (method)MaxMulticoreDrop,	"multicore.drop",		A_CANT, 0);
	class_addmethod(c, (method)MaxMulticoreObject,	"multicore.object",		A_CANT, 0);
	class_addmethod(c, (method)DacExportRuby,		"exportRuby",			A_GIMME, 0);
	class_addmethod(c, (method)DacExportCpp,		"exportC++",			A_GIMME, 0);
	class_addmethod(c, (method)DacExportMax,		"exportMax",			A_GIMME, 0);
	class_addmethod(c, (method)DacAssist,			"assist",				A_CANT, 0); 
	class_addmethod(c, (method)object_obex_dumpout,	"dumpout",				A_CANT, 0);  
	
	CLASS_ATTR_LONG(c,		"sampleRate",	0,		Dac,	obj);
	CLASS_ATTR_ACCESSORS(c,	"sampleRate",	DacGetSampleRate,	DacSetSampleRate);
	
	CLASS_ATTR_LONG(c,		"vectorSize",	0,		Dac,	obj);
	CLASS_ATTR_ACCESSORS(c,	"vectorSize",	DacGetVectorSize,	DacSetVectorSize);
	
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
		v.set(0, TT("multicore.output"));
		v.set(1, 2);
		err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&self->multicoreObject, v);

		v = TTPtr(self->multicoreObject);

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
	TTObjectRelease((TTObjectPtr*)&self->multicoreObject);
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
			if (self->patcherview)
				goto out; // if there is no patcherview, then we are freeing the whole thing and can skip this
			
			#ifdef DEBUG_NOTIFICATIONS
			object_post(SELF, "patch line deleted");
			#endif // DEBUG_NOTIFICATIONS
			
			// get boxes and inlets
			ObjectPtr	sourceBox = jpatchline_get_box1(sender);
			if (!sourceBox)
				goto out;
			ObjectPtr	sourceObject = jbox_get_object(sourceBox);
			long		sourceOutlet = jpatchline_get_outletnum(sender);
			ObjectPtr	destBox = jpatchline_get_box2(sender);
			if (!destBox)
				goto out;
			ObjectPtr	destObject = jbox_get_object(destBox);
			long		destInlet = jpatchline_get_inletnum(sender);
			
			// if both boxes are multicore objects 
			if ( zgetfn(sourceObject, gensym("multicore.object")) && zgetfn(destObject, gensym("multicore.object")) ) {
				#ifdef DEBUG_NOTIFICATIONS
				object_post(SELF, "deleting multicore patchline!");
				#endif // DEBUG_NOTIFICATIONS
				
				object_method(destObject, gensym("multicore.drop"), destInlet, sourceObject, sourceOutlet);
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
	return self->multicoreObject->reset();
}


TTErr DacConnect(DacPtr self, TTMulticoreObjectPtr audioSourceObject, long sourceOutletNumber)
{
	return self->multicoreObject->connect(audioSourceObject, sourceOutletNumber);
}


void DacIterateResetCallback(DacPtr self, ObjectPtr obj)
{
	TTUInt32	vectorSize;
	method		multicoreResetMethod = zgetfn(obj, gensym("multicore.reset"));
	
	if (multicoreResetMethod) {
		self->multicoreObject->mUnitGenerator->getAttributeValue(TT("vectorSize"), vectorSize);
		multicoreResetMethod(obj, vectorSize);
	}
}


void DacIterateSetupCallback(DacPtr self, ObjectPtr obj)
{
	method multicoreSetupMethod = zgetfn(obj, gensym("multicore.setup"));
	
	if (multicoreSetupMethod)
		multicoreSetupMethod(obj);
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
	TTMulticoreOutputPtr	outputObject = TTMulticoreOutputPtr(self->multicoreObject->mUnitGenerator);
	
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
	return self->multicoreObject->mUnitGenerator->sendMessage(TT("stop"));
}


TTErr DacGetCpuLoad(DacPtr self)
{
	TTValue cpuload = -1.0;
	
	self->multicoreObject->mUnitGenerator->sendMessage(TT("getCpuLoad"), cpuload);
	outlet_float(self->outlet, TTFloat64(cpuload));
	return kTTErrNone;
}


MaxErr DacDoExportRuby(DacPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	TTMulticoreDescription	desc;
	TTString				fullpathToFile = "/multicore-export.rb";
	
	if (argc && argv)
		fullpathToFile = atom_getsym(argv)->s_name;
	else {
		object_error(SELF, "full path required for exportRuby message");
		return MAX_ERR_GENERIC;
	}
	
	self->multicoreObject->getDescription(desc);
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
	TTMulticoreDescription	desc;
	TTString				fullpathToFile = "/multicore-export.cpp";
	
	if (argc && argv)
		fullpathToFile = atom_getsym(argv)->s_name;
	else {
		object_error(SELF, "full path required for exportC++ message");
		return MAX_ERR_GENERIC;
	}
	
	self->multicoreObject->getDescription(desc);
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
	TTMulticoreDescription	desc;
	TTString				fullpathToFile = "/multicore-export.maxpat";
	
	if (argc && argv)
		fullpathToFile = atom_getsym(argv)->s_name;
	else {
		object_error(SELF, "full path required for exportC++ message");
		return MAX_ERR_GENERIC;
	}
	
	self->multicoreObject->getDescription(desc);
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
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("sampleRate"), sr);
	}
	return MAX_ERR_NONE;
}

MaxErr DacGetSampleRate(DacPtr self, void* attr, AtomCount* argc, AtomPtr* argv)
{
	long sr;
	
	self->multicoreObject->mUnitGenerator->getAttributeValue(TT("sampleRate"), sr);
	
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
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("vectorSize"), vs);
	}
	return MAX_ERR_NONE;
}

MaxErr DacGetVectorSize(DacPtr self, void* attr, AtomCount* argc, AtomPtr* argv)
{
	long vs;
	
	self->multicoreObject->mUnitGenerator->getAttributeValue(TT("vectorSize"), vs);
	
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setlong(*argv, vs);
	return MAX_ERR_NONE;
}


