/* mkdir.c -- make a folder ------- */


#include "ext.h"					// Max Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

//#include "ext.h"
//#include <math.h>
//#include <string.h>
//#include <stdlib.h>

typedef struct _mkdir
{
	t_object		s_ob;
	void			*obex;
} t_mkdir;

void mkdir_bang(t_mkdir *x);
void mkdir_assist(t_mkdir *x, void *b, long m, long a, char *s);
void doReport();
void mkdir_makeFolder(t_mkdir *x, t_symbol *s, short argc, t_atom *argv);
void mkdir_make(t_mkdir *x, t_symbol *s, short argc, t_atom *argv);
void *mkdir_new(void);
void mkdir_free(t_mkdir *x);

t_class *mkdir_class;					// Required. Global pointing to this class

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();
	
	// Define our class
	c = class_new("mkdir",(method)mkdir_new, (method)mkdir_free, (short)sizeof(t_mkdir), (method)0L, 0L, 0);
	class_obexoffset_set(c, calcoffset(t_mkdir, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)mkdir_bang,				"bang",		A_CANT, 0L);
	class_addmethod(c, (method)mkdir_make,				"anything", A_GIMME, 0L);
    class_addmethod(c, (method)mkdir_assist, 			"assist",	A_CANT, 0L); 
	class_addmethod(c, (method)doReport,				"dblclick", A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT, 0);

	/* Old obsolete way of doing it
	addbang((method)mkdir_bang);
	addmess((method)mkdir_make, "anything", A_GIMME,0);
	addmess((method)mkdir_assist,"assist",	A_CANT,0);
	addmess((method)doReport, "dblclick", 	A_CANT,0);
	*/
	post("Tjotlandotte");

	// Finalize our class
	class_register(CLASS_BOX, c);
	mkdir_class = c;
	return 0;
}

void doReport()
{
	post("mkdir	 _   bill orcutt (user@publicbeta.cx)    _    09/13/2002",0);
}
void mkdir_bang(t_mkdir *x)
{
	doReport();
}

void mkdir_makeFolder(t_mkdir *x, t_symbol *s, short argc, t_atom *argv)
{

	PATH_SPEC *fs;
	short path;
	char *fakename;
	char filename[256];
	char fullpath[256];
	long i,z,err;
	
	strcpy(fullpath,s->s_name);
	
	for (i=strlen(fullpath)-1;fullpath[i]!=':';i--); //one liner to position i @ the last colon.
	for (i++,z=0;fullpath[i];i++,z++) {
	
		filename[z]=fullpath[i];
	
	}
		
	fullpath[(i-z)]='\0';
	filename[z++]='\0';		
			
	if (path_frompathname(fullpath,&path,fakename)!=0) {
	
		error("mkdir:Invalid pathname. Full path required.");
	
	} else {
	
		 if (path_tospec (path,filename,fs)!=0) {
		
			error("mkdir:Invalid pathname.  Full path required.");
		
		} else {
		
			err=FSpDirCreate (fs, smSystemScript,0);
			
			if (!(err == 0 || err == -43)) {
			
				error("mkdir: couldn't create folder. Already exits?");
			
			}
		
		}
	
	}	

}

void mkdir_make(t_mkdir *x, t_symbol *s, short argc, t_atom *argv)
{

	//mkdir_makeFolder(x, s, argc, argv);
	defer(x, (method)mkdir_makeFolder,s,0,0);

}

void mkdir_assist(t_mkdir *x, void *b, long msg, long arg, char *dst)
{

	if (msg == 1) {
	
		switch (arg) {
			case 0:
				strcpy(dst, "path to folder to be created.");
				break;
		} 
	
	}

}

void *mkdir_new(void)
{	
	t_mkdir *x;
	
	x = (t_mkdir *)object_alloc(mkdir_class);	// Create object, store pointer to it (get 1 inlet free)

	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	}
	return (x);									// Return pointer to our instance
}

void mkdir_free(t_mkdir *x)
{
	//nada
}			

