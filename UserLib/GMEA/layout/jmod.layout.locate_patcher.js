/*
locate_bpatcher.js
returns names, positions and dimensions of all named patchers in the parent patcher.
*/

function bang()
{
this.patcher.parentpatcher.apply(iterfun);
}

function iterfun(b)
{
if(b.maxclass == "patcher"){
outlet(0, b.varname, b.rect);
}
return true;
}
iterfun.local=1;