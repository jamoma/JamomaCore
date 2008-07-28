#ifndef _EXT_STRINGS_H_
#define _EXT_STRINGS_H_

#ifdef __cplusplus
extern "C" {
#endif

char *strncpy_zero(char *dst, const char* src, long size);  // a safer version of strncpy
char *strncat_zero(char *dst, const char* src, long size);  // a safer version of strncat
int snprintf_zero(char *buffer, size_t count, const char *format, ...);  // a safer version of snprintf


#if    TARGET_API_MAC_CARBON
#define CtoPstr(x) CopyCStringToPascal((const char *)(x),(unsigned char *)(x))
#define PtoCstr(x) CopyPascalStringToC((ConstStr255Param)(x),(char *)(x))
#endif TARGET_API_MAC_CARBON


void ctopcpy(unsigned char *p1, char *p2);
void ptoccpy(char *p1, unsigned char *p2);
void setmem(void *s, long n, short b);
void pstrcpy(unsigned char *p2, unsigned char *p1);

#ifdef __cplusplus
}
#endif

#endif // _EXT_STRINGS_H_
