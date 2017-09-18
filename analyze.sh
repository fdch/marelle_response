#!/bin/bash
if [ $1 ]
then
	TEXTDIR=$1
else
	echo "please provide an index as argument 1"
	exit 1
fi
if [ $2 ] 
then
	WSIZE=$2
else
	echo "default window size is 2048"
	WSIZE=2048
fi
mkdir "txt$TEXTDIR"
pd -batch -send ";textdir $TEXTDIR;window-size $WSIZE;compute bang;" -open _analyze.pd
exit 0

