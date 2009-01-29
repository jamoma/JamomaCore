/* 
 * jcom.cuemanager
 * External for Jamoma: to manage cues in a text file 
 * By Théo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
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

	ps_keycue = gensym("KEYCUE");								// special flag
	ps_cue = gensym("CUE");										// special flag
	ps_module = gensym("#Module");								// special flag
	ps_wait = gensym("WAIT");									// special flag
	//ps_ramp = gensym("ramp");									// is it already exist ?

	ps_separation = gensym("##############################");	// to create a separation in the test
	ps_tab_param = gensym("				");						// to offset the text of a parameter
	ps_tab_attr = gensym("						");				// to offset the text of an attribute
	ps_tab_cmt = gensym("");									// to offset the text of a comment
	ps_tab_wait = gensym("		");								// to offset the text of a wait
	ps_nl = gensym("\n");										// to create a newline in the text(TODO : Windows and Mac)

	ps_no_id = gensym("no_id");									// if line have no index
	ps_no_data = gensym("no_data");								// if line have no data
	
	c = class_new("jcom.cuemanager", (method)cuemng_new, (method)cuemng_free, (long)sizeof(t_cuemng), 0L, A_GIMME, 0);
	
	class_addmethod(c, (method)cuemng_notify,			"notify",			A_CANT, 0);
	class_addmethod(c, (method)cuemng_assist,			"assist",			A_CANT, 0);

	// in TRIGGER mode, this method trigger out the current cue then go to the next
	// in EDIT mode, open the text editor to show the current cue
    class_addmethod(c, (method)cuemng_bang,				"bang",				0);

	// What to do when the text editor window is closed
	class_addmethod(c, (method)cuemng_edclose,			"edclose",			A_CANT, 0);
	class_addmethod(c, (method)cuemng_edsave,			"edsave",			A_CANT, 0);

	// in TRIGGER mode, this method trigger out the given cue then go to the next
	// in EDIT mode, this method select the given cue as the current and open the text editor
	//class_addmethod(c, (method)cuemng_int,				"int",			A_LONG, 0);

	// this method set in EDIT mode and, if there is an index,
	// select the given cue as the current and open the text editor
	//class_addmethod(c, (method)cuemng_edit,				"edit",			A_GIMME, 0);

	// this method set in TRIGGER mode and, if there is an index, 
	// trigger out the given cue then go to the next
	//class_addmethod(c, (method)cuemng_trigger,			"trigger",		A_GIMME, 0);

	// this method set in REPLACE mode and select the given cue as the current
	//class_addmethod(c, (method)cuemng_replace,			"replace",		A_LONG, 0);

	// this method set in INSERT mode and select the given cue as the current
	//class_addmethod(c, (method)cuemng_insert,			"insert",		A_LONG, 0);

	// in INSERT mode, this method insert the first given cue at the second given index
	// in REPLACE mode, this method replace the second given index by the first given cue
	//class_addmethod(c, (method)cuemng_copy,			"copy",			A_LONG, A_LONG, 0);

	// in INSERT and REPLACE mode, this method insert the first given cue at the second given index
	// and delete the first given cue
	//class_addmethod(c, (method)cuemng_move,			"move",			A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)cuemng_delete,			"delete",		A_LONG, 0);

	// this method matches any incoming data to stored it
	class_addmethod(c, (method)cuemng_anything,		"anything",		A_GIMME, 0);

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
		x->trigger_out = outlet_new((t_object *)x,NULL);		// anything outlet
		x->info_out = outlet_new((t_object *)x,NULL);			// anything outlet

		x->cuelist = linklist_new();
		linklist_flags(x->cuelist, OBJ_FLAG_DATA);

		x->m_editor = NULL;
		x->Kcurrent = -1;
		x->current = -1;
		x->trigeditmode = EDIT_MODE;
		x->storemode = INSERT;
	}
	return (x);
}

void cuemng_free(t_cuemng *x)
{
	;
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err cuemng_notify(t_cuemng *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	object_post((t_object *)x, "notification : %s", msg->s_name);
	return MAX_ERR_NONE;
}

void cuemng_assist(t_cuemng *x, void *b, long msg, long arg, char *dst)
{
	if (msg == ASSIST_INLET) { // inlet
		sprintf(dst, "I am inlet %ld", arg);
	} 
	else {	// outlet
		sprintf(dst, "I am outlet %ld", arg); 			
	}		
}

void cuemng_edclose(t_cuemng *x, char **ht, long size)
{
	/*char *text;

	text = sysmem_newptr((long)strlen(*ht)*sizeof(char));

	//get text
	if(sysmem_handlesize(ht)>1){
		strcpy(text,*ht);
		cuemng_textAnalysis(text);
	}
    x->m_editor = NULL;
	*/
}

