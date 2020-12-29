#!/bin/sh

#this script is necessary due to a bug in ksh where flat make doesnt actually
#put all assets we need in the proper directories

HOSTDIR=$(./ksh93/bin/package host)

cp ./ksh93/arch/$HOSTDIR/src/cmd/ksh93/pmain.o pmain.o
ln -s ./ksh93/arch/$HOSTDIR/src/cmd/ksh93/FEATURE FEATURE
