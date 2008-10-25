/* 
 * jcom.hub - presets
 * handle preset functions (including XML reading and writing)
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.hub.h"
#include "ext_dictionary.h"
#include "jpatcher_api.h"
#include "libxml/xmlreader.h"
#include "libxml/xmlschemas.h"
#include <functional>
using namespace std;
#define value value_list[0]

extern t_object	 *g_jcom_send_notifications;




struct _byName : binary_function<t_preset*, t_preset*, bool> {
	bool operator()(const t_preset* p, const t_preset* q)
		{	return p->name == q->name; }
} presetByName;
 
struct _byNum : binary_function<t_preset*, long, bool> {
	bool operator()(const t_preset* p, const long q)
		{	return p->number == q; }
} presetByNumber;

/** A function object for determining if one t_preset object should follow another t_preset.
 * This is determined by the preset number.
 */
struct _presetIsLess : binary_function<t_preset*, t_preset*, bool> {
	bool operator()(const t_preset* p, const t_preset* q)
		{	return p->number < q->number; }
} presetIsLess;

void hub_preset_copy(t_hub *x, t_symbol *msg, long argc, t_atom *argv)	// number or name
{
	presetList		*preset = x->preset;
	
	if(argc < 1){
		object_error((t_object*)x, "%s module: preset.recall requires a valid argument", x->attr_name);
		return;
	}
	
	presetListIterator pIter;
	bool found = false;
	if(argv->a_type == A_SYM) {
		for(pIter = preset->begin(); pIter != preset->end(); ++pIter) {
			if((*pIter)->name == argv->a_w.w_sym) {
				found = true;
				break;
			}
		}
	} else {
		long presetNum = atom_getlong(argv);
		for(pIter = preset->begin(); pIter != preset->end(); ++pIter) {
			if((*pIter)->number == presetNum) {
				found = true;
				break;
			}
		}			
	}
	
	t_symbol* presetsName = NULL;
	if(found) {
		t_preset *presetCopy = (t_preset*)sysmem_newptr((sizeof(t_preset)));
		// Get name to use for the newly created preset
		if(argc > 1) 
			presetsName = atom_getsym(argv+1);
		else 
 			presetsName = symbol_unique();  // make one up

		critical_enter(0);
		sysmem_copyptr(*pIter, presetCopy, sizeof(t_preset));
		presetItemList	*item = (*pIter)->item;
		presetCopy->number = preset->size() + 1;  // place copied preset at end of preset list
		presetCopy->item = new presetItemList(*item);
		presetCopy->name = presetsName;
		preset->merge(presetCopy, presetIsLess);  // add to list of presets
		critical_exit(0);
	} 
	else
		object_error((t_object*)x, "%s module: preset to copy not found", x->attr_name);
}
			
	
	
void hub_preset_recall(t_hub *x, t_symbol *msg, long argc, t_atom *argv)	// number or name
{
	presetList		*preset = x->preset;
	presetItemList	*item;
	bool			found = false;
	short			num_items_with_priority = 0;
	short			num_items_recalled = 0;
	short			i;
	
	if(argc < 1){
		object_error((t_object*)x, "%s module: preset.recall requires a valid argument", x->attr_name);
		return;
	}

	presetListIterator pIter;
	critical_enter(0);	
	// Search the linked list of presets for the specified preset by name
	if(argv->a_type == A_SYM){
		for(pIter = preset->begin(); pIter != preset->end(); ++pIter) {
			if((*pIter)->name == argv->a_w.w_sym) {
				found = true;
				break;
			}
			//pIter = preset->find_if(preset->begin(), preset->end(), presetByName);
			//found = pIter != preset->end() ? true : false;
		}
	}
	else{
		long preset_num = atom_getlong(argv);
		for(pIter = preset->begin(); pIter != preset->end(); ++pIter) {
			if((*pIter)->number == preset_num) {
				found = true;
				break;
			}
			//pIter = preset->find_if(pIter, preset->end(), presetByNumber);
			//found = pIter != preset->end() ? true : false;
		}
	}
	
	if(!found){
		if(x->attr_name != gensym("/editing_this_module"))
			object_error((t_object*)x, "%s module: preset.recall - invalid preset specified", x->attr_name->s_name);
		critical_exit(0);
		return;
	}
	
	// Store the number of the preset we recalled last in the first preset (the one being recalled now)
	(*(x->preset->begin()))->last_preset_num = (*pIter)->number;
	// Store the name as well
	(*(x->preset->begin()))->last_preset_name = (*pIter)->name;
	// Now take our preset items and send them out!
	item = (*pIter)->item;
	presetItemListIterator itemIterator;
	for(itemIterator = item->begin(); itemIterator != item->end(); ++itemIterator) {
		if((*itemIterator)->priority)
			num_items_with_priority++;
	}

	t_preset_item *presetItem;
	if(num_items_with_priority > 0){
		i=1;
		while(num_items_with_priority > num_items_recalled){
			for(itemIterator = item->begin(); itemIterator != item->end(); ++itemIterator) {
				presetItem = *itemIterator;
				if(presetItem->priority == i) {
					hub_symbol(x, presetItem->param_name, presetItem->list_size,
						&(presetItem->value_list[0]));
					num_items_recalled++;
				}
			}
			i++;
		}
		// Recall items with priority 0 now
		for(itemIterator = item->begin(); itemIterator != item->end(); ++itemIterator) {
			presetItem = *itemIterator;
			if(presetItem->priority == 0)
				hub_symbol(x, presetItem->param_name, presetItem->list_size, &(presetItem->value_list[0]));
		}		
	}
	else{
		for(itemIterator = item->begin(); itemIterator != item->end(); ++itemIterator) {
			presetItem = *itemIterator;
			if(presetItem->priority == 0)
				hub_symbol(x, presetItem->param_name, presetItem->list_size, &(presetItem->value_list[0]));
		}
	}
	critical_exit(0);
}

