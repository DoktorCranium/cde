# This file is imbedded near the top of  every ToolTalk Imakefile.
# It contains definitions and redefinitions that are common to all
# of ToolTalk but which aren't referred to anywhere else in the
# build. 

# It should match tooltalk.tmpl in terms of definitions...

# TT_VERSION defines the version string which is imbedded in all the 
# binaries and shipped libraries.

TT_VERSION = "CDE Version 2.3.1a"
TT_VERSION_DEFINE = -DTT_VERSION_STRING=\"$(TT_VERSION)\"

