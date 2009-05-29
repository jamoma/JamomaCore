// Javascript for Jamoma: scripting algorithm for AM-demodulators of control signals for audio-rate gesture acquisition purposes
//
// Marlon Schumacher, 03/2009
// based on Trond Lossius' "jcom.sur.rolloff.js" ©2007
// License: GNU LGPL

/*******************************************************************
 * SETUP
 *******************************************************************/

autowatch = 1;

// CONSTANTS

MAX_VOICES = 32;                        // Maximum number of demodulators

// VARIABLES

var DSP_running = 0;
var num_voices = 0;                    // Current number of voices
var num_voices_prev = 0;            // Previous number of voices
var hold_voices = 0;                // If audio is running, voices will not be changed
                                    // Instead the message is held until audio is turned off
var hold_flag = 0;                    // Flag indicating if change in number of voices 
                                     // is currently on hold
var i                                // A counter


// INLETS AND OUTLETS

outlets = 0;

setinletassist(0,"Number of autoscales, dspstate");
setoutletassist(0,"Scripting messages");

function dspstate(value)
{
    DSP_running = value;
    
    if (value==0)
    {
        if (hold_flag==1)
            msg_int(hold_voices);
    }
}

function msg_int(value)
{
    // Put change in number of voices on hold if audio is running
    if (DSP_running==1)
    {
        hold_voices = value;
        hold_flag = 1;
        
        post("jmod.sintrack~: Audio is currently running.");
        post();
        post("Number of sintrackers will be updated next time audio is turned off.");
        post();
    }
    
    else
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
            outlet(0, "script", "delete", "sintrack~["+(i)+"]");
            }
            
          for (i=num_voices_prev; i<value; i++)     
        {
            outlet(0, "script", "newdefault", "sintrack~["+(i+1)+"]", (40+25*i), (120+20*i), "jcom.sintrack~");
            outlet(0, "script", "connect", "sigin["+(i+1)+"]", 0, "sintrack~["+(i+1)+"]", 0);
            outlet(0, "script", "connect", "sintrack~["+(i+1)+"]", 0, "out["+(i+1)+"]",0);
            outlet(0, "script", "connect", "route", i, "sintrack~["+(i+1)+"]", 0);
        }
        outlet(0, "done");
    }
}