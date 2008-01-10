/* 
 * jcom.sendreceive.h
 * shared code for jcom.send and jcom.receive objects
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JCOM_SENDRECEIVE_H__
#define __JCOM_SENDRECEIVE_H__

#include "ext_linklist.h"
#include "ext_hashtab.h"

typedef void (*t_receive_callback)(t_symbol *name, t_symbol *msg, long argc, t_atom *argv);

/** Receive Object */
typedef struct _receive{
	t_object					ob;				///< REQUIRED: Our object
	void						*obex;			///< REQUIRED: Object Extensions used by Jitter/Attribute stuff
	void						*outlet;		///< Need one for each outlet
	t_symbol					*attr_name;		///< ATTRIBUTE: name
	t_receive_obex_callback		callback;		/// < Function pointer to call if we instantiated inside of another extern
	void						*baton;			/// < Baton to hand back to the callee of the callback when it is called
} t_receive;

/** Send Object */
typedef struct _send{
	t_object		ob;			///< REQUIRED: Our object
	void			*obex;		///< REQUIRED: Object Extensions used by Jitter/Attribute stuff
	t_symbol		*attr_name;	///< ATTRIBUTE: name
} t_send;

/** Callback Object
  * This is an internal object that is used for binding to symbols independed of jcom.receive 
  *	instantiations   */
typedef struct _jcom_callback{
	t_object				ob;
	void					*obex;
	t_receive_callback		receive_master_callback;	///< These all point to the same shared function
} t_jcom_callback;

/** ReceiveMaster Object
  * This is an internal object that manages message dispatching to jcom.receive instances */
typedef struct _jcom_receivemaster{
	t_object	obj;			///< REQUIRED: Object "base class"
	void		*obex;			///< REQUIRED: Object Extensions Hash
} t_jcom_receivemaster;


#ifdef __cplusplus
extern "C" {
#endif

void receive_initclass();
void receivemaster_initclass();

#ifdef __cplusplus
}
#endif

#endif // #ifndef __JCOM_SENDRECEIVE_H__
