#!/bin/bash
source ./.env

/usr/bin/lftp -u "$USER,$PASS" -e "cls -1 $REMOTE_DIR; exit" $HOST