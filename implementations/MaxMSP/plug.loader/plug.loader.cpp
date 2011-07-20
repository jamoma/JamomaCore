/* 
 *	plug.loader
 *	Configure Plugtastic Authoring Environment in Max
 *	(executable should be placed in the C74:/extensions folder)
 *
 *	Copyright © 2010 by Timothy Place
 *	All Rights Reserved
 */

#include "MaxAudioGraph.h"
#include "PlugtasticAPI.h"
#include "ext_path.h"
#include "ext_preferences.h"


/************************************************************************************/

static ObjectPtr	sMaxObject;

static ClassPtr		sPlugtasticClass;
static ObjectPtr	sPlugtasticObject;
static SymbolPtr	ps_plugtastic;
static long			sPlugtasticSplash = 1;

static SymbolPtr	ps_objectfile;
static SymbolPtr	ps_db_object_addinternal;
static SymbolPtr	ps_db_addmetadata;
static SymbolPtr	ps_oblist;
//static int			sDeferCount = 1000; // this is a total hack -- it seems the hashtab that makes object mappings work is not available until the db is done rebuilding.
										// TODO: the defer hack is no longer needed for Max 5.1.7 -- so I should probably wait for 5.1.7 to do the public beta?

/************************************************************************************/


void plug_alias_register(const char* plugtastic_name, const char* original_name, const char* category, const char* description)
{
	t_atom		a[4];
	TTString	str = "Plugtastic ";
	
	// create alias
	object_method(sMaxObject, ps_objectfile, GENSYM(plugtastic_name), GENSYM(original_name), GENSYM(original_name));

	// add to autocompletion
	atom_setsym(a, GENSYM(plugtastic_name));
	object_method_typed(sMaxObject, ps_db_object_addinternal, 1, a, NULL);
	
	// add to object list
	str += category;
	object_method(sMaxObject, ps_oblist, GENSYM(str.c_str()), GENSYM(plugtastic_name));	
	
	atom_setsym(a+0, GENSYM(plugtastic_name));
	atom_setsym(a+1, _sym_object);
	atom_setsym(a+2, _sym_tag);
	atom_setsym(a+3, GENSYM("Plugtastic"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	
	atom_setsym(a+0, GENSYM(plugtastic_name));
	atom_setsym(a+1, _sym_object);
	atom_setsym(a+2, _sym_tag);
	atom_setsym(a+3, GENSYM(category));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	
	atom_setsym(a+0, GENSYM(plugtastic_name));
	atom_setsym(a+1, _sym_object);
	atom_setsym(a+2, _sym_description);
	atom_setsym(a+3, GENSYM(description));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
}


void plug_setup_db(void)
{
	t_atom a[4];
	
	// This ugly hack not needed as of Max 5.1.7
	//	if (sDeferCount) {
	//		sDeferCount--;
	//		defer_low(sMaxObject, (method)plug_setup_db, NULL, 0, NULL);
	//		return;
	//	}
	
	// OBJECTS
	
	plug_alias_register("adc≈",					"jcom.adc≈",				"Audio",			"Audio input");
	plug_alias_register("adsr≈",				"jcom.adsr≈",				"Audio",			"ADSR Envelope Generator");
	plug_alias_register("audiounit≈",			"jcom.audiounit≈",			"Audio",			"Host an AudioUnit plug-in");
	plug_alias_register("dac≈",					"jcom.dac≈",				"Audio",			"Audio output");
	plug_alias_register("dcblocker≈",			"jcom.dcblocker≈",			"Audio",			"Eliminate DC offsets");
	plug_alias_register("degrade≈",				"jcom.degrade≈",			"Audio",			"Distortion effect");
	plug_alias_register("delay≈",				"jcom.delay≈",				"Audio",			"Delay audio by a specified time");
	plug_alias_register("fft≈",					"jcom.fft≈",				"Audio",			"Convert a signal into the frequency domain");
	plug_alias_register("filter≈",				"jcom.filter≈",				"Audio",			"Swiss-Army knife of audio filters");
	plug_alias_register("gain≈",				"jcom.gain≈",				"Audio",			"Amplify or attenuate audio");
	plug_alias_register("hilbert≈",				"jcom.hilbert≈",			"Audio",			"Phase quadrature filter");
	plug_alias_register("info≈",				"jcom.info≈",				"Audio",			"Get properties of an audio signal");
	plug_alias_register("join≈",				"jcom.join≈",				"Audio",			"Join multiple signals together into a single signal");
	plug_alias_register("limiter≈",				"jcom.limiter≈",			"Audio",			"Lookahead dynamics processor");
	plug_alias_register("matrix≈",				"jcom.matrix≈",				"Audio",			"Mix and route channels within a signal");
	plug_alias_register("matrixmixer≈",			"jcom.matrixmixer≈",		"Audio",			"Mix and route multiple channels with each other");
	plug_alias_register("noise≈",				"jcom.noise≈",				"Audio",			"Generate various kinds of noise");
	plug_alias_register("op≈",					"jcom.op≈",					"Audio",			"Perform mathematical operations");
	plug_alias_register("overdrive≈",			"jcom.overdrive≈",			"Audio",			"Saturation effect");
	plug_alias_register("pack≈",				"jcom.pack≈",				"Audio",			"Bridge from MSP audio signals to Plugtastic");
	plug_alias_register("phasor≈",				"jcom.phasor≈",				"Audio",			"Oscillator ramping linearly from 0.0 to 1.0");
	plug_alias_register("pulsesub≈",			"jcom.pulsesub≈",			"Audio",			"Apply a cyclic ADSR envelope onto an input signal");
	plug_alias_register("resample≈",			"jcom.resample≈",			"Audio",			"Up/Downsample an audio signal");
	plug_alias_register("sig≈",					"jcom.sig≈",				"Audio",			"Create a signal from a constant value");
	plug_alias_register("soundfile.player≈",	"jcom.soundfile.player≈",	"Audio",			"Play a Soundfile");
	plug_alias_register("soundfile.recorder≈",	"jcom.soundfile.recorder≈",	"Audio",			"Record a Soundfile");
	plug_alias_register("split≈",				"jcom.split≈",				"Audio",			"Break a multichannel audio signal into smaller signals");
	plug_alias_register("unpack≈",				"jcom.unpack≈",				"Audio",			"Bridge from Plugtastic to MSP audio signals");
	plug_alias_register("wavetable≈",			"jcom.wavetable≈",			"Audio",			"Wavetable oscillator with several waveform options");
	plug_alias_register("window≈",				"jcom.window≈",				"Audio",			"Generate/Apply a window function for signal vector");

	plug_alias_register("in≈",					"plug.in≈",					"Environment",		"Audio input from the plug-in host environment");
	plug_alias_register("out≈",					"plug.out≈",				"Environment",		"Audio output to the plug-in host environment");
	plug_alias_register("parameter#",			"plug.parameter#",			"Environment",		"Define a parameter to be controlled in the host environment");

	plug_alias_register("append#",				"jcom.append#",				"Control",			"Add/Replace named data in a dictionary");
	plug_alias_register("dataspace#",			"jcom.dataspace#",			"Control",			"Convert values expressed in one unit into another unit.");
	plug_alias_register("iter#",				"jcom.iter#",				"Control",			"Output all key/value sets from a dictionary to Max messages.");
	plug_alias_register("log#",					"jcom.log#",				"Control",			"Print input to the Max window.");
	plug_alias_register("midi.in#",				"jcom.midi.in#",			"Control",			"MIDI Input from a device, or from the plug-in host environment");
	plug_alias_register("midi.out#",			"jcom.midi.out#",			"Control",			"MIDI Output to a device");
	plug_alias_register("midi.filter#",			"jcom.midi.filter#",		"Control",			"Parse raw MIDI events");
	plug_alias_register("midi.format#",			"jcom.midi.format#",		"Control",			"Format dictionaries into raw MIDI events");
	plug_alias_register("op#",					"jcom.op#",					"Control",			"Perform mathematical operations on a dictionary");
	plug_alias_register("pack#",				"jcom.pack#",				"Control",			"Convert native Max data into a Plugtastic dictionary");
	plug_alias_register("unpack#",				"jcom.unpack#",				"Control",			"Convert a Plugtastic dictionary into native Max data");

	// backwards compatibility
	//plug_alias_register("parameter!",			"plug.parameter#",			"Environment",		"Define a parameter to be controlled in the host environment");
	//plug_alias_register("append!",				"jcom.append#",				"Control",			"Add/Replace named data in a dictionary");
	//plug_alias_register("op!",					"jcom.op#",					"Control",			"Perform mathematical operations on a dictionary");
	//plug_alias_register("pack!",				"jcom.pack#",				"Control",			"Convert native Max data into a Plugtastic dictionary");
	//plug_alias_register("unpack!",				"jcom.unpack#",				"Control",			"Convert a Plugtastic dictionary into native Max data");

	// CLIPPINGS
	
	atom_setsym(a+1, _sym_clipping);
	atom_setsym(a+2, _sym_tag);

	atom_setsym(a+3, GENSYM("Plugtastic"));
	atom_setsym(a+0, GENSYM("plug.input"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	atom_setsym(a+0, GENSYM("plug.output"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	atom_setsym(a+0, GENSYM("plug.param"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	
	atom_setsym(a+3, GENSYM("Environment"));	
	atom_setsym(a+0, GENSYM("plug.input"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	atom_setsym(a+0, GENSYM("plug.output"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	atom_setsym(a+0, GENSYM("plug.param"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	
	atom_setsym(a+2, _sym_description);

	atom_setsym(a+0, GENSYM("plug.input"));
	atom_setsym(a+3, GENSYM("Input stage for developing a plug-in"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	
	atom_setsym(a+0, GENSYM("plug.output"));
	atom_setsym(a+3, GENSYM("Output stage for developing a plug-in"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	
	atom_setsym(a+0, GENSYM("plug.param"));
	atom_setsym(a+3, GENSYM("Expanded parameter with a number box"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	
	// EXAMPLES
	
	atom_setsym(a+1, _sym_patcher);
	atom_setsym(a+2, _sym_tag);
	
	atom_setsym(a+3, GENSYM("Plugtastic"));
	atom_setsym(a+0, GENSYM("My Plugtastic Adventure"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
	
	atom_setsym(a+3, GENSYM("Example"));	
	atom_setsym(a+0, GENSYM("My Plugtastic Adventure"));
	object_method_typed(sMaxObject, ps_db_addmetadata, 4, a, NULL);
}





typedef struct _plugtastic {
	Object		obj;
	long*		openSplash;
	ObjectPtr	forward;
} t_plugtastic;


t_plugtastic* plugtastic_new()
{
	t_plugtastic*	self = (t_plugtastic*)(object_alloc(sPlugtasticClass));
	t_atom			a;
	t_class*		c;
	t_object*		p;

	c = class_findbyname(_sym_box, _sym_forward);
	if (!c) {
		p = (t_object*)newinstance(_sym_forward, 0, NULL);
		if (p) {
			c = class_findbyname(_sym_box, _sym_forward);
			freeobject(p);
			p = NULL;
		}
	}
	atom_setsym(&a, GENSYM("plugtastic_extra_toggle"));
	self->forward = (t_object*)object_new_typed(CLASS_BOX, _sym_forward, 1, &a);
	
	self->openSplash = &sPlugtasticSplash;
	a.a_type = 0;
	preferences_getatomforkey(GENSYM("plugtastic_splash"), &a);
	if (a.a_type)
		*self->openSplash = atom_getlong(&a);
		
	return self;
}


// prefs
t_max_err plugtastic_getpref(void *dummy, void *attr, long *argc, t_atom **argv)
{
	char alloc;
	
	atom_alloc_array(1, argc, argv, &alloc);
	atom_setlong(*argv, sPlugtasticSplash);
	return MAX_ERR_NONE;
}

t_max_err plugtastic_setpref(void *dummy, void *attr, long argc, t_atom *argv)
{
	sPlugtasticSplash = atom_getlong(argv);
	return MAX_ERR_NONE;
}


// methods

void plugtastic_get_splash(t_plugtastic* self)
{
	t_atom a;
	
	// receive name: plugtastic_extra_toggle
	if (self->forward != NULL) {
		atom_setlong(&a, *self->openSplash);
		object_method_typed(self->forward, _sym_int, 1, &a, NULL);
	}
}


void plugtastic_set_splash(t_plugtastic* self, long state)
{
	*self->openSplash = state;
}



void plugtastic_classinit()
{
	sPlugtasticClass = class_new((char*)"plugtastic", (method)plugtastic_new, (method)NULL, sizeof(t_plugtastic), (method)NULL, 0);
	
	class_addmethod(sPlugtasticClass, (method)plugtastic_get_splash,	"get_show_extra_on_launch",	0);
	class_addmethod(sPlugtasticClass, (method)plugtastic_set_splash,	"set_show_extra_on_launch",	A_LONG, 0);
	
	class_register(_sym_nobox, sPlugtasticClass);
	
	preferences_define("plugtastic_splash", "long", "Show Plugtastic Intro Screen At Launch", "onoff", "Plugtastic", 0, 
					   (method)plugtastic_getpref, (method)plugtastic_setpref, 0/*PREFERENCES_FLAGS_INVISIBLE*/);
	
}


int main(void)
{
	common_symbols_init();
	PlugtasticInit();

	plugtastic_classinit();
	sPlugtasticObject = (t_object*)plugtastic_new();
	ps_plugtastic = GENSYM("plugtastic");
	ps_plugtastic->s_thing = sPlugtasticObject;

	sMaxObject = _sym_max->s_thing;
	ps_objectfile				= GENSYM("objectfile");
	ps_db_object_addinternal	= GENSYM("db.object_addinternal");
	ps_oblist					= GENSYM("oblist");
	ps_db_addmetadata			= GENSYM("db.addmetadata");
	
	//defer_low(sMaxObject, (method)plug_setup_db, NULL, 0, NULL);
	plug_setup_db();
	
	post("Plugtastic                                            Version %s | 74Objects.com", PLUGTASTIC_VERSION);
	

	// This tells Max 5.0.6 and higher that we want the patcher files to be saved such that they are sorted.
	// Having the saved this way makes our SVN diffs much more meaningful.
	object_method_long(sMaxObject, GENSYM("sortpatcherdictonsave"), 1, NULL);
	
	// This tells Max 4.5.7 and higher to take any posts to the Max window and also make the
	// post to the system console, which greatly aids in debugging problems and crashes
	object_method_long(sMaxObject, GENSYM("setmirrortoconsole"), 1, NULL);
	
	
	// OPEN THE SPLASH
	
	if (sPlugtasticSplash) {
		char			name[MAX_FILENAME_CHARS];
		short			path = 0;
		long			type = 0;
		long			typelist[2] = {'JSON', 'TEXT'};
		short			err;
		t_dictionary*	d;
		t_object*		p;
		t_atom			a[2];
		
		strncpy_zero(name, "Plugtastic.maxpat", MAX_FILENAME_CHARS);
		err = locatefile_extended(name, &path, &type, typelist, 2);
		dictionary_read(name, path, &d);
		
		atom_setobj(a, d);
		p = (t_object*)object_new_typed(_sym_nobox, _sym_jpatcher, 1, a);
		object_attr_setlong(p, _sym_locked, 1);			// start out locked
		object_attr_setchar(p, _sym_enablehscroll, 0);		// turn off scroll bars
		object_attr_setchar(p, _sym_enablevscroll, 0);
		object_attr_setchar(p, _sym_toolbarvisible, 0);	
		object_attr_setsym(p, _sym_title, gensym("Welcome to Plugtastic"));		
		object_attr_setparse(p, _sym_rect, "271 170 799 489");
		object_attr_setparse(p, _sym_defrect, "271 170 799 489");

		object_method(p, _sym_vis);	// "vis" happens immediately, "front" is defer_lowed
		object_method(p, _sym_loadbang);

//		object_method_parse(p, _sym_window, "constrain 799 489 799 489", NULL);
		object_method_parse(p, _sym_window, "flags nozoom", NULL);
		object_method_parse(p, _sym_window, "flags nogrow", NULL);
		object_method_parse(p, _sym_window, "exec", NULL);
	}	
	
	
	return 0;
}

