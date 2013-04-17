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

// constants
/* those constants are now defined in TTElement.h 
const double k_pi = 3.1415926535897932;		// pi 
const double k_twopi = 6.2831853071795864;	// 2 * pi
const double k_anti_denormal_value = 1e-18;	
*/
// statics and globals
static long                 initialized = false;			///< Global variabel indicating whether Jamoma has been initiated or not.
static t_hashtab            *hash_modules = NULL;			///< A hashtab of all modules (jcom.hubs) currently instantiated
//t_object                  *obj_jamoma_clock = NULL;		// there is only one master clock for the whole system
//t_object                  *obj_jamoma_scheduler = NULL;	// a shared global instance of the scheduler class (there may be others too)
bool                        max5 = false;					///< Is Jamoma currently running in Max 5 or newer?
bool                        max6 = false;					///< Is Jamoma currently running in Max 6 or newer?

TTSymbol					kTTSym_Jamoma;
TTApplicationPtr			JamomaApplication = NULL;
TTMODULAR_EXPORT TTNodeDirectoryPtr			JamomaDirectory = NULL;

TTRegex*					ttRegexForJmod = NULL;
TTRegex*					ttRegexForJcom = NULL;
TTRegex*					ttRegexForModel = NULL;
TTRegex*					ttRegexForModule = NULL;
TTRegex*					ttRegexForView = NULL;
TTRegex*					ttRegexForMaxpat = NULL;
TTRegex*					ttRegexForMaxhelp = NULL;
TTRegex*					ttRegexForBracket = NULL;

TTString*					ModelPatcherFormat = NULL;
TTString*					ModelPresetFormat = NULL;
TTString*					ViewPresetFormat = NULL;
TTString*					HelpPatcherFormat = NULL;
TTString*					RefpageFormat = NULL;
TTString*					DocumentationFormat = NULL;

/************************************************************************************/
// Init the framework

void jamoma_init(void)
{
	if (!initialized) {
        
		ObjectPtr	max = SymbolGen("max")->s_thing;
		//SymbolPtr	meth = SymbolGen("objectfile");
        TTString    JamomaConfigurationFilePath;
		t_atom		a[4];
		TTValue		v;
 
		if (maxversion() >= 0x0519) {
			max5 = true;
            JamomaConfigurationFilePath = "/Applications/Max5/Cycling \'74/init/JamomaConfiguration.xml";
        }
        
		if (maxversion() >= 0x0600) {
			max6 = true;
            JamomaConfigurationFilePath = "/Applications/Max6/Cycling \'74/init/JamomaConfiguration.xml";
		}
        
		// Init the Modular library
		TTModularInit();
		
		// Create a local application named Jamoma and get it
		TTModularCreateLocalApplication(JAMOMA, JamomaConfigurationFilePath);
		JamomaApplication = getLocalApplication;
		JamomaDirectory = getLocalDirectory;
		kTTSym_Jamoma = TTSymbol(JAMOMA);
		
		// Check if the configuration file have been loaded correctly
		JamomaApplication->getAttributeValue(TTSymbol("allAppNames"), v);
		if (!v.size())
			error("JamomaConfiguration.xml can't be loaded. It is expected in Max5/Cycling' \74/init/ folder.");
		
		// DEBUG
		//jamoma_application_dump_configuration();

		// Initialize common symbols
		common_symbols_init();
		jamomaSymbolsInit();
		
		// Initialize common regex
		ttRegexForJmod = new TTRegex("(jmod.)");
		ttRegexForJcom = new TTRegex("(jcom.)");
		ttRegexForModel = new TTRegex("(.model)");
		ttRegexForModule = new TTRegex("(.module)");
		ttRegexForView = new TTRegex("(.view)");
		ttRegexForMaxpat = new TTRegex("(.maxpat)");
		ttRegexForMaxhelp = new TTRegex("(.maxhelp)");
		ttRegexForBracket = new TTRegex("\\[(\\d|\\d\\d|\\d\\d\\d)\\]");	// parse until 999
		
		ModelPatcherFormat = new TTString("%s.model.maxpat");
		ModelPresetFormat = new TTString("%s.model.xml");
		ViewPresetFormat = new TTString("%s.view.xml");
		HelpPatcherFormat = new TTString("%s.module");
		RefpageFormat = new TTString("%s.model");
		DocumentationFormat = new TTString("%s.model.html");
		
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
		object_method_parse(max, SymbolGen("definecommand"), (char*)"I patcher insertobj bpatcher @name input~.module.maxpat @args input~", NULL);
				
		// O -- Output: a new audio output module	
		object_method_parse(max, SymbolGen("definecommand"), (char*)"O patcher insertobj bpatcher @name output~.module.maxpat @args output~", NULL);
		
		// B -- BPatcher: a new module in a bpatcher
		object_method_parse(max, SymbolGen("definecommand"), (char*)"B patcher inserttextobj \"bpatcher @name .module @args myModule\"", NULL);		

		// D -- Demo: a new module in a bpatcher, but with the args reverse which is handy for super-fast demos when you don't care about the OSC name
		object_method_parse(max, SymbolGen("definecommand"), (char*)"D patcher inserttextobj \"bpatcher @name .module\"", NULL);		

		// X -- Continuous Mapper module
		object_method_parse(max, SymbolGen("definecommand"), (char*)"X patcher insertobj bpatcher @name mapperContinuous.model.maxpat @args mapper", NULL);		
		
		// !!!! --- x is defined here to work around a 'bug' in the Max Toolbox b13 ( http://code.google.com/p/maxtoolbox/downloads/list )
		object_method_parse(max, SymbolGen("definecommand"), (char*)"x patcher nothing", NULL);		
		
		//definecommandinstructions, are unspooirted in max5 and gives anoying error messages 
		if (max6){
			// J -- Jamoma: a new object box with "jcom." in it
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("J"));
			atom_setsym(a+2, SymbolGen("jcom. object"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);
			// M -- Module: a new object box with "jmod." in it
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("M"));
			atom_setsym(a+2, SymbolGen("jmod. object"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);
			// I -- Input: a new audio input module
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("I"));
			atom_setsym(a+2, SymbolGen("jmod.input~"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);
			// O -- Output: a new audio output module
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("O"));
			atom_setsym(a+2, SymbolGen("jmod.output~"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);	
			// B -- BPatcher: a new module in a bpatcher
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("B"));
			atom_setsym(a+2, SymbolGen("bpatcher @name jmod. @args myModule"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);		
			// D -- Demo: a new module in a bpatcher,
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("D"));
			atom_setsym(a+2, SymbolGen("bpatcher @name jmod."));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);
			// X -- Continuous Mapper module
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("X"));
			atom_setsym(a+2, SymbolGen("jmod.mapperContinuous"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);	
		}
		/*
		// Here bind the TTBlue environment object to the symbol "TTBlue"
		{
			t_symbol* TTBlueMaxSymbol = SymbolGen("TTBlue");
			
			TTBlueMaxSymbol->s_thing = 0;
			// Before we can do this we have to have a ttblue max class to receive the messages, duh...
		}*/
		
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
