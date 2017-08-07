#!/bin/bash

# Make dest dir
mkdir mp3/$1

for wav_file in wav/$1/*; do
	echo "Converting $wav_file"
	ffmpeg -v 0 -y -i $wav_file -ab 160k "$wav_file.mp3"
	mv "$wav_file.mp3" mp3/$1/
done