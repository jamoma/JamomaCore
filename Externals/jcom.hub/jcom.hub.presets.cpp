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
#define value value_list[0]

void hub_preset_recall(t_hub *x, t_symbol *msg, short argc, t_atom *argv)	// number or name
{
	t_preset		*preset = x->preset;
	t_preset_item	*item = NULL;
	bool			found = false;
	
	if(argc < 1){
		error("jcom.hub (%s module): preset.recall requires a valid argument", x->attr_name);
		return;
	}
	
	// Search the linked list of presets for the specified preset
	if(argv->a_type == A_SYM){
		while(preset){
			if(preset->name == argv->a_w.w_sym){		// we found it
				found = true;
				break;
			}
			preset = preset->next;
		}
	}
	else{
		long preset_num = atom_getlong(argv);
		while(preset){
			if(preset->number == preset_num){		// we found it
				found = true;
				break;
			}
			preset = preset->next;
		}
	}
	
	if(!found){
		error("jcom.hub (%s module): preset.recall - invalid preset specified", x->attr_name->s_name);
		return;
	}
	
	// Now take our preset items and send them out!
	item = preset->item;
	while(item){
		hub_symbol(x, item->param_name, item->list_size, &item->value_list[0]);
		item = item->next;
	}
}


void hub_preset_store(t_hub *x, t_symbol *msg, short argc, t_atom *argv)		// number & optional name
{
	long			preset_num = 0;
	t_symbol		*preset_name = NULL;
	t_preset		*preset = x->preset;
	t_preset		*prev_preset = NULL;
	t_preset_item	*item = NULL;
	t_preset_item	*next_item = NULL;
	t_subscriber	*subscriber = NULL;		// used for traversing parameters to get their names and values
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
	while(preset){
		if(preset->number == preset_num){
			if(prev_preset != NULL)
				prev_preset->next = preset->next;
			else
				x->preset = preset->next;

			while(preset->item != NULL){
				next_item = preset->item->next;
				sysmem_freeptr(preset->item);
				preset->item = next_item;
			}		
			sysmem_freeptr(preset);
			break;
		}
		prev_preset = preset;
		preset = preset->next;
	}
	
	
	// Allocate the slot for this preset, and store the data
	preset = (t_preset *)sysmem_newptr(sizeof(t_preset));
	preset->number = preset_num;
	preset->name = preset_name;
	preset->item = NULL;			// start with no items in the preset

	// Allocate the items for this preset (by traversing all parameters)
	subscriber = x->subscriber;
	while(subscriber){
		if(subscriber->type == ps_subscribe_parameter){
			item = (t_preset_item *)sysmem_newptr(sizeof(t_preset_item));
			item->param_name = subscriber->name;

			ac = NULL; av = NULL;												// init
			object_attr_getvalueof(subscriber->object, ps_type, &ac, &av);		// get
			item->type = atom_getsym(av);										// copy
			
			ac = NULL; av = NULL;												// init
			object_attr_getvalueof(subscriber->object, ps_value, &ac, &av);		// get
			sysmem_copyptr(av, &item->value_list[0], sizeof(t_atom) * ac);
			item->list_size = ac;

			item->next = preset->item;
			preset->item = item;
		}
		subscriber = subscriber->next;
	}
	preset->next = x->preset;
	x->preset = preset;
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
			error("jcom.hub (%s module): preset file not found", x->attr_name->s_name);
			return;														// Not found
		}	
	}

	path_topathname(path, filename, fullpath);

#ifdef MAC_VERSION
	char *temppath;
	temppath = strchr(fullpath, ':');
	temppath += 1;
#else // WIN_VERSION
	char temppath[512];
	path_nameconform(fullpath, temppath, PATH_STYLE_NATIVE_WIN, PATH_TYPE_ABSOLUTE);
#endif
	
	//post("path for xml preset file: %s", temppath);
	hub_preset_parse(x, temppath);
}

int coerceType(const char* s)
{
	// Is the first char a digit?
	if(isdigit(s[0])) {
		// It's not a symbol, so is it an int or a float?
		if(strchr(s, '.'))  // First char is a digit and s contains a ., consider it a float
			return A_FLOAT;
		else
			return A_LONG;  // No decimal point, so treat it as an int
	}
	
	return A_SYM; // Not a float, not an int, must be a symbol
}

