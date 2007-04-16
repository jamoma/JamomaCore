/* 
 * jcom.hub - presets
 * handle preset functions (including XML reading and writing)
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.hub.h"
#include "libxml/xmlreader.h"
#include "libxml/xmlschemas.h"
#include <functional>
using namespace std;
#define value value_list[0]

struct _byName : binary_function<t_preset*, t_symbol*, bool> {
	bool operator()(const t_preset* p, const t_symbol* q)
		{	return p->name == q; }
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

void hub_preset_recall(t_hub *x, t_symbol *msg, short argc, t_atom *argv)	// number or name
{
	presetList		*preset = x->preset;
	presetItemList	*item;
	bool			found = false;
	short			num_items_with_priority = 0;
	short			num_items_recalled = 0;
	short			i;
	
	if(argc < 1){
		error("jcom.hub (%s module): preset.recall requires a valid argument", x->attr_name);
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
			error("jcom.hub (%s module): preset.recall - invalid preset specified", x->attr_name->s_name);
		critical_exit(0);
		return;
	}
	
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


void hub_preset_store(t_hub *x, t_symbol *msg, short argc, t_atom *argv)		// number & optional name
{
	long			preset_num = 0;
	t_symbol		*preset_name = NULL;
	presetList		*preset = x->preset;
	presetItemList	*item;
	t_preset_item	*newItem = NULL;
	subscriberList	*subscriber;		// used for traversing parameters to get their names and values
	t_atom			*av;					// used for return values from attribute queries
	long			ac;						// ...
	
	if(argc < 1){
		error("jcom.hub (%s module): preset.store requires at least one argument", x->attr_name);
		return;
	}
	if(argv->a_type != A_LONG){
		error("jcom.hub (%s module): preset.store requires first argument to be an int", x->attr_name);
		return;
	}
	
	preset_num = atom_getlong(argv);
	if(argc > 1)
		preset_name = atom_getsym(argv+1);
	else
		preset_name = symbol_unique();
	
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
	for(pIter = preset->begin(); pIter != preset->end(); ++pIter) {
		p = *pIter;
		if(p->number == preset_num) {
			item = p->item;
			// Free the parameters this preset contains
			for(itemIterator = item->begin(); itemIterator != item->end(); ++itemIterator) {
				sysmem_freeptr(*itemIterator);
				itemIterator = item->erase(itemIterator);
			}
			delete item;
			// Free the preset itself
			sysmem_freeptr(p);
			// Remove from linked list
			pIter = preset->erase(pIter);
		}
	}
	
	
	// Allocate the slot for this preset, and store the data
	p = (t_preset *)sysmem_newptr(sizeof(t_preset));
	p->number = preset_num;
	p->name = preset_name;
	/* XXX Probably also need to delete this in hub_free() when deleting a preset */
	p->item = new presetItemList;			// start with no items in the preset

	// Allocate the items for this preset (by traversing all parameters)
	subscriber = x->subscriber;
	subscriberIterator i;
	t_subscriber* t;
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if(t->type == ps_subscribe_parameter){
			newItem = (t_preset_item *)sysmem_newptr(sizeof(t_preset_item));
			newItem->param_name = t->name;

			ac = NULL; av = NULL;												// init
			object_attr_getvalueof(t->object, ps_type, &ac, &av);		// get
			newItem->type = atom_getsym(av);										// copy

			ac = NULL; av = NULL;												// init
			object_attr_getvalueof(t->object, ps_priority, &ac, &av);	// get
			newItem->priority = atom_getlong(av);									// copy
			
			ac = NULL; av = NULL;												// init
			object_attr_getvalueof(t->object, ps_value, &ac, &av);		// get
			sysmem_copyptr(av, &newItem->value_list[0], sizeof(t_atom) * ac);
			newItem->list_size = ac;
			
			p->item->push_back(newItem);
		}
	}
	preset->merge(p, presetIsLess);
	critical_exit(0);	
	hub_preset_buildmenu(x);
}


// read the default file and recall the first preset
void hub_preset_default(t_hub *x)
{
	char	default_file_name[256];
	t_atom	a;
	
	strcpy(default_file_name, x->attr_name->s_name);
	strcat(default_file_name, ".xml");
	
	atom_setlong(&a, 1);

	hub_preset_doread(x, gensym(default_file_name));
	hub_preset_recall(x, _sym_nothing, 1, &a);
}