t_preset* find_preset(presetList *presetll, t_symbol* name)
{
	presetListIterator pIter;
	presetItemListIterator itemIterator;
	t_preset* p;
	//presetList *presetll = x->preset;
		
	for(pIter = presetll->begin(); pIter != presetll->end(); ++pIter) {
		p = *pIter;
		if(p->name == name)
			return p;
	}
	
	return NULL;
}

void interpolate_presets(t_hub *x, t_preset *p1, t_preset *p2, float position)
{
	presetItemList *itemOneList, *itemTwoList;
	itemOneList = p1->item; itemTwoList = p2->item;
	t_preset_item *item1, *item2;
	float val;
	t_atom newValue[LISTSIZE];
	bool found = false;
	
	presetItemListIterator i1, i2;
	for(i1 = itemOneList->begin(), i2 = itemTwoList->begin(); i1 != itemOneList->end() 
		&& i2 != itemTwoList->end(); ++i1, ++i2) {
		
		item1 = *i1; item2 = *i2;

		if(item1->param_name != item2->param_name) {
			// parameter names don't match find the parameter
			found = false;
			for(i2 = itemTwoList->begin(); i2 != itemTwoList->end(); ++i2) {
				item2 = *i2;
				if(item1->param_name != item2->param_name)
					continue;
				else {
					found = true;
					// if params are out of order we need reset list two to the beginning
					i2 = itemTwoList->begin();
					break;
				}
			}
		} else
			found = true;
		
		// couldn't find parameter, skip it
		if(!found) {
			i2 = itemTwoList->begin();
			continue;
		}
		
		// we can assume item1 and item2 are the same type if they are the same parameter (see above)
		if(item1->type == jps_msg_int) {
			val = atom_getfloat(&item1->value_list[0]) * (1. - position) + atom_getfloat(&item2->value_list[0]) * position;
			atom_setfloat(&newValue[0], val);
		} else if(item1->type == jps_msg_float) {
			val = atom_getfloat(&item1->value_list[0]) * (1. - position) + atom_getfloat(&item2->value_list[0]) * position;
			atom_setfloat(&newValue[0], val);
		} else if(item1->type == jps_msg_toggle) {
			val = position <= 0.5 ? atom_getlong(&item1->value) : atom_getlong(&item2->value);
			atom_setlong(&newValue[0], val);
		} else if(item1->type == jps_msg_list || item1->type == gensym("list_int") || item1->type == gensym("list_float")) {
			for(int i = 0; i < item1->list_size; i++) {
				val = atom_getfloat(&item1->value_list[i]) * (1. - position) + atom_getfloat(&item2->value_list[i]) * position;
				atom_setfloat(&newValue[i], val);
			}
		} else if(item1->type == jps_msg_symbol) {
			atom_setsym(&newValue[0], position <= 0.5 ? atom_getsym(&item1->value) : atom_getsym(&item2->value));
		}
		hub_symbol(x, item1->param_name, item1->list_size, &newValue[0]);
			
	}
	
}

void hub_preset_interpolate(t_hub *x, t_symbol *msg, long argc, t_atom *argv)
{
	t_preset *p1, *p2;
	presetList *presetll = x->preset;
	t_symbol *p1Name, *p2Name;
	float position;
	
	if(argc < 3) {
		object_error((t_object*)x, "%s module: interpolation requires three arguments", x->attr_name);
		return;
	}

	p1Name = atom_getsym(argv); p2Name = atom_getsym(argv+1);
	position = atom_getfloat(argv+2);
	
	p1 = find_preset(presetll, p1Name);
	if(!p1) {
		object_error((t_object*)x, "can't find preset %s", p1Name);
		return;
	}
	
	p2 = find_preset(presetll, p2Name);
	if(!p2) {
		object_error((t_object*)x, "can't find preset %s", p1Name);
		return;
	}
	
	interpolate_presets(x, p1, p2, position);
	
}

