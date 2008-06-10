
#ifndef _SYSTIME_H_
#define _SYSTIME_H_

#ifdef __cplusplus
extern "C" {
#endif

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(push, 2)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack(2)
#endif


/** 
	The Systime data structure.
	@ingroup systime	
*/
typedef struct _datetime 
{
	unsigned long	year;			///< year
	unsigned long	month;			///< month
	unsigned long	day;			///< day
	unsigned long	hour;			///< hour
	unsigned long	minute;			///< minute
	unsigned long	second;			///< second
	unsigned long	millisecond;	///< (reserved for future use)
} t_datetime;


/**
	Find out the operating system’s time in ticks. 
	@ingroup systime
	@return	the system time in ticks.
*/
extern unsigned long systime_ticks(void);


/**
	Find out the operating system’s time in milliseconds.
	@ingroup systime
	@return	the system time in milliseconds.
*/
extern unsigned long systime_ms(void);


/**
	Find out the operating system’s date and time. 
	@ingroup systime
	@param	d	Returns the system’s date and time in a #t_datetime data structure.
*/
extern void systime_datetime(t_datetime *d);

extern unsigned long systime_seconds(void);
extern void systime_secondstodate(unsigned long secs, t_datetime *d);
extern unsigned long systime_datetoseconds(t_datetime *d);

void sysdateformat_strftimetodatetime(char *strf, t_datetime *d);
void sysdateformat_formatdatetime(t_datetime *d, long dateflags, long timeflags, char *s, long buflen);


#define SYSDATEFORMAT_RELATIVE 16

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(pop)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack()
#endif

#ifdef __cplusplus
}
#endif

#endif // _SYSTIME_H_

