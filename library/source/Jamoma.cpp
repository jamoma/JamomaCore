/* 
 * Jamoma Shared Library
 * Functions and resources used by Jamoma objects.
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Jamoma.h"
#include "JamomaObject.h"

#include "AsyncRamp.h"
#include "NoneRamp.h"
#include "QueueRamp.h"
#include "SchedulerRamp.h"


// constants
/* those constants are now defined in TTElement.h 
const double k_pi = 3.1415926535897932;		// pi 
const double k_twopi = 6.2831853071795864;	// 2 * pi
const double k_anti_denormal_value = 1e-18;	
*/
// statics and globals
static long					initialized = false;
static t_hashtab			*hash_modules = NULL;				// a hashtab of all modules (jcom.hubs) currently instantiated
bool						max5 = false;

TTSymbolPtr					kTTSym_Jamoma = NULL;
TTApplicationPtr			JamomaApplication = NULL;

/************************************************************************************/
// Init the framework

void jamoma_init(void)
{
	if (!initialized) {
		ObjectPtr	max = SymbolGen("max")->s_thing;
		SymbolPtr	meth = SymbolGen("objectfile");
		Atom		a[4];
		TTValue		v;
	
		if (maxversion() >= 0x0500)
			max5 = true;
		
		TTModularInit(JAMOMA, JamomaConfigurationFilePath);
		kTTSym_Jamoma = TT(JAMOMA);
		JamomaApplication = (TTApplicationPtr)TTModularGetApplication(kTTSym_Jamoma);
		
		// Is the conversion table empty ?
		JamomaApplication->getAttributeValue(TT("allAppNames"), v);
		if (!v.getSize())
			error("JamomaConfiguration.xml can't be loaded. It is expected in Max5/Cycling' \74/init/ folder.");
		
		// DEBUG
		//jamoma_application_dump_configuration();
		
		//TTDSPInit();
		
		AsyncRamp::registerClass();
		NoneRamp::registerClass();
		QueueRamp::registerClass();
		SchedulerRamp::registerClass();
		
		common_symbols_init();
		jamomaSymbolsInit();
		
		//receive_initclass();
		//object_method(max, meth, SymbolGen("jcom.receive"), SymbolGen("jcom.loader"), SymbolGen("jcom.receive"));
		//object_method_sym(max, SymbolGen("db.object_addinternal"), SymbolGen("jcom.receive"), NULL);
		
		//send_initclass();
		//object_method(max, meth, SymbolGen("jcom.send"), SymbolGen("jcom.loader"), SymbolGen("jcom.send"));
		//object_method_sym(max, SymbolGen("db.object_addinternal"), SymbolGen("jcom.send"), NULL);
		
		// Create Required Global Instances
		hash_modules = (t_hashtab*)hashtab_new(0);
		// TODO: Use quittask_install() to set up a destructor for this to free it before Max exits
		
		// This tells Max 5.0.6 and higher that we want the patcher files to be saved such that they are sorted.
		// Having the saved this way makes our SVN diffs much more meaningful.
		object_method_long(max, SymbolGen("sortpatcherdictonsave"), 1, NULL);
	
		// This tells Max 4.5.7 and higher to take any posts to the Max window and also make the
		// post to the system console, which greatly aids in debugging problems and crashes
		object_method_long(max, SymbolGen("setmirrortoconsole"), 1, NULL);

		// Add Jamoma Key Commands:
		
		// J -- Jamoma: a new object box with "jcom." in it
		atom_setsym(a+0, SymbolGen("J"));
		atom_setsym(a+1, SymbolGen("patcher"));
		atom_setsym(a+2, SymbolGen("inserttextobj"));
		atom_setsym(a+3, SymbolGen("jcom."));
		object_method_typed(max, SymbolGen("definecommand"), 4, a, NULL);
		
		// M -- Module: a new object box with "jmod." in it
		atom_setsym(a+0, SymbolGen("M"));
		atom_setsym(a+1, SymbolGen("patcher"));
		atom_setsym(a+2, SymbolGen("inserttextobj"));
		atom_setsym(a+3, SymbolGen("jmod."));
		object_method_typed(max, SymbolGen("definecommand"), 4, a, NULL);

		// I -- Input: a new audio input module
		object_method_parse(max, SymbolGen("definecommand"), (char*)"I patcher insertobj bpatcher @name jmod.input~.maxpat", NULL);
		// O -- Output: a new audio output module	
		object_method_parse(max, SymbolGen("definecommand"), (char*)"O patcher insertobj bpatcher @name jmod.output~.maxpat", NULL);
	
		// B -- BPatcher: a new module in a bpatcher
		object_method_parse(max, SymbolGen("definecommand"), (char*)"B patcher inserttextobj \"bpatcher @name .module @args /myModule\"", NULL);	
		
		// to -- this broken in Modular 0.6 : How to instanciate easily ? Clipping are maybe more usefull than this command ... ?
		// D -- Demo: a new module in a bpatcher, but with the args reverse which is handy for super-fast demos when you don't care about the OSC name
		//object_method_parse(max, SymbolGen("definecommand"), (char*)"D patcher inserttextobj \"bpatcher @name .model\"", NULL);		

		// X -- Continuous Mapper module
		object_method_parse(max, SymbolGen("definecommand"), (char*)"X patcher insertobj bpatcher @name jmod.mapperContinuous.maxpat", NULL);		

		// !!!! --- x is defined here to work around a 'bug' in the Max Toolbox b13 ( http://code.google.com/p/maxtoolbox/downloads/list )
		object_method_parse(max, SymbolGen("definecommand"), (char*)"x patcher nothing", NULL);		

		// now the jamoma object
		{
			t_symbol* jamomaSymbol = SymbolGen("jamoma");
		
			jamoma_object_initclass();
			jamomaSymbol->s_thing = jamoma_object_new();
		}
		
		post("Jamoma (build %s)                        Version %s | jamoma.org", TT_MODULAR_REV, TT_MODULAR_VERSION);

		initialized = true;
	}
}