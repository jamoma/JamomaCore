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
