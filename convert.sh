#!/bin/bash

# Make dest dir
mkdir mp3/$1
rm mp3/$1/*.mp3

for wav_file in wav/$1/Completed/*.wav; do
    echo "Converting $wav_file"
	ffmpeg -v 0 -y -i $wav_file -ab 160k "$wav_file.mp3" && mv "$wav_file.mp3" mp3/$1/
done

# Rename *.wav.mp3 to *.mp3
rename 's/\.wav.mp3$/\.mp3/' mp3/$1/*.wav.mp3

# Remove 0 and lang code
rename 's/[A-Z]+0{0,3}//' mp3/$1/*.mp3
