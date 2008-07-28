#ifndef __GLOBALSYMBOL_H__

#define __GLOBALSYMBOL_H__

void globalsymbol_initclass();
void *globalsymbol_reference(t_object *x, char *name, char *classname);
void globalsymbol_dereference(t_object *x, char *name, char *classname);
t_max_err globalsymbol_bind(t_object *x, char *name, long flags);
void globalsymbol_unbind(t_object *x, char *name, long flags);
void globalsymbol_notify(t_object *x, char *name, t_symbol *msg, void *data);

#endif // __GLOBALSYMBOL_H__