void hub_preset_store(t_hub *x, t_symbol *msg, long argc, t_atom *argv)		// number & optional name
{
	long			preset_num = 0;
	t_symbol		*preset_name = NULL;
	presetList		*preset = x->preset;
	presetItemList	*item;
	t_preset_item	*newItem = NULL;
	subscriberList	*subscriber;		// used for traversing parameters to get their names and values
	t_atom			*av;					// used for return values from attribute queries
	long			ac;						// ...
	
	if(argc < 1 || atom_getsym(argv) == gensym("Store Current Preset")){
		// write over the last preset recalled
			
		if(preset->empty()) {
			object_error((t_object*)x, "%s module: no preset specified active", x->attr_name);
			return;
		}
		// Recall the number of the preset we recalled last	
		preset_num = (*(preset->begin()))->last_preset_num;
		// Recall the name as well
		preset_name = (*(preset->begin()))->last_preset_name;
	} 
	else{
		if(argv->a_type != A_LONG){
			//error("jcom.hub (%s module): first argument must be an int if a name is specified", x->attr_name);
			preset_num = (*(preset->begin()))->last_preset_num;
			preset_name = atom_getsym(argv);
			return;
		}
		else{		
			preset_num = atom_getlong(argv);
			if(argc > 1)
				preset_name = atom_getsym(argv+1);
			else
				preset_name = symbol_unique();
		}
	}
	
	// Search the linked list for this preset (if it already exists) and remove it
	//	also remove any items that are members of the preset
	presetListIterator pIter;
	presetItemListIterator itemIterator;
	t_preset* p;
	/*
	pIter = preset->begin();
	if(!preset->empty())
	   	pIter = preset->find_if(preset->begin(), preset->end(), presetByNumber(*pIter, preset_num));
	if(pIter != preset->end()) {
	*/
	critical_enter(0);
	pIter = preset->begin();
	while(pIter != preset->end()){
		p = *pIter;
		if(p->number == preset_num) {
			item = p->item;
			// Free the parameters this preset contains
			while(!item->empty()) {
				itemIterator = item->begin();
  				sysmem_freeptr(*itemIterator);
				item->remove(itemIterator);
			}

			/*
			for(itemIterator = item->begin(); itemIterator != item->end(); ++itemIterator) {
			sysmem_freeptr(*itemIterator);
				itemIterator = item->erase(itemIterator);
			}
			*/
			delete item;
			// Free the preset itself
			sysmem_freeptr(p);
			// Remove from linked list
			pIter = preset->erase(pIter);
		}
		else pIter++;
	}
	
	// Allocate the slot for this preset, and store the data
	p = (t_preset *)sysmem_newptr(sizeof(t_preset));
	p->number = preset_num;
	p->name = preset_name;
	// If there are no presets yet don't mess up the list
	if(!x->preset->empty()) {
		// Store the number of the preset we recalled last in the first preset (the one being recalled now)
		(*(x->preset->begin()))->last_preset_num = preset_num;
		// Store the name as well
		(*(x->preset->begin()))->last_preset_name = preset_name;
	}
	/* XXX Probably also need to delete this in hub_free() when deleting a preset */
	p->item = new presetItemList;			// start with no items in the preset

	// Allocate the items for this preset (by traversing all parameters)
	subscriber = x->subscriber;
	subscriberIterator i;
	t_subscriber* t;
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if(t->type == jps_subscribe_parameter){
			newItem = (t_preset_item *)sysmem_newptr(sizeof(t_preset_item));
			newItem->param_name = t->name;

			ac = NULL; av = NULL;												// init
			object_attr_getvalueof(t->object, jps_type, &ac, &av);		// get
			newItem->type = atom_getsym(av);										// copy

			ac = NULL; av = NULL;												// init
			object_attr_getvalueof(t->object, jps_priority, &ac, &av);	// get
			newItem->priority = atom_getlong(av);									// copy
			
			ac = NULL; av = NULL;												// init
			object_attr_getvalueof(t->object, jps_value, &ac, &av);		// get
			sysmem_copyptr(av, &newItem->value_list[0], sizeof(t_atom) * ac);
			newItem->list_size = ac;
			
			p->item->push_back(newItem);
		}
	}
				
	preset->merge(p, presetIsLess);
	if(x->preset->size() == 1) {
		// If there is only 1 preset it's possible it was the first one added, in which case
		// we need to ensure that the first preset has the last preset number and name saved as well
		(*(x->preset->begin()))->last_preset_num = preset_num;
		(*(x->preset->begin()))->last_preset_name = preset_name;
	}
	critical_exit(0);	
}


void hub_preset_store_next(t_hub *x, t_symbol *msg, long argc, t_atom *argv)	
{
	t_atom b[2];
	long result;
	char *text;
	char buf[512];
	
	strcpy(buf, "chateau de preset");

	//long jdialog_showtext(char *prompt, char *deftext, long flags, char **text);
	result = jdialog_showtext("Provide a Name for This Preset", buf, 0, &text);
	if(result != 1)
		return;
	
	atom_setlong(&b[0], x->preset->size() + 1);
	atom_setsym(&b[1], gensym(text));
	hub_preset_store(x, gensym("/preset/store"), 2, b);
	
	// TODO: do we not have to free text?
}

