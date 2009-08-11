// Javascript for Jamoma: generic scripting algorithm for GUI-elements
// 
// Marlon Schumacher, 2009  
// based on Trond Lossius' "jcom.sur.rolloff.js" ©2007
// License: GNU LGPL

/*******************************************************************
 * SETUP
 *******************************************************************/

// autowatch = 1;

// CONSTANTS

MAX_VOICES = 32;                        // Maximum number of gui-elements

// VARIABLES

var num_voices = 0;                       // Current number of voices
var num_voices_prev = 0;                // Previous number of voices
var i                                   // A counter


// INLETS AND OUTLETS


outlets = 0;

setinletassist(0,"Number of GUI-elements");
setoutletassist(0,"Scripting messages");

function loadbang(a,b,c)
{
//    post(jsarguments[1],jsarguments[2],jsarguments[3]);
}

function msg_int(value)
{

    {    
        num_voices_prev = num_voices;
        num_voices = value;
        
        if (num_voices > MAX_VOICES)
            num_voices = MAX_VOICES;
        if (num_voices < 0)
            num_voices = 0;
        
        // Only perform scripting if the number of voices actually change
        if (num_voices==num_voices_prev) return;
        
         for (i=num_voices_prev; i>value; i--)
                {
            outlet(0, "script", "delete", "gui-element["+(i)+"]");
            }
            
          for (i=num_voices_prev; i<value; i++)     
        {
            outlet(0, "script", "new", "gui-element["+(i+1)+"]", "bpatcher", (0), (i*(jsarguments[3])+21), (jsarguments[2]), 28, 0, 0, (jsarguments[1]), 0, [i+1]); 
        }
        outlet(0, "done");
    }
}