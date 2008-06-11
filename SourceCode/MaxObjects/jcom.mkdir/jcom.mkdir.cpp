/* 
 * jcom.mkdir
 * External for Jamoma: create a directory on the filesystem
 * Original By Bill Orcutt
 * Re-write for Max5 by Tim Place, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"


typedef struct _mkdir{
	t_object	obj;
} t_mkdir;


void *mkdir_new(void);
void mkdir_free(t_mkdir *x);
void mkdir_assist(t_mkdir *x, void *b, long m, long a, char *s);
void mkdir_make(t_mkdir *x, t_symbol *s, long argc, t_atom *argv);
void mkdir_domake(t_mkdir *x, t_symbol *s, long argc, t_atom *argv);


static t_class *mkdir_class;


/************************************************************************************/
int main(void)
{
	t_class *c;
	
	jamoma_init();
	
	// Define our class
	c = class_new("jcom.mkdir",(method)mkdir_new, (method)mkdir_free, sizeof(t_mkdir), (method)0L, 0L, 0);

	// Make methods accessible for our class: 
	class_addmethod(c, (method)mkdir_make,			"anything", A_GIMME, 0L);
    class_addmethod(c, (method)mkdir_assist, 		"assist",	A_CANT, 0L); 

	// Finalize our class
	class_register(CLASS_BOX, c);
	mkdir_class = c;
	return 0;
}


/************************************************************************************/
void *mkdir_new(void)
{	
	t_mkdir *x;
	
	x = (t_mkdir *)object_alloc(mkdir_class);	// Create object, store pointer to it (get 1 inlet free)

	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	}
	return (x);
}


void mkdir_free(t_mkdir *x)
{
	;
}			


/************************************************************************************/
void mkdir_assist(t_mkdir *x, void *b, long msg, long arg, char *dst)
{
	if(msg == 1){
		switch (arg){
			case 0:
				strcpy(dst, "path to folder to be created.");
				break;
		}
	}
}	


void mkdir_make(t_mkdir *x, t_symbol *s, long argc, t_atom *argv)
{
	defer(x, (method)mkdir_domake, s, 0, 0);
}


void mkdir_domake(t_mkdir *x, t_symbol *s, long argc, t_atom *argv)
{
	short	path = 0;				// parent folder, which we supply
	short	createdPath = 0;		// the new folder after it is created
	char	*folderName;			// the name of the new folder
	char	fullpath[4096];
	short	err = 0;
	char	temp[256];
	
	path_nameconform(s->s_name, fullpath, PATH_STYLE_MAX, PATH_TYPE_ABSOLUTE);
	folderName = strrchr(fullpath, '/');
	
	if(folderName){
		*folderName = 0;
		folderName++;
		
		err = path_frompathname(fullpath, &path, temp);
		if(!err)
			err = path_createfolder(path, folderName, &createdPath);
		if(err)
			error("mkdir: error %hd trying to create folder", err);
	}
}