// read the default file and recall the first preset
void hub_preset_default(t_hub *x, t_symbol*, long, t_atom*)
{
	char		default_file_name[256];
	t_atom		a;
	t_atom		args[2];
	t_max_err	err;
	
	strcpy(default_file_name, x->attr_name->s_name);
	strcat(default_file_name, ".xml");
	
	atom_setlong(&a, 1);

	err = hub_preset_doread(x, gensym(default_file_name));
	if(!err){
		hub_preset_recall(x, _sym_nothing, 1, &a);
		
		// Is default preset recalled as part of initialization of module?
		if (x->flag_init) {
			atom_setsym(args, x->attr_name);
			atom_setsym(args+1, x->osc_name);
			object_method_typed(g_jcom_send_notifications, gensym("module.initialized"), 2, args, NULL);
			// Initialization is now done
			x->flag_init = 0;
		}
	}
}




//void hub_preset_read(t_hub *x, t_symbol *userpath)
void hub_preset_read(t_hub *x, t_symbol *msg, long argc, t_atom *argv)
{
	t_symbol	*userpath;

	if(argc)
		userpath = atom_getsym(argv);
	else
		userpath = _sym_nothing;

	defer(x, (method)hub_preset_doread, userpath, 0, 0L);
}


t_max_err hub_preset_doread(t_hub *x, t_symbol *userpath)
{
	char 			filename[256];			// for storing the name of the file locally
	char 			fullpath[512];			// path and name passed on to the xml parser
	short 			path;					// pathID#
	long			outtype;				// the file type that is actually true

	// FIND THE FILE WE WANT TO READ
	if(!userpath->s_name[0]){											// Empty string
		if(open_dialog(filename, &path, &outtype ,NULL, -1))			// Returns 0 if successful
			return MAX_ERR_GENERIC;										// User Cancelled
	}
	else{
		strcpy(filename, userpath->s_name);								// Copy symbol argument to a local string
		if(locatefile_extended(filename, &path, &outtype, NULL, -1)){	// Returns 0 if successful
			if(!x->editing)
				object_error((t_object*)x, "%s module: preset file not found", x->attr_name->s_name);
			return MAX_ERR_GENERIC;										// Not found
		}
	}

	jcom_core_getfilepath(path, filename, fullpath);
	//post("path for xml preset file: %s", temppath);
	hub_preset_parse(x, fullpath);
	return MAX_ERR_NONE;
}


int coerceType(const char* s)
{
	// Is the first char a digit?
	if(isdigit(s[0])){
		// It's not a symbol, so is it an int or a float?
		if(strchr(s, '.'))  // First char is a digit and s contains a ., consider it a float
			return A_FLOAT;
		else
			return A_LONG;  // No decimal point, so treat it as an int
	}
	else if(s[0] == '-'){
		if(strlen(s) > 1){
			if(isdigit(s[1])){
				if(strchr(s, '.'))  	// First char is a digit and s contains a ., consider it a float
					return A_FLOAT;
				else
					return A_LONG;  	// No decimal point, so treat it as an int				
			}
		}
	}
	return A_SYM; // Not a float, not an int, must be a symbol
}


