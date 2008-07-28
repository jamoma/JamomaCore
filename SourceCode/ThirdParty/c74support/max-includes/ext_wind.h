/*************************/
/* Copyright 1988 IRCAM. */
/*************************/
#ifndef _EXT_WIND_H_
#define _EXT_WIND_H_

#ifdef __cplusplus
extern "C" {
#endif

// return values from wind_advise()
#define aaYes 1
#define aaNo 2
#define aaCancel 3


short wind_advise(t_object *w, char *s, ...);
void wind_setcursor(short which);


#ifdef __cplusplus
}
#endif

#endif // _EXT_WIND_H_
