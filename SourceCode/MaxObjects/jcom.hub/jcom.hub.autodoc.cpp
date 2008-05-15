/* 
 * jcom.hub - autodoc
 * Generate HTML documentation for the jcom.hub external
 * By Tim Place & Trond Lossius, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.hub.h"


void hub_autodoc(t_hub *x, t_symbol *msg, long argc, t_atom *argv)
{
	t_symbol *userpath = _sym_nothing;
	
	if(argc)
		userpath = atom_getsym(argv);
	defer(x, (method)hub_doautodoc, userpath, 0, 0L);
}


void hub_doautodoc(t_hub *x, t_symbol *userpath)
{
	long 			type = 'TEXT';				// four-char code for Mac file type
	char 			filename[256];				// for storing the name of the file locally
	short 			path, err;					// pathID#, error number
	long			outtype;					// the file type that is actually true
	t_filehandle	file_handle;				// a reference to our file (for opening it, closing it, etc.)
	long			myEof = 0;
	char 			tempstring[1024];
	subscriberList	*subscriber = x->subscriber;	// the head of the linked list
	long			argc;
	t_atom			a[2];
	t_atom			*argv = &a[0];
	t_symbol		*result;
	t_symbol		*msg_type;
	//long			num_signals;
	float			range[2];

	// SPECIFY THE FILE WE WANT TO WRITE
	if(!userpath->s_name[0]){												// Empty string - Throw up a dialog
		sprintf(filename, "%s.html", x->attr_name->s_name);					// Default File Name
		saveas_promptset("Save Generated HTML Documentation...");			// Instructional Text in the dialog
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
	
	// html header
	jcom_core_file_writeline(&file_handle, &myEof, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");	
	jcom_core_file_writeline(&file_handle, &myEof, "<html>");
	jcom_core_file_writeline(&file_handle, &myEof, "\t<head>");
	jcom_core_file_writeline(&file_handle, &myEof, "\t\t<meta http-equiv=\"content-type\" content=\"text/html;charset=ISO-8859-1\">");
	sprintf(tempstring, "<title> %s </title>", x->attr_name->s_name);	
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
//	jcom_core_file_writeline(&file_handle, &myEof, "\t\t<link href=\"../../../documentation/html/styles/jamoma.css\" rel=\"stylesheet\" type=\"text/css\">");	
	hub_autodoc_css(&file_handle, &myEof);
	jcom_core_file_writeline(&file_handle, &myEof, "\t</head>");
	jcom_core_file_writeline(&file_handle, &myEof, "");

	// html body
	jcom_core_file_writeline(&file_handle, &myEof, "<body>");
	jcom_core_file_writeline(&file_handle, &myEof, "\t<div id=\"jmod_header\">");

	// Top of page displaying name of module etc.
	jcom_core_file_writeline(&file_handle, &myEof, "\t<img src=\"../../../documentation/images/jmod.icon.mod.png\" width=\"128\" height=\"128\">");	
	sprintf(tempstring, "\t<h1> %s </h1>", x->attr_name->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	sprintf(tempstring, "\t<h2> %s </h2>", x->attr_description->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);

	// Menu
	jcom_core_file_writeline(&file_handle, &myEof, "\t<h6><a href=\"../../../documentation/html/index.html\">Table of Contents</a> | <a href=\"../modules/\">Index of Modules</a> | <a href=\"http://jamoma.org/\">Jamoma.org</a></h6>");
	jcom_core_file_writeline(&file_handle, &myEof, "\t</div>");
	jcom_core_file_writeline(&file_handle, &myEof, "");
		
	// Configuration
	jcom_core_file_writeline(&file_handle, &myEof, "\t<h3> Configuration </h3>");
	sprintf(tempstring, "\t<p> Module Type: <code> %s </code> <br>", x->attr_type->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	sprintf(tempstring, "\tAlgorithm Type: <code> %s </code> </p>", x->attr_algorithm_type->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);		
	sprintf(tempstring, "\t<p>Interface Size: <code> %s </code> </p>", x->attr_size->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	
	// Inlets and outlets
	if(x->in_object){
		argc = NULL;
		argv = NULL;
		object_attr_getvalueof(x->in_object, ps_num_inputs, &argc, &argv);	
		sprintf(tempstring, "\t<p>Number of signal inlets: <code> %ld </ code> <br/>", atom_getlong(argv));
		jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	}
	else
		jcom_core_file_writeline(&file_handle, &myEof, "\t<p>BOGUS INLET DEFINITION!<br/>");

	if(x->out_object){	// jcom.out is optional in the case of no signals
		argc = NULL;
		argv = NULL;
		object_attr_getvalueof(x->out_object, ps_num_outputs, &argc, &argv);
		sprintf(tempstring, "\tNumber of signal outlets: <code> %ld </code> </p>", atom_getlong(argv));
		jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	}	
	else{
		jcom_core_file_writeline(&file_handle, &myEof, "Number of signal outlets: <code> 0 </code> </p>");
	}
	

	///////////////////////////////////////////////////
	//
	// Parameters
	//
	///////////////////////////////////////////////////

	jcom_core_file_writeline(&file_handle, &myEof, "\t<h3> Parameters </h3>");	
	table_heading(&file_handle, &myEof);

	// Process each parameter
	critical_enter(0);
	subscriber = x->subscriber;
	subscriberIterator i;
	t_subscriber* t;
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if(t->type == ps_subscribe_parameter){
			// name
			jcom_core_file_writeline(&file_handle, &myEof, "\t\t<tr>");	
			sprintf(tempstring, "\t\t\t<td class=\"instructionName\"> %s </td>", t->name->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			
			// type
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_type , &argc, &argv);
			msg_type = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionType\"> %s </td>", msg_type->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			
			// range
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object, ps_range, &argc, &argv);
			range[0] = atom_getfloat(argv);
			range[1] = atom_getfloat(argv+1);
			if( (msg_type==ps_msg_int) || (msg_type==ps_msg_toggle) )
				sprintf(tempstring, "\t\t\t<td class =\"instructionRange\"> %ld %ld </td>", (long)range[0], (long)range[1]);
			else if ( (msg_type==ps_msg_float) || (msg_type==ps_msg_generic) )
				sprintf(tempstring, "\t\t\t<td class =\"instructionRange\"> %f %f </td>", range[0], range[1]);
			else
				sprintf(tempstring, "\t\t\t<th class = \"instructionRange\"> N/A </td>");
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);	
							
			// clipmode
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_clipmode , &argc, &argv);
			result = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionClipmode\"> %s </td>", result->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
				
			// ramp
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object, ps_ramp_drive, &argc, &argv);
			result = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionRamp\"> %s </td>", result->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
				
			// repetitions
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_repetitions , &argc, &argv);
			
			//result = atom_getlong(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionRepetitions\"> %ld </td>", atom_getlong(argv));
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			
			// description
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_description , &argc, &argv);
			result = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionDescription\"> %s </td>", result->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			jcom_core_file_writeline(&file_handle, &myEof, "\t\t<tr>");
		}
	}	
	critical_exit(0);
	
	// End of table
	jcom_core_file_writeline(&file_handle, &myEof, "\t</table>");
	jcom_core_file_writeline(&file_handle, &myEof, "");
	jcom_core_file_writeline(&file_handle, &myEof, "\t<p>&nbsp;</p>");
	jcom_core_file_writeline(&file_handle, &myEof, "");

	///////////////////////////////////////////////////
	//
	// Messages
	//
	///////////////////////////////////////////////////

	jcom_core_file_writeline(&file_handle, &myEof, "\t<h3> Messages </h3>");	
	table_heading(&file_handle, &myEof);
		
	// Process each message
	critical_enter(0);
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if(t->type == ps_subscribe_message){
			// name
			jcom_core_file_writeline(&file_handle, &myEof, "\t\t<tr>");	
			sprintf(tempstring, "\t\t\t<td class=\"instructionName\"> %s </td>", t->name->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			
			// type
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_type , &argc, &argv);
			msg_type = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionType\"> %s </td>", msg_type->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			
			// range
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object, ps_range, &argc, &argv);
			range[0] = atom_getfloat(argv);
			range[1] = atom_getfloat(argv+1);
			if( (msg_type==ps_msg_int) || (msg_type==ps_msg_toggle) )
				sprintf(tempstring, "\t\t\t<td class =\"instructionRange\"> %ld %ld </td>", (long)range[0], (long)range[1]);
			else if ( (msg_type==ps_msg_float) || (msg_type==ps_msg_generic) )
				sprintf(tempstring, "\t\t\t<td class =\"instructionRange\"> %f %f </td>", range[0], range[1]);
			else
				sprintf(tempstring, "\t\t\t<th class = \"instructionRange\"> N/A </td>");
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);	
							
			// clipmode
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_clipmode , &argc, &argv);
			result = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionClipmode\"> %s </td>", result->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
				
			// ramp
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object, ps_ramp_drive, &argc, &argv);
			result = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionRamp\"> %s </td>", result->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
				
			// repetitions
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_repetitions , &argc, &argv);
			
			//result = atom_getlong(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionRepetitions\"> %ld </td>", atom_getlong(argv));
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			
			// description
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_description , &argc, &argv);
			result = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionDescription\"> %s </td>", result->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			jcom_core_file_writeline(&file_handle, &myEof, "\t\t<tr>");
		}
	}
	critical_exit(0);
	
	// End of table
	jcom_core_file_writeline(&file_handle, &myEof, "\t</table>");
	jcom_core_file_writeline(&file_handle, &myEof, "");
	jcom_core_file_writeline(&file_handle, &myEof, "\t<p>&nbsp;</p>");
	jcom_core_file_writeline(&file_handle, &myEof, "");

	///////////////////////////////////////////////////
	//
	// Return
	//
	///////////////////////////////////////////////////

	jcom_core_file_writeline(&file_handle, &myEof, "\t<h3> Return </h3>");	
	table_heading(&file_handle, &myEof);
		
	// Process each return
	critical_enter(0);
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if(t->type == ps_subscribe_return){
			// name
			jcom_core_file_writeline(&file_handle, &myEof, "\t\t<tr>");	
			sprintf(tempstring, "\t\t\t<td class=\"instructionName\"> %s </td>", t->name->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			
			// type
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_type , &argc, &argv);
			msg_type = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionType\"> %s </td>", msg_type->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			
			// range
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object, ps_range, &argc, &argv);
			range[0] = atom_getfloat(argv);
			range[1] = atom_getfloat(argv+1);
			if( (msg_type==ps_msg_int) || (msg_type==ps_msg_toggle) )
				sprintf(tempstring, "\t\t\t<td class =\"instructionRange\"> %ld %ld </td>", (long)range[0], (long)range[1]);
			else if ( (msg_type==ps_msg_float) || (msg_type==ps_msg_generic) )
				sprintf(tempstring, "\t\t\t<td class =\"instructionRange\"> %f %f </td>", range[0], range[1]);
			else
				sprintf(tempstring, "\t\t\t<th class = \"instructionRange\"> N/A </td>");
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);	
							
			// clipmode
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_clipmode , &argc, &argv);
			result = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionClipmode\"> %s </td>", result->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
				
			// ramp
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object, ps_ramp_drive, &argc, &argv);
			result = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionRamp\"> %s </td>", result->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
				
			// repetitions
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_repetitions , &argc, &argv);
			
			//result = atom_getlong(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionRepetitions\"> %ld </td>", atom_getlong(argv));
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			
			// description
			argc = NULL;
			argv = NULL;
			object_attr_getvalueof(t->object ,ps_description , &argc, &argv);
			result = atom_getsym(argv);
			sprintf(tempstring, "\t\t\t<td class =\"instructionDescription\"> %s </td>", result->s_name);
			jcom_core_file_writeline(&file_handle, &myEof, tempstring);
			jcom_core_file_writeline(&file_handle, &myEof, "\t\t<tr>");
		}

	}
	critical_exit(0);
	
	// End of table
	jcom_core_file_writeline(&file_handle, &myEof, "\t</table>");
	jcom_core_file_writeline(&file_handle, &myEof, "");
	jcom_core_file_writeline(&file_handle, &myEof, "\t<p>&nbsp;</p>");
	jcom_core_file_writeline(&file_handle, &myEof, "");
	
	// Some final info on Jamoma
	jcom_core_file_writeline(&file_handle, &myEof, "\t<h3> About Jamoma </h3>");		
	jcom_core_file_writeline(&file_handle, &myEof, "\t<p> Jamoma is a system for creating and exchanging structured Max patches. ");
	jcom_core_file_writeline(&file_handle, &myEof, "\tIt consists of both a set of guidelines and an implementation of those guidelines. ");
	jcom_core_file_writeline(&file_handle, &myEof, "\tFor more information please visit <a href=\"http://jamoma.org/\">jamoma.org</a>. </p> ");

	// End of page
	jcom_core_file_writeline(&file_handle, &myEof, "</body>");
	jcom_core_file_writeline(&file_handle, &myEof, "</html>");
	
	
	// WE ARE DONE, SO CLOSE THE FILE
	err = sysfile_seteof(file_handle, myEof);
	if(err){
		error("jcom.hub: %s - error %d creating EOF", filename, err);
		return;	
	}
							
	sysfile_close(file_handle);		// close file reference
	
	atom_setsym(&a[0], ps_done);
	hub_outlet_return(x, gensym("/documentation/generate"), 1, &a[0]);
}

//	Generates table heading for parameters and messages
void table_heading(t_filehandle *file_handle, long *myEof)
{		
	jcom_core_file_writeline(file_handle, myEof, "\t<table>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t<tr class=\"tableHeading2\">");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> Name </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> Type </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> Range </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> Clipmode </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> Ramp Enabled </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> Repetitions </td>");	
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> Description </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t<tr>");
}


// CSS definitions -- we include them in the html file itself so that we don't have problems with paths to external references
void hub_autodoc_css(t_filehandle *file_handle, long *myEof)
{
	jcom_core_file_writeline(file_handle, myEof, "<style type=\"text/css\">");

	jcom_core_file_writeline(file_handle, myEof, "\
body {\
	margin: 0px;\
	font-family: Arial, Helvetica, sans-serif;\
}\
\
h1 {\
	font-size: 24px;\
	font-weight:100;\
	padding-top: 1em;\
	margin: 0;\
}\
\
\
h2 {\
	font-size: 18px;\
	font-weight:200;\
	margin: 0;\
	color: #555;\
	text-transform: lowercase;\
}\
\
h3 {\
	color: #888;\
	border-bottom: 1px solid #333;\
	font-size: 18px;\
	font-weight:100;\
	margin-top: 20px;\
	margin-bottom: 10px;\
	margin-left: 2%;\
	margin-right: 2%;\
}\
\
h4{\
	color: #333;\
	font-size: 14px;\
	font-weight: bold;\
	margin-bottom: 0px;\
	margin-left: 2%;\
	margin-right: 2%;\
}\
\
h6 {\
	font-size: 12px;\
	font-weight:100;\
	line-height: 1.2;\
	margin-right: 2%;\
	margin-left: 2%;\
}\
\
p {\
	font-size: 12px;\
	font-weight:100;\
	margin: 5px 2%;\
	padding-bottom: 1em;\
}\
\
ul{\
	margin-top:0;\
	padding-top:0;\
}\
\
li {\
	font-size: 12px;\
	font-weight:100;\
	margin-top: 0;\
	margin-left: 10px;\
	padding: 0em 0em 0.3em;\
}\
\
img {\
	padding: 10px 10px 0px 0px;\
}\
\
\
#jmod_header{\
	display: block;\
	margin: 0 0 40px 0;\
}\
\
#jmod_header img{\
	float: left;\
}\
\
\
.objectname {\
	font-size: 24px;\
	font-weight: bold;\
}\
\
\
.moduleName {\
	font-size: 2em;\
	background-color: #c5c5c5;\
	text-align: right;\
	vertical-align: top;\
	font-weight: bold;\
}\
.moduleDescription {\
	font-size: 1em;\
	background-color: #000000;\
	color: #c5c5c5;\
	text-align: right;\
	vertical-align: top;\
}\
\
.tableHeading2 {\
	background-color: #eee;\
	text-align: left;\
	vertical-align: top;\
	font-weight:bold;\
	font-size: 12px;\
}\
\
table {\
	border: 0px;\
	width: 96%;\
	margin-top: 10px;\
	margin-bottom: 10px;\
	margin-left: 2%;\
	font-size: 14px;\
}\
");

	jcom_core_file_writeline(file_handle, myEof, "\
\
.instructionName {\
	font-family: 'Courier New', Courier, mono;\
	background-color: #edd;\
	vertical-align: top;\
}\
\
.instructionType {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
}\
.instructionRange {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
}\
.instructionClipmode {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
}\
.instructionRamp {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
}\
.instructionRepetitions {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
}\
.instructionDescription {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
}\
td {\
	padding-right: 5px;\
	padding-left: 5px;\
}\
ul {\
	list-style-type: disc;\
}\
.patchimage {\
	clear: both;\
}\
.comment {\
	color: #6666FF;\
}\
.smallTable {\
	width: 400px;\
	border: none;\
}\
caption {\
	font-size: 11px;\
	font-style: italic;\
}\
.filepath {\
	font-family: 'Courier New', Courier, mono;\
}\
.instruction {\
	font-family: 'Courier New', Courier, mono;\
}\
");

	jcom_core_file_writeline(file_handle, myEof, "</style>");
}

