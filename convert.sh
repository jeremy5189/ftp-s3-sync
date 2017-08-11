#!/bin/bash

# Make dest dir
mkdir mp3/$1
rm mp3/$1/*.mp3

for wav_file in wav/$1/*; do

    echo "Converting $wav_file"
	ffmpeg -v 0 -y -i $wav_file -ab 160k "$wav_file.mp3"

#    echo "Converting $wav_file x1.25"
#    ffmpeg -v 0 -y -i $wav_file -filter:a "atempo=1.25" -ab 160k "$wav_file.125.mp3"

#    echo "Converting $wav_file x0.75"
#    ffmpeg -v 0 -y -i $wav_file -filter:a "atempo=0.75" -ab 160k "$wav_file.075.mp3"

    mv "$wav_file.mp3" mp3/$1/
#    mv "$wav_file.125.mp3" mp3/$1/
#    mv "$wav_file.075.mp3" mp3/$1/
done

# Rename *.wav.mp3 to *.mp3
#rename 's/\.wav.125.mp3$/\.125.mp3/' mp3/$1/*.wav.125.mp3
#rename 's/\.wav.075.mp3$/\.075.mp3/' mp3/$1/*.wav.075.mp3
rename 's/\.wav.mp3$/\.mp3/' mp3/$1/*.wav.mp3
