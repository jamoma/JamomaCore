Max/MSP Externals for Phidgets

November 14, 2005

--------------------------------------------------------------------------

Installation:

Just copy the externals you want to use to any location that is on the

search path specified by Max/MSP in Options->File Preferences...

--------------------------------------------------------------------------

Compatibility:

Tested with Max/MSP 4.5

Requires Phidget library 1.0.6 or higher
--------------------------------------------------------------------------
Usage:

Specific usage can be seen in the included patcher files (.help)


Generally, all extensions have these options:

  reconnect - for attaching a phidget after the extension is loaded

  getVersion, getSerial, getStatus

 to get info about the phidget
  reading is done automatically, and data is output as it is available,
   at the maximum data rate.
Also, they can all take in an optional parameter to specify a serial 
number.


The source code has been included for debugging/expanding as you like.