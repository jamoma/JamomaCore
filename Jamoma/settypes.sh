#!/bin/tcsh
#
# This script is to set the attribute fork of all Max documents and libraries
# required for Jamoma. It is neccessary because cvs strips off the file attribute
# forks.
#
# by Tim Place, 19 April 2003


# CONFIGURATION FILES
/developer/tools/setfile -t TEXT -c max2 configurations/jam.core.proto

# HELP FILES
/developer/tools/setfile -t maxb -c max2 docs/jam.attributes.help

# EXAMPLES
/developer/tools/setfile -t TEXT -c max2 examples/untitled.txt

# MODULES
/developer/tools/setfile -t TEXT -c max2 modules/jam.filter.mod