long cuemng_edsave(t_cuemng *x, char **ht, long size)
{
	// do something with the text
	object_post((t_object  *)x,"Save modifications");
	return 1;	// 0 : tell editor it can save the text, otherwise do nothing
}

void cuemng_bang(t_cuemng *x)
{
	char *ht = new char[2048];

	cuemng_write_sym(ht,ps_keycue);
	cuemng_write_long(ht,2356);
	cuemng_write_float(ht,3.4567);
	cuemng_write_sym(ht,ps_nl);

	post("%s",ht);

	//t_cue *ccue = cuemng_current_cue(x);

	/*if(ccue){
		if(x->trigeditmode){ // TRIGGER_MODE

		}
		else{ // EDIT_MODE

			// if the jed object doesn't exist, create it
			//if(!x->m_editor)
			//	x->m_editor = (t_object *)object_new(CLASS_NOBOX, gensym("jed"), (t_object *)x , 0); 

			// store head info of the cue
			// mode
			if(ccue->mode == ABSOLUTE_CUE) cuemng_write_sym(ht,ps_keycue);
			else cuemng_write_sym(ht,ps_cue);

			// write name
			cuemng_write_sym(ht,ccue->index);
			
			// write option(s)
			if(ccue->ramp > 0){
				cuemng_write_sym(ht,gensym("ramp"));
				cuemng_write_long(ht,ccue->ramp);
			}
			
			// write 3 new line
			cuemng_write_sym(ht,ps_nl);
			cuemng_write_sym(ht,ps_nl);
			cuemng_write_sym(ht,ps_nl);

			// write a separation
			cuemng_write_sym(ht,ps_separation);

			// write 2 new line
			cuemng_write_sym(ht,ps_nl);
			cuemng_write_sym(ht,ps_nl);
			
			// write each line of the cue
			linklist_funall(ccue->linelist, (method)cuemng_write_line, ht);
			
			// write ht in the editor
			//object_method(x->m_editor, gensym("settext"), ht, gensym("utf-8"));

			// give a title to the windows editor
			object_attr_setsym(x->m_editor, gensym("title"), ccue->index);

			// open the text window editor
			object_attr_setchar(x->m_editor, gensym("visible"), 1);
		}
	}else
		object_post((t_object *)x, "error bang : create a cue before");
		*/
}

void cuemng_write_line(char* ht, t_line *l)
{
	long i,size;

	if(ht){
		// l->type : number of tabs
		if(l->type == _MODULE) cuemng_write_sym(ht,ps_module);
		if(l->type == _PARAM) cuemng_write_sym(ht,ps_tab_param);
		if(l->type == _ATTR) cuemng_write_sym(ht,ps_tab_attr);
		if(l->type == _WAIT) cuemng_write_sym(ht,ps_tab_wait);
		if(l->type == _CMT) cuemng_write_sym(ht,ps_tab_cmt);

		// l->index
		if(l->index != ps_no_id) cuemng_write_sym(ht,l->index);
		
		// l->data[]
		for(i=0;i<l->n;i++){
			cuemng_write_atom(ht,&l->data[i]);
		}

		// new line
		cuemng_write_sym(ht,ps_nl);
	}
}

