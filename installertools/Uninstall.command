#!/bin/bash
# This file must be saved in UTF-8


################################
# Uninstallations Methodes
################################
function remove5 {
	echo "Removing Jamoma";
		
	doRemove;
}

function doRemove {
	if [ -e "$C74Folder" ] ; then
		echo -ne "- Jamoma Modular Folder ($C74Folder/Jamoma/)"
		rm -Rf "$C74Folder/Jamoma" && echo -ne "... done.\n"
		
		echo -ne "- Default Settings Files ($C74Folder/default-settings/)"
		rm -f "$C74Folder/default-settings/"Jamoma* && echo -ne "... done.\n"
		
		echo -ne "- Default Definitions Files ($C74Folder/default-definitions/)"
		rm -f "$C74Folder/default-definitions/"jcom* && echo -ne "... done.\n"
		
		echo -ne "- Extension File ($C74Folder/extensions/)"
		rm -Rf "$C74Folder/extensions/"jcom* && echo -ne "... done.\n"
	
	else
		echo -ne "Sorry, $C74Folder doen't exist. can't uninstall Jamoma files.\n"
	fi
	

	if [ -e "$maxAppFolder" ] ; then
		
		echo -ne "- Extra Files ($maxAppFolder/patches/extras/)"
		rm -f "$maxAppFolder/patches/extras/"jamoma* && echo -ne "... done.\n"
	
		else
			echo -ne "Sorry, $maxAppFolder doesn't exist. Extra files can't be uninstalled.\n"
		fi



	
	if [ -e "$FrameworkFolder" ] ; then
		echo -ne "- DSP Framework ($FrameworkFolder/JamomaDSP.framework)"
		rm -Rf "$FrameworkFolder/JamomaDSP.framework" && echo -ne "... done.\n"
		
		echo -ne "- Modular Framework ($FrameworkFolder/Jamoma.framework)"
		rm -Rf "$FrameworkFolder/Jamoma.framework" && echo -ne "... done.\n"
	
	else
		echo -ne "Sorry, $FrameworkFolder doesn't exist. Frameworks can't be uninstalled.\n"
	fi
	
	echo -ne "\n";

}


################################
# UnInstallation process
################################
clear

echo "--------------------------"
echo "--- Jamoma Uninstaller ---"
echo "--------------------------"
echo ""
echo ""


################################
#  Version checking
################################
whichVersion=0;



if [[ -e "/sysbuild/Development" ]]; then
	maxAppFolder="/sysbuild/Development";
	C74Folder="$maxAppFolder/Cycling '74";
	remove5;
fi

maxAppFolder="/Applications/Max5";
FrameworkFolder="/Library/Frameworks";
C74Folder="$maxAppFolder/Cycling '74";
remove5;

echo -ne "done"
echo -ne "\n\nend of Jamoma's Uninstaller.\n"
echo -ne "(you can quit the Terminal now...)\n"

exit 0;
