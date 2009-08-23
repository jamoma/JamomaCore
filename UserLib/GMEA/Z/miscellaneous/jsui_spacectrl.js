/*

2d vector control

arguments: fgred fggreen fgblue bgred bggreen bbgblue radius

*/

inlets = 4;
outlets = 4;
sketch.ortho3d(); //like default3d but uses orthographic projection
var vbrgb = [0.3,0.3,0.6];
var vfrgb = [0.8,0.8,0.3];
var w = [0,0,0];
var vx = 0;
var vy = 0;
var vradius = 0.19;
var vx2 = 0;
var vy2 = 0;
var x2 = 0;
var y2 = 0;
var x1 = 0;
var y1 = 0;
var fct = 0;
var sens = 1;

bang.immediate = 1;
draw.immediate= 1;
refresh.immediate= 1;
draw_circle.immediate=1;
draw_square.immediate=1;
onclick.immediate=1;
ondrag.immediate=1;
decimal.immediate=1;
list_stat.immediate=1;
list_square.immediate=1;
list_circle.immediate=1;


// process arguments
if (jsarguments.length>1)
    vfrgb[0] = jsarguments[1]/255.;
if (jsarguments.length>2)
    vfrgb[1] = jsarguments[2]/255.;
if (jsarguments.length>3)
    vfrgb[2] = jsarguments[3]/255.;
if (jsarguments.length>4)
    vbrgb[0] = jsarguments[4]/255.;
if (jsarguments.length>5)
    vbrgb[1] = jsarguments[5]/255.;
if (jsarguments.length>6)
    vbrgb[2] = jsarguments[6]/255.;
if (jsarguments.length>7)
    vradius = jsarguments[1];



draw_circle();

function draw()
{
    if (fct==0) draw_circle();
    if (fct==1) draw_square();
    if (fct==2) draw_circle();
}

function static()
{
    fct=0;
    vradius=0.19;
}

function random()
{
    fct=1;
}

function circleR()
{
    fct=2;
    sens=-1;
}

function circleL()
{
    fct=2;
    sens=1;
}

function draw_circle()
{
    var str;
    
    with (sketch) {
        glclearcolor(vbrgb);            
        glclear();            
        glcolor(vfrgb);
        moveto(w);
        sphere(vradius);
    }
}

function draw_square()
{
    var str;
    
    with (sketch) {
        glclearcolor(vbrgb);            
        glclear();            
        glcolor(vfrgb);
        moveto((vx2+vx)/2,(vy2+vy)/2,1);
        cube(Math.abs(vx2-vx)/2,Math.abs(vy2-vy)/2,0);
    }

}

function msg_float(v)
{
    var i = inlet;

    if (fct==0)
    {
        if (i==0)
            list_stat(v,vy);
        else if (i==1)
            list_stat(vx,v);
        draw_circle();

    bang();
    }
    
    if (fct==1)
    {
        if (i==0)
            list_square(v,vy,vx2,vy2);
        else if (i==1)
            list_square(vx,v,vx2,vy2);
        else if (i==2)
            list_square(vx,vy,v,vy2);
        else if (i==3)
            list_square(vx,vy,vx2,v);
        draw_square();

    bang();

    }

    if (fct==2)
    {
        if (i==0)
            list_circle(v,vy,vradius,sens);
        else if (i==1)
            list_circle(vx,v,vradius,sens);
        else if (i==2)
            list_circle(vx,vy,v,sens);
        else if (i==3)
            list_circle(vx,vy,vradius,v);

    bang();
    
    }

}

function set(v)
{
    var i = inlet;

    if (fct==0)
    {
        if (i==0)
            list_stat(v,vy);
        else if (i==1)
            list_stat(vx,v);
        draw_circle();
    draw();
    refresh();
    }
    
    if (fct==1)
    {
        if (i==0)
            list_square(v,vy,vx2,vy2);
        else if (i==1)
            list_square(vx,v,vx2,vy2);
        else if (i==2)
            list_square(vx,vy,v,vy2);
        else if (i==3)
            list_square(vx,vy,vx2,v);
        draw_square();
    draw();
    refresh();
    }

    if (fct==2)
    {
        if (i==0)
            list_circle(v,vy,vradius,sens);
        else if (i==1)
            list_circle(vx,v,vradius,sens);
        else if (i==2)
            list_circle(vx,vy,v,sens);
        else if (i==3)
            list_circle(vx,vy,vradius,v);
    draw();
    refresh();
    
    }

}

function list_stat()
{
    var width = box.rect[2] - box.rect[0];
    var height = box.rect[3] - box.rect[1];

    if (arguments.length>0)
        vx = arguments[0];
    if (arguments.length>1)
        vy = arguments[1];
        
    if (vx<-1) vx = -1;
    else if (vx>1) vx = 1;
    if (vy<-1) vy = -1;
    else if (vy>1) vy = 1;
    
    w = sketch.screentoworld((vx+1)*width/2,(1.-vy)*height/2);

}