// append an atom to a string
void cuemng_write_atom(char *dst, t_atom *src){
	if(atom_gettype(src) == A_SYM)cuemng_write_sym(dst,atom_getsym(src));	
	if(atom_gettype(src) == A_LONG)cuemng_write_long(dst,atom_getlong(src));
	if(atom_gettype(src) == A_FLOAT)cuemng_write_float(dst,atom_getfloat(src));
}

// append a symbol to a string
void cuemng_write_sym(char *dst, t_symbol *src){

	char *temp;

	temp = new char[strlen(src->s_name)+1];

	strcpy(temp,ps_keycue->s_name);
	strcat(dst,temp);
	strcat(dst," ");
	post("%s",temp);
	free(temp);
}

// append a long to a string
void cuemng_write_long(char* dst, long src){

	char *temp;

	temp = new char[32];

	snprintf(temp, sizeof(char)*((long)strlen(temp)+1),"%ld",src);
	strcat(dst,temp);
	strcat(dst," ");
	post("%s",temp);
	free(temp);
}

// append a float to a string
void cuemng_write_float(char* dst, float src){

	char *temp;

	temp = new char[32];

	snprintf(temp, sizeof(char)*((long)strlen(temp)+1),"%f",src);
	strcat(dst,temp);
	strcat(dst," ");
	post("%s",temp);
	free(temp);
}

// this method matches any incoming data to stored it
void cuemng_anything(t_cuemng *x, t_symbol *start, long argc, t_atom *argv)
{
	t_atom temp[2];
	t_atom *line;
	long i;

	if (argc && argv){
		
		/* DEBUG
		for(i=0;i<argc;i++){
			if(atom_gettype(&argv[i]) == A_SYM)
				post("%s %s ",start->s_name,atom_getsym(&argv[i])->s_name);
			if(atom_gettype(&argv[i]) == A_LONG)
				post("%s %d ",start->s_name,atom_getlong(&argv[i]));
			if(atom_gettype(&argv[i]) == A_FLOAT)
				post("%s %f ",start->s_name,atom_getfloat(&argv[i]));
		}
		*/
		
		// is it a new differential cue ?
		if(start == ps_cue){
			cuemng_add_cue(x,DIFFERENTIAL_CUE,argc,argv);
			return;
		}

		// is it a new absolute cue ?
		if(start == ps_keycue){
			cuemng_add_cue(x,ABSOLUTE_CUE,argc,argv);
			return;
		}

		// is it a module line ? (needs to be before the comment because : #Module)
		if(start == ps_module){
			if(atom_gettype(&argv[0]) == A_SYM)
				cuemng_add_line(x,_MODULE,atom_getsym(&argv[0]),0,NULL);
			return;
		}

		// is it a comment line ?
		if(start->s_name[0] == CMT){
			//if argc+1 is > 2, then allocate a new pointer.
			// otherwise, use stack array "temp"
			line =  atom_dynamic_start(temp,2,argc+1);
			atom_setsym(&line[0], start);
			for(i=1;i<argc+1;i++){
				line[i] = argv[i-1];
			}
			cuemng_add_line(x,_CMT,NULL,argc+1,line);
			atom_dynamic_end(temp,line);
			return;
		}

		// is it an attribute line ?
		if(start->s_name[0] == ATTR){
			cuemng_add_line(x,_ATTR,start,argc,argv);
			return;
		}

		// is it a wait line ?
		if(start == ps_wait){
			if(atom_gettype(&argv[0]) == A_LONG)
				cuemng_add_line(x,_WAIT,NULL,1,argv);
			return;
		}

		// default : parameter line
		cuemng_add_line(x,_PARAM,start,argc,argv);
	}else
		object_post((t_object *)x, "error anything : no arg");
}

// PRIVATE METHODS

