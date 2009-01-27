/* 
 * jcom.cuemanager
 * External for Jamoma: to manage cues in a text file 
 * By Théo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jamoma.h"
#include "string.h"					

// define symbol
t_symbol		*ps_keycue,
				*ps_cue,
				*ps_module,
				*ps_wait,
				*ps_separation,
				*ps_nl,
				*ps_no_id,
				*ps_no_data,
				*ps_tab_param,
				*ps_tab_attr,
				*ps_tab_cmt,
				*ps_tab_wait;

const char PARAM = '/';
const char ATTR = ':';
const char	CMT = '#';
const char* RAMP = "ramp";

// Enumerations for line type
enum {
	_MODULE = 0,					// a module name
	_PARAM = 1,						// a parameter data
	_ATTR = 2,						// an attribute data
	_WAIT = 3,						// a wait data
	_CMT = 4						// a comment
};

enum {
	DIFFERENTIAL_CUE = 0,			// differential cue (CUE)
	ABSOLUTE_CUE = 1				// absolute cue (KEY CUE)
};

enum {
	EDIT_MODE = 0,					// edit cue mode
	TRIGGER_MODE = 1				// trigger cue mode
};

enum {
	REPLACE = 0,					// incoming data are stored by replacing the current cue
	INSERT = 1						// incoming data are stored between the current and the next cue
};

#define LISTSIZE 512				// TODO: Discuss longer list support for Max 5

// Data structure
typedef struct _line
{
	t_symbol	*index;				// line index to find it in the linkedlist
	long		type;				// line type (_MODULE, _PARAM, _ATTR, _WAIT or _CMT)
	long		n;					// # of data
	t_atom		*data;		// line data as an atom array
}t_line;

typedef struct _cue
{
	t_symbol	*index;				// cue index to find the cue in the cuelist (the name)
	long		mode;				// getstate mode (ABSOLUTE or DIFFERENTIAL)
	long		ramp;				// ramp time
	t_linklist	*linelist;			// a linked list of t_line
}t_cue;

// Instance definition
typedef struct _cuemng 
{
	t_object	ob;					// the object
	void		*trigger_out;		// the trigger data outlet (the leftmost)
	void		*info_out;			// the info data outlet	(the rightmost)

	t_linklist	*cuelist;			// a linked list of t_cue
	long		trigeditmode;		// is the cumanager is in TRIGGER or EDIT mode
	long		storemode;			// how incoming data are stored in the cuelist (REPLACE or INSERT)
	long		Kcurrent;			// index of the current key cue
	long		current;			// index of the current cue
	t_object	*m_editor;			// a textfile editor
	t_object	*editorview;		// the textfile window
	// a path to the last (loaded or saved) cuelist textfile
} t_cuemng;

// prototypes
void *cuemng_new(t_symbol *s, long argc, t_atom *argv);
void cuemng_free(t_cuemng *x);
t_max_err cuemng_notify(t_cuemng *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void cuemng_assist(t_cuemng *x, void *b, long m, long a, char *s);

void cuemng_bang(t_cuemng *x);
void cuemng_edclose(t_cuemng *x, char **ht, long size);
long cuemng_edsave(t_cuemng *x, char **ht, long size);
//void cuemng_int(t_cuemng *x, long id);

//void cuemng_edit(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
//void cuemng_trigger(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);

//void cuemng_replace(t_cuemng *x, long id);
//void cuemng_insert(t_cuemng *x, long id);
//void cuemng_copy(t_cuemng *x, long sid, long did);
//void cuemng_move(t_cuemng *x, long sid, long did);
//void cuemng_delete(t_cuemng *x, long id);

void cuemng_anything(t_cuemng *x, t_symbol *s, long argc, t_atom *argv);

void cuemng_add_cue(t_cuemng *x,long type, long argc, t_atom *argv);
void cuemng_add_line(t_cuemng *x,long type, t_symbol *index, long argc, t_atom *argv);

t_cue* cuemng_current_cue(t_cuemng *x);
void cuemng_textAnalysis(char *text);
void cuemng_write_handle(t_line *line, t_handle ht);