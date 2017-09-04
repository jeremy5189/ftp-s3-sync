#!/bin/bash

# Make dest dir
mkdir mp3/$1
rm mp3/$1/*.mp3

for wav_file in wav/$1/*.wav; do
    echo "Converting $wav_file"

	SUCCESS=0
	ffmpeg -v 0 -y -i $wav_file -ab 160k "$wav_file.mp3"

	if [ "$?" -ne $SUCCESS ]
	then
	    now=$(date +"%T")
	    echo "$now: $wav_file" >> convert.err
	fi

	mv "$wav_file.mp3" mp3/$1/
done