// append a cue in the cuelist
void cuemng_add_cue(t_cuemng *x,long type, long argc, t_atom *argv)
{
	t_cue *c;
	
	if(argc && argv){
		if(atom_gettype(&argv[0]) == A_SYM){
			c = (t_cue *)malloc(sizeof(t_cue));
			c->index = atom_getsym(&argv[0]);
			c->mode = type;
			c->ramp = 0;
			c->linelist = linklist_new();
			linklist_flags(x->cuelist, OBJ_FLAG_DATA);

			if(argc > 1){ // is there is an option ?
				if((argc == 3)&&(atom_gettype(&argv[1]) == A_SYM)){ 
					if(atom_getsym(&argv[1]) == gensym("ramp")){
						if(atom_gettype(&argv[2]) == A_LONG){
						c->ramp = atom_getlong(&argv[2]);
						post("ramp %d", c->ramp);
						}else object_post((t_object *)x, "error : ramp time must be an int (ms)");
					}else object_post((t_object *)x, "error : %s is not an option", atom_getsym(&argv[1])->s_name);
				}
			}

			linklist_append(x->cuelist, c);
			x->current = linklist_getsize(x->cuelist) - 1;
			if(c->mode) x->Kcurrent = x->current;

		}else object_post((t_object *)x, "error : the name of a cue must be a symbol");
	}else object_post((t_object *)x, "error : no given name");
}

// append a line in the current cue
void cuemng_add_line(t_cuemng *x,long type, t_symbol *index, long argc, t_atom *argv)
{
	t_line *l;
	t_cue *ccue;
	long i;

	l = (t_line *)sysmem_newptr((long)sizeof(t_line));

	if(l){
		l->type = type;

		// copy index
		if(index) l->index = index;	// TODO : in DIFFERENTIAL_MODE, if the index already exists : if data are equals ....
		else l->index = ps_no_id;

		// copy argv
		if(argc && argv){
			l->n = argc;
			l->data = (t_atom *)sysmem_newptr((long)argc*sizeof(t_atom));
			for(i=0; i<argc; i++){
				l->data[i] = argv[i];
			}
		}else{
			l->n = 0;
			l->data = (t_atom *)sysmem_newptr((long)sizeof(t_atom));
			atom_setsym(l->data, ps_no_data);
		}

		// add the line to the current cue
		ccue = cuemng_current_cue(x);
		if(ccue)
			linklist_append(ccue->linelist, l);
		else
			object_post((t_object *)x, "error : create a cue before");

	}else object_post((t_object *)x, "error : cuemng_add_line");
}

// get the current cue
t_cue* cuemng_current_cue(t_cuemng *x)
{
	t_cue *ccue = (t_cue *)linklist_getindex(x->cuelist,x->current);

	if(ccue)
		return ccue;

	object_post((t_object *)x, "error : no current cue");
	return NULL;
}

void cuemng_textAnalysis(char *text)
{
	long i,j,t;
	char temp_line[256];
	char *line = NULL;
	char letter;

	// get each lines of the text
	i = 0;
	for(t=0; t<(long)strlen(text); t++){
		letter = text[t];
		if(letter == '\n'){
			sysmem_freeptr(line);
			line = sysmem_newptr(sizeof(char)*(i+1));
			for(j=0; j<i; j++){
				line[j] = temp_line[j];
			}
			i = 0;
			// TODO : send to a line analyser
			post("line : %s", line);
		}
		else{
			temp_line[i] = letter;
			i++;
		}
	}
	// Is there a last one ?
	if(i>0){
		sysmem_freeptr(line);
		line = sysmem_newptr(sizeof(char)*(i+1));
		for(j=0; j<i; j++){
			line[j] = temp_line[j];
		}
		// TODO : send to a line analyser
		post("line : %s", line);
	}
	
	sysmem_freeptr(text);
	sysmem_freeptr(temp_line);
	sysmem_freeptr(line);
}
