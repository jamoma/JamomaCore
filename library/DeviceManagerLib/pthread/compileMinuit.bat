cd minuit
cl.exe /EHsc /MT /c *.cpp
cd ../NetworkCommunication/ip
cl.exe /EHsc /MT /c *.cpp
cd ../osc
cl.exe /EHsc /MT /c /DWIN32 *.cpp
cd ../..
cl.exe /c /EHsc /MT /Fo../../xmlParser.obj ../../xmlParser.cpp
cl.exe /c /EHsc /MT /Fo../../Device.obj ../../Device.cpp
cl.exe /c /EHsc /MT /Fo../../DeviceManager.obj ../../DeviceManager.cpp
cl.exe /c /EHsc /MT /Fo../../PluginFactories.obj ../../PluginFactories.cpp
cl.exe /c /EHsc /MT /UNICODE /W3 /DWIN32_DLL /Ipthread\include /FoMinuit.obj Minuit.cpp
link.exe /dll /out:Minuit.dll /implib:Minuit.lib Minuit.obj Minuit/*.obj NetworkCommunication/ip/*.obj NetworkCommunication/osc/*.obj ../../xmlParser.obj ../../Device.obj ../../DeviceManager.obj ../../PluginFactories.obj Winmm.lib ws2_32.lib Advapi32.lib User32.lib pthreadVC2.lib
cl.exe /c /EHsc /MT /W3 /DWIN32_DLL /Ipthread\include /FoOSC.obj OSC.cpp
link.exe/dll /out:OSC.dll /implib:OSC.lib OSC.obj Minuit/*.obj NetworkCommunication/ip/*.obj NetworkCommunication/osc/*.obj ../../xmlParser.obj ../../Device.obj ../../DeviceManager.obj ../../PluginFactories.obj Winmm.lib ws2_32.lib Advapi32.lib User32.lib pthreadVC2.lib
del ..\..\*.obj *.exp *.obj