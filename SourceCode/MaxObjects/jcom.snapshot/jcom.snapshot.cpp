/* 
 * jcom.snapshot
 * External for Jamoma: capture, recall, transform, and manipulate global snapshots
 * By Timothy Place, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "Jamoma.h"


// A vector of 64-bit floats used to represent a given snapshot
typedef vector<TTFloat64>				SnapshotVec;
typedef SnapshotVec::iterator			SnapshotIter;
typedef SnapshotVec*					SnapshotPtr;

// A vector (or collection) of snapshots
typedef vector<SnapshotPtr>				SnapshotCollectionVec;
typedef SnapshotCollectionVec::iterator	SnapshotCollectionIter;
typedef SnapshotCollectionVec*			SnapshotCollectionPtr;

// Data Structure for this object
typedef struct {
	Object					ob;
	TTTreePtr				tree;
	SnapshotCollectionPtr	snapshots;
} TTModSnapshot;
typedef TTModSnapshot* TTModSnapshotPtr;


// Prototypes
TTPtr		TTModSnapshotNew	(SymbolPtr name, AtomCount argc, AtomPtr argv);
void		TTModSnapshotFree	(TTModSnapshotPtr self);
MaxErr		TTModSnapshotNotify	(TTModSnapshotPtr self, SymbolPtr s, SymbolPtr msg, void *sender, void *data);
void		TTModSnapshotAssist	(TTModSnapshotPtr self, void *b, long m, long a, char *s);
void		TTModSnapshotDump	(TTModSnapshotPtr self);
void		TTModSnapshotStore	(TTModSnapshotPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv);
void		TTModSnapshotRecall	(TTModSnapshotPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv);


// Shared
static ClassPtr	sMaxClass;


// Class Definition
int JAMOMA_EXPORT_MAXOBJ main(void)
{
	ClassPtr c = class_new("jcom.snapshot", 
						   (method)TTModSnapshotNew, 
						   (method)TTModSnapshotFree, 
						    sizeof(TTModSnapshot), 
						    NULL, A_GIMME, 0);
	
	jamoma_init();
	common_symbols_init();
		
	class_addmethod(c, (method)TTModSnapshotNotify,		"notify",		A_CANT, 0);
	class_addmethod(c, (method)TTModSnapshotAssist,		"assist",		A_CANT, 0);
	class_addmethod(c, (method)TTModSnapshotDump,		"dump",			0);
	class_addmethod(c, (method)TTModSnapshotStore,		"store",		A_GIMME, 0);
	class_addmethod(c, (method)TTModSnapshotRecall,		"recall",		A_GIMME, 0);
	
	class_register(_sym_box, c);
	sMaxClass = c;
	return 0;
}


#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

TTPtr TTModSnapshotNew(SymbolPtr name, AtomCount argc, AtomPtr argv)
{
	TTModSnapshotPtr self = (TTModSnapshotPtr)object_alloc(sMaxClass);
	
	if (self) {
		self->snapshots = new SnapshotCollectionVec;
		self->tree = jamoma_tree_init();
	}
	return self;
}

void TTModSnapshotFree(TTModSnapshotPtr self)
{
	delete self->snapshots;
}


#if 0
#pragma mark -
#pragma mark Methods
#endif 0

MaxErr TTModSnapshotNotify(TTModSnapshotPtr self, SymbolPtr s, SymbolPtr msg, TTPtr sender, TTPtr data)
{
	object_post(SELF, "notification : %s", msg->s_name);
	return MAX_ERR_NONE;
}


void TTModSnapshotAssist(TTModSnapshotPtr self, void* b, long msg, long arg, char* dst)
{
	if (msg == ASSIST_INLET) {	// inlet
		if (arg == 0)
			strcpy(dst, "inlet");
	} 
	else {						// outlet
		if (arg == 0)
			strcpy(dst, "outlet");
	}		
}


void TTModSnapshotDump(TTModSnapshotPtr self)
{
	jamoma_tree_dump();	// dump all the address of the tree in the Max window
}


void TTModSnapshotStore(TTModSnapshotPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	;
}

void TTModSnapshotRecall(TTModSnapshotPtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	;
}

