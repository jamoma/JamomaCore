/*
 *  charset.h
 *
 *  Created by Jeremy Bernstein on 24.05.06.
 *  Copyright 2006 Cycling '74. All rights reserved.
 *
 */

#ifndef __CHARSET_H__
#define __CHARSET_H__

#ifdef __cplusplus
extern "C" {
#endif

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(push, 2)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack(2)
#endif


/* USAGE ////////////////////////////////////////////

t_charset_converter *conv = object_new(CLASS_NOBOX, gensym("charset_converter"), ps_macroman, ps_ms_ansi);
char *cstr = "Text to convert";
char *cvtbuffer = NULL; // to-be-allocated data buffer
long cvtbuflen = 0; // length of buffer on output

if (conv) {
	// note that it isn't necessary to send in a 0-terminated string, although we do so here
	if (object_method(conv, gensym("convert"), cstr, strlen(cstr) + 1, &cvtbuffer, &cvtbuflen) == ERR_NONE) {
		// do something with the converted buffer
		sysmem_freeptr(cvtbuffer); // free newly allocated data buffer
	}
	object_free(conv); // free converter
}

*/ //////////////////////////////////////////////////

/** The charset_converter object. This struct is provided for debugging convenience, 
	but should be considered opaque and is subject to change without notice. 

	@ingroup unicode
*/
typedef struct _charset_converter
{
	t_object 				ob;
	void					*conv;
	void					*src_encoding;
	void					*dst_encoding;
} t_charset_converter;

/* currently supported character encodings
_sym_utf_8;		// utf-8, no bom
_sym_utf_16;		// utf-16, big-endian
_sym_utf_16be;		// utf-16, big-endian
_sym_utf_16le;		// utf-16, little-endian
_sym_iso_8859_1;	// iso-8859-1 (latin-1)
_sym_us_ascii;		// us-ascii 7-bit
_sym_ms_ansi;		// ms-ansi (microsoft code page 1252)
_sym_macroman;		// mac roman

_sym_charset_converter;
_sym_convert;
*/

// private
t_max_err charset_init(void);


// adding a function to simplify usage

// just pass in your input string and get your output string
// remember to call sysmem_freeptr(*out) to free any allocated memory. 
t_max_err charset_convert(t_symbol *src_encoding, const char *in, long inbytes, 
						  t_symbol *dest_encoding, char **out, long *outbytes); 

unsigned short *charset_utf8tounicode(char *s, long *outlen);
char *charset_unicodetoutf8(unsigned short *s, long len, long *outlen);

// returns utf8 character count, and optionally bytecount
long charset_utf8_count(char *utf8, long *bytecount);
// returns utf8 character offset (positive or negative), and optionally byte offset
char *charset_utf8_offset(char *utf8, long charoffset, long *byteoffset);

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(pop)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack()
#endif

#ifdef __cplusplus
}
#endif

#endif // __CHARSET_H__
