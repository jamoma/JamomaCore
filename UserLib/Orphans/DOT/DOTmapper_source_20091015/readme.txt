Mapping tools for digital musical instruments
Authors: Joseph Malloch, Stephen Sinclair

----------------------------------
Read this document with links online at http://www.idmil.org/software/mappingtools

The mapping tools provide a framework and GUI designed to aid collaborative development of a digital musical instrument mapping layer. The goal was to create a system that allows mapping between controller and sound parameters without requiring a high level of technical knowledge, and which needs minimal manual intervention for tasks such as configuring the network and assigning identifiers to devices. Ease of implementation was also considered, to encourage future developers of devices to adopt a compatible protocol. (See the Mapping Tools project page for more information and a screenshot.)

The version available here for download has been implemented in Max/MSP and is provided separately for Max/MSP 4.6 and Max/MSP 5. Regardless of which version you use, the graphical interface will run only in Max 5 (or the free Max 5 runtime, if you don't have a paid installation). In the future, we will try to have other versions available here also - the documentation is all freely available, so if you feel like porting the max version, or including compatibility in your own software, please feel free :)

----------------------------------
Using the mapping tools

Integrating the mapping tools with existing patches is usually extremely easy, and really consists of only two steps:

1. Create a device definition file - In order for the mapping system to inform other devices and GUIs of the mappable parameters of your device, you need to create an XML device definition file in simple in the following simple format. The OSC address string of each parameter is given, along with some useful but optional information specifying the parameter's data type, associated unit, and minimum and maximum values (if any).

      <?xml version="1.0" encoding="iso-8859-1" standalone="yes" mapperVersion="2a"?>
       
      <device name = "/example" class = "example.xml" numInputs = "2" numOutputs = "2">
      	<inputs>
      		<parameter name = "/in1">
      			<type>f</type>
      			<units>normalized</units>
      			<minimum>0</minimum>
      			<maximum>1</maximum>
      		</parameter>
      		<parameter name = "/in2">
      			<type>i</type>
      			<units>na</units>
      			<minimum>0</minimum>
      			<maximum>256</maximum>
      		</parameter>
      	</inputs>
      	<outputs>
      		<parameter name = "/out1">
      			<type>f</type>
      			<units>percent</units>
      			<minimum>0</minimum>
      			<maximum>100</maximum>
      		</parameter>
      		<parameter name = "/out2">
      			<type>f</type>
      			<units>na</units>
      		</parameter>
      	</outputs>
      </device>

2. Create an instance of dot.admin in your patch - Use the name of the device definition file from step 1 as an argument. At this point, the instance of dot.admin will negotiate with other instances for a unique name and port, and announce itself on the mapping admin bus. Any OSC traffic mapped to the instance will emerge from the left outlet of the dot.admin object, and OSC messages routed to the left inlet of the dot.admin become available for mapping across the entire system. The system takes care of device enumeration and network connections - you can map between human-readable OSC parameter names, rather than IPs and ports. Also, controller and synthesizer programs can transparently be run on different (or multiple) computers.

----------------------------------
For more detailed documentation, please refer to the published papers linked below. If you have questions or find a bug, please contact joseph.malloch@mcgill.ca

Related Publications:

Malloch, J., Sinclair, S., and M. M. Wanderley (2008). A network-based framework for collaborative development and performance of digital musical instruments. In R. Kronland-Martinet, S. Ystad, and K. Jensen (Eds.): CMMR 2007, - Proc. of Computer Music Modeling and Retrieval 2007 Conference, LNCS 4969. Berlin Heidelberg: Springer-Verlag, pp. 401Ð425, 2008.

Malloch, J., Sinclair, S., and M. M. Wanderley (2007). From controller to sound: Tools for collaborative development of digital musical instruments. In Proceedings of the 2007 International Computer Music Conference, Copenhagen, Denmark, 2007, pp. 65-72.
