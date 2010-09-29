/* 
 * jcom.ui
 * External for Jamoma: provide standard user interface component for modules
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "jcom.ui.h"

void ui_preset_store_next(t_ui *x)	
{
	long result;
	char *text;
	char buf[512];
	
	strcpy(buf, "chateau de preset");
	
	result = jdialog_showtext("Provide a Name for This Preset", buf, 0, &text);
	if (result != 1)
		return;
	
	ui_send_viewer(x, TT("preset/store/next"), TT(text));
	
	// TODO: do we not have to free text?
}

void ui_preset_doread(t_ui *x)
{
	char 			filename[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	short 			path;					// pathID#
    long			filetype = 'TEXT', outtype;  // the file type that is actually true    
	
	if (open_dialog(filename, &path, &outtype, &filetype, 1))		// Returns 0 if successful
		return;														// User Cancelled

	jcom_core_getfilepath(path, filename, fullpath);
	
	ui_send_viewer(x, TT("preset/read"), TT(fullpath));
}

void ui_preset_dowrite(t_ui *x)
{
	long 			type = 'TEXT';				// four-char code for Mac file type
	char 			filename[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];	// for storing the absolute path of the file
	short 			path, err;					// pathID#, error number
	long			outtype;					// the file type that is actually true
	t_filehandle	file_handle;				// a reference to our file (for opening it, closing it, etc.)

	
	snprintf(filename, MAX_FILENAME_CHARS, "%s.xml", x->modelAddress->getCString());		// Default File Name
	saveas_promptset("Save Preset...");											// Instructional Text in the dialog
	err = saveasdialog_extended(filename, &path, &outtype, &type, 1);			// Returns 0 if successful
	if (err)																	// User Cancelled
		return;
	
	// NOW ATTEMPT TO CREATE THE FILE...
	err = path_createsysfile(filename, path, type, &file_handle);
	if (err) {																// Handle any errors that occur
		object_error((t_object*)x, "%s - error %d creating file", filename, err);
		return;	
	}
	
	// ... AND WE SAVE THE fullpath IN THE HUB ATTRIBUTE user_path.
	if (path) jcom_core_getfilepath(path, filename, fullpath);
	else strcpy(fullpath, filename);
	
	ui_send_viewer(x, TT("preset/write"), TT(fullpath));
}

void ui_return_preset_names(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->preset_num = argc;
	
	if (obj->preset_names)
		sysmem_freeptr(obj->preset_names);
	obj->preset_names = (AtomPtr)sysmem_newptr(sizeof(t_atom) * argc);
	
	for (int i=0; i<argc; i++) {
		atom_setsym(&obj->preset_names[i], atom_getsym(&argv[i]));
	}
}
