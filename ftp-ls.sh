#!/bin/bash
source ../.env
lftp -u "$USER,$PASS" -e "cls -1 $REMOTE_DIR; exit" $HOST