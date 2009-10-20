/*
 * jcom.snapshot
 * External for Jamoma: capture, recall, transform, and manipulate global snapshots
 * By Timothy Place, Copyright 2009
 *
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "Jamoma.h"


typedef struct {
    MspObject              	ob;
    TTNodeDirectoryPtr		tree;
	SymbolPtr				targetModuleName;
	ObjectPtr				targetModule;
	ObjectPtr				targetInObject;
	TTAudioSignalPtr		targetSignal;
} TTModSendTilde;
typedef TTModSendTilde* TTModSendTildePtr;


// Prototypes
TTPtr       TTModSendTildeNew    (SymbolPtr name, AtomCount argc, AtomPtr argv);
void        TTModSendTildeFree   (TTModSendTildePtr self);
MaxErr      TTModSendTildeNotify (TTModSendTildePtr self, SymbolPtr s, SymbolPtr msg, void *sender, void *data);
void        TTModSendTildeAssist (TTModSendTildePtr self, void *b, long m, long a, char *s);
void        TTModSendTildeGetModuleNames   (TTModSendTildePtr self);
//void        TTModSendTildeStore  (TTModSendTildePtr self, SymbolPtr s, AtomCount argc, AtomPtr argv);


// Shared
static ClassPtr sMaxClass;


// Class Definition
int JAMOMA_EXPORT_MAXOBJ main(void)
{
    ClassPtr c = class_new("jcom.send~",
                           (method)TTModSendTildeNew,
                           (method)TTModSendTildeFree,
                            sizeof(TTModSendTilde),
                            NULL, A_GIMME, 0);

    jamoma_init();
    common_symbols_init();

    class_addmethod(c, (method)TTModSendTildeNotify,     		"notify",      		A_CANT, 0);
    class_addmethod(c, (method)TTModSendTildeAssist,   		  	"assist",      		A_CANT, 0);
    class_addmethod(c, (method)TTModSendTildeGetModuleNames,   	"getModuleNames",	0);
//    class_addmethod(c, (method)TTModSendTildeStore,      		"store",        	A_GIMME, 0);
//    class_addmethod(c, (method)TTModSendTildeRecall,     		"recall",       	A_GIMME, 0);

    CLASS_ATTR_SYM(c,   "targetModuleName", 0,  TTModSendTilde,  targetModuleName);

    class_register(_sym_box, c);
    sMaxClass = c;
    return 0;
}


#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

TTPtr TTModSendTildeNew(SymbolPtr name, AtomCount argc, AtomPtr argv)
{
    TTModSendTildePtr self = (TTModSendTildePtr)object_alloc(sMaxClass);

    if (self) {
        self->tree = jamoma_directory_init();

        attr_args_process(self, argc, argv);
    }
    return self;
}

void TTModSendTildeFree(TTModSendTildePtr self)
{
	;
}


#if 0
#pragma mark -
#pragma mark Methods
#endif 0

MaxErr TTModSendTildeNotify(TTModSendTildePtr self, SymbolPtr s, SymbolPtr msg, TTPtr sender, TTPtr data)
{
    object_post(SELF, "notification : %s", msg->s_name);
    return MAX_ERR_NONE;
}


void TTModSendTildeAssist(TTModSendTildePtr self, void* b, long msg, long arg, char* dst)
{
    if (msg == ASSIST_INLET) {  // inlet
        if (arg == 0)
            strcpy(dst, "inlet");
    }
    else {                      // outlet
        if (arg == 0)
            strcpy(dst, "outlet");
    }
}


void TTModSendTildeGetModuleNames(TTModSendTildePtr self)
{
//    jamoma_directory_dump(); // dump all the address of the tree in the Max window
	JamomaError err;
	TTListPtr	nodes = new TTList;
	TTNodePtr	node = NULL;
//	TTUInt32	size;
	TTString	name;

	err = jamoma_directory_get_node_by_type(SymbolGen("/"), SymbolGen("parameter"), &nodes, &node);
	if (!err) {
		nodes->begin();
		while (const TTValue& v = nodes->current()) {
			v.get(0, (TTPtr*)(node));
			name = node->getName()->getCString();
			object_post(SELF, "node: %s", name.c_str());
			nodes->next();
		}
	}	
}

/*
void TTModSendTildeStore(TTModSendTildePtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
    TTNodePtr   rootNode = self->tree->getRoot();
    TTValue     moduleNodes;
    TTUInt32    numModules;
    TTListPtr   returnedChildren = NULL;
    TTErr       err;
    SendTildePtr snapshot = NULL;
    TTUInt32    snapshotIndex = 0;

    // snapshot numbers are 1-based for the outside world
    if (argc && argv)
        snapshotIndex = atom_getlong(argv) - 1;
    if (snapshotIndex < 0)
        snapshotIndex = 0;

    if (snapshotIndex >= self->snapshots->size()) {
        if (snapshotIndex >= self->snapshots->capacity()) {
            self->snapshots->reserve(snapshotIndex+1);
        }
        self->snapshots->resize(snapshotIndex+1);
    }
    else {
        snapshot = self->snapshots->at(snapshotIndex);
        delete snapshot;
        snapshot = NULL;
    }
    snapshot = new SendTilde;


    err = rootNode->getChildren(TT("*"), TT("*"), &returnedChildren);

    returnedChildren->assignToValue(moduleNodes);
    numModules = moduleNodes.getSize();
    for (TTUInt32 i=0; i<numModules; i++) {
        TTNodePtr   module = NULL;
        TTSymbolPtr type;

        moduleNodes.get(i, (TTPtr*)(&module));
        if (module) {
            type = module->getType();
            if (type == TT("hub")) {
                TTValue     parameterNodes;
                TTUInt32    numParameters;

                post("  Module: %s", module->getName()->getCString());
                err = module->getChildren(TT("*"), TT("*"), &returnedChildren);
                returnedChildren->assignToValue(parameterNodes);
                numParameters = parameterNodes.getSize();
                for (TTUInt32 i=0; i<numParameters; i++) {
                    TTNodePtr   parameter = NULL;
                    TTSymbolPtr childType;

                    parameterNodes.get(i, (TTPtr*)(&parameter));
                    if (parameter) {
                        bool exclude = false;
                        // first check for the name in the excludes list
                        for (TTInt32 e=0; e < self->excludeSize; e++) {
                            TTSymbolPtr s1 = parameter->getName();
                            TTSymbolPtr s2 = TT(self->excludes[e]->s_name);

                            if (s1 == s2) {
                                exclude = true;
                                break;
                            }
                        }
                        if (exclude)
                            continue;

                        // then make sure it is actually a parameter
                        childType = parameter->getType();
                        if (childType == TT("subscribe_parameter")) {   // FIXME: this name sucks for the type.
                            ObjectPtr maxObject = (ObjectPtr)parameter->getObject();
                            SymbolPtr maxType = object_attr_getsym(maxObject, SymbolGen("type"));

                            // we're ignoring non-int, non-float params for the time being
                            if (maxType == SymbolGen("decimal") || maxType == SymbolGen("integer")) {
                                TTFloat64               value = object_attr_getfloat(maxObject, SymbolGen("value"));
                                SendTildeParameterValue  spv(value, maxObject);

                                snapshot->push_back(spv);
                                post("    parameter: %s -- value: %lf", parameter->getName()->getCString(), value);
                            }
                        }
                        // FIXME: the code below sucks big-time -- need to redo as a recursive function
                        else if (childType == TT("container")) {
							TTValue     containerNodes;
							TTUInt32    numParameters2;
							TTListPtr	containerChildren = NULL;
							
							post("  Container: %s", parameter->getName()->getCString());
							err = parameter->getChildren(TT("*"), TT("*"), &containerChildren);
							containerChildren->assignToValue(containerNodes);
							numParameters2 = containerNodes.getSize();
							for (TTUInt32 i=0; i<numParameters2; i++) {
								TTNodePtr   parameter2 = NULL;
								TTSymbolPtr childType2;

								containerNodes.get(i, (TTPtr*)(&parameter2));
								if (parameter2) {
									bool exclude = false;
									// first check for the name in the excludes list
									for (TTInt32 e=0; e < self->excludeSize; e++) {
										TTSymbolPtr s1 = parameter2->getName();
										TTSymbolPtr s2 = TT(self->excludes[e]->s_name);

										if (s1 == s2) {
											exclude = true;
											break;
										}
									}
									if (exclude)
										continue;

									// then make sure it is actually a parameter
									childType2 = parameter2->getType();
									if (childType2 == TT("subscribe_parameter")) {   // FIXME: this name sucks for the type.
										ObjectPtr maxObject = (ObjectPtr)parameter2->getObject();
										SymbolPtr maxType = object_attr_getsym(maxObject, SymbolGen("type"));

										// we're ignoring non-int, non-float params for the time being
										if (maxType == SymbolGen("decimal") || maxType == SymbolGen("integer")) {
											TTFloat64               value = object_attr_getfloat(maxObject, SymbolGen("value"));
											SendTildeParameterValue  spv(value, maxObject);

											snapshot->push_back(spv);
											post("    parameter: %s -- value: %lf", parameter2->getName()->getCString(), value);
										}
									}
								}
        }
                        }
                    }
                }
            }
        }
    }
    (*self->snapshots)[snapshotIndex] = snapshot;
}


void TTModSendTildeRecallOne(const SendTildeParameterValue& spv)
{
    object_method(spv.parameter, _sym_float, spv.value);
}


void TTModSendTildeRecall(TTModSendTildePtr self, SymbolPtr s, AtomCount argc, AtomPtr argv)
{
    if (!argc || !argv)
        return;

    // straight recall
    if (argc == 1) {
        SendTildePtr snapshot;
        TTUInt32    snapshotIndex = atom_getlong(argv) - 1;

        if (snapshotIndex < 0)
            snapshotIndex = 0;

        if (snapshotIndex >= self->snapshots->size()) {
            object_error(SELF, "preset recall out of range");
            return;
        }
        snapshot = (*self->snapshots)[snapshotIndex];
		if (snapshot)
        	for_each((*snapshot).begin(), (*snapshot).end(), TTModSendTildeRecallOne);
		else
			object_error(SELF, "invalid preset recall requested");
    }

    // interpolate between any two
    else if (argc == 3) {
        SendTildePtr snapshotA;
        SendTildePtr snapshotB;
        TTUInt32    snapshotIndexA = atom_getlong(argv+0) - 1;
        TTUInt32    snapshotIndexB = atom_getlong(argv+1) - 1;
        TTUInt32    snapshotSizeA = atom_getlong(argv+0);
        TTUInt32    snapshotSizeB = atom_getlong(argv+1);
        TTFloat32   position = atom_getfloat(argv+2);

        if (snapshotIndexA < 0)
            snapshotIndexA = 0;
        if (snapshotIndexB < 0)
            snapshotIndexB = 0;

        if (snapshotIndexA >= self->snapshots->size() ||
            snapshotIndexB >= self->snapshots->size())
        {
            object_error(SELF, "preset recall out of range");
            return;
        }

        snapshotA = (*self->snapshots)[snapshotIndexA];
        snapshotB = (*self->snapshots)[snapshotIndexB];
        snapshotSizeA = snapshotA->size();
        snapshotSizeB = snapshotB->size();

        if (snapshotSizeA != snapshotSizeB) {
            object_error(SELF, "preset recall -- cannot interpolate between snapshots of unequal size");
            return;
        }

        for (TTUInt32 i=0; i<snapshotSizeA; i++) {
            if ( (*snapshotA)[i].parameter == (*snapshotB)[i].parameter ) {
                TTFloat32 f = ((*snapshotA)[i].value * (1.0 - position)) + ((*snapshotB)[i].value * (position));
                object_method((*snapshotA)[i].parameter, _sym_float, f);
            }
        }
    }

    // wieghted interpolation
    else if (argc > 3) {
        TTUInt32    size;
        TTUInt32    ac = argc;
        bool        boundsCheckFailed = false;
        SendTildePtr snapshot;
        SendTilde    interpolatedResult;
        TTFloat32   weight;

        // check bounds
        if (ac > self->snapshots->size()) {
            object_error(SELF, "recall can not interpolate -- not enough snapshots for provided weights");
            return;
        }

        snapshot = (*self->snapshots)[0];
        if (!snapshot) {
            object_error(SELF, "recall can not interpolate -- bogus initial snapshot");
            return;
        }

        size = snapshot->size();
        for (int i=1; i<argc; i++) {
            if (!(*self->snapshots)[i] || (*self->snapshots)[i]->size() != size) {
                boundsCheckFailed = true;
                break;
            }
        }
        if (boundsCheckFailed) {
            object_error(SELF, "recall can not interpolate -- snapshots are of unequal size, or there is a missing snapshot in the sequence");
            return;
        }

        interpolatedResult.reserve(size);
        for (int i=0; i<argc; i++) {
            snapshot = (*self->snapshots)[i];
            weight = atom_getfloat(argv+i);
            if (i==0) {
                interpolatedResult.insert(interpolatedResult.begin(), snapshot->begin(), snapshot->end());
                // TODO: There must be a better way than this nested loop using some variant for for_each() or something...
                for (TTUInt32 j=0; j<size; j++) {
                    interpolatedResult[j].value *= weight;
                }
            }
            else {
                // TODO: There must be a better way than this nested loop using some variant for for_each() or something...
                for (TTUInt32 j=0; j<size; j++) {
                    interpolatedResult[j].value += ((*snapshot)[j].value * weight);
                }
            }
        }
       for_each(interpolatedResult.begin(), interpolatedResult.end(), TTModSendTildeRecallOne);
    }
}
*/
