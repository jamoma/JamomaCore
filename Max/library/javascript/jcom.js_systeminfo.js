/*

	javascript for Jamoma
	determining what OS is used
	by Trond Lossius
	License: GNU LGPL

*/


inlets = 1;
outlets = 1;

function bang()
{
	outlet(0, "os", this.max.os);
	outlet(0, "os_version", this.max.osversion);
	outlet(0, "max_version", this.max.version);
	outlet(0, "plugin", this.max.isplugin);
	outlet(0, "runtime", this.max.isruntime);
}