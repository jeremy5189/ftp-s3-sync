#!/bin/bash
source ./.env

echo "Syning WAV with $REMOTE_DIR/$1..."
/usr/bin/lftp -u "$USER,$PASS" -e "mirror --parallel=10 --verbose --only-newer $REMOTE_DIR/$1 $LOCAL_DIR/$1; exit" $HOST
