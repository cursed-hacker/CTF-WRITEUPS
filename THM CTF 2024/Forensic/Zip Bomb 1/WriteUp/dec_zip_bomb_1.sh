#!/bin/bash

for (( i=500; i>=1; i-- ))
do
	echo y | unzip -P bomb$i bomb$i.zip
	cd bomb$((i-1))
	cat flag.txt
done
