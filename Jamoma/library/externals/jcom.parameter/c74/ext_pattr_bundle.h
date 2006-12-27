/*
 *  ext_pattr_bundle.h
 *  
 *
 *  Created by Jeremy Bernstein on 18.09.06.
 *  Copyright 2006 Cycling '74. All rights reserved.
 *
 */

#ifndef __EXT_PATTR_BUNDLE_H__
#define __EXT_PATTR_BUNDLE_H__

/*
void pattr_obex_init(t_class *c);
void pattr_obex_setup(void *x, t_symbol *n);
void pattr_obex_notify(void *x, t_symbol *s, t_symbol *msg, void *sender, void *data);

t_box *pattr_obex_getb(void *x);
t_patcher *pattr_obex_getp(void *x);
t_symbol *pattr_obex_getn(void *x);
*/

typedef void 		(*pattr_obex_init_type)(t_class *c);
typedef void 		(*pattr_obex_setup_type)(void *x, t_symbol *n);
typedef void 		(*pattr_obex_notify_type)(void *x, t_symbol *s, t_symbol *msg, void *sender, void *data);

typedef t_box* 		(*pattr_obex_getb_type)(void *x);
typedef t_patcher* 	(*pattr_obex_getp_type)(void *x);
typedef t_symbol* 	(*pattr_obex_getn_type)(void *x);


extern pattr_obex_init_type		pattr_obex_init;
extern pattr_obex_setup_type	pattr_obex_setup;
extern pattr_obex_notify_type	pattr_obex_notify;

extern pattr_obex_getb_type		pattr_obex_getb;
extern pattr_obex_getp_type		pattr_obex_getp;
extern pattr_obex_getn_type		pattr_obex_getn;

extern t_symbol *ps_pattr_obex;

long ext_pattr_setup(void);

#endif // __EXT_PATTR_BUNDLE_H__