void hub_preset_read(t_hub *x, t_symbol *userpath)
{
	defer_low(x, (method)hub_preset_doread, userpath, 0, 0L);
}


void hub_preset_doread(t_hub *x, t_symbol *userpath)
{
	char 			filename[256];			// for storing the name of the file locally
	char 			fullpath[512];			// path and name passed on to the xml parser
	short 			path;					// pathID#
	long			outtype;				// the file type that is actually true

	// FIND THE FILE WE WANT TO READ
	if(!userpath->s_name[0]){													// Empty string
		if(open_dialog(filename, &path, &outtype ,NULL, -1))			// Returns 0 if successful
			return;														// User Cancelled
	}
	else{
		strcpy(filename, userpath->s_name);									// Copy symbol argument to a local string
		if(locatefile_extended(filename, &path, &outtype, NULL, -1)){	// Returns 0 if successful
			if(x->attr_name != gensym("/editing_this_module"))
				error("jcom.hub (%s module): preset file not found", x->attr_name->s_name);
			return;														// Not found
		}	
	}

	jcom_core_getfilepath(path, filename, fullpath);
	//post("path for xml preset file: %s", temppath);
	hub_preset_parse(x, fullpath);
	hub_preset_buildmenu(x);
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
		hub_presets_clear(x);
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
					//presetLL->push_front(preset);
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
						item->type = ps_msg_generic;
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
		
					if(item->type == ps_msg_symbol){
						//post("Symbol! %s", (char *)value);
						atom_setsym(&item->value, gensym((char *)val));		// assume symbol	
						item->list_size = 1;
					}
					else if((item->type == ps_msg_int) || (item->type == ps_msg_toggle)){
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
									error("Unable to determine data type");
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
			error("%s: failed to parse", path);
		}
		critical_exit(0);
	}
	else{
		error("Unable to open %s", path);
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
		error("jcom.hub (%s module): jamoma.xsd schema file not found", x->attr_name->s_name);
		return -1;
	}	
	jcom_core_getfilepath(path, filename, fullpath);

	// 2. Actually validate the XML file using the schema...
	//schema_doc = xmlReadFile("/Users/tim/Developer/_electrotap/Jamoma/library/jamoma.xsd", NULL, 0);
	schema_doc = xmlReadFile(fullpath, NULL, 0);
	if(schema_doc == NULL){
		error("jcom.hub: preset validation could not open schema doc");
		goto out;
	}

	parser_context = xmlSchemaNewDocParserCtxt(schema_doc);
	if(schema_doc == NULL){
		error("jcom.hub: preset validation could not create parser for schema doc");
		goto out;
	}

	schema = xmlSchemaParse(parser_context);
	if(schema_doc == NULL){
		error("jcom.hub: preset validation could not create representation of schema in memory");
		goto out;
	}

	context = xmlSchemaNewValidCtxt(schema);
	if(context == NULL){
		error("jcom.hub: preset validation failed to create a context");
		goto out;
	}

	document = xmlReadFile(xml_path, NULL, 0);
	if(document == NULL){
		error("jcom.hub: preset validation could not open the preset file");
		goto out;
	}

	result = xmlSchemaValidateDoc(context, document);	
	if(result){
		error("jcom.hub: preset file FAILED xml schema validation");
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
void hub_presets_clear(t_hub *x)
{
	presetList		*next_preset = x->preset;
	presetItemList	*next_item;
	presetItemListIterator itemIterator;

	presetListIterator i;
	t_preset* p;

	/** XXX Would it be safe here to delay going critical until after the first while loop condition
	 * met?  In theory we should only need to go critical when we are modifying the list like when 
	 * calling erase() or insert().  Leavig it alone for now until after the new linked list code
	 * is in place.  */
	critical_enter(0);	
	for(i = next_preset->begin(); 	i != next_preset->end(); ++i) {
		p = *i;
		next_item = p->item;
		for(itemIterator = next_item->begin(); itemIterator != next_item->end(); ++itemIterator) {
			// Free the preset item
			sysmem_freeptr(*itemIterator);
			// Remove preset item from the item list for this preset
			itemIterator = next_item->erase(itemIterator);
		}
		delete next_item;
		sysmem_freeptr(p);
		i = next_preset->erase(i);
	}
	critical_exit(0);
}


// dump the preset info to the Max window for debugging
void hub_presets_dump(t_hub *x)
{
	presetList		*preset = x->preset;
	presetItemList	*item;

	post("");
	post("PRESET DUMP");
	post("");
	
	presetListIterator i;
	presetItemListIterator itemIterator;
	t_preset *p;
	t_preset_item *presetItem;
	critical_enter(0);
	for(i = preset->begin(); i != preset->end(); ++i) {
		p = *i;
		post("  PRESET %i: %s", p->number, p->name->s_name);
		item = p->item;
		for(itemIterator = item->begin(); itemIterator != item->end(); ++itemIterator) {
			presetItem = *itemIterator;
			if((presetItem->type == ps_msg_int) || (presetItem->type == ps_msg_toggle))
				post("    %s (type %s, priority %i): %ld", presetItem->param_name->s_name,
				 	presetItem->type->s_name, presetItem->priority, atom_getlong(&(presetItem->value)));
			else if(presetItem->type == ps_msg_symbol)
				post("    %s (type %s, priority %i): %s", presetItem->param_name->s_name,
				 	presetItem->type->s_name, presetItem->priority, 
					atom_getsym(&(presetItem->value))->s_name);
			else
				post("    %s (type %s, priority %i): %f", presetItem->param_name->s_name, 
					presetItem->type->s_name, presetItem->priority, atom_getfloat(&(presetItem->value)));
		}		
	}
	critical_exit(0);
}


void hub_preset_write(t_hub *x, t_symbol *userpath)
{
	if(!x->preset){	// no presets have been stored, so store the current state as the default
		t_atom	a[2];

		atom_setlong(&a[0], 1);
		atom_setsym(&a[1], ps_default);
		hub_preset_store(x, gensym("/preset/store"), 2, a);
	}
	defer_low(x, (method)hub_preset_dowrite, userpath, 0, 0L);
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
	char 			filename[256];				// for storing the name of the file locally
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
		sprintf(filename, "%s.xml", x->attr_name->s_name);					// Default File Name
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
		error("jcom.hub: %s - error %d creating file", filename, err);
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
		sprintf(tempstring, "  <preset number='%ld' name='%s'>", p->number, p->name->s_name);
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
					sprintf(tempstring, "    <item name='%s' type='%s' priority='%ld'>%s</item>",
					 	presetItem->param_name->s_name, presetItem->type->s_name, 
						presetItem->priority, result->s_name);
				}
				else if(presetItem->value.a_type == A_FLOAT)
					sprintf(tempstring, "    <item name='%s' type='%s' priority='%ld'>%f</item>",
					 	presetItem->param_name->s_name, presetItem->type->s_name, presetItem->priority,
						atom_getfloat(&(presetItem->value)));
				else if(presetItem->value.a_type == A_LONG)
					sprintf(tempstring, "    <item name='%s' type='%s' priority='%ld'>%ld</item>",
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
		error("jcom.hub: %s - error %d creating EOF", filename, err);
		return;	
	}
							
	sysfile_close(file_handle);		// close file reference
	post("Jamoma: /preset/write completed successfully");
}


// Communicate with the gui to build the preset listing in the module menu
void hub_preset_buildmenu(t_hub *x)
{
	presetList		*preset = x->preset;
	t_atom			a[3];

	if(x->gui_object != NULL){
		atom_setsym(&a[0], ps_NEW_PRESETS_START);
		object_method_typed(x->gui_object, ps_dispatched, 1, a, NULL);
		
		presetListIterator i;
		t_preset *p;
		for(i = preset->begin(); i != preset->end(); ++i) {
			p = *i;
			atom_setsym(&a[0], ps_NEW_PRESETS);
			atom_setsym(&a[1], p->name);
			object_method_typed(x->gui_object, ps_dispatched, 2, a, NULL);
		}

		atom_setsym(&a[0], ps_MENU_REBUILD);		
		object_method_typed(x->gui_object, ps_dispatched, 1, a, NULL);
	}
}
