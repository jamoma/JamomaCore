Max/MSP Externals for Phidgets
August 22, 2006
--------------------------------------------------------------------------
Installation:
Just copy the externals you want to use to any location that is on the
search path specified by Max/MSP in Options->File Preferences...
--------------------------------------------------------------------------
Compatibility:
Requires Max/MSP 4.5 or higher on PPC / Intel
Requires Phidget library 2.1.0 or higher (phidget21)

These are universal binary externs based on the Max 4.6 UB SDK. They should be backwards compatible with Max 4.5 (though perhaps not on Intel).
--------------------------------------------------------------------------
Usage:
Specific usage can be seen in the included patcher files (.help)

Generally, all extensions have these options:
  getVersion, getSerial, getStatus

You don't need to have a phidget plugged in when you create your device and you can plug/unplug as many times as you like while it is initialized.

Reading is controllable in various ways, including at internal timer.

Also, they can all take in an optional parameter to specify a serial 
number.

The source code has been included for debugging/expanding as you like