// Actually read and parse the XML file for a preset
void hub_preset_parse(t_hub *x, char *path)
{
	xmlTextReaderPtr	reader = NULL;
	int					ret = 0;
	const xmlChar 		*element_name = 0,
						*name = 0, 
						*number = 0, 
						*val = 0;
	presetList			*presetLL = x->preset;
	t_preset			*preset = NULL;			// the current preset we are parsing
	t_preset_item		*item = NULL;			// the current preset item we are parsing
	const xmlChar		*type = 0;				// data type of the current preset item
	const xmlChar		*priority = 0;
	int 				preset_num = 0;			// temporary holder
	short				result = 0;
	bool				item_opened = false;	// is there currently an item open for writing?
	
	LIBXML_TEST_VERSION							// init the library

	// 1. Check the file before we try to use it
	if(hub_preset_validate(x, path) != 0)
		return;
	
	// 2. Read and parse the file
	reader = xmlReaderForFile(path, NULL, 0);

	if(reader != NULL){
		hub_presets_clear(x, NULL, 0, NULL);
		ret = xmlTextReaderRead(reader);
		
		presetListIterator pli = presetLL->begin();
		critical_enter(0);

		while(ret==1){
			element_name = xmlTextReaderConstName(reader);
			if(element_name == NULL)
				return;
			
			if(!strcmp((char *)element_name, "preset")){
				if(xmlTextReaderNodeType(reader) == 1){				// element start
					number = xmlTextReaderGetAttribute(reader, (xmlChar *)"number");
					//post("PRESET: %s - %s", (char *)xmlTextReaderGetAttribute(reader, (xmlChar *)"number"), (char *)xmlTextReaderGetAttribute(reader, (xmlChar *)"name"));
					//sscanf((char *)xmlTextReaderGetAttribute(reader, (xmlChar *)"number"), "%i", &preset_num);
					sscanf((const char *)number, "%i", &preset_num);

					preset = (t_preset *)sysmem_newptr(sizeof(t_preset));
					preset->number = preset_num;
					name = xmlTextReaderGetAttribute(reader, (xmlChar *)"name");
					//preset->name = gensym((char *)xmlTextReaderGetAttribute(reader, (xmlChar *)"name"));
					preset->name = gensym((char *)name);
					preset->item = new presetItemList;	
	
					xmlFree((void *)number);
					number = NULL;
					xmlFree((void *)name);
					name = NULL;
				}
				else if(xmlTextReaderNodeType(reader) == 15){ 		// element close
					//post("PRESET CLOSING: %s", (char *)xmlTextReaderGetAttribute(reader, (xmlChar *)"number"));
					presetLL->merge(preset, presetIsLess);
				}
			}

			if(!strcmp((char *)element_name, "item")){
				if(xmlTextReaderNodeType(reader) == 1){				// element start
					item_opened = true;
					//post("   ITEM: %s", (char *)xmlTextReaderGetAttribute(reader, (xmlChar *)"name"));
					item = (t_preset_item *)sysmem_newptr(sizeof(t_preset_item));
					name = xmlTextReaderGetAttribute(reader, (xmlChar *)"name");
					item->param_name = gensym((char *)name);
					type = xmlTextReaderGetAttribute(reader, (xmlChar *)"type");
					if(type != NULL)
						item->type = gensym((char *)type);
					else
						item->type = jps_msg_generic;
					priority = xmlTextReaderGetAttribute(reader, (xmlChar *)"priority");
					if(priority)
						sscanf((char *)priority, "%ld", &item->priority);
					else
						item->priority = 0;
					xmlFree((void *)name);
					name = NULL;
					xmlFree((void *)type);
					type = NULL;
					/* XXX should we also be calling xmlFree(reader, (xmlChar*)"priority") right here? */
					xmlFree((void*)priority); 
					priority = NULL;
				}
				else if(xmlTextReaderNodeType(reader) == 15){ 		// element close
					preset->item->push_back(item);
					item_opened = false;
				}
			}

			if(xmlTextReaderNodeType(reader) == XML_TEXT_NODE){
				val = xmlTextReaderConstValue(reader);
				if((val != NULL) && (item_opened)){
					float	temp_float = 0;
					long	temp_int = 0;
		
					if(item->type == jps_msg_symbol){
						//post("Symbol! %s", (char *)value);
						atom_setsym(&item->value, gensym((char *)val));		// assume symbol	
						item->list_size = 1;
					}
					else if((item->type == jps_msg_int) || (item->type == jps_msg_toggle)){
						result = sscanf((char *)val, "%ld", &temp_int);		// try to get long
						if(result > 0){
							//post("Int! %i", temp_int, result);
							atom_setlong(&item->value, temp_int);					
							item->list_size = 1;
						}
					} 
					else {							// (msg_list, msg_generic, a list or not specified)
						char *sep = " ";
						char *element;
						int i = item->list_size = 0;

						for(element = strtok((char*)val, sep); element; element = strtok(NULL, sep), i++) {
							switch(coerceType(element))
							{
								case A_LONG:
									if(sscanf(element, "%ld", &temp_int)) {
										atom_setlong(&item->value_list[i], temp_int);
										item->list_size += 1;
									}
									break;
								case A_FLOAT:
									if(sscanf(element, "%f", &temp_float)) {
										atom_setfloat(&item->value_list[i], temp_float);
										item->list_size += 1;
									}
									break;
								case A_SYM:
									atom_setsym(&item->value_list[i], gensym((char*)element));
									item->list_size += 1;							
									break;
								default:
									object_error((t_object*)x, "Unable to determine data type");
									break;
							}
						}
					}
				}
			}			
			ret = xmlTextReaderRead(reader);
		}
		xmlFreeTextReader(reader);
		if(ret != 0){
			object_error((t_object*)x, "%s: failed to parse", path);
		}
		critical_exit(0);
	}
	else{
		object_error((t_object*)x, "Unable to open %s", path);
	}
}


