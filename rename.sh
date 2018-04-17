cd mp3/$1

# Rename *.wav.mp3 to *.mp3
rename 's/\.wav.mp3$/\.mp3/' *.wav.mp3

# Remove 0 and lang code
rename 's/[A-Z-]+0{0,3}//' *.mp3
