Jamoma (JAde MOdules for MAx)


INSTALLING
	1. Do an anonymous cvs checkout of Jamoma into a directory of your choosing.
	2. move the jamoma-fileformats.txt file into /Library/Application Support/Cycling '74/init
	3. start Max
	4. Add the Jamoma folder to the search path
	
EXAMPLES
	For now look at the following files
	- jam.core prototype
	- untitled
	- comb.mod
		

HELPFUL CVS COMMANDS:
	Anonymous Checkout:
		cvs -d :pserver:anonymous@cvs.sourceforge.net:/cvsroot/jamoma login
		cvs -z3 -d :pserver:anonymous@cvs.sourceforge.net:/cvsroot/jamoma co Jamoma
		
	Developer Checkout (replace "tap" with your own sourceforge id):
		cvs -d :ext:tap@cvs.sourceforge.net:/cvsroot/jamoma checkout .
		cvs add Jamoma
		cvs add Jamoma/comb.mod
		cvs commit -m "Sync"


FILE FORMATS
	All patches MUST be in text format except for help patches which MUST be in binary format
	All graphics should be in .pct or .psd (photoshop) format
	
	If there is a non-text format of file you need to commit to the repository, post a note to the
	mailing list (on sourceforge) and I'll add a filter for it.
	