// Given a path, validate the xml file
short hub_preset_validate(t_hub *x, char *xml_path)
{
	char 					filename[256];			// for storing the name of the file locally
	char 					fullpath[512];			// path and name passed on to the xml parser
	short 					path = 0;				// pathID#
	long					outtype = 0;			// the file type that is actually true
	xmlDocPtr				schema_doc = NULL;
	xmlSchemaParserCtxtPtr	parser_context = NULL;
	xmlSchemaPtr			schema = NULL;
	xmlSchemaValidCtxtPtr 	context = NULL;
	xmlDocPtr				document = NULL;
	short					result = 0;
	
	// 1. Find the XML Schema file
	strcpy(filename, "jamoma.xsd");
	if(locatefile_extended(filename, &path, &outtype, NULL, -1)){
		object_error((t_object*)x, "%s module: jamoma.xsd schema file not found", x->attr_name->s_name);
		return -1;
	}	
	jcom_core_getfilepath(path, filename, fullpath);

	// 2. Actually validate the XML file using the schema...
	//schema_doc = xmlReadFile("/Users/tim/Developer/_electrotap/Jamoma/library/jamoma.xsd", NULL, 0);
	schema_doc = xmlReadFile(fullpath, NULL, 0);
	if(schema_doc == NULL){
		object_error((t_object*)x, "preset validation could not open schema doc");
		goto out;
	}

	parser_context = xmlSchemaNewDocParserCtxt(schema_doc);
	if(schema_doc == NULL){
		object_error((t_object*)x, "preset validation could not create parser for schema doc");
		goto out;
	}

	schema = xmlSchemaParse(parser_context);
	if(schema_doc == NULL){
		object_error((t_object*)x, "preset validation could not create representation of schema in memory");
		goto out;
	}

	context = xmlSchemaNewValidCtxt(schema);
	if(context == NULL){
		object_error((t_object*)x, "preset validation failed to create a context");
		goto out;
	}

	document = xmlReadFile(xml_path, NULL, 0);
	if(document == NULL){
		object_error((t_object*)x, "preset validation could not open the preset file");
		goto out;
	}

	result = xmlSchemaValidateDoc(context, document);	
	if(result){
		object_error((t_object*)x, "preset file FAILED xml schema validation");
	}

out:		
	xmlFreeDoc(document);
	xmlSchemaFreeValidCtxt(context);
	xmlSchemaFree(schema);
	xmlSchemaFreeParserCtxt(parser_context);
	xmlFreeDoc(schema_doc);
	
	return result;
}


// Erase all presets from memory
void hub_presets_clear(t_hub *x, t_symbol*, long, t_atom*)
{
	presetList		*presetList = x->preset;
	presetItemList	*itemList;
	presetItemListIterator  nextItem;
	presetListIterator pli;
	t_preset *thePreset;	

	critical_enter(0);	
	while(!presetList->empty()) {
		pli = presetList->begin();
		thePreset = *pli;
		itemList = thePreset->item;  // The list of items in the preset
		// Delete all the items in the preset
		while(!itemList->empty()) {
			nextItem = itemList->begin();
			sysmem_freeptr(*nextItem);
			itemList->remove(nextItem);
		}
		delete itemList;
		// Free the preset itself
		sysmem_freeptr(thePreset);
		// Remove from list
		presetList->remove(pli);
	}
	critical_exit(0);
}


// dump the preset info for the preset interface
void hub_presets_dump(t_hub *x, t_symbol*, long, t_atom*)
{
	presetList		*preset = x->preset;
	//presetItemList	*item;
	t_atom			a[2];
	
	presetListIterator i;
	presetItemListIterator itemIterator;
	t_preset *p;
	//t_preset_item *presetItem;
	critical_enter(0);
	for(i = preset->begin(); i != preset->end(); ++i) {
		p = *i;
		atom_setlong(&a[0], p->number);
		atom_setsym(&a[1], p->name);
		hub_outlet_return(x, gensym("/preset/dump"), 2, a);
		//item = p->item;
		//presetItem->type->s_name, presetItem->priority, atom_getfloat(&(presetItem->value)));
		//}		
	}
	critical_exit(0);
}

// dump the preset info to the Max window for debugging
void hub_presets_post(t_hub *x, t_symbol*, long, t_atom*)
{
	presetList		*preset = x->preset;
	presetItemList	*item;

	object_post((t_object*)x, "");
	object_post((t_object*)x, "PRESET DUMP");
	object_post((t_object*)x, "");
	
	presetListIterator i;
	presetItemListIterator itemIterator;
	t_preset *p;
	t_preset_item *presetItem;
	critical_enter(0);
	for(i = preset->begin(); i != preset->end(); ++i) {
		p = *i;
		object_post((t_object*)x, "  PRESET %i: %s", p->number, p->name->s_name);
		item = p->item;
		for(itemIterator = item->begin(); itemIterator != item->end(); ++itemIterator) {
			presetItem = *itemIterator;
			if((presetItem->type == jps_msg_int) || (presetItem->type == jps_msg_toggle)){
				object_post((t_object*)x, "    %s (type %s, priority %i): %ld", presetItem->param_name->s_name,
				 	presetItem->type->s_name, presetItem->priority, atom_getlong(&(presetItem->value)));
			}
			else if(presetItem->type == jps_msg_symbol)
				object_post((t_object*)x, "    %s (type %s, priority %i): %s", presetItem->param_name->s_name,
				 	presetItem->type->s_name, presetItem->priority, 
					atom_getsym(&(presetItem->value))->s_name);
			else
				object_post((t_object*)x, "    %s (type %s, priority %i): %f", presetItem->param_name->s_name, 
					presetItem->type->s_name, presetItem->priority, atom_getfloat(&(presetItem->value)));
		}		
	}
	critical_exit(0);
}


