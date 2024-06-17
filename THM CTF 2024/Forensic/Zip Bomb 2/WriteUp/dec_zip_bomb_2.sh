#/bin/bash

current_zip=$(ls | grep *.zip | cut -d '.' -f 1)

echo "$current_zip"

while [ 1 ]
do
	if [ "$(ls | grep *.zip | cut -d '.' -f 1)"  ]
	then
		echo y | unzip -P $current_zip $current_zip.zip
		rm -rf $current_zip.zip
		cat flag.txt
	else
		exit

	fi
	current_zip=$(ls | grep *.zip | cut -d '.' -f 1)
done