// Actually read and parse the XML file for a preset
void hub_preset_parse(t_hub *x, char *path)
{
	xmlTextReaderPtr	reader;
	int					ret;
	const xmlChar 		*name, *number, *val;
	t_preset			*preset;				// the current preset we are parsing
	t_preset_item		*item;					// the current preset item we are parsing
	const xmlChar		*type;					// data type of the current preset item
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
		
		while(ret==1){
			name = xmlTextReaderConstName(reader);
			if(name == NULL)
				return;

			if(!strcmp((char *)name, "preset")){
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
					preset->item = NULL;			// start with no items in the preset
					
					free((void *)number);
					free((void *)name);
				}
				else if(xmlTextReaderNodeType(reader) == 15){ 		// element close
					//post("PRESET CLOSING: %s", (char *)xmlTextReaderGetAttribute(reader, (xmlChar *)"number"));
					preset->next = x->preset;
					x->preset = preset;
				}
			}

			if(!strcmp((char *)name, "item")){
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
					free((void *)name);
					free((void *)type);
				}
				else if(xmlTextReaderNodeType(reader) == 15){ 		// element close
					item->next = preset->item;
					preset->item = item;
					item_opened = false;
				}
			}

			val = xmlTextReaderConstValue(reader);
			if((val != NULL) && (item_opened)){
				float	temp_float = 0;
				long	temp_int = 0;
	
				if((item->type == ps_msg_symbol) || (item->type == ps_msg_menu)){
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
				} else {							// (msg_list, msg_generic, a list or not specified)
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
			ret = xmlTextReaderRead(reader);
			free((void *)val);
		}
		xmlFreeTextReader(reader);
		if(ret != 0){
			error("%s: failed to parse", path);
		}
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
	short 					path;					// pathID#
	long					outtype;				// the file type that is actually true
	xmlDocPtr				schema_doc;
	xmlSchemaParserCtxtPtr	parser_context;
	xmlSchemaPtr			schema;
	xmlSchemaValidCtxtPtr 	context;
	xmlDocPtr				document;
	short					result = 0;
	
	// 1. Find the XML Schema file
	strcpy(filename, "jamoma.xsd");
	if(locatefile_extended(filename, &path, &outtype, NULL, -1)){
		error("jcom.hub (%s module): jamoma.xsd schema file not found", x->attr_name->s_name);
		return -1;
	}	
	path_topathname(path, filename, fullpath);

	#ifdef MAC_VERSION
		char *temppath;
		temppath = strchr(fullpath, ':');
		temppath += 1;
	#else // WIN_VERSION
		char temppath[512];
		path_nameconform(fullpath, temppath, PATH_STYLE_NATIVE_WIN, PATH_TYPE_ABSOLUTE);
	#endif


	// 2. Actually validate the XML file using the schema...
	//schema_doc = xmlReadFile("/Users/tim/Developer/_electrotap/Jamoma/library/jamoma.xsd", NULL, 0);
	schema_doc = xmlReadFile(temppath, NULL, 0);
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
	t_preset		*next_preset;
	t_preset_item	*next_item;
	
	while(x->preset != NULL){
		while(x->preset->item != NULL){
			next_item = x->preset->item->next;
			sysmem_freeptr(x->preset->item);
			x->preset->item = next_item;
		}		
		next_preset = x->preset->next;
		sysmem_freeptr(x->preset);
		x->preset = next_preset;
	}
}


// dump the preset info to the Max window for debugging
void hub_presets_dump(t_hub *x)
{
	t_preset		*preset = x->preset;
	t_preset_item	*item;

	post("");
	post("PRESET DUMP");
	post("");
	
	while(preset != NULL){
		post("  PRESET %i: %s", preset->number, preset->name->s_name);
		item = preset->item;
		while(item != NULL){
			if((item->type == ps_msg_int) || (item->type == ps_msg_toggle))
				post("    %s (type %s): %ld", item->param_name->s_name, item->type->s_name, atom_getlong(&item->value));
			else if((item->type == ps_msg_symbol) || (item->type == ps_msg_menu))
				post("    %s (type %s): %s", item->param_name->s_name, item->type->s_name, atom_getsym(&item->value)->s_name);
			else
				post("    %s (type %s): %f", item->param_name->s_name, item->type->s_name, atom_getfloat(&item->value));
			item = item->next;
		}		
		preset = preset->next;
	}
}


void hub_preset_write(t_hub *x, t_symbol *userpath)
{
	defer_low(x, (method)hub_preset_dowrite, userpath, 0, 0L);
}

void writeList(t_filehandle *fh, long *eof, t_preset_item *item)
{
	char tempstring[512];
	long len, err;
	t_symbol* sym;
	len = err = 0;
	
	// write name and type
	snprintf(tempstring, sizeof(tempstring), "    <item name='%s' type='%s'>", item->param_name->s_name, 
		item->type->s_name);
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
	t_preset		*preset = x->preset;		// the head of the linked list
	t_preset_item	*item = NULL;				// for accessing items of the preset
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
	preset = x->preset;	// head of the list of presets
	while(preset){	
		sprintf(tempstring, "  <preset number='%ld' name='%s'>", preset->number, preset->name->s_name);
		jcom_core_file_writeline(&file_handle, &myEof, tempstring);

		// Process each item in the preset
		item = preset->item;
		while(item) {
			if(item->list_size > 1) {
				writeList(&file_handle, &myEof, item);				
			} else {
				if(item->value.a_type == A_SYM){
					result = atom_getsym(&item->value);
					sprintf(tempstring, "    <item name='%s' type='%s'>%s</item>", item->param_name->s_name, item->type->s_name, result->s_name);
				}
				else if(item->value.a_type == A_FLOAT)
					sprintf(tempstring, "    <item name='%s' type='%s'>%f</item>", item->param_name->s_name, item->type->s_name, atom_getfloat(&item->value));
				else if(item->value.a_type == A_LONG)
					sprintf(tempstring, "    <item name='%s' type='%s'>%ld</item>", item->param_name->s_name, item->type->s_name, atom_getlong(&item->value));
				
				jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			}
			item = item->next;
		}	
		
		jcom_core_file_writeline(&file_handle, &myEof, "  </preset>");
		preset = preset->next;
	}
	jcom_core_file_writeline(&file_handle, &myEof, "</jamoma>");
	
	
	// WE ARE DONE, SO CLOSE THE FILE
	err = sysfile_seteof(file_handle, myEof);
	if(err){
		error("jcom.hub: %s - error %d creating EOF", filename, err);
		return;	
	}
							
	sysfile_close(file_handle);		// close file reference
	post("Jamoma: /preset/write completed successfully");
}
