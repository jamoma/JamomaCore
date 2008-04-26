#!/usr/bin/perl

use strict;

die "$0: Must be run from Xcode" unless $ENV{"BUILT_PRODUCTS_DIR"};

# Get the current subversion revision number and use it to set the CFBundleVersion value
my $REV = `svnversion -n ./`;
my $INFO = "$ENV{BUILT_PRODUCTS_DIR}/$ENV{WRAPPER_NAME}/Contents/Info.plist";

my $version = $REV;
die "$0: No Subversion revision found" unless $version;

open(FH, "$INFO") or die "$0: $INFO: $!";
my $info = join("", <FH>);
close(FH);

$info =~ s/VERSION/0\.5\.0/g;
$info =~ s/SVNREV/$version/g;

open(FH, ">$INFO") or die "$0: $INFO: $!";
print FH $info;
close(FH);
