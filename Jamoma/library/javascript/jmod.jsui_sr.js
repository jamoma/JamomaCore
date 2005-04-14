////////////////
// by Matt
// for Jamoma
// License: GNU LGPL


 inlets = 2
 autowatch = 1
 sketch.default2d();
 
 var height = box.rect[3] - box.rect[1];
 var width = box.rect[2] - box.rect[0];
 var aspect = width/height;
 var pixeldim = sketch.worldtoscreen(aspect,-1)
 var pwidth = pixeldim[0]
 var pheight = pixeldim[1]
 var systemrate = 44100;
 var ratedivision =0;
 var displayrate = 44100;
 var fiverates = new Array(11025,22050,44100,88200,176400);
 
 draw();
 
 function msg_int(into)
 {
 if (inlet==1)
        {
        systemrate = into;
        fiverates = [into/4,into/2, into, into*2,into*4];
        ratedivision = 0
        displayrate = into;
        outlet(0,ratedivision);
        }
 else if( into >= -2 && into <= 2)
        {
        limit(into);
        displayrate = fiverates[ratedivision+2];
        outlet(0,ratedivision);
        }
 else
        {
        for ( count = 0; count < 5 ; count++)
                {
                if (fiverates[count] ==into)
                        {
                        displayrate = into;
                        ratedivision = count-2;
                        outlet(0,ratedivision);
                        }       
                }
        }
 draw()
 }
 
 function onclick(x,y,button)
 {clicky(y,1);}
 
 function ondrag (x,y,button)
 {clicky(y,0);}
 
 function clicky(y,button)
 {
 var arrows
 if (button == 1 && y > 5)//bot
        {
        arrows=1;
        limit(ratedivision-1);
        }
 else if  (button == 1 && y <= 5)//top
        {
        arrows=2;
        limit(ratedivision+1);
        }
 else
        {arrows = 0;}
 draw(arrows);
 refresh();
 outlet(0,ratedivision);
 }
 
 
 function limit(x)
 {
 var y;
 y = Math.max(-2,x);
 ratedivision = Math.min (2,y);
 displayrate = fiverates[ratedivision+2];
 }
 
 
 
 
 function drawnumber()
 {
 sketch.font("Arial");
 sketch.fontsize(8);
 sketch.glcolor(.1,.1,.1);
 sketch.moveto(sketch.screentoworld(4,3));
 sketch.textalign("left","top");
 sketch.text(displayrate.toString() );
 }
 
 
 function onresize()
 {
   height = box.rect[3] - box.rect[1];
   width = box.rect[2] - box.rect[0];
   aspect = width/height;
   pixeldim = sketch.worldtoscreen(aspect,-1);
   pwidth = pixeldim[0];
   pheight = pixeldim[1];
 draw(0);
 }
 
 function black()
 {
 	sketch.glclearcolor(.7,.7,.7,0);
 	sketch.glclear();
 }
 
 
 function arrows(down)//argument 0 for no highlight 1 for down, 2 for up
 {
 	sketch.glcolor(.1,.1,.1);
 	sketch.tri(
		sketch.screentoworld(pwidth-8,6),
		sketch.screentoworld(pwidth-2,6),
		sketch.screentoworld(pwidth-5,10));
 	sketch.tri(
		sketch.screentoworld(pwidth-8,5),
		sketch.screentoworld(pwidth -2,5),
		sketch.screentoworld(pwidth-5,1));

	 sketch.glcolor(1,1,1);
	 if (down==1){
		sketch.tri(
			sketch.screentoworld(pwidth-8,6),
			sketch.screentoworld(pwidth-2,6),
			sketch.screentoworld(pwidth-5,10));
	}
	else if (down == 2){
		sketch.tri(
			sketch.screentoworld(pwidth-8,5),
			sketch.screentoworld(pwidth-2,5),
			sketch.screentoworld(pwidth-5,1));
        }
 }
 
 function draw(arr)
 {
 	black();
 	arrows(arr);
 	drawnumber();
 	refresh();
 }