/* 
 *	plug.buildkey
 *	verify a user and, if appropriate, give them the key to build plug-ins
 *
 *	Copyright © 2010 by Timothy Place
 *	All Rights Reserved
 */

#include "ext.h"
#include "commonsyms.h"
#include "ext_systime.h"


int main(void)
{
	common_symbols_init();
	
	t_symbol*	s = gensym((char*)"!a#%UGBe3FfFYIhRB^uSRZDÅ‰˝Ónnﬂ#$l%");
	t_datetime	d;
	
	systime_datetime(&d);
	
	if (d.year < 2013) {
		post("note: this plugtastic key will expire on 1 Jan 2012");
		s->s_thing = (t_object*)392871541L;
	}
	else {
		post("your plugtastic key has expired!");
	}
	
	return 0;
}

