JAMOMA
A module-building framework for interchange, collaboration, and ease of integration


INSTALLING
	1. Launch your terminal.app
	2. Type (or copy/paste) the following and press return:

		cd "/Library/Application Support/Cycling '74"

	3. Download the files
		A. If you are a project developer, type (or copy/paste) the following 
		(replacing "tap" with your sourceforge username)

			cvs -d :ext:tap@cvs.sourceforge.net:/cvsroot/jamoma checkout .

		B. If you not a project developer, type (or copy/paste) the following two 
		lines (if you get an error, just try again)	

			cvs -d :pserver:anonymous@cvs.sourceforge.net:/cvsroot/jamoma login
			cvs -z3 -d :pserver:anonymous@cvs.sourceforge.net:/cvsroot/jamoma co Jamoma
					
	4. move the jamoma-fileformats.txt file into /Library/Application Support/Cycling '74/init
	5. start Max

	
EXAMPLES
	For now look at the following files
	- untitled.txt
	- jam.filter.mod
		

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
	