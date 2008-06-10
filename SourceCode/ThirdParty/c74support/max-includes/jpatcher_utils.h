#ifndef _JPATCHER_UTILS_H_
#define _JPATCHER_UTILS_H_

BEGIN_USING_C_LINKAGE

void atom_copy(short argc1, t_atom *argv1, t_atom *argv2);
void postargs(short argc, t_atom *argv);
void postdictionary(t_object *d);
t_max_err atom_alloc(long *ac, t_atom **av, char *alloc);
t_max_err atom_alloc_array(long minsize, long *ac, t_atom **av, char *alloc);
t_max_err atom_arg_getobjclass(t_object **x, long idx, long argc, t_atom *argv, t_symbol *cls);
void *atom_getobjclass(t_atom *av, t_symbol *cls);

t_max_err object_attach_byptr(void *x, void *registeredobject);

method my_object_getmethod(void *obj, t_symbol *s);

END_USING_C_LINKAGE

#endif // #ifndef _JPATCHER_UTILS_H_
