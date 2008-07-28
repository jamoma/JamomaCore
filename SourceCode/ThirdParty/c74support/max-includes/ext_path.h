// ext_path.h -- path definitions

#ifndef _EXT_PATH_H_
#define _EXT_PATH_H_

#ifdef __cplusplus
extern "C" {
#endif

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(push, 2)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack(2)
#endif

// Is the following check really needed?  It prevents Doxygen's parsing of this file [TAP]
//#if defined(MAC_VERSION) || defined(WIN_VERSION)


/**
	The size you should use when allocating strings for full paths.
	@ingroup files
*/
#define MAX_PATH_CHARS		2048

/**
	The size you should use when allocating strings for filenames.
	At the time of this writing it supports up to 256 UTF chars
	@ingroup files
*/
#define MAX_FILENAME_CHARS	512


typedef short FILE_REF;

#define PATH_SEPARATOR_CHAR			'/'
#define PATH_SEPARATOR_STRING		"/"
#define PATH_CROSS_PLAT_NAMES
#define SEPARATOR_CHAR				PATH_SEPARATOR_CHAR		// for backwards compatibility


/**
	Constants that determine the output of path_nameconform().
	@ingroup files
	@see #e_max_path_types
	@see path_nameconform()
*/
typedef enum {
	PATH_STYLE_MAX = 0,			///< use PATH_STYLE_MAX_PLAT
	PATH_STYLE_NATIVE,			///< use PATH_STYLE_NATIVE_PLAT
	PATH_STYLE_COLON,			///< ':'  sep, "vol:"   volume, ":"   relative, "^:" boot
	PATH_STYLE_SLASH,			///< '/'  sep, "vol:/"  volume, "./"  relative, "/"  boot
	PATH_STYLE_NATIVE_WIN		///< '\\' sep, "vol:\\" volume, ".\\" relative, "\\" boot
} e_max_path_styles;

#ifdef WIN_VERSION 
#define PATH_STYLE_MAX_PLAT			PATH_STYLE_SLASH
#define PATH_STYLE_NATIVE_PLAT		PATH_STYLE_NATIVE_WIN
#else
#define PATH_STYLE_MAX_PLAT			PATH_STYLE_SLASH
#define PATH_STYLE_NATIVE_PLAT		PATH_STYLE_SLASH	// PATH_STYLE_COLON path changes for Max 5-jkc
#endif

/**
	Constants that determine the output of path_nameconform().
	@ingroup files
	@see #e_max_path_styles
	@see path_nameconform()
*/
typedef enum {
	PATH_TYPE_IGNORE = 0,
	PATH_TYPE_ABSOLUTE,
	PATH_TYPE_RELATIVE,
	PATH_TYPE_BOOT,
	PATH_TYPE_C74,
	PATH_TYPE_PATH
} e_max_path_types;


#ifdef PATH_CROSS_PLAT_NAMES
#define PATH_CHAR_IS_SEPARATOR(c) (((c) == ':') || ((c) == '/') || ((c) == '\\'))
#else
#define PATH_CHAR_IS_SEPARATOR(c) ((c) == PATH_SEPARATOR_CHAR)
#endif


// fileinfo flags 
typedef enum {	
	PATH_FILEINFO_ALIAS = 1,	
	PATH_FILEINFO_FOLDER = 2,
	PATH_FILEINFO_PACKAGE = 4
} e_max_fileinfo_flags;

#define FILEINFO_ALIAS		PATH_FILEINFO_ALIAS		// for backwards compatibility
#define FILEINFO_FOLDER		PATH_FILEINFO_FOLDER	// for backwards compatibility


// path_foldernextfile flags
typedef enum {	
	PATH_REPORTPACKAGEASFOLDER = 1,		// also used by functions like  path_openfolder's flags
	PATH_FOLDER_SNIFF = 2
} e_max_path_folder_flags;


// permissions, these are the same as on the Mac
typedef enum {	
	PATH_READ_PERM = 1,	
	PATH_WRITE_PERM = 2,	
	PATH_RW_PERM = 3
} e_max_openfile_permissions;
#define READ_PERM		PATH_READ_PERM		// for backwards compatibility
#define WRITE_PERM		PATH_WRITE_PERM		// for backwards compatibility
#define RW_PERM			PATH_RW_PERM		// for backwards compatibility

#define PATH_DEFAULT_PATHNAME_COUNT 16

// indices allow for fast access
typedef enum {	
	PATH_STARTUP_PATH = 0,	
	PATH_SEARCH_PATH,	
	PATH_ACTION_PATH,
	PATH_HELP_PATH
} e_max_path_indices;

#define STARTUP_PATH	PATH_STARTUP_PATH		// for backwards compatibility
#define SEARCH_PATH		PATH_SEARCH_PATH		// for backwards compatibility
#define ACTION_PATH		PATH_ACTION_PATH		// for backwards compatibility
#define HELP_PATH		PATH_HELP_PATH			// for backwards compatibility


#define COLLECTIVE_FILECOPY 1	// flag for copying an object-used file to support path
#define COLLECTIVE_COPYTOMADEFOLDER 2 // flag to copying to the folder you made


#define TYPELIST_SIZE 	32 //maximum number of types returned

typedef enum {
	TYPELIST_MAXFILES = 1,
	TYPELIST_EXTERNS = 2,
	TYPELIST_COLLECTIVES = 4
} e_max_typelists;


typedef struct _fileinfo {
	long type;
	long creator;		// Mac-only I guess
	long date;
	long flags;
} t_fileinfo;


/** The path data structure. This struct is provided for debugging convenience, 
	but should be considered opaque and is subject to change without notice. 
	@ingroup files
*/
typedef struct _path {	
	void *p_name;		// all we have on Windows, may just be folder name on Mac	
	long p_dirID;		// directory ID on Mac	
	short p_vRefNum;	// volume on Mac	
	short p_wd;			// working directory on the Mac (compatibility mode)
} t_path;


/** The pathlink data structure. This struct is provided for debugging convenience, 
	but should be considered opaque and is subject to change without notice. 
	@ingroup files
*/
typedef struct _pathlink {
	short l_path;		// index into path table, or p_wd in compatibility mode
	short l_ancestor;	// logical parent, i.e., what path caused this path to be included
	short l_temp;		// used for temporary flag when updating folders
	struct _pathlink *l_next;
	short l_parent;		// true parent folder
	short l_recursive;	// true if is or was added from a parent recursively
	void *l_watcher;	// watcher to see if this folder changes
} t_pathlink;


// flags for t_searchpath
typedef enum {
	PATH_FLAGS_RECURSIVE = 1
} e_max_searchpath_flags;



short path_getapppath(void);
short path_getsupportpath(void);
#ifdef MAC_VERSION
short path_tofsref(short path, char *filename, FSRef *ref);
short path_fromfsref(FSRef *ref); 
#endif
void path_namefrompathname(char *pathname, char *name);


/**
	Find a Max document by name in the search path.
	This routine performs the same function as the routine path_getdefault().
	locatefile() searches through the directories specified by the user for 
	Patcher files and tables in the File Preferences dialog as well as the 
	current default path (see path_getdefault) and the directory
	containing the Max application
	
	@ingroup	files
	@param	name	A C string that is the name of the file to look for.
	@param	outvol	The Path ID containing the location of the file if it is found.
	@param	binflag	If the file found is in binary format (it’s of type ‘maxb’) 1 is returned here; 
					if it’s in text format, 0 is returned.

	@return			If a file is found with the name 
					specified by filename, locatefile returns 0, otherwise it returns non-zero. 
	
	@remark			filename and vol can then be passed to binbuf_read to read and open file the file. 
					When using MAXplay, the search path consists of all subdirectories of 
					the directory containing the MAXplay application. locatefile only 
					searches for files of type ‘maxb’ and ‘TEXT.’
	
	@see			locatefile_extended()
*/
short locatefile(char *name, short *outvol, short *binflag);


/**
	Find a Max document by name in the search path.
	This function searches through the same directories as locatefile, 
	but allows you to specify a type and creator of your own.

	@ingroup	files
	@param	name		A C string that is the name of the file to look for.
	@param	outvol		The Path ID containing the location of the file if it is found.
	@param	filetype	The filetype of the file to look for. 
						If you pass 0L, files of all filetypes are considered.
	@param	creator		The creator of the file to look for. If you pass 0L, files with any creator are considered.
	
	@return			If a file is found with the name 
					specified by filename, locatefile returns 0, otherwise it returns non-zero. 

	@see			locatefile_extended()
*/
short locatefiletype(char *name, short *outvol, long filetype, long creator);

short locatefilelist(char *name, short *outvol, long *outtype, long *filetypelist, short numtypes);


/**
	Find a Max document by name in the search path.
	This is the preferred method for file searching since its introduction in Max version 4.
	
	This routine performs the same function as the routine path_getdefault().
	locatefile() searches through the directories specified by the user for 
	Patcher files and tables in the File Preferences dialog as well as the 
	current default path (see path_getdefault) and the directory
	containing the Max application

	@ingroup	files
	@version	4.0
	
	@param	name			The file name for the search, receives actual filename.
	@param	outvol			The Path ID of the file (if found).
	@param	outtype			The file type of the file (if found).
	@param	filetypelist	The file type(s) that you are searching for.
	@param	numtypes		The number of file types in the typelist array (1 if a single entry).

	@return			If a file is found with the name 
					specified by filename, locatefile returns 0, otherwise it returns non-zero. 

	@remark			The old file search routines locatefile() and locatefiletype() 
					are still supported in Max 4, but the use of a new routine 
					locatefile_extended() is highly recommended. However, 
					locatefile_extended() has an important difference from 
					locatefile() and locatefiletype() that may require some rewriting 
					of your code. <em>It modifies its name parameter</em> in certain cases, while 
					locatefile() and locatefiletype() do not. The two cases where it 
					could modify the incoming filename string are 1) when an alias is 
					specified, the file pointed to by the alias is returned; and 2) when a full 
					path is specified, the output is the filename plus the path number of the 
					folder it's in. 
					
					This is important because many people pass the s_name field of a 
					#t_symbol to locatefile(). If the name field of a #t_symbol were to be 
					modified, the symbol table would be corrupted. To avoid this problem, 
					use strncpy_zero() to copy the contents of a #t_symbol to a character string first, 
					as shown below: 
	@code
	char filename[MAX_FILENAME_CHARS]; 
	strncpy_zero(filename,str->s_name, MAX_FILENAME_CHARS); 
	result = locatefile_extended(filename,&path,&type,typelist,1); 
	@endcode
*/
short locatefile_extended(char *name, short *outvol, long *outtype, long *filetypelist, short numtypes);

short locatefile_pathlist(t_pathlink *list, char *name, short *outvol, long *outtype, long *filetypelist, short numtypes);

short path_resolvefile(char *name, short path, short *outpath);
short path_fileinfo(char *name, short path, void *info);

short path_tempfolder();
short path_createfolder(short path, char *name, short *newpath);
short path_createnewfolder(short path, char *name, short *newpath);
short path_copyfile(short srcpath, char *srcname, short dstpath, char *dstname);
short path_copytotempfile(short srcpath, char *srcname, short *outpath, char *outname);
short path_copyfolder(short srcpath, short dstpath, char *dstname, long recurse, short *newpath);
short path_getpath(short path, char *name, short *outpath);
short path_getname(short path, char *name, short *outpath);
short path_topathname(short path, char *file, char *name);
short path_frompathname(char *name, short *path, char *filename);
short path_frompotentialpathname(char *name, short *path, char *filename);
void path_splitnames(const char *pathname, char *foldername, char *filename);
short path_getnext(t_pathlink *list, short *val);
void path_setdefault(short path, short recursive);
short path_getdefault(void);
void path_setdefaultlist(struct _pathlink *list);
short path_getmoddate(short path, unsigned long *date);
short path_getfilemoddate(char *filename, short path, unsigned long *date);
short path_getfilecreationdate(char *filename, short path, unsigned long *date);
short path_getfilesize(char *filename, short path, unsigned long *date);
long path_listcount(t_pathlink *list);
short nameinpath(char *name, short *ref);					// <-- use path_nameinpath()
short path_nameinpath(char *name, short path, short *ref);
short path_sysnameinpath(char *name, short *ref);
void *path_openfolder(short path);
short path_foldernextfile(void *xx, long *filetype, char *name, short descend);
void path_closefolder(void *x);

short path_renamefile(char *name, short path, char *newname);
short path_getprefstring(short type, short index, t_symbol **s);
void path_setprefstring(short type, short index, t_symbol *s, short update);
void path_makefromsymbol(long pathtype, t_symbol *sp, short recursive);
short path_opensysfile(char *name, short path, t_filehandle *ref, short perm);
short path_createsysfile(char *name, short path, long type, t_filehandle *ref);
short path_createressysfile(char *name, short path, long type, t_filehandle *ref);


/**
	Convert a source path string to destination path string using the specified style and type. 

	@ingroup files
	@param	src		A pointer to source character string to be converted.
	@param	dst		A pointer to destination character string.
	@param	style	The destination filepath style, as defined in #e_max_path_styles
	@param	type	The destination filepath style, as defined in #e_max_path_types 
	
	@return			An error code.
	
	@see #MAX_PATH_CHARS
*/
short path_nameconform(char *src, char *dst, long style, long type);

short path_deletefile(char *name, short path);
short path_extendedfileinfo(char *name, short path, t_fileinfo *info, long *typelist, short numtypes, short sniff);
short path_getstyle(char *name);
char path_getseparator(char *name);
short path_fileisresource(char *name, short path);
short path_topotentialname(short path, char *file, char *name, short check);
#ifdef WIN_VERSION
short path_topotentialunicodename(short path, char *file, unsigned short **name, long *outlen, short check);
short path_fromunicodepathname(unsigned short *name, short *path, char *filename, short check);		// if check is non-zero then file must exist
#endif
void path_addsearchpath(short path, short parent);
void path_addnamed(long pathtype, char *name, short recursive, short permanent);

void path_removefromlist(t_pathlink **list, short parent);

short defvolume(void);			// <--  use path_getdefault()
short getfolder(short *vol);


/**
	Present the user with the standard open file dialog.
	This function is convenient wrapper for using Mac OS Navigation 
	Services or Standard File for opening files. 

	The mapping of extensions to types is configured in the C74:/init/max-fileformats.txt file.
	The standard types to use for Max files are ‘maxb’ for old-format binary files, 
	‘TEXT’ for text files, and 'JSON' for newer format patchers or other .json files.

	@ingroup files
	@param	name	A C-string that will receive the name of the file the user wants to open.
					The C-string should be allocated with a size of at least #MAX_FILENAME_CHARS.
	@param	volptr	Receives the Path ID of the file the user wants to open.
	@param	typeptr	The file type of the file the user wants to open.
	@param	types	A list of file types to display. This is not limited to 4 
					types as in the SFGetFile() trap. Pass NULL to display all types.
	@param	ntypes	The number of file types in typelist. Pass 0 to display all types.
	
	@return			0 if the user clicked Open in the dialog box.  
					If the user cancelled, open_dialog() returns a non-zero value.
	
	@see saveasdialog_extended()
	@see locatefile_extended()
*/
short open_dialog(char *name, short *volptr, long *typeptr, long *types, short ntypes);


// TODO: Not documenting this right now -- this prototype differs from the documentation (taken from WEOFM)
/*
	Present the user with the standard save file dialog.
	This function is convenient wrapper for using Mac OS Navigation 
	Services or Standard File for saving files. 

	The mapping of extensions to types is configured in the C74:/init/max-fileformats.txt file.
	The standard types to use for Max files are ‘maxb’ for old-format binary files, 
	‘TEXT’ for text files, and 'JSON' for newer format patchers or other .json files.

	@ingroup files
	@param	filename	A C-string containing a default name for the file to save.
						If the user decides to save a file, its name is returned here.
						The C-string should be allocated with a size of at least #MAX_FILENAME_CHARS.

	@param	path		If the user decides to save the file, the Path ID of the location chosen is returned here.

	@param	format		The default Max file format for saving the file. If 
						format is set to 2, the Normal binary mode will be 
						selected. If format is 0, Text will be selected. When 
						the user decides to save the file, the choice of file 
						format is returned here. If you pass 0L for format 
						instead of a pointer to a short, the choice for saving the 
						file in binary or text formats is not presented to the 
						user. This is appropriate when you always save your 
						object’s files in a specialized format. format 1 was used 
						in previous version of Max to save in "Old Format",which is no longer supported.
	
	@return				0 if the user choose to save the file.  
						If the user cancelled, returns a non-zero value.
	
	@see open_dialog()
	@see saveasdialog_extended()
	@see locatefile_extended()
*/
short saveas_dialog(char *name, short *volptr, short *binptr);


/**
	Present the user with the standard save file dialog with your own list of file types.
	This function is convenient wrapper for using Mac OS Navigation 
	Services or Standard File for saving files. 

	saveasdialog_extended() is similar to saveas_dialog(), but allows the 
	additional feature of specifying a list of possible types. These will be 
	displayed in a pop-up menu. 
	
	File types found in the typelist argument that match known Max types 
	will be displayed with descriptive text. Unmatched types will simply 
	display the type name (for example, "foXx" is not a standard type so it 
	would be shown in the pop-up menu as foXx) 
	
	Known file types include:
	- TEXT: text file 
	- maxb: Max binary patcher 
	- maxc: Max collective 
	- Midi: MIDI file 
	- Sd2f: Sound Designer II audio file 
	- NxTS: NeXT/Sun audio file 
	- WAVE: WAVE audio file. 
	- AIFF: AIFF audio file
	- mP3f: Max preference file 
	- PICT: PICT graphic file 
	- MooV: Quicktime movie file 
	- aPcs: VST plug-in 
	- AFxP: VST effect patch data file 
	- AFxB: VST effect bank data file 
	- DATA: Raw data audio file 
	- ULAW: NeXT/Sun audio file

	@ingroup files
	@param	name		A C-string containing a default name for the file to save.
						If the user decides to save a file, its name is returned here.
						The C-string should be allocated with a size of at least #MAX_FILENAME_CHARS.

	@param	vol			If the user decides to save the file, the Path ID of the location chosen is returned here.

	@param	type		Returns the type of file chosen by the user.
	@param	typelist	The list of types provided to the user. 
	@param	numtypes	The number of file types in typelist.
	
	@return				0 if the user choose to save the file.  
						If the user cancelled, returns a non-zero value.
	
	@see open_dialog()
	@see locatefile_extended()
*/
short saveasdialog_extended(char *name, short *vol, long *type, long *typelist, short numtypes);

void typelist_make(long *types, long include, short *numtypes);



short preferences_path(char *name, short create, short *path);
short preferences_subpath(char *name, short path, short create, short *subpath);
short textpreferences_read(char *filename, short path, short defaultid);
short textpreferences_default(short id);
void *textpreferences_open(void);
void textpreferences_addraw(void *p, char *fmt, ...);
void textpreferences_add(void *p, char *fmt, ...);
void textpreferences_addoption(void *p, char *fmt, ...);
void textpreferences_addrect(void *p, char *msg, short top, short left, short bottom, short right);
short textpreferences_close(void *p, char *filename, short path);



#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(pop)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack()
#endif

#ifdef __cplusplus
}
#endif

//#endif // defined(MAC_VERSION) || defined(WIN_VERSION)
#endif // _EXT_PATH_H_
