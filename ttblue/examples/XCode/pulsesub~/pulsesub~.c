#include "ext.h"
#include "z_dsp.h"

void *plus_class;

typedef struct _plus
{
    t_pxobject x_obj;
    t_float x_val;
#ifdef __ALTIVEC__
#pragma altivec_model on
	vector float x_vecVal;
#pragma altivec_model off
#endif
} t_plus;

t_int *offset_perform(t_int *w);
t_int *plus2_perform(t_int *w);
#ifdef __ALTIVEC__
void plus_floatAV(t_plus *x, double f);
t_int *offset_performAV(t_int *w);
t_int *plus2_performAV(t_int *w);
#endif    
void plus_float(t_plus *x, double f);
void plus_int(t_plus *x, long n);
void plus_dsp(t_plus *x, t_signal **sp, short *count);
void plus_assist(t_plus *x, void *b, long m, long a, char *s);
void *plus_new(double val);

void main(void)
{
	setup((t_messlist **)&plus_class, (method)plus_new, (method)dsp_free, (short)sizeof(t_plus), 0L, A_DEFFLOAT, 0);
	dsp_initclass();
	addmess((method)plus_dsp, "dsp", A_CANT, 0);
	addfloat((method)plus_float);
	addint((method)plus_int);
	addmess((method)plus_assist,"assist",A_CANT,0);
	class_setname("+~","plus~");
	rescopy(FOUR_CHAR_CODE('STR#'),3214);
}

t_int *offset_perform(t_int *w)
{
    t_float *in = (t_float *)(w[1]);
    t_float *out = (t_float *)(w[2]);
	t_plus *x = (t_plus *)(w[3]);
	float val = x->x_val;
	int n = (int)(w[4]);
	
	if (x->x_obj.z_disabled)
		goto out;
	
    while (--n) *++out = val + *++in; 
out:
    return (w+5);
}

t_int *plus2_perform(t_int *w)
{
	t_float *in1,*in2,*out;
	int n;

	if (*(long *)(w[1]))
	    goto out;

	in1 = (t_float *)(w[2]);
	in2 = (t_float *)(w[3]);
	out = (t_float *)(w[4]);
	n = (int)(w[5]);
	while (--n) *++out = *++in1 + *++in2; 
out:
	return (w+6);
}

#ifdef __ALTIVEC__
#pragma altivec_model on													

void plus_floatAV(t_plus *x, double f)
{
	//VRSAVE not necessary anymore with CW 8

	vec_splat_float(x->x_vecVal, f);
}


t_int *offset_performAV(t_int *w)
{
// VRSAVE not needed here--CW 6.1 compiler does the right thing
	t_plus *x = (t_plus *)(w[3]);
	vector float 	*v_in = (vector float *)(w[1]), 
					*v_out = (vector float *)(w[2]),
					 v_val;
	int n = (int)(w[4]);
	
	if (x->x_obj.z_disabled)
		goto out;
	v_val = x->x_vecVal;
    while (--n) *++v_out = vec_add(v_val, *++v_in); 
out:
    return (w+5);
}

t_int *plus2_performAV(t_int *w)
{
	vector float 	*v_in1, 
					*v_in2, 
					*v_out;
	int n;

	//VRSAVE not necessary anymore with CW 8
	
	if (*(long *)(w[1]))
	    goto out;

	v_in1 = (vector float *)(w[2]);
	v_in2 = (vector float *)(w[3]);
	v_out = (vector float *)(w[4]);
	n = (int)(w[5]);

    while (--n) *++v_out = vec_add(*++v_in1, *++v_in2); 
out:
	return (w+6);
}		

#pragma altivec_model off
#endif


void plus_dsp(t_plus *x, t_signal **sp, short *count)
{

	if (sys_optimize()) {
#ifdef __ALTIVEC__
#pragma altivec_model on
		plus_floatAV(x, x->x_val);
		if (!count[1])
			dsp_add(offset_performAV, 4, sp[0]->s_vec-vec_step(vector float), 
					sp[2]->s_vec-vec_step(vector float), x, (sp[0]->s_n / 4) + 1);
		else if (!count[0])
			dsp_add(offset_performAV, 4, sp[1]->s_vec-vec_step(vector float), 
					sp[2]->s_vec-vec_step(vector float), x, (sp[0]->s_n / 4) + 1);
		else
			dsp_add(plus2_performAV, 5, &x->x_obj.z_disabled, sp[0]->s_vec-vec_step(vector float), 
					sp[1]->s_vec-vec_step(vector float), sp[2]->s_vec-vec_step(vector float), (sp[0]->s_n / 4) + 1);
#pragma altivec_model off
#else
		error("+~: no optimizations available");
#endif
	} else {
		if (!count[1])
			dsp_add(offset_perform, 4, sp[0]->s_vec-1, sp[2]->s_vec-1, x, sp[0]->s_n+1);
		else if (!count[0])
			dsp_add(offset_perform, 4, sp[1]->s_vec-1, sp[2]->s_vec-1, x, sp[0]->s_n+1);
		else
			dsp_add(plus2_perform, 5, &x->x_obj.z_disabled, sp[0]->s_vec-1, sp[1]->s_vec-1, sp[2]->s_vec-1, sp[0]->s_n+1);
	}
}


// this routine covers both inlets. It doesn't matter which one is involved

void plus_float(t_plus *x, double f)
{
    x->x_val = f;
 	if (sys_optimize()) 
#ifdef __ALTIVEC__
		plus_floatAV(x,f);
#else
		;
#endif
}

void plus_int(t_plus *x, long n)
{
	plus_float(x,(double)n);
}

void plus_assist(t_plus *x, void *b, long m, long a, char *s)
{
	assist_string(3214,m,a,1,3,s);
}

void *plus_new(double val)
{
    t_plus *x = (t_plus *)newobject(plus_class);
    dsp_setup((t_pxobject *)x,2);
    outlet_new((t_pxobject *)x, "signal");
    x->x_val = val; // splatted in the _dsp method 
    return (x);
}