void hub_preset_write(t_hub *x, t_symbol *msg, long argc, t_atom *argv)
{
	t_symbol	*userpath;

	if(argc)
		userpath = atom_getsym(argv);
	else
		userpath = _sym_nothing;

	if(x->preset->empty()){	// no presets have been stored, so store the current state as the default
		t_atom	a[2];

		atom_setlong(&a[0], 1);
		atom_setsym(&a[1], jps_default);
		hub_preset_store(x, gensym("/preset/store"), 2, a);
	} else {
		// recall the number of the preset we recalled last in the first preset (the one being recalled now)
		long num = (*(x->preset->begin()))->last_preset_num;
		// recall the name as well
		t_symbol *name = (*(x->preset->begin()))->last_preset_name;
		t_atom b[2];
		atom_setlong(&b[0], num);
		atom_setsym(&b[1], name);
		hub_preset_store(x, gensym("/preset/store"), 2, b);
	}
	
	defer(x, (method)hub_preset_dowrite, userpath, 0, 0L);
}

void writeList(t_filehandle *fh, long *eof, t_preset_item *item)
{
	char tempstring[512];
	long len, err;
	t_symbol* sym;
	len = err = 0;
	
	// write name and type
	snprintf(tempstring, sizeof(tempstring), "    <item name='%s' type='%s' priority='%ld'>",
		item->param_name->s_name, item->type->s_name, item->priority);
	len = strlen(tempstring);
	sysfile_write(*fh, &len, tempstring);
	*eof += len;
	
	for(int i = 0; i < item->list_size; i++) {
		switch(item->value_list[i].a_type) 
		{
			case A_SYM:
				sym = atom_getsym(&item->value_list[i]);
				snprintf(tempstring, sizeof(tempstring), "%s ", sym->s_name);
				break;
			case A_FLOAT:
				snprintf(tempstring, sizeof(tempstring), "%f ", atom_getfloat(&item->value_list[i]));
				break;
			case A_LONG:
				snprintf(tempstring, sizeof(tempstring), "%ld ", atom_getlong(&item->value_list[i]));
				break;
		}
		len = strlen(tempstring);
		sysfile_write(*fh, &len, tempstring);
		*eof += len;
		
	}
	strncpy(tempstring, "</item>\n", sizeof(tempstring) - 1);
	len = strlen(tempstring);
	sysfile_write(*fh, &len, tempstring);
	*eof += len;
}

