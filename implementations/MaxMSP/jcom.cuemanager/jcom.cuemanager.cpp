/** @file
 * @ingroup modularMax
 *
 * @brief External for Jamoma: Manage cues in a text file
 *
 * @details
 *
 * @authors Théo de la Hogue, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2009, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "jcom.cuemanager.h"

// globals
t_class *this_class;

// implementation
#if 0
#pragma mark -
#pragma mark Class Definition
#endif 0

int JAMOMA_EXPORT_MAXOBJ main(void)
{	
	t_class *c;

	jamoma_init();
	common_symbols_init();

	ps_no_id = gensym("no_id");									// if line have no index
	ps_no_data = gensym("no_data");								// if line have no data
	ps_tempcue = gensym("TEMPCUE");								// the "TEMPCUE" mode key word
	ps_tempindex = gensym("temp");								// the "temp" index key word
	ps_emptycue = gensym("EMPTY");								// the "EMPTY" mode key word
	ps_emptyname = gensym("empty");								// to give a name to an empty cue
	ps_ramp_global = gensym("global");							// to refer to the global ramp cue time
	
	// create an object class
	c = class_new("jcom.cuemanager", (method)cuemng_new, (method)cuemng_free, (long)sizeof(t_cuemng), 0L, A_GIMME, 0);
	
	// add methods
	class_addmethod(c, (method)cuemng_notify,			"notify",		A_CANT, 0);
	class_addmethod(c, (method)cuemng_assist,			"assist",		A_CANT, 0);

	// in TRIGGER mode, this method trigger out the current cue
	// in EDIT mode, open the text editor to show the current cue
    class_addmethod(c, (method)cuemng_bang,				"bang",			0);

	// What to do when the text editor window is closed
	class_addmethod(c, (method)cuemng_edclose,			"edclose",		A_CANT, 0);

	// this method select the given cue as the current and,
	// in TRIGGER mode, trigger out the current cue
	// in EDIT mode, open the text editor to show the current cue
	class_addmethod(c, (method)cuemng_int,				"int",			A_LONG, 0);

	// this method select the temp cue,
	// in TRIGGER mode, trigger out the temp cue
	// in EDIT mode, open the text editor to show the temp cue
	class_addmethod(c, (method)cuemng_temp,				"temp",			0);

	// this method set in EDIT mode and, if there is an index,
	// select the given cue as the current and open the text editor
	// if no index, edit the current
	class_addmethod(c, (method)cuemng_edit,				"edit",			A_GIMME, 0);

	// this method set in TRIGGER mode and, if there is an index, 
	// trigger out the given cue
	// if no index, trigger the current
	class_addmethod(c, (method)cuemng_trigger,			"trigger",		A_GIMME, 0);

	// this method set in TRIGGER mode and, if there is an index, 
	// trigger out the KEYCUE relative to given cue
	// if no index, trigger the currentK
	class_addmethod(c, (method)cuemng_triggerK,			"triggerK",		A_GIMME, 0);

	// this method clear the cuelist
	class_addmethod(c, (method)cuemng_new_cuelist,		"new",			0);

	// this method read a text file at the given path or,
	// if there isn't path, open a dialog to select one.
	class_addmethod(c, (method)cuemng_load,				"load",			A_GIMME, 0);

	// this method save the cuelist in a textfile
	// at selected path (if the path already exist)
	class_addmethod(c, (method)cuemng_save,				"writeagain",			0);

	// this method save the cuelist in a textfile at the given path or,
	// if there isn't path, open a dialog to select one.
	class_addmethod(c, (method)cuemng_saveas,			"write",		A_GIMME, 0);

	// this method open a text editor to 
	// show the entire cue list file
	class_addmethod(c, (method)cuemng_open,				"open",			0);
	class_addmethod(c, (method)cuemng_open,				"dblclick",		A_CANT, 0);

	// this method output informations
	// about the cue list file on the info outlet
	// about a cue if an id is given
	class_addmethod(c, (method)cuemng_info,				"info",			A_GIMME, 0);

	// this method enable/disable the ramp driving
	class_addmethod(c, (method)cuemng_doramp,			"doramp",		A_LONG, 0);

	// this method set the time of the ramp of 
	// the selected cue (or the current if no index)
	class_addmethod(c, (method)cuemng_set_ramp,			"set_ramp",		A_GIMME, 0);

	// rename the selected cue (or the current if no index)
	class_addmethod(c, (method)cuemng_set_name,			"set_name",		A_GIMME, 0);
	
	// change the mode (KEYCUE or CUE) of the selected cue (or the current if no index)
	class_addmethod(c, (method)cuemng_set_mode,			"set_mode",		A_GIMME, 0);
	
	// change the comment of the selected cue (or the current if no index)
	class_addmethod(c, (method)cuemng_set_comment,		"set_comment",		A_GIMME, 0);

	// if there is an index, insert the temp cue 
	// at this index in the cue list
	// else, insert the temp cue BEFORE the current cue
	class_addmethod(c, (method)cuemng_insert,			"insert",		A_GIMME, 0);

	// if there is an index, append the temp cue 
	// after this index in the cue list
	// else, append the temp cue AFTER the current cue
	class_addmethod(c, (method)cuemng_append,			"append",		A_GIMME, 0);

	// if there is an index, replace the index by the temp cue
	// else, replace the current by the temp cue
	class_addmethod(c, (method)cuemng_replace,			"replace",		A_GIMME, 0);

	// if there is an index, clear the cue which have 
	// the given index whitout removing it from the the cuelist
	// else, clear the current
	class_addmethod(c, (method)cuemng_clear,			"clear",		A_GIMME, 0);
	
	// if there is an index, remove the cue which have 
	// the given index and shiftdown all the cue after.
	// else, remove the current
	class_addmethod(c, (method)cuemng_delete,			"delete",		A_GIMME, 0);

	// if there is an index, copy the cue which have
	// the given index into the temp cue
	// else, copy the current
	class_addmethod(c, (method)cuemng_copy,				"copy",			A_GIMME, 0);

	// the recall method constists in trigger all previous cue 
	//(from the previous keycue)until to trigger the given cue.
	class_addmethod(c, (method)cuemng_recall,			"recall",		A_GIMME, 0);

	// the optimization works only on a cue (not a keycue).
	// It constists in check difference between the given cue
	// and all previous cue (from the previous keycue).
	class_addmethod(c, (method)cuemng_optimize,			"optimize",		A_GIMME, 0);

	// if there is an index, union the lines of the temp cue
	// to the cue which have the given index
	// else, append to the current
	class_addmethod(c, (method)cuemng_union,			"union",			A_GIMME, 0);
	
	// if there is an index, exclude lines of the temp cue 
	//  to the cue which have the given index
	// else, append to the current
	class_addmethod(c, (method)cuemng_exclusion,		"exclusion",			A_GIMME, 0);

	// if there is an index, compare each line of the cue 
	// which have the given index to the temp cue :
	//		> if the parameter doesn't exist or is different,
	//		keep the line with his value.
	//		> else remove the line.
	class_addmethod(c, (method)cuemng_difference,		"difference",	A_GIMME, 0);

	// if there is an index, all lines of the temp cue
	// are compared to the cue which have the given index :
	//		> if the parameter already exists,
	//		the temp cue value replace the selected cue value
	//		> if the parameter doesn't exist, this is appended 
	//		to the selected cue.
	// if there is no index, this process is done on the current cue
	// NOTE : this operation doesn't change the ramp value
	class_addmethod(c, (method)cuemng_modify,			"modify",		A_GIMME, 0);

	//class_addmethod(c, (method)cuemng_move,			"move",			A_GIMME, 0);

	// this method matches any incoming data to stored it in the temp cue
	class_addmethod(c, (method)cuemng_anything,			"anything",		A_GIMME, 0);

	class_register(CLASS_BOX, c);
	this_class = c;
	return 0;
}

#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *cuemng_new(t_symbol *s, long argc, t_atom *argv)
{
	t_cuemng *x;

	x = (t_cuemng *)object_alloc(this_class); 

	if (x) {
		x->info_out = outlet_new((t_object *)x,NULL);			// anything outlet
		x->trigger_out = outlet_new((t_object *)x,NULL);		// anything outlet

		x->cuelist = linklist_new();
		linklist_flags(x->cuelist, OBJ_FLAG_DATA);

		x->cuelist_file = gensym("cuelist.txt");
		x->cuelist_path = 0;

		x->temp_cue = (t_cue *)malloc(sizeof(t_cue));
		x->temp_cue->linelist = linklist_new();
		linklist_flags(x->temp_cue->linelist, OBJ_FLAG_MEMORY);
		cuemng_clear_temp(x);

		x->m_editor = NULL;
		x->buf = new TTString();
		x->Kcurrent = -1;
		x->current = -1;
		x->trigeditmode = EDIT_MODE;
		x->do_ramp = true;

		// init default values
		x->ps_cue = gensym((char *)CUE);
		x->ps_keycue = gensym((char *)KEYCUE);
		x->ps_attr = gensym((char *)ATTR);
		x->ps_cmt = gensym((char *)CMT);
		x->ps_wait = gensym((char *)WAIT);
		x->ps_ramp = gensym((char *)RAMP);
		x->ps_comment = gensym((char *)COMMENT);

		x->ps_lb = gensym((char *)LB);
		x->ps_tab = gensym((char *)TAB);

		x->nb_tab_param = NB_TAB_PARAM;
		x->nb_tab_attr = NB_TAB_ATTR;
		x->nb_tab_cmt = NB_TAB_CMT;
		x->nb_tab_wait = NB_TAB_WAIT;
	}
	return (x);
}

void cuemng_free(t_cuemng *x)
{
	delete x->buf;
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err cuemng_notify(t_cuemng *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	object_post((t_object *)x, "notification : s = %s, msg = %s", s->s_name, msg->s_name);
	return MAX_ERR_NONE;
}

void cuemng_assist(t_cuemng *x, void *b, long msg, long arg, char *dst)
{
	if (msg == ASSIST_INLET) { // inlet
		//if (arg == 0)
		//strcpy(dst, "I am inlet 0");
	} 
	else {	// outlet
		//if (arg == 0)
		//strcpy(dst, "I am outlet 0");			
	}		
}

void cuemng_edclose(t_cuemng *x, char **handletext, long size)
{
	t_atom argv[1];
	t_atom a[1];
	long stop_at = 0;

	 // DON'T READ THE TEXT OF THE EDITOR IF SOME LINES MISS
	if (x->nb_written_lines < TEXT_MAX_LINE) { 
		
		if (size) {
			// if it's the text of the cuelist
			if (x->show == CUELIST_TEXT) {
				
				// clear the cuelist
				if (linklist_getsize(x->cuelist)) {
					linklist_clear(x->cuelist);
					x->current = -1;
					x->Kcurrent = -1;
				}
				
				// send it to the text analyser
				stop_at = 0;
				do{
					// clear the temp cue
					cuemng_clear_temp(x);
					
					// read the text until it meets a cue or keycue flag
					stop_at = cuemng_read_text(x, handletext, stop_at);
					
					// append the temp cue to the cuelist
					defer((t_object*)x,(method)cuemng_append,gensym("append"),0,0);
					
				}while (stop_at != -1);
				
				// clear the temp cue
				cuemng_clear_temp(x);
				
				x->current = 0;
				x->Kcurrent = 0;
				
				// info operation /edit id
				atom_setlong(&a[0],x->current+1); // index starts at 1 for user
				defer(x,(method)cuemng_info_operation,gensym("edit"),1,a);
			}
			else {
				
				// clear temp cue
				cuemng_clear_temp(x);
				
				// send the text to an analyser
				stop_at = cuemng_read_text(x, handletext, stop_at);
				
				// if it was not the text of the temp cue
				if (x->show == CUE_TEXT) {
					
					// store the temp cue in the current (replace it)
					atom_setlong(&argv[0],x->current+1);
					defer((t_object*)x,(method)cuemng_replace,gensym("replace"),1,argv);
					
					// clear temp cue
					cuemng_clear_temp(x);
				}
				
				if (stop_at != -1)
					object_post((t_object *)x,"cuemng_edclose : there is more than one cue in the text !");
				
				if (x->show == CUE_TEXT) {
					// info operation /edit id
					atom_setlong(&a[0],x->current+1); // index starts at 1 for user
					defer(x,(method)cuemng_info_operation,gensym("edit"),1,a);
				}
				else {
					// info operation /edit temp
					atom_setsym(&a[0],ps_tempindex);
					defer(x,(method)cuemng_info_operation,gensym("edit"),1,a);
				}
			}
		}
	}
	// DON'T READ THE TEXT OF THE EDITOR IF SOME LINES MISS
	else {
		object_error((t_object *)x, "Too much lines : %d lines", x->nb_written_lines);
		object_error((t_object *)x, "modifications done inside the text editor aren't stored in the cuelist");
	}
	
	x->buf->clear();
    x->m_editor = NULL;
}

//////////////////////////////////////////////////////////////////////////////////////////
//
// PUBLIC METHODS
//
//////////////////////////////////////////////////////////////////////////////////////////
void cuemng_bang(t_cuemng *x)
{
	t_atom a[1];

	// return the temp cue if x->current == -1
	t_cue *ccue = cuemng_current_cue(x);

	if (ccue) {
		if (x->trigeditmode) { // TRIGGER_MODE
			// output the cue
			cuemng_output_cue(ccue, x);

			if (x->current != -1) {
				// info operation /trigger id
				atom_setlong(&a[0],x->current+1); // index starts at 1 for user
				defer(x,(method)cuemng_info_operation,gensym("trigger"),1,a);
			}
			else {
				// info operation /trigger temp
				atom_setsym(&a[0],ps_tempindex);
				defer(x,(method)cuemng_info_operation,gensym("trigger"),1,a);
			}
		}
		else { // EDIT_MODE
			
			if (x->current == -1) x->show = TEMP_TEXT;
			else x->show = CUE_TEXT;

			// if the jed object doesn't exist, create it
			if (!x->m_editor)
				x->m_editor = (t_object *)object_new(CLASS_NOBOX, gensym("jed"), (t_object *)x , 0);
			
			x->wtof = false;	// we wan to write into the editor

			// create a new buffer for text
			x->buf->clear();
			x->nb_written_lines = 0;
			
			critical_enter(0);
			
			// write the cue in the text buffer
			cuemng_write_cue(ccue, x);
			
			// write buf into the editor
			object_method(x->m_editor, gensym("settext"), x->buf->c_str(), gensym("utf-8"));

			critical_exit(0);

			// give a title to the windows editor
			object_attr_setsym(x->m_editor, gensym("title"), ccue->index);

			// open the text window editor
			object_attr_setchar(x->m_editor, gensym("visible"), 1);
			
			// to avoid the okclose windows if the text changes 
			object_attr_setchar(x->m_editor, gensym("scratch"), 1); 
		}
	}else
		object_error((t_object *)x, "bang : create a cue before");
}

void cuemng_int(t_cuemng *x, long id)
{
	if (id > 0) {
		if (id <= linklist_getsize(x->cuelist)) { // the id starts at 1 for the user
			x->current = id-1;
			x->Kcurrent = cuemng_previous_key_index(x);
			defer(x,(method)cuemng_bang,0,0,0);
			return;
		}
	}
	object_error((t_object *)x, "int : this index doesn't exist");
}

void cuemng_temp(t_cuemng *x) {
	long memo = x->current;
	x->current = -1;
	defer(x,(method)cuemng_bang,0,0,0);
	x->current = memo;
}

void cuemng_edit(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	void *found;
	long exist;

	if (x->trigeditmode != EDIT_MODE) {
		x->trigeditmode = EDIT_MODE;
	}

	// if there is the temp flag
	if (cuemng_check_temp(x,argc,argv)) {
		defer(x,(method)cuemng_temp,0,0,0);
		return;
	}

	if (argc && argv) {
		if (atom_gettype(&argv[0]) == A_LONG) {
			cuemng_int(x,atom_getlong(&argv[0]));
		}
		
		if (atom_gettype(&argv[0]) == A_SYM) {

			if (linklist_getsize(x->cuelist))
				// Is the cue exists in the cuelist ?
				exist = linklist_findfirst(x->cuelist, &found, cuemng_search_cue, atom_getsym(&argv[0]));
			else
				exist = -1;
			
			if (exist != -1) {
				x->current =  linklist_objptr2index(x->cuelist, found);
				x->Kcurrent = cuemng_previous_key_index(x);
				defer(x,(method)cuemng_bang,0,0,0);
			}
			else
				object_error((t_object *)x, "edit : this index doesn't exist");
			return;
		}
		object_error((t_object *)x, "edit : index have to be integer or a symbol value");
	}
	else {

		cuemng_int(x,x->current+1);
	}
}

void cuemng_trigger(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	void *found;
	long exist;

	if (x->trigeditmode != TRIGGER_MODE) {
		x->trigeditmode = TRIGGER_MODE;
	}

	// if there is the temp flag
	if (cuemng_check_temp(x,argc,argv)) {
		defer(x,(method)cuemng_temp,0,0,0);
		return;
	}

	if (argc && argv) {

		if (atom_gettype(&argv[0]) == A_LONG) {
			cuemng_int(x,atom_getlong(&argv[0]));
			return;
		}

		if (atom_gettype(&argv[0]) == A_SYM) {

			if (linklist_getsize(x->cuelist))
				// Is the cue exists in the cuelist ?
				exist = linklist_findfirst(x->cuelist, &found, cuemng_search_cue, atom_getsym(&argv[0]));
			else
				exist = -1;
			
			if (exist != -1) {
				x->current = linklist_objptr2index(x->cuelist, found);
				x->Kcurrent = cuemng_previous_key_index(x);
				defer(x,(method)cuemng_bang,0,0,0);
			}
			else
				object_error((t_object *)x, "trigger : this index doesn't exist");
			return;
		}
		object_error((t_object *)x, "trigger : index have to be integer or a symbol value");
	}
	else {
		cuemng_int(x,x->current+1);
	}
}

void cuemng_triggerK(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	void *found;
	long exist, id;

	if (x->trigeditmode != TRIGGER_MODE) {
		x->trigeditmode = TRIGGER_MODE;
	}

	// if there is the temp flag
	if (cuemng_check_temp(x,argc,argv)) {
		defer(x,(method)cuemng_temp,0,0,0);
		return;
	}

	if (argc && argv) {

		if (atom_gettype(&argv[0]) == A_LONG) {

			id = atom_getlong(&argv[0]);

			// find the Kcurrent relative to id and trigger it
			if (id > 0) {
				if (id <= linklist_getsize(x->cuelist)) { // the id starts at 1 for the user
					x->current = id-1;
					x->Kcurrent = cuemng_previous_key_index(x);
					x->current = x->Kcurrent;
					defer(x,(method)cuemng_bang,0,0,0);
					return;
				}
			}
			object_error((t_object *)x, "triggerK : this index doesn't exist");
		}

		if (atom_gettype(&argv[0]) == A_SYM) {

			if (linklist_getsize(x->cuelist))
				// Is the cue exists in the cuelist ?
				exist = linklist_findfirst(x->cuelist, &found, cuemng_search_cue, atom_getsym(&argv[0]));
			else
				exist = -1;
			
			if (exist != -1) {
				// find the Kcurrent relative to found and trigger it
				x->current = linklist_objptr2index(x->cuelist, found);
				x->Kcurrent = cuemng_previous_key_index(x);
				x->current = x->Kcurrent;
				defer(x,(method)cuemng_bang,0,0,0);
			}
			else
				object_error((t_object *)x, "triggerK : this index doesn't exist");
			return;
		}
		object_error((t_object *)x, "triggerK : index have to be integer or a symbol value");
	}
	else {
		cuemng_int(x,x->Kcurrent+1);
	}
}

void cuemng_new_cuelist(t_cuemng *x) {

		// clear the cuelist
		if (linklist_getsize(x->cuelist)) {
			linklist_clear(x->cuelist);
			x->current = -1;
			x->Kcurrent = -1;
		}

		x->cuelist_file = gensym("cuelist.txt");
		x->cuelist_path = 0;

		cuemng_clear_temp(x);

		x->m_editor = NULL;
		x->Kcurrent = -1;
		x->current = -1;
}

void cuemng_load(t_cuemng *x, t_symbol *msg, long argc, t_atom *argv)
{
	defer(x, (method)cuemng_doload, msg, argc, argv);
}

void cuemng_doload(t_cuemng *x, t_symbol *msg, long argc, t_atom *argv)
{
	t_filehandle	fhd;
	char			**texthd;
    long			filetype = 'TEXT', outtype;
	char			filename[MAX_FILENAME_CHARS];		// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];			// for storing the absolute path of the file
	char 			path[MAX_PATH_CHARS];				// to split the fullpath : path + filename
	long			stop_at;

	// GET THE PATH
	// check the args to see if there is a user_path
	if (argc) {
		strcpy(fullpath, atom_getsym(argv)->s_name);
		if (locatefile_extended(fullpath, &x->cuelist_path, &outtype, &filetype, 1)) {	// non-zero: not found
            object_error((t_object *)x, "%s: not found", fullpath);
            return;
        }
	}
	else {
		// if no argument supplied, ask for file
        if (open_dialog(fullpath, &x->cuelist_path, &outtype, &filetype, 1))			// non-zero: user cancelled
            return;
    }

    // we have a file
	// open the file before reading
	if (path_opensysfile(fullpath, x->cuelist_path, &fhd, READ_PERM)) {
		object_error((t_object *)x, "load : error opening %s", fullpath);
		return;
	}

	// save filename in x->cuelist_file.
	path_splitnames(fullpath,filename,path); // ?? the filename is the second arg (not the third) ??!
	x->cuelist_file = gensym(filename);

	// allocate some empty memory to receive text
	texthd = sysmem_newhandle(0);
	sysfile_readtextfile(fhd, texthd, 0, TEXT_LB_NATIVE);	// converts line breaks to "native" format

	// clear the cuelist
	if (linklist_getsize(x->cuelist)) {
		linklist_clear(x->cuelist);
		x->current = -1;
		x->Kcurrent = -1;
	}

	// send it to the text analyser
	stop_at = 0;
	do{
		// clear the temp cue
		cuemng_clear_temp(x);

		// read the text until it meets a cue or keycue flag
		stop_at = cuemng_read_text(x, texthd, stop_at);

		// append the temp cue to the cuelist
		defer((t_object*)x,(method)cuemng_append,gensym("append"),0,0);

	}while (stop_at != -1);

	// clear the temp cue
	cuemng_clear_temp(x);

	x->current = 0;
	x->Kcurrent = 0;

	sysfile_close(fhd);
	sysmem_freehandle(texthd);

	defer(x,(method)cuemng_info_operation,gensym("load"),0,0);
}

void cuemng_saveas(t_cuemng *x, t_symbol *msg, long argc, t_atom *argv)
{
	if (argc && argv)
		defer((t_object*)x, (method)cuemng_dosave, 0, argc, argv);
	else 
		defer((t_object*)x, (method)cuemng_dosave, gensym("no args in save as"), argc, argv);
}

void cuemng_save(t_cuemng *x)
{
	defer((t_object*)x, (method)cuemng_dosave, 0, 0, NULL);
}

void cuemng_dosave(t_cuemng *x, t_symbol *msg, long argc, t_atom *argv)
{
	long 			type = 'TEXT';					// four-char code for Mac file type
	char 			filename[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];		// for storing the absolute path of the file
	short 			err;							// error number
	long			outtype;						// the file type that is actually true

	// GET THE PATH
	// check the args to see if there is a user_path
	if (argc) {
		strcpy(fullpath, atom_getsym(argv)->s_name);
		path_frompathname(fullpath, &x->cuelist_path, filename);
	}
	else {
		// Does a former cuelist_path exist ?
		if (x->cuelist_path && (msg != gensym("no args in save as"))) {
			strcpy(filename,x->cuelist_file->s_name);
		}
		else {
			// open a dialog to ask for a name
			strcpy(filename,x->cuelist_file->s_name);
			saveas_promptset("Save Cuelist...");									// Instructional Text in the dialog
			err = saveasdialog_extended(filename, &x->cuelist_path, &outtype, &type, 1);		// Returns 0 if successful
			if (err)																	// User Cancelled
				return;
		}
	}

	// NOW ATTEMPT TO CREATE THE FILE...
	err = path_createsysfile(filename, x->cuelist_path, type, &x->fh);

	if (err) {
		object_error((t_object *)x, "save : error saving %s", filename);
		return;
	}

	// AND WE SAVE THE filename IN x->cuelist_file.
	x->cuelist_file = gensym(filename);

	// HERE WE CAN FINALLY WRITE THE DATA OUT TO THE FILE
	x->eof = 0;
	x->wtof = true;	// we wan to write on a file

	// create a new buffer
	x->buf->clear();
	x->nb_written_lines = 0;

	// write all cues in the text file
	critical_enter(0);
	linklist_funall(x->cuelist,(method)cuemng_write_cue,x);

	// write the buffer into the text file in case of...
	cuemng_write_buffer(x);

	critical_exit(0);

	// close the file
	err = sysfile_seteof(x->fh, x->eof);
	if (err) {
		object_error((t_object*)x, "save : error %d creating EOF of %s", err, filename);
		return;	
	}
	sysfile_close(x->fh);

	defer(x,(method)cuemng_info_operation,gensym("save"),0,0);
}

void cuemng_open(t_cuemng *x)
{
	if (linklist_getsize(x->cuelist)) {

		x->show = CUELIST_TEXT;

		// if the jed object doesn't exist, create it
		if (!x->m_editor)
			x->m_editor = (t_object *)object_new(CLASS_NOBOX, gensym("jed"), (t_object *)x , 0);
		
		x->wtof = false;	// we wan to write into the editor

		// create a new buffer for text
		x->buf->clear();
		x->nb_written_lines = 0;

		critical_enter(0);

		// write all cues in buf
		linklist_funall(x->cuelist,(method)cuemng_write_cue,x);
		
		// write buf into the editor
		object_method(x->m_editor, gensym("settext"), x->buf->c_str(), gensym("utf-8"));

		critical_exit(0);

		// give a title to the windows editor
		object_attr_setsym(x->m_editor, gensym("title"), gensym("TODO : write cue list file name here"));

		// open the text window editor
		object_attr_setchar(x->m_editor, gensym("visible"), 1);
		
		// to avoid the okclose windows if the text changes 
		object_attr_setchar(x->m_editor, gensym("scratch"), 1);

	}else
		object_error((t_object *)x, "open : create a cue before");
}

void cuemng_info(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long ccid, memo, memoK;
	t_cue *ccue;
	t_cue *ckcue;
	char filepath[256];
	t_atom info_ccue[1];
	void *found;
	long exist;

	// if there is the temp flag
	if (cuemng_check_temp(x,argc,argv)) {
		// do nothing
		return;
	}

	if (argc && argv) {

		// we are asking for info about a cue
		x->info_cuelist = false;

		// memorize the current and the Kcurrent
		memo = x->current;
		memoK = x->Kcurrent;

		// select current and Kcurrent with the given id
		// if it's a long id...
		if (atom_gettype(&argv[0]) == A_LONG) {

			ccid = atom_getlong(&argv[0]);

			// find the Kcurrent relative to id and trigger it
			if (ccid > 0) {
				if (ccid <= linklist_getsize(x->cuelist)) { // the id starts at 1 for the user
					x->current = ccid-1;
					x->Kcurrent = cuemng_previous_key_index(x);
				}
				else
					object_error((t_object *)x, "info : this index doesn't exist");
			}
			else
				object_error((t_object *)x, "info : this index doesn't exist");
		}

		// ...or a symbol id
		if (atom_gettype(&argv[0]) == A_SYM) {

			if (linklist_getsize(x->cuelist))
				// Is the cue exists in the cuelist ?
				exist = linklist_findfirst(x->cuelist, &found, cuemng_search_cue, atom_getsym(&argv[0]));
			else
				exist = -1;
			
			if (exist != -1) {
				x->current = linklist_objptr2index(x->cuelist, found);
				x->Kcurrent = cuemng_previous_key_index(x);
			}
			else
				object_error((t_object *)x, "info : this index doesn't exist");

		}

		//output info about the selected cue
		cuemng_info_cue(cuemng_current_cue(x), x);

		// back to the memo
		x->current = memo;
		x->Kcurrent = memoK;

		return;
	}
	else {

		// we are asking for info about all the cuelist
		x->info_cuelist = true;

		// output information about cuelist file path
		if (x->cuelist_path) {
			path_topathname(x->cuelist_path, x->cuelist_file->s_name, filepath);
			atom_setsym(&info_ccue[0],gensym(filepath));
			outlet_anything(x->info_out, gensym("/cuelist/path"), 1, info_ccue);
		}

		// output informations about size of the cuelist
		atom_setlong(&info_ccue[0],linklist_getsize(x->cuelist));
		outlet_anything(x->info_out, gensym("/cuelist/size"), 1, info_ccue);

		if (linklist_getsize(x->cuelist)) {

			// output informations about all cues on the info outlet
			ccid = x->current;
			x->current = 0;
			linklist_funall(x->cuelist,(method)cuemng_info_cue,x);
			x->current = ccid;

			// output informations about the current cue
			ccue = cuemng_current_cue(x);

			atom_setlong(&info_ccue[0],x->current+1);
			outlet_anything(x->info_out, gensym("/current/id"), 1, info_ccue);

			if (ccue->mode == DIFFERENTIAL_CUE) atom_setsym(&info_ccue[0],x->ps_cue);
			else atom_setsym(&info_ccue[0],x->ps_keycue);
			outlet_anything(x->info_out, gensym("/current/mode"), 1, info_ccue);

			atom_setsym(&info_ccue[0],ccue->index);
			outlet_anything(x->info_out, gensym("/current/name"), 1, info_ccue);

			atom_setlong(&info_ccue[0],ccue->ramp);
			outlet_anything(x->info_out, gensym("/current/ramp"), 1, info_ccue);
			
			atom_setsym(&info_ccue[0],ccue->comment);
			outlet_anything(x->info_out, gensym("/current/comment"), 1, info_ccue);

			// output informations about the current key cue
			ckcue = cuemng_current_key_cue(x);
			
			if (ckcue) {
				atom_setlong(&info_ccue[0],x->Kcurrent+1);
				outlet_anything(x->info_out, gensym("/Kcurrent/id"), 1, info_ccue);

				atom_setsym(&info_ccue[0],ckcue->index);
				outlet_anything(x->info_out, gensym("/Kcurrent/name"), 1, info_ccue);
			}
		}
		else
			outlet_anything(x->info_out, gensym("/cuelist"), 0, 0);
	}
}

void cuemng_doramp(t_cuemng *x, long r) {

	x->do_ramp = (r != 0);
}

void cuemng_set_ramp(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index, memo;
	t_cue *c;
	long new_ramptime;
	t_atom a[2];

	// if there is the temp flag
	// do nothing
	if (cuemng_check_temp(x,argc,argv)) {
		object_error((t_object *)x, "set_ramp : bad index");
		return;
	}

	// do not force the current on the changed cue
	memo = x->current;
	
	if (argc >= 2) {
		index = cuemng_check_index(x,argc,argv);
		if (atom_gettype(&argv[1]) == A_LONG)
			new_ramptime = atom_getlong(&argv[1]);
		else {
			object_error((t_object *)x, "set_ramp : the new time have to be an integer (ms)");
			return;
		}
	}
	else {
		if (argc == 1) {
			index = cuemng_check_index(x,0,0);		// to get the current
			if (atom_gettype(&argv[0]) == A_LONG)
				new_ramptime = atom_getlong(&argv[0]);
			else {
				object_error((t_object *)x, "set_ramp : the new time have to be an integer (ms)");
				return;
			}
		}
		else {
			object_error((t_object *)x, "set_ramp : needs a new time");
			return;
		}
	}

	// do not force the current on the changed cue
	x->current = memo;
	
	c = (t_cue *)linklist_getindex(x->cuelist,index);
	if (c) {

		c->ramp = new_ramptime;

		// info operation
		atom_setlong(&a[0],index+1); // index starts at 1 for user
		atom_setlong(&a[1],new_ramptime);
		cuemng_info_operation(x,s,2,a);
	}
	else
		object_error((t_object *)x, "set_ramp : this index doesn't exist");
}

void cuemng_set_name(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index, memo = 0;
	t_cue *c;
	t_symbol *new_name;
	t_atom a[2];


	if (argc >= 2) {
		if (atom_gettype(&argv[1]) == A_SYM)
			new_name = atom_getsym(&argv[1]);
		else {
			object_error((t_object *)x, "set_name : the new name have to be a symbol");
			return;
		}

		// if there is the temp flag
		// rename the temp cue
		if (cuemng_check_temp(x,argc,argv)) {
			index = -1;
			return;
		}
		else {
			// else rename the cue at the given index
			// do not force the current on the renamed cue
			memo = x->current;
			index = cuemng_check_index(x,argc,argv);
		}

	}
	else {
		if (argc == 1) {
			index = cuemng_check_index(x,0,0);		// to get the current
			if (atom_gettype(&argv[0]) == A_SYM)
				new_name = atom_getsym(&argv[0]);
			else {
				object_error((t_object *)x, "set_name : the new name have to be a symbol");
				return;
			}
		}
		else {
			object_error((t_object *)x, "set_name : needs a new name");
			return;
		}
	}
	
	// do not force the current on the renamed cue
	x->current = memo;
	
	// rename the temp cue 
	if (index == -1) {
		strcpy(x->temp_cue->index->s_name, new_name->s_name);

		// info operation
		atom_setsym(&a[0],ps_tempindex);
		atom_setsym(&a[1],new_name);
		cuemng_info_operation(x,s,2,a);
	}
	else {
		c = (t_cue *)linklist_getindex(x->cuelist,index);

		if (c) {
			c->index = new_name;

			// info operation
			atom_setlong(&a[0],index+1); // index starts at 1 for user
			atom_setsym(&a[1],new_name);
			cuemng_info_operation(x,s,2,a);
		}
		else
			object_error((t_object *)x, "set_name : this index doesn't exist");
	}
}

void cuemng_set_mode(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index, memo = 0;
	t_cue *c;
	t_symbol *new_mode;
	t_atom a[2];
	
	if (argc >= 2) {
		if (atom_gettype(&argv[1]) == A_SYM)
			new_mode = atom_getsym(&argv[1]);
		else {
			object_error((t_object *)x, "set_mode : the new mode have to be a symbol");
			return;
		}
		
		// if there is the temp flag
		// change the mode of the temp cue
		if (cuemng_check_temp(x,argc,argv)) {
			index = -1;
			return;
		}
		else {
			// else change mode of the cue at the given index
			// do not force the current on the renamed cue
			memo = x->current;
			index = cuemng_check_index(x,argc,argv);
		}
		
	}
	else {
		if (argc == 1) {
			index = cuemng_check_index(x,0,0);		// to get the current
			if (atom_gettype(&argv[0]) == A_SYM)
				new_mode = atom_getsym(&argv[0]);
			else {
				object_error((t_object *)x, "set_mode : the new mode have to be a symbol");
				return;
			}
		}
		else {
			// if no args switch the mode of the current cue 
			// from KEYCUE to CUE and from CUE to KEYCUE
			index = cuemng_check_index(x,0,0);					// to get the current
			c = (t_cue *)linklist_getindex(x->cuelist,index);
			
			if (c->mode == ABSOLUTE_CUE)
				new_mode = x->ps_cue;
			else 
				new_mode = x->ps_keycue;
		}
	}
	
	// do not force the selected cue as current
	x->current = memo;
	
	// change the mode of selected cue 
	if (index == -1) {
		
		if (new_mode == x->ps_keycue)
		   x->temp_cue->mode = ABSOLUTE_CUE;
		else if (new_mode == x->ps_cue)
		   x->temp_cue->mode = DIFFERENTIAL_CUE;
		else {
		   object_error((t_object *)x, "set_mode : the new mode have to be %s or %s", x->ps_keycue->s_name, x->ps_cue->s_name);
			return;
		}
		
		// info operation
		atom_setsym(&a[0],ps_tempindex);
		atom_setsym(&a[1],new_mode);
		cuemng_info_operation(x,s,2,a);
	}
	else {
		c = (t_cue *)linklist_getindex(x->cuelist,index);
		
		if (c) {
			if (new_mode == x->ps_keycue)
				c->mode = ABSOLUTE_CUE;
			else if (new_mode == x->ps_cue)
				c->mode = DIFFERENTIAL_CUE;
			else {
				object_error((t_object *)x, "set_mode : the new mode have to be %s or %s", x->ps_keycue->s_name, x->ps_cue->s_name);
				return;
			}
			
			// info operation
			atom_setlong(&a[0],index+1); // index starts at 1 for user
			atom_setsym(&a[1],new_mode);
			cuemng_info_operation(x,s,2,a);
		}
		else
			object_error((t_object *)x, "set_mode : this index doesn't exist");
	}
	
}

void cuemng_set_comment(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index = 0;
	long memo = 0;
	t_cue *c;
	t_symbol *new_comment;
	t_atom a[2];
	
	if (argc >= 2) {
		if (atom_gettype(&argv[1]) == A_SYM)
			new_comment = atom_getsym(&argv[1]);
		else {
			object_error((t_object *)x, "set_comment : the new comment have to be a symbol");
			return;
		}
		
		// if there is the temp flag
		// change the mode of the temp cue
		if (cuemng_check_temp(x,argc,argv)) {
			index = -1;
			return;
		}
		else {
			// else change mode of the cue at the given index
			// do not force the current on the changed cue
			memo = x->current;
			index = cuemng_check_index(x,argc,argv);
		}
		
	}
	else {
		if (argc == 1) {
			index = cuemng_check_index(x,0,0);		// to get the current
			if (atom_gettype(&argv[0]) == A_SYM)
				new_comment = atom_getsym(&argv[0]);
			else {
				object_error((t_object *)x, "set_comment : the new comment have to be a symbol");
				return;
			}
		}
		else
			new_comment = _sym_nothing;
	}
	
	// do not force the selected cue as current
	x->current = memo;
	
	// change the mode of selected cue 
	if (index == -1) {
		
		x->temp_cue->comment = new_comment;
		
		// info operation
		atom_setsym(&a[0],ps_tempindex);
		atom_setsym(&a[1],new_comment);
		cuemng_info_operation(x,s,2,a);
	}
	else {
		c = (t_cue *)linklist_getindex(x->cuelist,index);
		
		if (c) {
			
			c->comment = new_comment;
			
			// info operation
			atom_setlong(&a[0],index+1); // index starts at 1 for user
			atom_setsym(&a[1],new_comment);
			cuemng_info_operation(x,s,2,a);
		}
		else
			object_error((t_object *)x, "set_comment : this index doesn't exist");
	}
}

void cuemng_insert(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index, exist, result;
	t_symbol *s_index;
	char *text;
	char buf[512];
	t_cue *c;
	void *c_found;
	t_atom a[1];

	// is the temp cue ready ?
	if (x->temp_cue->mode != TEMP_CUE) {

		// Is temp_cue have the same name of one of the cuelist ?
		s_index = x->temp_cue->index;
		exist = linklist_findfirst(x->cuelist, &c_found, cuemng_search_cue, s_index);

		// while s_index already exist ask for a new cue name
		while (exist != -1) {

			strcpy(buf, s_index->s_name);
			strcat(buf, "_copy");

			//long jdialog_showtext(char *prompt, char *deftext, long flags, char **text);
			result = jdialog_showtext("This cue already exist. Provide a different name", buf, 0, &text);
			if (result != 1)
				return;

			s_index = gensym(text);
			exist = linklist_findfirst(x->cuelist, &c_found, cuemng_search_cue, s_index);
		}
		
		// replace by the new name
		x->temp_cue->index = s_index;

		// if there is the temp flag
		// do nothing
		if (cuemng_check_temp(x,argc,argv)) {
			object_error((t_object *)x, "insert : bad index");
			return;
		}
		
		// insert BEFORE the current
		if (argc > 0)
			index = cuemng_check_index(x,argc,argv);
		else
			index = x->current;

		// create a cue
		c = (t_cue *)malloc(sizeof(t_cue));
		c->linelist = linklist_new();
		linklist_flags(c->linelist, OBJ_FLAG_MEMORY);

		// copy the temp cue into
		cuemng_copy_cue(x, x->temp_cue, c);

		// insert the cue to the cuelist
		index = linklist_insertindex(x->cuelist, c, index);

		if (index != -1) {
			x->current = index;
			x->Kcurrent = cuemng_previous_key_index(x);

			// info operation
			atom_setlong(&a[0],index+1); // index starts at 1 for user
			cuemng_info_operation(x,s,1,a);
		}
		else
			object_error((t_object *)x, "insert : error");
	}else
		object_error((t_object *)x, "insert : Set head informations before (mode, index, options)");
}

void cuemng_append(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index, exist, result;
	t_symbol *s_index;
	char *text;
	char buf[512];
	t_cue *c;
	void *c_found;
	t_atom a[1];

	// is the temp cue ready ?
	if (x->temp_cue->mode != TEMP_CUE) {

		// Is temp_cue have the same name of one of the cuelist ?
		s_index = x->temp_cue->index;
		exist = linklist_findfirst(x->cuelist, &c_found, cuemng_search_cue, s_index);

		// while s_index already exist ask for a new cue name
		while (exist != -1) {

			strcpy(buf, s_index->s_name);
			strcat(buf, "_copy");

			//long jdialog_showtext(char *prompt, char *deftext, long flags, char **text);
			result = jdialog_showtext("This cue already exist. Provide a different name", buf, 0, &text);
			if (result != 1)
				return;

			s_index = gensym(text);
			exist = linklist_findfirst(x->cuelist, &c_found, cuemng_search_cue, s_index);
		}
		
		// replace by the new name
		x->temp_cue->index = s_index;

		// if there is the temp flag
		// do nothing
		if (cuemng_check_temp(x,argc,argv)) {
			object_error((t_object *)x, "append : bad index");
			return;
		}

		if (argc > 0)
			index = cuemng_check_index(x,argc,argv);
		else
			index = x->current;

		index++; 	// append AFTER the current

		// create a cue
		c = (t_cue *)malloc(sizeof(t_cue));
		c->linelist = linklist_new();
		linklist_flags(c->linelist, OBJ_FLAG_MEMORY);

		// copy the temp cue into
		cuemng_copy_cue(x, x->temp_cue, c);

		// append the cue to the cuelist
		if (index >= linklist_getsize(x->cuelist)) {
			index = linklist_append(x->cuelist, c);
			index--;
		}
		else {
			index = linklist_insertindex(x->cuelist, c, index);
		}
		
		if (index != -1) {
			x->current = index;
			x->Kcurrent = cuemng_previous_key_index(x);

			// info operation
			atom_setlong(&a[0],index+1); // index starts at 1 for user
			cuemng_info_operation(x,s,1,a);
		}
		else
			object_error((t_object *)x, "append : error");
	}else
		object_error((t_object *)x, "append : Set head informations before (mode, index, options)");
}

void cuemng_replace(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index;
	t_cue *c;
	t_atom a[1];

	// is the temp_cue ready ?
	if (x->temp_cue->mode != TEMP_CUE) {

		// if there is the temp flag
		// do nothing
		if (cuemng_check_temp(x,argc,argv)) {
			object_error((t_object *)x, "replace : bad index");
			return;
		}

		index = cuemng_check_index(x,argc,argv);

		c = (t_cue *)linklist_getindex(x->cuelist,index);
		if (c) {
			// copy the temp_cue into
			cuemng_copy_cue(x, x->temp_cue, c);

			x->current = index;
			x->Kcurrent = cuemng_previous_key_index(x);

			// info operation
			atom_setlong(&a[0],index+1); // index starts at 1 for user
			cuemng_info_operation(x,s,1,a);
		}
		else object_error((t_object *)x, "replace : this index doesn't exist");

	}else
		object_error((t_object *)x, "Set head informations before (mode, index, options)");
}

void cuemng_clear(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index;
	t_cue *c;
	t_atom a[1];

	// if there is the temp flag
	// do nothing
	if (cuemng_check_temp(x,argc,argv)) {
		// clear the temp_cue
		cuemng_clear_temp(x);
	}
	else {
		index = cuemng_check_index(x,argc,argv);

		c = (t_cue *)linklist_getindex(x->cuelist,index);
		if (c) {
			c->mode = EMPTY_CUE;
			c->index = ps_emptyname;
			c->ramp = NO_RAMP;
			linklist_clear(c->linelist);
			x->current = index;
			x->Kcurrent = cuemng_previous_key_index(x);

			// info operation
			atom_setlong(&a[0],index+1); // index starts at 1 for user
			cuemng_info_operation(x,s,1,a);
		}
		else object_error((t_object *)x, "clear : this index doesn't exist");
	}
}

void cuemng_delete(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index;
	t_cue *c;
	t_atom a[1];

	// if there is the temp flag
	// do nothing
	if (cuemng_check_temp(x,argc,argv)) {
		object_error((t_object *)x, "delete : bad index");
		return;
	}

	index = cuemng_check_index(x,argc,argv);
	
	c = (t_cue *)linklist_getindex(x->cuelist,index);
	if (c) {
		linklist_clear(c->linelist);
		linklist_deleteindex(x->cuelist,index);
		if (index >= linklist_getsize(x->cuelist)) index = linklist_getsize(x->cuelist)-1;

		x->current = index;
		x->Kcurrent = cuemng_previous_key_index(x);

		// info operation
		atom_setlong(&a[0],index+1);
		cuemng_info_operation(x,s,1,a); // index starts at 1 for user
	}
	else
		object_error((t_object *)x, "delete : this index doesn't exist");
}

void cuemng_copy(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index;
	t_cue *c;
	t_atom a[1];

	// if there is the temp flag
	// do nothing
	if (cuemng_check_temp(x,argc,argv)) {
		object_error((t_object *)x, "copy : bad index");
		return;
	}

	index = cuemng_check_index(x,argc,argv);
	
	c = (t_cue *)linklist_getindex(x->cuelist,index);
	if (c) {
		cuemng_copy_cue(x,c,x->temp_cue);

		x->current = index;
		x->Kcurrent = cuemng_previous_key_index(x);

		// info operation
		atom_setlong(&a[0],index+1); // index starts at 1 for user
		cuemng_info_operation(x,s,1,a);
	}
	else
		object_error((t_object *)x, "copy : this index doesn't exist");
}

void cuemng_recall(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long last_id, new_id, i;
	t_cue *c;
	t_atom a[1];
	bool memo;

	// if there is the temp flag
	// do nothing
	if (cuemng_check_temp(x,argc,argv)) {
		object_error((t_object *)x, "recall : bad index");
		return;
	}

	last_id = cuemng_check_index(x,0,0);			// get the current id
	new_id = cuemng_check_index(x,argc,argv);		// get the new id
	
	c = (t_cue *)linklist_getindex(x->cuelist,new_id);
	if (c) {

		// set current and Kcurrent
		x->current = new_id;
		x->Kcurrent = cuemng_previous_key_index(x);

		// if it's a backward recall
		if (last_id > new_id) {
			// the trigger loop will start at the previous KEYCUE
			i = x->Kcurrent;
		}
		// else, it's a forward recall
		else {
			// if the last cue is after the current KEYCUE
			// the trigger loop will start at the last cue
			// else, start at the previous KEYCUE
			if (last_id > x->Kcurrent) i = last_id;
			else i = x->Kcurrent;
		}

		// a modify loop on the previous cue to set the temp cue
		cuemng_clear_temp(x);
		while (i < new_id) {

			// modify the temp cue with a previous cue
			c = (t_cue *)linklist_getindex(x->cuelist,i);
			if (c) {
				linklist_funall(c->linelist,(method)cuemng_modify_linelist,x->temp_cue->linelist);
				// info operation
				atom_setsym(&a[0],ps_tempindex);
				cuemng_info_operation(x,gensym("modify"),1,a);
			}
			i++;
		}

		// trigger the temp
		memo = x->do_ramp;
		x->do_ramp = false;					// disable the ramp to trigger the temp cue
		atom_setsym(&a[0],ps_tempindex);
		defer(x,(method)cuemng_trigger,gensym("trigger"),1,a);
		cuemng_clear_temp(x);
			
		// trigger the selected cue
		x->do_ramp = memo;					// enable the ramp to trigger the selected cue (if do_ramp)
		atom_setlong(&a[0],new_id+1);		// index starts at 1 for users
		defer(x,(method)cuemng_trigger,gensym("trigger"),1,a);

		// info operation
		atom_setlong(&a[0],new_id+1);		// index starts at 1 for user
		cuemng_info_operation(x,s,1,a);
	}
	else
		object_error((t_object *)x, "recall : this index doesn't exist");
}

void cuemng_optimize(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index, i;
	t_cue *c;
	t_atom a[1];

	// if there is the temp flag
	// do nothing
	if (cuemng_check_temp(x,argc,argv)) {
		object_error((t_object *)x, "optimize : bad index");
		return;
	}

	index = cuemng_check_index(x,argc,argv);
	
	c = (t_cue *)linklist_getindex(x->cuelist,index);
	if (c) {
		if (c->mode == DIFFERENTIAL_CUE) {
			
			i = x->Kcurrent;

			// clear temp cue
			cuemng_clear_temp(x);

			while (i < index) {

				// set i as the current cue
				x->current = i;

				// modify the temp cue with the current
				atom_setsym(&a[0],ps_tempindex);
				defer(x,(method)cuemng_modify,gensym("modify"),1,a);

				i++;
			}

			// keep the difference between the temp end the selected cue
			atom_setlong(&a[0],index+1); // index starts at 1 for users
			defer(x,(method)cuemng_difference,gensym("difference"),1,a);

			x->current = index;
			x->Kcurrent = cuemng_previous_key_index(x);

			// info operation
			atom_setlong(&a[0],index+1); // index starts at 1 for user
			cuemng_info_operation(x,s,1,a);
		}
		else
			object_error((t_object *)x, "optimize : select a CUE (and not a KEYCUE or EMPTY)");
	}
	else
		object_error((t_object *)x, "optimize : this index doesn't exist");
}

void cuemng_union(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index;
	t_cue *c;
	t_atom a[1];

	// if there is the temp flag
	// do nothing
	if (cuemng_check_temp(x,argc,argv)) {
		object_error((t_object *)x, "union : bad index");
		return;
	}

	index = cuemng_check_index(x,argc,argv);
	
	c = (t_cue *)linklist_getindex(x->cuelist,index);
	if (c) {
		// add each line of the temp cue linelist
		// into the selected cue linelist
		linklist_funall(x->temp_cue->linelist, (method)cuemng_copy_linelist, c->linelist);

		x->current = index;
		x->Kcurrent = cuemng_previous_key_index(x);

		// info operation
		atom_setlong(&a[0],index+1); // index starts at 1 for user
		cuemng_info_operation(x,s,1,a);
	}
	else
		object_error((t_object *)x, "union : this index doesn't exist");
}

void cuemng_exclusion(t_cuemng *x, t_symbol* s, long argc, t_atom *argv)
{
	long index;
	t_cue *c;
	t_atom a[1];
	
	// if there is the temp flag
	// do nothing
	if (cuemng_check_temp(x,argc,argv)) {
		object_error((t_object *)x, "exclusion : bad index");
		return;
	}
	
	index = cuemng_check_index(x,argc,argv);
	
	c = (t_cue *)linklist_getindex(x->cuelist,index);
	if (c) {
		// cut each line of the temp cue linelist
		// into the selected cue linelist
		linklist_funall(x->temp_cue->linelist, (method)cuemng_cut_linelist, c->linelist);
		
		x->current = index;
		x->Kcurrent = cuemng_previous_key_index(x);
		
		// info operation
		atom_setlong(&a[0],index+1); // index starts at 1 for user
		cuemng_info_operation(x,s,1,a);
	}
	else
		object_error((t_object *)x, "exclusion : this index doesn't exist");
}

void cuemng_difference(t_cuemng *x, t_symbol* s, long argc, t_atom *argv) {

	long index;
	t_cue *c;
	t_atom a[1];

	// if there is the temp flag
	// do nothing
	if (cuemng_check_temp(x,argc,argv)) {
		object_error((t_object *)x, "difference : bad index");
		return;
	}

	index = cuemng_check_index(x,argc,argv);
	
	c = (t_cue *)linklist_getindex(x->cuelist,index);
	if (c) {
		// compare each line of the temp cue to the cue
		// and remove all lines which are equal
		linklist_funall(x->temp_cue->linelist, (method)cuemng_diff_linelist, c->linelist);

		x->current = index;
		x->Kcurrent = cuemng_previous_key_index(x);

		// info operation
		atom_setlong(&a[0],index+1); // index starts at 1 for user
		cuemng_info_operation(x,s,1,a);
	}
	else
		object_error((t_object *)x, "append : this index doesn't exist");
}

void cuemng_modify(t_cuemng *x, t_symbol* s, long argc, t_atom *argv) {

	long index;
	t_cue *c;
	t_atom a[1];
	t_atom b[2];

	// if there is the temp flag
	// modify the temp cue with the current cue
	if (cuemng_check_temp(x,argc,argv)) {

		c = cuemng_current_cue(x);		// get the current cue
		
		if (c) {
			// all lines of the current cue are compared to
			// temp cue :
			//		> if the parameter (or attributs) already exists,
			//		the current cue value replace the temp cue value
			//		> if the parameter doesn't exist, this is appended 
			//		to the temp cue.

			linklist_funall(c->linelist, (method)cuemng_modify_linelist, x->temp_cue->linelist);

			// info operation
			atom_setsym(&b[0],ps_tempindex); 
			atom_setlong(&b[1],x->current + 1);	// index starts at 1 for user
			cuemng_info_operation(x,s,2,b);
		}
		else
			object_error((t_object *)x, "modify : no current cue");
	}
	else {
		index = cuemng_check_index(x,argc,argv);
		
		c = (t_cue *)linklist_getindex(x->cuelist,index);
		if (c) {
			// all lines of the temp cue are compared to
			// the cue which have the given index :
			//		> if the parameter (or attributs) already exists,
			//		the temp cue value replace the selcted cue value
			//		> if the parameter doesn't exist, this is appended 
			//		to the selected cue.

			if (x->temp_cue->index != ps_tempindex)
				c->index = x->temp_cue->index;

			if (x->temp_cue->mode != TEMP_CUE)
				c->mode = x->temp_cue->mode;

			if (x->temp_cue->ramp != NO_RAMP)
				c->ramp = x->temp_cue->ramp;

			linklist_funall(x->temp_cue->linelist, (method)cuemng_modify_linelist, c->linelist);

			x->current = index;
			x->Kcurrent = cuemng_previous_key_index(x);

			// info operation
			atom_setlong(&a[0],index+1); // index starts at 1 for user
			cuemng_info_operation(x,s,1,a);
		}
		else
			object_error((t_object *)x, "modify : this index doesn't exist");
	}
}

// this method matches any incoming data to stored it in the temp cue
void cuemng_anything(t_cuemng *x, t_symbol *start, long argc, t_atom *argv)
{
	t_atom tmp_line[2];
	t_atom *line;
	long i;
	
	// is it to set the temp_cue as a differential cue ?
	if (start == x->ps_cue) {
		cuemng_set_temp(x, DIFFERENTIAL_CUE, argc, argv);
		return;
	}

	// is it to set the temp_cue as an absolute cue ?
	if (start == x->ps_keycue) {
		cuemng_set_temp(x, ABSOLUTE_CUE, argc, argv);
		return;
	}

	// is it to set the temp_cue as a temp cue ?
	if (start == ps_tempcue) {
		cuemng_set_temp(x, TEMP_CUE, argc, argv);
		return;
	}

	// is it to add a comment line to the temp cue ?
	if (start->s_name[0] == x->ps_cmt->s_name[0]) {
		//if argc+1 is > 2, then allocate a new pointer.
		// otherwise, use stack array "tmp_line"
		line =  atom_dynamic_start(tmp_line,2,argc+1);
		atom_setsym(&line[0], start);
		for (i=1;i<argc+1;i++) {
			line[i] = argv[i-1];
		}
		cuemng_add_temp(x,_CMT,NULL,argc+1,line);
		atom_dynamic_end(tmp_line,line);
		return;
	}

	// is it to add an attribute line to the temp cue ?
	if (start->s_name[0] == x->ps_attr->s_name[0]) {
		cuemng_add_temp(x,_ATTR,start,argc,argv);
		return;
	}

	// is it to add a wait line to the temp cue ?
	if (start == x->ps_wait) {
		if (atom_gettype(&argv[0]) == A_LONG)
			cuemng_add_temp(x,_WAIT,NULL,1,argv);
		return;
	}

	// default : add a parameter line to the temp cue
	cuemng_add_temp(x,_PARAM,start,argc,argv);
}

//////////////////////////////////////////////////////////////////////////////////////////
//
// PRIVATE METHODS
//
//////////////////////////////////////////////////////////////////////////////////////////

// clear the temp cue
void cuemng_clear_temp(t_cuemng *x)
{
	t_atom a[1];

	x->temp_cue->mode = TEMP_CUE;
	x->temp_cue->index = ps_tempindex;

	x->temp_cue->ramp = NO_RAMP;

	if (linklist_getsize(x->temp_cue->linelist))
		linklist_clear(x->temp_cue->linelist);

	// info operation
	atom_setsym(&a[0],ps_tempindex);
	cuemng_info_operation(x,gensym("clear"),1,a);
}

// set head informations of the temp cue (mode, index, options)
void cuemng_set_temp(t_cuemng *x,long mode, long argc, t_atom *argv)
{
	long r, r_pos, c_pos;

	x->temp_cue->mode = mode;

	x->temp_cue->index = atom_getsym(&argv[0]);
	
	// looking for a ramp flag
	r = cuemng_check_ramp(x,&r_pos,argc-1,argv+1);
	if (r != GLOBAL_RAMP)
		x->temp_cue->ramp = r;
	else 
		object_error((t_object *)x, "cuemng_set_temp : wrong flag for the head info ramp option");
	
	// looking for a comment flag
	x->temp_cue->comment = cuemng_check_comment(x,&c_pos,argc-1,argv+1);
	
}

// append a line to the temp cue
void cuemng_add_temp(t_cuemng *x,long type, t_symbol *index, long argc, t_atom *argv)
{
	t_line *l;
	long i, r_pos;

	l = (t_line *)sysmem_newptr((long)sizeof(t_line));

	if (l) {
		l->type = type;

		// copy index
		if (index) l->index = index;
		else l->index = ps_no_id;

		// copy argv
		if (argc && argv) {

			l->ramp = cuemng_check_ramp(x, &r_pos, argc, argv);
			//post("l->ramp : %d",l->ramp);
			//post("r_pos : %d",r_pos);
			if (r_pos != -1) argc = r_pos;	// if a ramp flag is found, data are before

			l->n = argc;
			l->data = (t_atom *)sysmem_newptr((long)argc*sizeof(t_atom));
			for (i=0; i<argc; i++) {
				l->data[i] = argv[i];
			}

		}else {
			l->n = 0;
			l->data = (t_atom *)sysmem_newptr((long)sizeof(t_atom));
			atom_setsym(l->data, ps_no_data);
			l->ramp = NO_RAMP;
		}
		
		// if the line is a parameter line
		if (l->type == _PARAM)
			// if the line exist in the temp cue, change the value
			// else append the line to the cue
			cuemng_modify_linelist(l,x->temp_cue->linelist);
		else
			linklist_append(x->temp_cue->linelist,l);

	}else object_error((t_object *)x, "cuemng_add_line");
}

void cuemng_copy_cue(t_cuemng *x, t_cue *src, t_cue *dest)
{
	dest->index = src->index;
	dest->mode = src->mode;
	dest->ramp = src->ramp;
	dest->comment = src->comment;
	
	// clear the linklist
	if (linklist_getsize(dest->linelist))
		linklist_clear(dest->linelist);

	// add each line of the src linelist
	// into the dest linelist
	linklist_funall(src->linelist, (method)cuemng_copy_linelist, dest->linelist);
}

void cuemng_copy_linelist(t_line *src, t_linklist *dest)
{
	t_line *l = (t_line *)sysmem_newptr((long)sizeof(t_line));

	if (l) {
		cuemng_copy_line(src, l);
		linklist_append(dest, l);
	}
}

void cuemng_copy_line(t_line *src, t_line *dest) {

	long i;
	
	dest->index = src->index;
	dest->type = src->type;
	dest->ramp = src->ramp;

	// copy data
	if (src->n) {
		dest->n = src->n;
		dest->data = (t_atom *)sysmem_newptr((long)src->n*sizeof(t_atom));
		for (i=0; i<dest->n; i++)
			dest->data[i] = src->data[i];
	}
	else {
		dest->n = 0;
		dest->data = (t_atom *)sysmem_newptr((long)sizeof(t_atom));
		atom_setsym(dest->data, ps_no_data);
	}
}

void cuemng_cut_linelist(t_line *l, t_linklist *comp)
{
	void *l_found;
	long exist;
	
	if (l->type == _PARAM) {
		
		// Is the line exists in the comp linelist ?
		exist = linklist_findfirst(comp, &l_found, cuemng_search_line, l->index);
		
		// if exist
		// remove the line from the comp linelist
		if (exist != -1)
				linklist_deleteindex(comp,exist);
	}
}

void cuemng_diff_linelist(t_line *l, t_linklist *comp)
{
	void *l_found;
	long exist;

	if (l->type == _PARAM) {

		// Is the line exists in the comp linelist ?
		exist = linklist_findfirst(comp, &l_found, cuemng_search_line, l->index);
				
		// if exist and data are equal
		// remove the line from the comp linelist
		if (exist != -1)
			if (cuemng_diff_data(l, (t_line *)l_found))
				linklist_deleteindex(comp,exist);
	}
}

// return true if equal, return false if different
bool cuemng_diff_data(t_line *l1, t_line *l2) {

	long i;
	bool same = true;

	if (l1->n == l2->n) {
		i = 0;
		while (same && i<l1->n) {
			if (atom_gettype(&l1->data[i]) == atom_gettype(&l2->data[i])) {
				if (atom_gettype(&l1->data[i]) == A_LONG) {
					same &= atom_getlong(&l1->data[i]) == atom_getlong(&l2->data[i]);
					i++;
					continue;
				}
				if (atom_gettype(&l1->data[i]) == A_FLOAT) {
					same &= atom_getfloat(&l1->data[i]) == atom_getfloat(&l2->data[i]);
					i++;
				continue;
				}
				if (atom_gettype(&l1->data[i]) == A_SYM) {
					same &= atom_getsym(&l1->data[i]) == atom_getsym(&l2->data[i]);
					i++;
					continue;
				}
			}
			else same = false;
			i++;
		}
	}
	else same = false;
	
	return same;
}

void cuemng_modify_linelist(t_line *src, t_linklist *dest) {

	t_line *l_new;
	void *l_found;
	long memo;
	long exist;

	// Is the line exists in the dest linelist ?
	if (linklist_getsize(dest))
		exist = linklist_findfirst(dest, &l_found, cuemng_search_line, src->index);
	else
		exist = -1;
			
	if (exist != -1) {
		// memo the ramp of l_found
		memo = ((t_line *)l_found)->ramp;

		// copy the src into dest
		cuemng_copy_line(src, (t_line *)l_found);

		// set the memo ramp into l_found
		((t_line *)l_found)->ramp = memo;
	}
	else {

		l_new = (t_line *)sysmem_newptr((long)sizeof(t_line));

		// copy the src into a new line
		cuemng_copy_line(src, l_new);

		// append the line to the linelist
		// TODO :	respect priority : !!!!! how ?
		//			insert it into the right module : !!!!! how ?
		linklist_append(dest,l_new);
	}
}

long cuemng_search_cue(void *e, void *m)
{
	t_cue *c = (t_cue*)e;
	t_symbol *a = (t_symbol*)m;

	return c->index == a;
}

long cuemng_search_line(void *e, void *m)
{
	t_line *l = (t_line*)e;
	t_symbol *a = (t_symbol*)m;

	return l->index == a;
}

// get the current cue
t_cue* cuemng_current_cue(t_cuemng *x)
{
	if (x->current >= 0) {
		t_cue *ccue = (t_cue *)linklist_getindex(x->cuelist,x->current);
		if (ccue)
			return ccue;
	}

	// return the temp cue 
	// (a special case used to bang 
	// the temp by setting the x->current to -1)
	return x->temp_cue;
}

// get the current key cue
t_cue* cuemng_current_key_cue(t_cuemng *x)
{
	if (x->Kcurrent >= 0) {
		t_cue *ckcue = (t_cue *)linklist_getindex(x->cuelist,x->Kcurrent);
		if (ckcue)
			return ckcue;
	}
	return 0;
}

// return the previous key index in the list (depending on the current)
long cuemng_previous_key_index(t_cuemng *x)
{
	long Kid = x->current;
	t_cue *c;

	if (linklist_getsize(x->cuelist)) {
		do{
			c = (t_cue *)linklist_getindex(x->cuelist,Kid);
			if (!c) return 0;
			Kid--;
		}while ((Kid >= 0) && (c->mode == DIFFERENTIAL_CUE));
		
		return Kid+1;
	}
	return 0;
}

long cuemng_read_text(t_cuemng *x, char **texthd, long str)
{
	char *text,*line;
	long size;
	long t,last,l,nl,nc;
	long argc;
	t_symbol *start;
	t_atom *argv;

	size = sysmem_handlesize(texthd);
	text = *texthd;

	// get each lines of the text
	t = str;
	nl = 0;			// count the number of line to make post
	nc = 0;			// conut the number of cue or keycue detected
	while (t<size) {	// stop at the end of text
		last = t;	// memorise the number of the first letter of the line
		if (text[t] != ' ') { // remove space before
			l = 0;
			line = sysmem_newptrclear(sizeof(char)*TEXT_LINE_SIZE);	// TODO : dynamic memory allocation ???
			argc = 0;
			argv = NULL;
			while (text[t] != x->ps_lb->s_name[0]) {	// copy a line of the text
				line[l] = text[t];
				l++;
				t++;
				if (t>=size) break;
			}
			nl++;
			t++;
			line[l] = x->ps_lb->s_name[0];
			
			// parse the line in an atom list
			// and send the list to the anything method
			atom_setparse(&argc,&argv,line);
			if (argc) {
				if (argv[0].a_type == A_SYM) {
					start = atom_getsym(&argv[0]);

					// detect keycue and cue flags
					if ((start == x->ps_keycue)||(start == x->ps_cue)) {
						nc++;
						// if a second cue is detected : 
						// stop at the beggining of this line
						if (nc > 1) {
							return last;
						}
					}

					// store the line into the temp cue
					defer((t_object *)x,(method)cuemng_anything,start,argc-1,argv+1);
				}
				else
					object_error((t_object *)x, "cuemng_read_text : at line %d : the first atom isn't a symbol", nl);
			}
			sysmem_freeptr(line);
		}
		else
			t++;
	}

	// return -1 because it's the end of the text
	return -1;
}

void cuemng_output_cue(t_cue *c, t_cuemng *x)
{
	t_atom a[1];

	// prepare ramp global
	x->global_ramp = c->ramp;

	// advise the user that a ramp will start
	if (x->do_ramp)
		atom_setlong(&a[0],x->global_ramp);
	else
		atom_setlong(&a[0],0);

	outlet_anything(x->info_out, gensym("/start_ramp"), 1, a);

	// output each line of the cue
	linklist_funall(c->linelist, (method)cuemng_output_line, x);
}

void cuemng_output_line(t_line *l, t_cuemng *x)
{
	long i, rampTime = 0;
	t_atom *data_ramp;

	switch(l->type) {
		case  _PARAM : 
			{
				if (x->do_ramp) {
					
					if (l->ramp >= 0) // NO_RAMP or a particular value
						rampTime = l->ramp;
					else
						rampTime = x->global_ramp;
					
					if (rampTime) {
						
						// create an array to send : /index data ramp rampTime
						data_ramp = (t_atom *)sysmem_newptr((long)(2+l->n)*sizeof(t_atom));
						
						// copy data
						for (i=0; i<l->n; i++) {
							data_ramp[i] = l->data[i];
						}
						
						// copy : ramp rampTime
						atom_setsym(&data_ramp[l->n], x->ps_ramp);
						atom_setlong(&data_ramp[l->n+1], rampTime);
						
						// send /index data ramp rampTime
						outlet_anything(x->trigger_out, l->index, l->n+2, data_ramp);
						
						return;
					}
				}
				
				// in any other case : send /index data
				outlet_anything(x->trigger_out, l->index, l->n, l->data);

				return;
			}
		case  _ATTR : 
			{
				object_error((t_object *)x, "cuemng_output_line - TODO : output attribut");
				return;
			}
		case _WAIT :
			{
				object_error((t_object *)x, "cuemng_output_line - TODO : output WAIT");
				return;
			}
	}
}

void cuemng_info_cue(t_cue *cue, t_cuemng *x)
{
	t_atom info_cue[9];
	long memoK, nb_item = 0;

	// position of the cue in the cuelist
	atom_setlong(&info_cue[nb_item],x->current+1);
	nb_item++;
	
	// mode
	if (cue->mode == DIFFERENTIAL_CUE) atom_setsym(&info_cue[nb_item],x->ps_cue);
	if (cue->mode == ABSOLUTE_CUE) atom_setsym(&info_cue[nb_item],x->ps_keycue);
	if (cue->mode == EMPTY_CUE) atom_setsym(&info_cue[nb_item],ps_emptycue);
	nb_item++;

	// name
	atom_setsym(&info_cue[nb_item],cue->index);
	nb_item++;

	if (cue->mode == DIFFERENTIAL_CUE) {

		// ramp
		atom_setsym(&info_cue[nb_item],x->ps_ramp);
		nb_item++;
		atom_setlong(&info_cue[nb_item],cue->ramp);
		nb_item++;

		// his relative KEYCUE
		atom_setsym(&info_cue[nb_item],x->ps_keycue);
		nb_item++;
		
		memoK = x->Kcurrent;
		x->Kcurrent = cuemng_previous_key_index(x);
		atom_setlong(&info_cue[nb_item],x->Kcurrent+1);
		nb_item++;
		
		x->Kcurrent = memoK;
	}
	
	// comment
	if (cue->comment != _sym_nothing) {
		atom_setsym(&info_cue[nb_item],x->ps_comment);
		nb_item++;
	
		atom_setsym(&info_cue[nb_item],cue->comment);
		nb_item++;
	}
	
	// outlet info
	if (x->info_cuelist)
		outlet_anything(x->info_out, gensym("/cuelist"), nb_item, info_cue);
	else
		outlet_anything(x->info_out, gensym("/cue"), nb_item, info_cue);

	x->current++;
}

void cuemng_info_operation(t_cuemng *x, t_symbol *s, long argc, t_atom *argv) {

	t_atom *info_op;
	long i;

	if (argc && argv) {
		info_op = (t_atom *)sysmem_newptr((long)sizeof(t_atom)*(1+argc));

		atom_setsym(&info_op[0],s);

		for (i=0; i<argc; i++) {
			info_op[i+1] = argv[i];
		}

		outlet_anything(x->info_out, gensym("/operation"), 1+argc, info_op);
	}
	else {
		info_op = (t_atom *)sysmem_newptr((long)sizeof(t_atom));

		atom_setsym(&info_op[0],s);

		outlet_anything(x->info_out, gensym("/operation"), 1, info_op);
	}
}

void cuemng_write_cue(t_cue *c, t_cuemng *x)
{
	char name[64];
	char comment[512];

	if (x->nb_written_lines < TEXT_MAX_LINE) { // this always true when writing into a file
		
		// write 3 new line
		cuemng_write_sym(x,x->ps_lb);
		cuemng_write_sym(x,x->ps_lb);
		
		// store head info of the cue
		// mode
		if (c->mode == DIFFERENTIAL_CUE)cuemng_write_sym(x,x->ps_cue);
		if (c->mode == ABSOLUTE_CUE) cuemng_write_sym(x,x->ps_keycue);
		if (c->mode == TEMP_CUE) cuemng_write_sym(x,ps_tempcue);
		if (c->mode == EMPTY_CUE) cuemng_write_sym(x,ps_emptycue);
		
		// write name : wrap the name with " " to avoid the problem of SPACE
		snprintf(name,64,"\"%s\"",c->index->s_name);
		cuemng_write_sym(x,gensym(name));
		
		// write option(s)
		if (c->ramp > NO_RAMP) {
			cuemng_write_sym(x,x->ps_ramp);
			cuemng_write_long(x,c->ramp);
		}
		
		if (c->comment != _sym_nothing) {
			cuemng_write_sym(x,x->ps_comment);
			// write comment : wrap the comment with " " to avoid the problem of SPACE
			snprintf(comment,512,"\"%s\"",c->comment->s_name);
			cuemng_write_sym(x,gensym(comment));
		}
		
		// write 3 new line
		cuemng_write_sym(x,x->ps_lb);
		cuemng_write_sym(x,x->ps_lb);
		cuemng_write_sym(x,x->ps_lb);
		
		// write each line of the cue
		linklist_funall(c->linelist, (method)cuemng_write_line, x);
		
		// write a new line
		cuemng_write_sym(x,x->ps_lb);
	}
}

void cuemng_write_line(t_line *l, t_cuemng *x)
{
	long i, nb_tab;

	if (x->nb_written_lines < TEXT_MAX_LINE) { // this always true when writing into a file
		
		// l->type : number of newline before
		if (l->type == _WAIT) {
			cuemng_write_sym(x,x->ps_lb);
			cuemng_write_sym(x,x->ps_lb);
		}
		
		// l->type : number of tabs
		nb_tab = 0;
		if (l->type == _PARAM) nb_tab = x->nb_tab_param;
		if (l->type == _ATTR) nb_tab = x->nb_tab_attr;
		if (l->type == _WAIT) nb_tab = x->nb_tab_wait;
		if (l->type == _CMT) nb_tab = x->nb_tab_cmt;
		
		for (i=0; i<nb_tab; i++) cuemng_write_sym(x,x->ps_tab);
		
		// l->index
		if (l->index != ps_no_id) cuemng_write_sym(x,l->index);
		
		// l->data[]
		for (i=0;i<l->n;i++) {
			cuemng_write_atom(x,&l->data[i]);
		}
		
		// l->ramp
		if (l->ramp > 0) {
			cuemng_write_sym(x,x->ps_ramp);
			cuemng_write_long(x,l->ramp);
		}
		if (l->ramp == GLOBAL_RAMP) {
				cuemng_write_sym(x,x->ps_ramp);
				cuemng_write_sym(x,ps_ramp_global);
		}
		
		// l->type : number of newline after
		if (l->type == _WAIT) {
			cuemng_write_sym(x,x->ps_lb);
			cuemng_write_sym(x,x->ps_lb);
			return;
		}
		cuemng_write_sym(x,x->ps_lb);
		
		// don't take care to the number of 
		// written lines when writting in a file
		if (!x->wtof)
			x->nb_written_lines++;
	}
	else {
		if (x->nb_written_lines == TEXT_MAX_LINE) {
			cuemng_write_sym(x, x->ps_lb);
			cuemng_write_sym(x, gensym("// This text contains more than "));
			cuemng_write_long(x, TEXT_MAX_LINE);
			cuemng_write_sym(x, gensym(" lines. Open it with a real text editor."));
			cuemng_write_sym(x, x->ps_lb);
		}
		x->nb_written_lines++;
	}
}

// append an atom to a string
void cuemng_write_atom(t_cuemng *x, t_atom *src)
{
	char temp[512];
	t_symbol* sym;

	switch(src->a_type) 
	{
		case A_SYM:
			sym = atom_getsym(src);
			snprintf(temp, sizeof(temp), "%s ", sym->s_name);
			break;
		case A_FLOAT:
			snprintf(temp, sizeof(temp), "%f ", atom_getfloat(src));
			break;
		case A_LONG:
			snprintf(temp, sizeof(temp), "%ld ", atom_getlong(src));
			break;
	}

	// before buffer becomes full ...
	if (x->buf->length() >= TEXT_BUFFER_SIZE) {
		// ... write the buffer into the text file
		cuemng_write_buffer(x);
	}

	// append the temp to the text buffer
	*x->buf += temp;
}

void cuemng_write_sym(t_cuemng *x, t_symbol *src)
{
	char temp[256];

	snprintf(temp, sizeof(temp), "%s ", src->s_name);

	// before buffer becomes full ...
	if (x->buf->length() >= TEXT_BUFFER_SIZE) {
		// ... write the buffer into the text file
		cuemng_write_buffer(x);
	}

	// append the temp to the text buffer
	*x->buf += temp;
}

void cuemng_write_long(t_cuemng *x, long src)
{
	char temp[32];

	snprintf(temp, sizeof(temp), "%ld ", src);

	// before buffer becomes full ...
	if (x->buf->length() >= TEXT_BUFFER_SIZE) {
		// ... write the buffer into the text file
		cuemng_write_buffer(x);
	}

	// append the temp to the text buffer
	*x->buf += temp;
}

void cuemng_write_float(t_cuemng *x, float src)
{
	char temp[32];

	snprintf(temp, sizeof(temp), "%f ", src);

	// before buffer becomes full ...
	if (x->buf->length() >= TEXT_BUFFER_SIZE) {
		// ... write the buffer into the text file
		cuemng_write_buffer(x);
	}

	// append the temp to the text buffer
	*x->buf += temp;
}

// write the buffer into a text file (if x->wtof is true)
void cuemng_write_buffer(t_cuemng *x)
{
	short	err = 0;
	long	len = 0;

	// if we are writing into a text file
	if (x->wtof) {
		
		len = x->buf->length();
		err = sysfile_write(x->fh, &len, x->buf->c_str());

		if (err) {
			error("cuemng_write_buffer : sysfile_write error (%d)", err);
			return;
		}
		x->eof += len;

		// clear the buffer
		x->buf->clear();
	}
	// else do nothing
}

// look at the incoming args to check the temp flag
// return 1 if the arg[0] is the temp flag
long cuemng_check_temp(t_cuemng *x, long argc, t_atom *argv) {

	if (argc && argv)
		if (atom_gettype(&argv[0]) == A_SYM)
			return atom_getsym(&argv[0]) == ps_tempindex;

	return 0;
}

// look at the incoming args to check the index
// and change it if necessary.
// if there is no index inside, it's return the current
long cuemng_check_index(t_cuemng *x, long argc, t_atom *argv)
{
	long index = 0;

	if (argc && argv) {
		if (atom_gettype(&argv[0]) == A_LONG) {
			index = atom_getlong(&argv[0]) - 1;		// index start at 1 for users

			if (index < 0) index = 0;
			if (index > linklist_getsize(x->cuelist)) index = linklist_getsize(x->cuelist);

			x->current = index;

		}else
			object_error((t_object *)x, "cuemng_check_index : index have to be integer value");

	}else {
		// check current to be sure
		if (x->current < 0) x->current = 0;
		if (x->current > linklist_getsize(x->cuelist)) x->current = linklist_getsize(x->cuelist);
		index = x->current;
	}

	return index;
}

// if there is a "ramp" flag in the args,
// return the time of the ramp or -1 if it's the "global" time flag
// else return 0
long cuemng_check_ramp(t_cuemng *x, long *pos, long argc, t_atom *argv)
{
	long i = 0;

	if (argc && argv) {
		do{
			if (atom_gettype(&argv[i]) == A_SYM) {
				if ((atom_getsym(&argv[i]) == x->ps_ramp) && (i+1 <= argc)) {
					if (atom_gettype(&argv[i+1]) == A_LONG) {
						*pos = i;
						return atom_getlong(&argv[i+1]);
					}
					if (atom_gettype(&argv[i+1]) == A_SYM) {
						if (atom_getsym(&argv[i+1]) == ps_ramp_global) {
							*pos = i;
							return GLOBAL_RAMP;
						}
					}
					// there is a "ramp" flag but no value
					*pos = i;
					return NO_RAMP;
				}
			}
			i++;
		}while (i <= argc);
	}
	*pos = -1;
	return NO_RAMP;
}

// if there is a "#" flag in the args,
// return the descrition of the cue as one t_symbol
// else return _sym_nothing
t_symbol *cuemng_check_comment(t_cuemng *x, long *pos, long argc, t_atom *argv)
{
	long i = 0;
	
	if (argc && argv) {
		do{
			if (atom_gettype(&argv[i]) == A_SYM) {
				
				// there is a "comment" flag
				if ((atom_getsym(&argv[i]) == x->ps_comment) && (i+1 <= argc)) {
					
					// there is a comment
					if (atom_gettype(&argv[i+1]) == A_SYM) {
						*pos = i;
						return atom_getsym(&argv[i+1]);
					}
					
					// there is a "comment" flag but no comment
					*pos = i;
					return _sym_nothing;
				}
			}
			i++;
		}while (i <= argc);
	}
	*pos = -1;
	return _sym_nothing;
}

int cuemng_count_lines(t_cuemng *x, t_cue *cue)
{
	int i, count;
	t_cue *c;

	count = 0;

	// return the size of the cuelist
	if (cue == NULL) {
		for (i = 0; i < linklist_getsize(x->cuelist); i++) {
			c = (t_cue *)linklist_getindex(x->cuelist, i);
			count += linklist_getsize(c->linelist);
		}		
		return count;
	}
	else
		return linklist_getsize(cue->linelist);
}