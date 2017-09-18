#!/bin/bash
# This script uses 'convert' available with  imagemagick
JPGNAME=""
for i in tif/*
do
	JPGNAME="jpg/$(basename $i .tif).jpg"
	if [ -f $JPGNAME ]
	then
		echo "$JPGNAME already exists."
	else
		echo "converting $i"
		convert "$i" "$JPGNAME"
	fi
done
exit 0