void hub_preset_dowrite(t_hub *x, t_symbol *userpath)
{
	long 			type = 'TEXT';				// four-char code for Mac file type
	char 			filename[MAX_FILENAME_CHARS];				// for storing the name of the file locally
	short 			path, err;					// pathID#, error number
	long			outtype;					// the file type that is actually true
	t_filehandle	file_handle;				// a reference to our file (for opening it, closing it, etc.)
	long			myEof = 0;
	char 			tempstring[1024];
	presetList		*preset = x->preset;		// the head of the linked list
	presetItemList	*item = NULL;				// for accessing items of the preset
	t_symbol		*result;

	// SPECIFY THE FILE WE WANT TO WRITE
	if(!userpath->s_name[0]){												// Empty string - Throw up a dialog
		snprintf(filename, MAX_FILENAME_CHARS, "%s.xml", x->attr_name->s_name);					// Default File Name
		saveas_promptset("Save Preset...");									// Instructional Text in the dialog
		err = saveasdialog_extended(filename, &path, &outtype, &type, 1);	// Returns 0 if successful
		if(err)																// User Cancelled
			return;															
	}
	else{
		strcpy(filename, userpath->s_name);									// Copy symbol argument to a local string
		path = 0;		
	}

	// NOW ATTEMPT TO CREATE THE FILE...
	err = path_createsysfile(filename, path, type, &file_handle);
	if(err){																// Handle any errors that occur
		object_error((t_object*)x, "%s - error %d creating file", filename, err);
		return;	
	}

	// HERE WE CAN FINALLY WRITE THE DATA OUT TO THE FILE
	jcom_core_file_writeline(&file_handle, &myEof, "<?xml version='1.0' encoding='iso-8859-1' standalone='yes' ?>");
	jcom_core_file_writeline(&file_handle, &myEof, "");
	jcom_core_file_writeline(&file_handle, &myEof, "<jamoma version='0.4'");
	jcom_core_file_writeline(&file_handle, &myEof, "		xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance'");
	jcom_core_file_writeline(&file_handle, &myEof, "		xsi:schemaLocation='http://jamoma.org/ file:jamoma.xsd'");
	jcom_core_file_writeline(&file_handle, &myEof, ">");

	// Process each preset
	presetListIterator i;
	presetItemListIterator itemIterator;
	t_preset* p;
	t_preset_item *presetItem;
	preset = x->preset;	// head of the list of presets
	critical_enter(0);
	for(i = preset->begin(); i != preset->end(); ++i) {
		p = *i;
		snprintf(tempstring, 1024, "  <preset number='%ld' name='%s'>", p->number, p->name->s_name);
		jcom_core_file_writeline(&file_handle, &myEof, tempstring);

		// Process each item in the preset
		item = p->item;
		for(itemIterator = item->begin(); itemIterator != item->end(); ++itemIterator) {
			presetItem = *itemIterator;
			if(presetItem->list_size > 1) {
				writeList(&file_handle, &myEof, presetItem);				
			} else {
				if(presetItem->value.a_type == A_SYM){
					result = atom_getsym(&(presetItem->value));
					snprintf(tempstring, 1024, "    <item name='%s' type='%s' priority='%ld'>%s</item>",
					 	presetItem->param_name->s_name, presetItem->type->s_name, 
						presetItem->priority, result->s_name);
				}
				else if(presetItem->value.a_type == A_FLOAT)
					snprintf(tempstring, 1024, "    <item name='%s' type='%s' priority='%ld'>%f</item>",
					 	presetItem->param_name->s_name, presetItem->type->s_name, presetItem->priority,
						atom_getfloat(&(presetItem->value)));
				else if(presetItem->value.a_type == A_LONG)
					snprintf(tempstring, 1024, "    <item name='%s' type='%s' priority='%ld'>%ld</item>",
					 	presetItem->param_name->s_name, presetItem->type->s_name, presetItem->priority,
						atom_getlong(&(presetItem->value)));
				
				jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			}
		}
		
		jcom_core_file_writeline(&file_handle, &myEof, "  </preset>");
	}
	jcom_core_file_writeline(&file_handle, &myEof, "</jamoma>");
	critical_exit(0);
	
	// WE ARE DONE, SO CLOSE THE FILE
	err = sysfile_seteof(file_handle, myEof);
	if(err){
		object_error((t_object*)x, "%s - error %d creating EOF", filename, err);
		return;	
	}
							
	sysfile_close(file_handle);		// close file reference
	object_post((t_object*)x, "Jamoma: /preset/write completed successfully");
}


void hub_presetnames_linklist(t_hub *x, t_linklist *ll)
{
	presetList*			preset = x->preset;
	presetListIterator	i;
	t_preset*			p;
	t_symobject*		item;
	
	//	critical_enter(0);
	for(i = preset->begin(); i != preset->end(); ++i) {
		p = *i;
		item = (t_symobject*)symobject_new(p->name);
		linklist_append(ll, item);
	}
	//	critical_exit(0);
}


void hub_preset_interface(t_hub* x)
{
	char			filename[MAX_FILENAME_CHARS];
	short			path;
	long			type;
	t_dictionary*	d;
	t_object*		p;
	t_atom			a;
	
	if(x->preset->empty())
		return;
	else{
		x->preset_lastnum = (*(x->preset->begin()))->last_preset_num;
		x->preset_lastname = (*(x->preset->begin()))->last_preset_name;
	}
	
	strncpy_zero(filename, "jcom.preset_interface.maxpat", MAX_FILENAME_CHARS);
	locatefile_extended(filename, &path, &type, NULL, 0);
	dictionary_read(filename, path, &d);
	
	atom_setobj(&a, d);
	p = (t_object*)object_new_typed(_sym_nobox, _sym_jpatcher, 1, &a);
	object_attr_setlong(p, _sym_locked, 1);			// start out locked
	object_attr_setchar(p, _sym_enablehscroll, 0);		// turn off scroll bars
	object_attr_setchar(p, _sym_enablevscroll, 0);
	object_attr_setchar(p, _sym_openinpresentation, 1);	
	object_attr_setchar(p, _sym_toolbarvisible, 0);	
	object_attr_setsym(p, _sym_title, gensym("preset_interface"));		
	object_method_parse(p, _sym_window, "constrain 5 320 179 595", NULL);
	object_attach_byptr_register(x, p, _sym_nobox);
	
	object_method(p, _sym_vis);	// "vis" happens immediately, "front" is defer_lowed
	object_attr_setobj(jpatcher_get_firstview(p), _sym_owner, (t_object*)x);	// become the owner

	OBJ_ATTR_SYM(p, "jmod/modulename", 0, x->osc_name);	// to use in jmod.receive etc.
	OBJ_ATTR_SYM(p, "jmod/presetname", 0, x->preset_lastname);
	OBJ_ATTR_LONG(p, "jmod/presetnumber", 0, x->preset_lastnum);

	x->preset_interface = p;
	object_method(x->preset_interface, _sym_loadbang);
}

