/* 
 * jcom.hub - autodoc
 * Generate HTML documentation for the jcom.hub external
 * By Tim Place & Trond Lossius, Copyright � 2006
 * Tex support added by Nils Peters 2010
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "jcom.hub.h"

enum {	PARAMETER, 
		MESSAGE, 
		RETURN
};


void hub_autodoc(t_hub *x, t_symbol *msg, long argc, t_atom *argv)
{
	t_symbol *userpath = _sym_nothing;
    t_symbol *exporttype = _sym_nothing;
	
	if (argc==1){
		exporttype = atom_getsym(argv);
		if ((exporttype != gensym("tex")) && (exporttype != gensym("html"))){
			userpath = atom_getsym(argv);
			exporttype = _sym_nothing;
		}
	}
	else if(argc==2){
		exporttype = atom_getsym(argv);
		userpath = atom_getsym(argv+1);
	}
	if  (exporttype == gensym("tex")){ 
		defer(x, (method)hub_doautodocTex, userpath, 0, 0L);
	}
	else {
		defer(x, (method)hub_doautodocHtml, userpath, 0, 0L);
	}
	
}

void hub_doautodocTex(t_hub *x, t_symbol *userpath)
{
	long 			type = 'TEXT';				// four-char code for Mac file type
	char 			filename[MAX_FILENAME_CHARS];				// for storing the name of the file locally
	short 			path, err;					// pathID#, error number
	long			outtype;					// the file type that is actually true
	t_filehandle	file_handle;				// a reference to our file (for opening it, closing it, etc.)
	long			myEof = 0;
	char 			tempstring[1024];
	subscriberList	*subscriber = x->subscriber;	// the head of the linked list
	long			argc;
	t_atom			a[2];
	t_atom			*argv = &a[0];
	
	// SPECIFY THE FILE WE WANT TO WRITE
	if (!userpath->s_name[0]) {												// Empty string - Throw up a dialog
		snprintf(filename, MAX_FILENAME_CHARS, "%s.tex", x->attr_name->s_name);					// Default File Name
		saveas_promptset("Save Generated Tex Documentation...");			// Instructional Text in the dialog
		err = saveasdialog_extended(filename, &path, &outtype, &type, 1);	// Returns 0 if successful
		if (err)																// User Cancelled
			return;															
	}
	else {
		strcpy(filename, userpath->s_name);									// Copy symbol argument to a local string
		path = 0;		
	}
	
	// NOW ATTEMPT TO CREATE THE FILE...
	err = path_createsysfile(filename, path, type, &file_handle);
	if (err) {																// Handle any errors that occur
		object_error((t_object*)x, "%s - error %d creating file", filename, err);
		return;	
	}
	
	// HERE WE CAN FINALLY WRITE THE DATA OUT TO THE FILE
	
	// tex header
	jcom_core_file_writeline(&file_handle, &myEof, "% ");
	jcom_core_file_writeline(&file_handle, &myEof, "% This file was automatically generated and should compile in Latex in most cases.");
	jcom_core_file_writeline(&file_handle, &myEof, "% However, depending on the module's namespace, there may be some edits necessary.");
	jcom_core_file_writeline(&file_handle, &myEof, "% For instance:");
	jcom_core_file_writeline(&file_handle, &myEof, "%                '_' in a namespace have to be replaced with '\\_' ");
	jcom_core_file_writeline(&file_handle, &myEof, "%                '&' in a description have to be replaced with '\\&', etc. ");
	jcom_core_file_writeline(&file_handle, &myEof, "% ");
	jcom_core_file_writeline(&file_handle, &myEof, "\\documentclass[a4paper,landscape]{article}");	
	jcom_core_file_writeline(&file_handle, &myEof, "\\usepackage[utf8]{inputenc}");
	jcom_core_file_writeline(&file_handle, &myEof, "\\usepackage{fullpage,listings,longtable,url}");
	jcom_core_file_writeline(&file_handle, &myEof, "\\usepackage[table]{xcolor}");
	jcom_core_file_writeline(&file_handle, &myEof, "\\begin{document}");
	jcom_core_file_writeline(&file_handle, &myEof, "\\pagestyle{empty}");
	//jcom_core_file_writeline(&file_handle, &myEof, "\\begin{landscape}");
	snprintf(tempstring, 1024, "\\section*{%s}", x->attr_name->s_name);	
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	snprintf(tempstring, 1024, "\\large{%s} ", x->attr_description->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	
	// Menu
//	jcom_core_file_writeline(&file_handle, &myEof, "\t<h6><a href=\"../../../documentation/html/index.html\">Table of Contents</a> | <a href=\"../../../documentation/html/modules.html\">Index of Modules</a> | <a href=\"../../../documentation/html/credits.html\">Credits</a> | <a href=\"http://pledgie.com/campaigns/5615\">Donate</a> | <a href=\"http://www.jamoma.org/\">Jamoma.org</a></h6>");
//	jcom_core_file_writeline(&file_handle, &myEof, "\t</div>");
//	jcom_core_file_writeline(&file_handle, &myEof, "");
	
	// Configuration
	jcom_core_file_writeline(&file_handle, &myEof, "\\subsection*{Configuration}");
	jcom_core_file_writeline(&file_handle, &myEof, "\\hrule");
	jcom_core_file_writeline(&file_handle, &myEof, "\\begin{tabbing}");
	jcom_core_file_writeline(&file_handle, &myEof, "123456789012345678901234\\=ddddd\\kill\\\\");
	snprintf(tempstring, 1024, "Module Type:\\> \\texttt{%s}\\\\", x->attr_type->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	snprintf(tempstring, 1024, "Algorithm Type:\\> \\texttt{%s}\\\\", x->attr_algorithm_type->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	jcom_core_file_writeline(&file_handle, &myEof, "\\\\");
	snprintf(tempstring, 1024, "Interface Size:\\> \\texttt{%ld x %ld pixels}\\\\", x->attr_size[0], x->attr_size[1]);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	jcom_core_file_writeline(&file_handle, &myEof, "\\\\");
	// Inlets and outlets
	if (x->in_object) {
		argc = NULL;
		argv = NULL;
		object_attr_getvalueof(x->in_object, jps_num_inputs, &argc, &argv);	
		snprintf(tempstring, 1024, "Number of signal inlets:\\> \\texttt{%ld}\\\\", atom_getlong(argv));
		jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	}
	else
		jcom_core_file_writeline(&file_handle, &myEof, "BOGUS INLET DEFINITION!\\\\");
	
	if (x->out_object) {	// jcom.out is optional in the case of no signals
		argc = NULL;
		argv = NULL;
		object_attr_getvalueof(x->out_object, jps_num_outputs, &argc, &argv);
		snprintf(tempstring, 1024, "Number of signal outlets:\\> \\texttt{%ld}\\\\", atom_getlong(argv));		
		jcom_core_file_writeline(&file_handle, &myEof, tempstring);
		
	}	
	else {
		jcom_core_file_writeline(&file_handle, &myEof, "Number of signal outlets:\\> \\texttt{0}\\\\");
	}
		jcom_core_file_writeline(&file_handle, &myEof, "\\end{tabbing}");
	
	///////////////////////////////////////////////////
	//
	// Parameters
	//
	///////////////////////////////////////////////////
	//jcom_core_file_writeline(&file_handle, &myEof, "\\vspace{1cm}");		
	jcom_core_file_writeline(&file_handle, &myEof, "\\subsection*{Parameters}");
	jcom_core_file_writeline(&file_handle, &myEof, "\\hrule");
	table_headingTex(&file_handle, &myEof, PARAMETER);
	
	// Process each parameter
	critical_enter(0);
	subscriber = x->subscriber;
	subscriberIterator i;
	t_subscriber* t;
	for (i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if (t->type == jps_subscribe_parameter) {
			hub_autodoc_nodeTex(&file_handle, &myEof, t, PARAMETER);
		}
	}	
	critical_exit(0);
	
	// End of table
	jcom_core_file_writeline(&file_handle, &myEof, "\\hline \\hline");
	jcom_core_file_writeline(&file_handle, &myEof, "\\end{longtable} ");
	//jcom_core_file_writeline(&file_handle, &myEof, "\\end{table}");
    jcom_core_file_writeline(&file_handle, &myEof, "% end of parameters");
	
	///////////////////////////////////////////////////
	//
	// Messages
	//
	///////////////////////////////////////////////////
	jcom_core_file_writeline(&file_handle, &myEof, "\\vspace{1cm}");	
	jcom_core_file_writeline(&file_handle, &myEof, "\\subsection*{Messages}");	
	jcom_core_file_writeline(&file_handle, &myEof, "\\hrule");
	table_headingTex(&file_handle, &myEof, MESSAGE);
	
	// Process each message
	critical_enter(0);
	for (i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if (t->type == jps_subscribe_message) {
			hub_autodoc_nodeTex(&file_handle, &myEof, t, MESSAGE);
		}
	}
	critical_exit(0);
	
	// End of table
	jcom_core_file_writeline(&file_handle, &myEof, "\\hline \\hline");
	jcom_core_file_writeline(&file_handle, &myEof, "\\end{longtable} ");
	//jcom_core_file_writeline(&file_handle, &myEof, "\\end{table}");
	jcom_core_file_writeline(&file_handle, &myEof, "% end of messages ");
	
	///////////////////////////////////////////////////
	//
	// Return
	//
	///////////////////////////////////////////////////
	jcom_core_file_writeline(&file_handle, &myEof, "\\vspace{1cm}");
	jcom_core_file_writeline(&file_handle, &myEof, "\\subsection*{Returns}");
	jcom_core_file_writeline(&file_handle, &myEof, "\\hrule");
	table_headingTex(&file_handle, &myEof, RETURN);
	
	// Process each return
	critical_enter(0);
	for (i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if (t->type == jps_subscribe_return) {
			hub_autodoc_nodeTex(&file_handle, &myEof, t, RETURN);
		}
	}
	critical_exit(0);
	
	// End of table
	jcom_core_file_writeline(&file_handle, &myEof, "\\hline \\hline");
	jcom_core_file_writeline(&file_handle, &myEof, "\\end{longtable} ");
	//jcom_core_file_writeline(&file_handle, &myEof, "\\end{table}");
	jcom_core_file_writeline(&file_handle, &myEof, "% end of returns");
	
	// Some final info on Jamoma
	jcom_core_file_writeline(&file_handle, &myEof, "\\subsection*{About Jamoma}\\hrule \\normalsize \\vspace{0.3cm}");		
	jcom_core_file_writeline(&file_handle, &myEof, "Jamoma is a system for creating and exchanging structured Max patches. ");
	jcom_core_file_writeline(&file_handle, &myEof, "It consists of both a set of guidelines and an implementation of those guidelines.\\\\ \\\\");
	jcom_core_file_writeline(&file_handle, &myEof, "For more information please visit \\url{http://jamoma.org}.\\\\");
    //jcom_core_file_writeline(&file_handle, &myEof, "\\end{landscape}");
	// End of page
	jcom_core_file_writeline(&file_handle, &myEof, "\\end{document}");	

	
	// WE ARE DONE, SO CLOSE THE FILE
	err = sysfile_seteof(file_handle, myEof);
	if (err) {
		object_error((t_object*)x, "%s - error %d creating EOF", filename, err);
		return;	
	}
	
	sysfile_close(file_handle);		// close file reference
	
	atom_setsym(&a[0], jps_done);
	hub_outlet_return(x, gensym("/documentation/generate"), 1, &a[0]);
}

	
	
	

		



void hub_doautodocHtml(t_hub *x, t_symbol *userpath)
{
	long 			type = 'TEXT';				// four-char code for Mac file type
	char 			filename[MAX_FILENAME_CHARS];				// for storing the name of the file locally
	short 			path, err;					// pathID#, error number
	long			outtype;					// the file type that is actually true
	t_filehandle	file_handle;				// a reference to our file (for opening it, closing it, etc.)
	long			myEof = 0;
	char 			tempstring[1024];
	subscriberList	*subscriber = x->subscriber;	// the head of the linked list
	long			argc;
	t_atom			a[2];
	t_atom			*argv = &a[0];

	// SPECIFY THE FILE WE WANT TO WRITE
	if (!userpath->s_name[0]) {												// Empty string - Throw up a dialog
		snprintf(filename, MAX_FILENAME_CHARS, "%s.html", x->attr_name->s_name);					// Default File Name
		saveas_promptset("Save Generated HTML Documentation...");			// Instructional Text in the dialog
		err = saveasdialog_extended(filename, &path, &outtype, &type, 1);	// Returns 0 if successful
		if (err)																// User Cancelled
			return;															
	}
	else {
		strcpy(filename, userpath->s_name);									// Copy symbol argument to a local string
		path = 0;		
	}

	// NOW ATTEMPT TO CREATE THE FILE...
	err = path_createsysfile(filename, path, type, &file_handle);
	if (err) {																// Handle any errors that occur
		object_error((t_object*)x, "%s - error %d creating file", filename, err);
		return;	
	}

	// HERE WE CAN FINALLY WRITE THE DATA OUT TO THE FILE
	
	// html header
	jcom_core_file_writeline(&file_handle, &myEof, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");	
	jcom_core_file_writeline(&file_handle, &myEof, "<html>");
	jcom_core_file_writeline(&file_handle, &myEof, "\t<head>");
	jcom_core_file_writeline(&file_handle, &myEof, "\t\t<meta http-equiv=\"content-type\" content=\"text/html;charset=ISO-8859-1\">");
	snprintf(tempstring, 1024, "<title> %s </title>", x->attr_name->s_name);	
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	//jcom_core_file_writeline(&file_handle, &myEof, "\t\t<link href=\"../../../documentation/html/styles/jamoma.css\" rel=\"stylesheet\" type=\"text/css\">");	
	hub_autodoc_css(&file_handle, &myEof);
	jcom_core_file_writeline(&file_handle, &myEof, "\t</head>");
	jcom_core_file_writeline(&file_handle, &myEof, "");

	// html body
	jcom_core_file_writeline(&file_handle, &myEof, "<body>");
	jcom_core_file_writeline(&file_handle, &myEof, "\t<div id=\"jmod_header\">");

	// Top of page displaying name of module etc.
	jcom_core_file_writeline(&file_handle, &myEof, "\t<img src=\"../../../documentation/graphics/jmodular.icon.png\" width=\"128\" height=\"128\">");	
	snprintf(tempstring, 1024, "\t<h1> %s </h1>", x->attr_name->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	snprintf(tempstring, 1024, "\t<h2> %s </h2>", x->attr_description->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);

	// Menu
	jcom_core_file_writeline(&file_handle, &myEof, "\t<h6><a href=\"../../../documentation/html/index.html\">Table of Contents</a> | <a href=\"../../../documentation/html/modules.html\">Index of Modules</a> | <a href=\"../../../documentation/html/credits.html\">Credits</a> | <a href=\"http://pledgie.com/campaigns/5615\">Donate</a> | <a href=\"http://www.jamoma.org/\">Jamoma.org</a></h6>");
	jcom_core_file_writeline(&file_handle, &myEof, "\t</div>");
	jcom_core_file_writeline(&file_handle, &myEof, "");
		
	// Configuration
	jcom_core_file_writeline(&file_handle, &myEof, "\t<h3> Configuration </h3>");
	snprintf(tempstring, 1024, "\t<p> Module Type: <code> %s </code> <br>", x->attr_type->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	snprintf(tempstring, 1024, "\tAlgorithm Type: <code> %s </code> </p>", x->attr_algorithm_type->s_name);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);		
	snprintf(tempstring, 1024, "\t<p>Interface Size: <code> %ldx%ld pixels </code> </p>", x->attr_size[0], x->attr_size[1]);
	jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	
	// Inlets and outlets
	if (x->in_object) {
		argc = NULL;
		argv = NULL;
		object_attr_getvalueof(x->in_object, jps_num_inputs, &argc, &argv);	
		snprintf(tempstring, 1024, "\t<p>Number of signal inlets: <code> %ld </code> <br/>", atom_getlong(argv));
		jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	}
	else
		jcom_core_file_writeline(&file_handle, &myEof, "\t<p>BOGUS INLET DEFINITION!<br/>");

	if (x->out_object) {	// jcom.out is optional in the case of no signals
		argc = NULL;
		argv = NULL;
		object_attr_getvalueof(x->out_object, jps_num_outputs, &argc, &argv);
		snprintf(tempstring, 1024, "\tNumber of signal outlets: <code> %ld </code> </p>", atom_getlong(argv));
		jcom_core_file_writeline(&file_handle, &myEof, tempstring);
	}	
	else {
		jcom_core_file_writeline(&file_handle, &myEof, "Number of signal outlets: <code> 0 </code> </p>");
	}
	

	///////////////////////////////////////////////////
	//
	// Parameters
	//
	///////////////////////////////////////////////////

	jcom_core_file_writeline(&file_handle, &myEof, "\t<h3> Parameters </h3>");	
	table_headingHtml(&file_handle, &myEof, PARAMETER);

	// Process each parameter
	critical_enter(0);
	subscriber = x->subscriber;
	subscriberIterator i;
	t_subscriber* t;
	for (i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if (t->type == jps_subscribe_parameter) {
			hub_autodoc_nodeHtml(&file_handle, &myEof, t, PARAMETER);
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
	table_headingHtml(&file_handle, &myEof, MESSAGE);
		
	// Process each message
	critical_enter(0);
	for (i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if (t->type == jps_subscribe_message) {
			hub_autodoc_nodeHtml(&file_handle, &myEof, t, MESSAGE);
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
	table_headingHtml(&file_handle, &myEof, RETURN);
		
	// Process each return
	critical_enter(0);
	for (i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if (t->type == jps_subscribe_return) {
			hub_autodoc_nodeHtml(&file_handle, &myEof, t, RETURN);
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
	if (err) {
		object_error((t_object*)x, "%s - error %d creating EOF", filename, err);
		return;	
	}
							
	sysfile_close(file_handle);		// close file reference
	
	atom_setsym(&a[0], jps_done);
	hub_outlet_return(x, gensym("/documentation/generate"), 1, &a[0]);
}


void hub_autodoc_nodeHtml(t_filehandle *file_handle, long *myEof, t_subscriber* t, int nodeType)
{	
	long			argc;
	t_atom			a[2];
	t_atom			*argv = &a[0];
	t_symbol		*result;
	t_symbol		*msg_type;
	float			range[2];
	char			*humantype;
	char 			tempstring[1024];
	t_max_err		err;

	// name
	jcom_core_file_writeline(file_handle, myEof, "\t\t<tr>");	
	snprintf(tempstring, 1024, "\t\t\t<td class=\"instructionName\"> %s </td>", t->name->s_name);
	jcom_core_file_writeline(file_handle, myEof, tempstring);
	
	// type
	argc = NULL;
	argv = NULL;
	err = object_attr_getvalueof(t->object ,jps_type , &argc, &argv);
	if (err)
		msg_type = gensym("bogus");
	else
		msg_type = atom_getsym(argv);
	
	humantype = msg_type->s_name;
	if (strstr(humantype, "msg_"))
		humantype += 4;
	snprintf(tempstring, 1024, "\t\t\t<td class =\"instructionType\"> %s </td>", humantype);
	jcom_core_file_writeline(file_handle, myEof, tempstring);
	
	// range/bounds
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object, jps_range_bounds, &argc, &argv);
	range[0] = atom_getfloat(argv);
	range[1] = atom_getfloat(argv+1);
	if ( (msg_type==jps_integer) || (msg_type==jps_boolean) )
		snprintf(tempstring, 1024, "\t\t\t<td class =\"instructionRangeBounds\"> %ld %ld </td>", (long)range[0], (long)range[1]);
	else if ( (msg_type==jps_decimal) || (msg_type==jps_generic) )
		snprintf(tempstring, 1024, "\t\t\t<td class =\"instructionRangeBounds\"> %f %f </td>", range[0], range[1]);
	else
		snprintf(tempstring, 1024, "\t\t\t<th class = \"instructionRangeBounds\"> N/A </td>");
	jcom_core_file_writeline(file_handle, myEof, tempstring);
	
	// range/clipmode
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object ,jps_range_clipmode , &argc, &argv);
	result = atom_getsym(argv);
	snprintf(tempstring, 1024, "\t\t\t<td class =\"instructionRangeClipmode\"> %s </td>", result->s_name);
	jcom_core_file_writeline(file_handle, myEof, tempstring);
	
	// ramp/drive
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object, jps_ramp_drive, &argc, &argv);
	result = atom_getsym(argv);
	snprintf(tempstring, 1024, "\t\t\t<td class =\"instructionRampDrive\"> %s </td>", result->s_name);
	jcom_core_file_writeline(file_handle, myEof, tempstring);
	
	// ramp/function
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object, jps_ramp_function, &argc, &argv);
	result = atom_getsym(argv);
	snprintf(tempstring, 1024, "\t\t\t<td class =\"instructionRampFunction\"> %s </td>", result->s_name);
	jcom_core_file_writeline(file_handle, myEof, tempstring);
	
	// dataspace
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object ,jps_dataspace , &argc, &argv);
	msg_type = atom_getsym(argv);
	snprintf(tempstring, 1024, "\t\t\t<td class =\"instructionDataspace\"> %s </td>", msg_type->s_name);
	jcom_core_file_writeline(file_handle, myEof, tempstring);			
	
	 // dataspace/unit/native
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object ,jps_unit_native , &argc, &argv);
	msg_type = atom_getsym(argv);
	snprintf(tempstring, 1024, "\t\t\t<td class =\"instructionDataspaceUnitNative\"> %s </td>", msg_type->s_name);
	jcom_core_file_writeline(file_handle, myEof, tempstring);
	
	// repetitions/allow
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object ,jps_repetitions_allow , &argc, &argv);		
	snprintf(tempstring, 1024, "\t\t\t<td class =\"instructionRepetitionsAllow\"> %ld </td>", atom_getlong(argv));
	jcom_core_file_writeline(file_handle, myEof, tempstring);

	// enable
	if (nodeType == RETURN) {
		argc = NULL;
		argv = NULL;
		object_attr_getvalueof(t->object, jps_enable, &argc, &argv);
		snprintf(tempstring, 1024, "\t\t\t<td class =\"instructionEnable\"> %ld </td>", atom_getlong(argv));
		jcom_core_file_writeline(file_handle, myEof, tempstring);
	}
	// description
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object ,jps_description , &argc, &argv);
	result = atom_getsym(argv);
	snprintf(tempstring, 1024, "\t\t\t<td class =\"instructionDescription\"> %s </td>", result->s_name);
	jcom_core_file_writeline(file_handle, myEof, tempstring);
	jcom_core_file_writeline(file_handle, myEof, "\t\t<tr>");
}

void hub_autodoc_nodeTex(t_filehandle *file_handle, long *myEof, t_subscriber* t, int nodeType)
{	
	long			argc;
	long			repetitionAllow;
	long			resultEnable;
	t_atom			a[2];
	t_atom			*argv = &a[0];
	t_symbol		*resultClipMode;
	t_symbol		*resultRampDrive;
	t_symbol		*resultRampFct;
	t_symbol		*resultDataspace;
	t_symbol		*resultDataspaceUnitActive;
	t_symbol		*resultDescription;
	t_symbol		*msg_type;
	float			range[2];
	char			*humantype;
	char			rangeBounds[32];
	char 			tempstring[1024];
	t_max_err		err;
	
	
	
	// type
	argc = NULL;
	argv = NULL;
	err = object_attr_getvalueof(t->object ,jps_type , &argc, &argv);
	if (err)
		msg_type = gensym("bogus");
	else
		msg_type = atom_getsym(argv);
	
	humantype = msg_type->s_name;
	if (strstr(humantype, "msg_"))
		humantype += 4;
	
		// range/bounds
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object, jps_range_bounds, &argc, &argv);
	range[0] = atom_getfloat(argv);
	range[1] = atom_getfloat(argv+1);
	if ( (msg_type==jps_integer) || (msg_type==jps_boolean) )
		snprintf(rangeBounds, 32, "%ld %ld", (long)range[0], (long)range[1]);
	else if ( (msg_type==jps_decimal) || (msg_type==jps_generic) )
		snprintf(rangeBounds, 32, "%.3f %.3f", range[0], range[1]);
	else
		snprintf(rangeBounds, 32, "N/A");

	// range/clipmode
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object ,jps_range_clipmode , &argc, &argv);
	resultClipMode = atom_getsym(argv);

	// ramp/drive
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object, jps_ramp_drive, &argc, &argv);
	resultRampDrive = atom_getsym(argv);

	// ramp/function
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object, jps_ramp_function, &argc, &argv);
	resultRampFct = atom_getsym(argv);

	// dataspace
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object ,jps_dataspace , &argc, &argv);
	resultDataspace = atom_getsym(argv);
	
	// dataspace/unit/native
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object ,jps_unit_native , &argc, &argv);
	resultDataspaceUnitActive = atom_getsym(argv);
	
	// repetitions/allow
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object ,jps_repetitions_allow , &argc, &argv);		
	repetitionAllow = atom_getlong(argv);

	// enable
	if (nodeType == RETURN) {
		argc = NULL;
		argv = NULL;
		object_attr_getvalueof(t->object ,jps_enable , &argc, &argv);		
		resultEnable = atom_getlong(argv);
	}
	
	// description
	argc = NULL;
	argv = NULL;
	object_attr_getvalueof(t->object ,jps_description , &argc, &argv);
	resultDescription = atom_getsym(argv);
	
	if (nodeType == RETURN)
		snprintf(tempstring, 1024, "%s & %s & %s & %s & %s & %s & %s & %s & %ld & %ld & %s \\\\", t->name->s_name, humantype, rangeBounds , resultClipMode->s_name,  resultRampDrive->s_name, resultRampFct->s_name, resultDataspace->s_name, resultDataspaceUnitActive->s_name, repetitionAllow, resultEnable, resultDescription->s_name);
	else
		snprintf(tempstring, 1024, "%s & %s & %s & %s & %s & %s & %s & %s & %ld & %s \\\\", t->name->s_name, humantype, rangeBounds , resultClipMode->s_name,  resultRampDrive->s_name, resultRampFct->s_name, resultDataspace->s_name, resultDataspaceUnitActive->s_name, repetitionAllow, resultDescription->s_name);
	jcom_core_file_writeline(file_handle, myEof, tempstring); 
	
}

//	Generates table heading for parameters and messages
void table_headingHtml(t_filehandle *file_handle, long *myEof, int nodeType)
{		
	jcom_core_file_writeline(file_handle, myEof, "\t<table>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t<tr class=\"tableHeading2\">");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> /name </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> /type </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> /range/bounds </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> /range/clipmode </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> /ramp/drive </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> /ramp/function </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> /dataspace </td>"); 
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> /dataspace/unit/native </td>"); 
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> /repetitions/allow </td>");	
	if (nodeType == RETURN)
		jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> /enable </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t\t<td> /description </td>");
	jcom_core_file_writeline(file_handle, myEof, "\t\t<tr>");
}

void table_headingTex(t_filehandle *file_handle, long *myEof, int nodeType)
{	
	jcom_core_file_writeline(file_handle, myEof, "\\rowcolors{2}{gray!10}{}\\footnotesize");
	if (nodeType == RETURN){
		jcom_core_file_writeline(file_handle, myEof, "\\begin{longtable}{llp{1.5cm}lllllcc p{6cm}} \\hline \\hline ");
		jcom_core_file_writeline(file_handle, myEof, "\\rowcolor{white}  \\textbf{/name} & \\textbf{/type} & \\textbf{/range}  & \\textbf{/range} & \\textbf{/ramp} & \\textbf{/ramp} & \\textbf{/dataspace} & \\textbf{/dataspace} & \\multicolumn{1}{l}{\\textbf{/repetitions}} & \\multicolumn{1}{l}{\\textbf{/enable}} & \\textbf{/description}\\\\");
		jcom_core_file_writeline(file_handle, myEof, "       &       &  \\textbf{/bounds} & \\textbf{/clipmode} & \\textbf{/drive} & \\textbf{/function} &  & \\textbf{/unit/native} & \\multicolumn{1}{l}{\\textbf{/allow}} & & \\\\");
		}
	else{
		jcom_core_file_writeline(file_handle, myEof, "\\begin{longtable}{llp{1.5cm}lllllc p{7cm}} \\hline \\hline ");
		jcom_core_file_writeline(file_handle, myEof, "\\rowcolor{white}  \\textbf{/name} & \\textbf{/type} & \\textbf{/range}  & \\textbf{/range} & \\textbf{/ramp} & \\textbf{/ramp} & \\textbf{/dataspace} & \\textbf{/dataspace} & \\multicolumn{1}{l}{\\textbf{/repetitions}} & \\textbf{/description}\\\\");
		jcom_core_file_writeline(file_handle, myEof, "       &       &  \\textbf{/bounds} & \\textbf{/clipmode} & \\textbf{/drive} & \\textbf{/function} &  & \\textbf{/unit/native} & \\multicolumn{1}{l}{\\textbf{/allow}} & \\\\");
		}
	jcom_core_file_writeline(file_handle, myEof, "\\hline\\hline \\endhead");
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
	background-color: #eee;\
	vertical-align: top;\
}\
\
.instructionDataspace {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
}\
\
.instructionDataspaceUnitNative {\
font-family: 'Times New Roman', Times, serif;\
background-color: #eee;\
vertical-align: top;\
 }\
 \
.instructionRangeBounds {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
}\
.instructionRangeClipmode {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
}\
.instructionRampDrive {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
}\
.instructionRampFunction {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
}\
.instructionRepetitionsAllow {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
}\
.instructionEnable {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
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

