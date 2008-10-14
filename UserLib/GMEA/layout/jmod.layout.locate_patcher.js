/*
locate_bpatcher.js
returns names, positions and dimensions of all named patchers in this patch
*/

function bang()
{
this.patcher.apply(iterfun);
}

function iterfun(b)
{
if(b.maxclass == "patcher"){
outlet(0, b.varname, b.rect);
}
return true;
}
iterfun.local=1;