function list_square()
{
    var width = box.rect[2] - box.rect[0];
    var height = box.rect[3] - box.rect[1];

    if (arguments.length>0)
        vx = arguments[0];
    if (arguments.length>1)
        vy = arguments[1];
    if (arguments.length>2)
        vx2 = arguments[2];
    if (arguments.length>3)
        vy2 = arguments[3];
        
    if (vx<-1) vx = -1;
    else if (vx>1) vx = 1;
    if (vy<-1) vy = -1;
    else if (vy>1) vy = 1;
    if (vx2<-1) vx2 = -1;
    else if (vx2>1) vx2 = 1;
    if (vy2<-1) vy2 = -1;
    else if (vy2>1) vy2 = 1;

}

function list_circle()
{
    var width = box.rect[2] - box.rect[0];
    var height = box.rect[3] - box.rect[1];

    if (arguments.length>0)
        vx = arguments[0];
    if (arguments.length>1)
        vy = arguments[1];
    if (arguments.length>2)
        vradius = arguments[2];
    if (arguments.length>3)
        sens = arguments[3];
        
    if (vx<-1) vx = -1;
    else if (vx>1) vx = 1;
    if (vy<-1) vy = -1;
    else if (vy>1) vy = 1;
    if (vradius<0) vradius = 0.01;
    else if (vradius>1) vradius = 1;
    if (sens<0) sens = -1;
    else if (sens>0) sens = 1;
    
    w = sketch.screentoworld((vx+1)*width/2,(1.-vy)*height/2);

}

function bang()
{
    draw();
    refresh();
    
    if (fct==0)
    {    
        outlet(1,vy);
        outlet(0,vx);
    }

    if (fct==1)
    {
        if (vy2>vy) outlet(3,vy2);
        if (vy>vy2) outlet(3,vy);
        if (vx2>vx) outlet(2,vx2);
        if (vx>vx2) outlet(2,vx);
        if (vy2>vy) outlet(1,vy);
        if (vy>vy2) outlet(1,vy2);
        if (vx2>vx) outlet(0,vx);
        if (vx>vx2) outlet(0,vx2);
    }

    if (fct==2)
    {
        outlet(3,sens);    
        outlet(2,vradius);
        outlet(1,w[1]);
        outlet(0,w[0]);
    }
}

function fsaa(v)
{
    sketch.fsaa = v;
    bang();
}

function frgb(r,g,b)
{
    vfrgb[0] = r/255.;
    vfrgb[1] = g/255.;
    vfrgb[2] = b/255.;
    draw();
    refresh();
}

function brgb(r,g,b)
{
    vbrgb[0] = r/255.;
    vbrgb[1] = g/255.;
    vbrgb[2] = b/255.;
    draw();
    refresh();
}

function radius(v)
{
    vradius = v;
    draw();
    refresh();
}

function setvalueof(x,y,z,a)
{
    list(x,y,z,a);
}

function getvalueof()
{
    var a = new Array(vx,vy,vx2,vy2,vradius,sens);
    
    return a;
}

function onresize(w,h)
{
    draw();
    refresh();
}
onresize.local = 1; //private

function onclick(x,y)
{
    if (fct==1)
    {
        x1=x;
        y1=y;
        x2=x;
        y2=y;
    }
    
    if (fct==2)
    {
        x1=x;
        y1=y;
        x2=x;
        y2=y;
    }
    ondrag(x,y);
}
onclick.local = 1; //private

function ondrag(x,y)
{
    var width = box.rect[2] - box.rect[0];
    var height = box.rect[3] - box.rect[1];
    
    if (fct==0)
    {
        if (x<=0) x = 0;
        else if (x>width) x = width;
        if (y<0) y = 0;
        else if (y>height) y = height;

        w = sketch.screentoworld(x,y);

        vx = 2*x/width-1;
        vy = 1-2*y/height;
    }

    if (fct==1)
    {
        x2=x;
        y2=y;

        if (x1<=0) x1= 0;
        else if (x1>width) x1 = width;
        if (y1<0) y1 = 0;
        else if (y1>height) y1 = height;
        if (x2<=0) x2 = 0;
        else if (x2>width) x2 = width;
        if (y2<0) y2 = 0;
        else if (y2>height) y2 = height;

        vx = 2*x1/width-1;
        vy = 1-2*y1/height;
        vx2 = 2*x2/width-1;
        vy2 = 1-2*y2/height;
    }

    if (fct==2)
    {
        x2=x;
        y2=y;
    
        if (x1<=0) x1= 0;
        else if (x1>width) x1 = width;
        if (y1<0) y1 = 0;
        else if (y1>height) y1 = height;
        if (x2<=0) x2 = 0;
        else if (x2>width) x2 = width;
        if (y2<0) y2 = 0;
        else if (y2>height) y2 = height;

        vx = 2*x1/width-1;
        vy = 1-2*y1/height;
        vx2 = 2*x2/width-1;
        vy2 = 1-2*y2/height;

        vradius=Math.sqrt((Math.pow((vx2-vx),2)+Math.pow((vy2-vy),2))/2);

        w = [(vx2+vx)/2,(vy2+vy)/2,0];
    
        if (vradius<0) vradius = 0.01;
        else if (vradius>1) vradius = 1;
    }
    bang();
}
ondrag.local = 1; //privaterivatendrag.local = 1; //privatetecal = 1; //private= 1; //privateecal = 1; //private= 1; //privateetecal = 1; //private= 1; //privateatee= 1; //private