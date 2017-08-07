#!/bin/bash
source ./.env

echo "Syning WAV with $REMOTE_DIR..."
/usr/bin/lftp -u "$USER,$PASS" -e "mirror --parallel=10 --verbose --only-newer $REMOTE_DIR $LOCAL_DIR; exit" $HOST
