/** @file
 *
 * @ingroup modularMax
 *
 * @brief External for Jamoma: jcom.cueManager - Manage cues in a text file 
 *
 * @details
 *
 * @authors Théo de la Hogue, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2009, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "jamoma.h"
#include "string.h"

// define default values
#define CUE "CUE"
#define KEYCUE "KEYCUE"
#define ATTR ":"
#define	CMT "#"
#define WAIT "WAIT"
#define RAMP "ramp"
#define COMMENT "comment"
#define NO_RAMP 0
#define GLOBAL_RAMP -1
#define TAB "	"
#define LB "\n"

#define TEXT_MAX_LINE 1024			// the maximum number of lines to display in the text editor
#define TEXT_BUFFER_SIZE 4096
#define TEXT_LINE_SIZE 4096

#define NB_TAB_PARAM 4
#define NB_TAB_ATTR 6
#define NB_TAB_CMT 0
#define NB_TAB_WAIT 2

// symbols for special cases
t_symbol	*ps_no_id,				// if line have no index
			*ps_no_data,			// if line have no data
			*ps_tempcue,			// the "TEMPCUE" mode key word
			*ps_tempindex,			// the "temp" index key word
			*ps_emptycue,			// the "EMPTY" mode key word
			*ps_emptyname,			// to give a name to an empty cue
			*ps_ramp_global;		// to refer to the global ramp cue time

// Enumeration for line type
enum {
	_PARAM = 0,						// a parameter data
	_ATTR = 1,						// an attribute data
	_WAIT = 2,						// a wait data
	_CMT = 3						// a comment
};

// Enumeration for cue type
enum {
	TEMP_CUE = 0,					// temp cue
	EMPTY_CUE = 1,					// a cue with no index, no option and no line. 
	ABSOLUTE_CUE = 2,				// absolute cue (KEY CUE)
	DIFFERENTIAL_CUE = 3			// differential cue (CUE)
};

// Enumeration for int or bang mode
enum {
	EDIT_MODE = 0,					// edit cue mode
	TRIGGER_MODE = 1				// trigger cue mode
};

// Enumeration for nature of text in the editor window
enum {
	TEMP_TEXT = 0,					// the text of the temp cue
	CUE_TEXT = 1,					// the text of a cue
	CUELIST_TEXT = 2				// the text of the cuelist
};

#define LISTSIZE 512				// TODO: Discuss longer list support for Max 5

// Data structure
typedef struct _line
{
	t_symbol	*index;				// line index to find it in the linkedlist
	long		type;				// line type (_PARAM, _ATTR, _WAIT or _CMT)
	long		ramp;				// ramp time (NO_RAMP, GLOBAL_RAMP or a value in ms)
	long		n;					// # of data
	t_atom		*data;				// line data as an atom array
}t_line;

typedef struct _cue
{
	t_symbol	*index;				// cue index to find the cue in the cuelist (the name)
	long		mode;				// getstate mode (ABSOLUTE or DIFFERENTIAL)
	long		ramp;				// ramp time (NO_RAMP or a value in ms)
	t_symbol	*comment;			// a description of what do the cue (start and ends with #)
	t_linklist	*linelist;			// a linked list of t_line
}t_cue;

// Instance definition
typedef struct _cuemng 
{
	t_object	ob;					// the object
	void		*trigger_out;		// the trigger data outlet (the leftmost)
	void		*info_out;			// the info data outlet	(the rightmost)

	t_linklist	*cuelist;			// a linked list of t_cue
	t_cue		*temp_cue;			// a "cache" memory to store lines before to insert them into a cue (id -1)
	long		trigeditmode;		// is the cumanager is in TRIGGER or EDIT mode
	long		Kcurrent;			// index of the current key cue
	long		current;			// index of the current cue

	bool		info_cuelist;		// a flag to know if we are asking info about a cue (0) or all the cuelist (1)

	bool		do_ramp;			// to enable/disable the trigger ramp driving
	long		global_ramp;		// the current global ramp time

	short		cuelist_path;		// a text file /path/name
	t_symbol	*cuelist_file;		// the name of the cuelist

	t_object	*m_editor;			// a textfile editor
	t_object	*editorview;		// the textfile window
	t_filehandle fh;				// a reference to a file (for opening it, closing it, etc.).
	long		eof;				// the number of written char in the file.
	TTString	*buf;				// a text buffer
	long		nb_written_lines;	// the number of written lines in the text editor
	bool		wtof;				// True : write into a file. 
									// False : write into the editor.

	long		show;				// to memorize what is showing in the text editor (0: temp_cue, 1: a cue, 2: the cuelist)

	t_object	*dialog;			// a dialog window

	t_symbol	*ps_cue;			// special flag for differential cue
	t_symbol	*ps_keycue;			// special flag for absolute cue
	t_symbol	*ps_attr;			// special flag	for attribut
	t_symbol	*ps_wait;			// special flag	for wait
	t_symbol	*ps_cmt;			// special flag	for comment
	t_symbol	*ps_ramp;			// special flag for ramp
	t_symbol	*ps_comment;		// special flag for a description of what do a cue

	t_symbol	*ps_lb;				// to create a line break in the text
	t_symbol	*ps_tab;			// to create a tab in the text

	long		nb_tab_param;		// to offset the text of a parameter
	long		nb_tab_attr;		// to offset the text of an attribute
	long		nb_tab_cmt;			// to offset the text of a comment
	long		nb_tab_wait;		// to offset the text of a wait

	// a path to the last (loaded or saved) cuelist textfile
} t_cuemng;


// PROTOTYPES

// max object interface
void *cuemng_new(t_symbol *s, long argc, t_atom *argv);
void cuemng_free(t_cuemng *x);
t_max_err cuemng_notify(t_cuemng *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void cuemng_assist(t_cuemng *x, void *b, long m, long a, char *s);
void cuemng_edclose(t_cuemng *x, char **ht, long size);

// Public methods
void cuemng_bang(t_cuemng *x);
void cuemng_int(t_cuemng *x, long id);
void cuemng_temp(t_cuemng *x);
void cuemng_edit(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_trigger(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_triggerK(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_new_cuelist(t_cuemng *x);
void cuemng_load(t_cuemng *x, t_symbol *msg, long argc, t_atom *argv);
void cuemng_saveas(t_cuemng *x, t_symbol *msg, long argc, t_atom *argv);
void cuemng_save(t_cuemng *x);
void cuemng_open(t_cuemng *x);
void cuemng_info(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_doramp(t_cuemng *x, long r);
void cuemng_set_ramp(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_set_name(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_set_mode(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_set_comment(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_insert(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_append(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_replace(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_clear(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_delete(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_copy(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_recall(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_optimize(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_union(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_exclusion(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_difference(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
void cuemng_modify(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);
//void cuemng_shift(t_cuemng *x, t_symbol* s, long argc, t_atom *argv);

void cuemng_anything(t_cuemng *x, t_symbol *s, long argc, t_atom *argv);

// Private methods
void cuemng_doload(t_cuemng *x, t_symbol *msg, long argc, t_atom *argv);
void cuemng_dosave(t_cuemng *x, t_symbol *msg, long argc, t_atom *argv);

void cuemng_clear_temp(t_cuemng *x);
void cuemng_set_temp(t_cuemng *x,long mode, long argc, t_atom *argv);
void cuemng_add_temp(t_cuemng *x,long type, t_symbol *index, long argc, t_atom *argv);

void cuemng_copy_cue(t_cuemng *x, t_cue *src, t_cue *dest);
void cuemng_copy_linelist(t_line *src, t_linklist *dest);
void cuemng_copy_line(t_line *src, t_line *dest);
void cuemng_cut_linelist(t_line *src, t_linklist *dest);
void cuemng_diff_linelist(t_line *l, t_linklist *comp);
bool cuemng_diff_data(t_line *l1, t_line *l2);
void cuemng_modify_linelist(t_line *src, t_linklist *dest);
long cuemng_search_cue(void *c, void *match);
long cuemng_search_line(void *c, void *match);

t_cue* cuemng_current_cue(t_cuemng *x);
t_cue* cuemng_current_key_cue(t_cuemng *x);
long cuemng_previous_key_index(t_cuemng *x);

void cuemng_output_cue(t_cue *c, t_cuemng *x);
void cuemng_output_line(t_line *line, t_cuemng *x);

void cuemng_info_cue(t_cue *cue, t_cuemng *x);
void cuemng_info_operation(t_cuemng *x, t_symbol *s, long argc, t_atom *argv);

long cuemng_read_text(t_cuemng *x, char **texthd, long start);

void cuemng_write_cue(t_cue *c, t_cuemng *x);
void cuemng_write_line(t_line *line, t_cuemng *x);
void cuemng_write_atom(t_cuemng *x, t_atom *src);
void cuemng_write_sym(t_cuemng *x, t_symbol *src);
void cuemng_write_long(t_cuemng *x, long src);
void cuemng_write_float(t_cuemng *x, float src);
void cuemng_write_buffer(t_cuemng *x);

long cuemng_check_temp(t_cuemng *x, long argc, t_atom *argv);
long cuemng_check_index(t_cuemng *x, long argc, t_atom *argv);
long cuemng_check_ramp(t_cuemng *x, long *pos, long argc, t_atom *argv);
t_symbol *cuemng_check_comment(t_cuemng *x, long *pos, long argc, t_atom *argv);

int cuemng_count_lines(t_cuemng *x, t_cue *cue);
