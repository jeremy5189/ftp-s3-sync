#!/bin/bash
lftp -u "$USER,$PASS" -e "mirror --parallel=3 --verbose --only-newer $REMOTE_DIR $LOCAL_DIR; exit" $HOST 