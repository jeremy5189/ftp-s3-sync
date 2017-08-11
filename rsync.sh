#!/bin/bash
source ./.env
rsync -urtv --delete-after -e ssh mp3/$1/*.mp3 "$REMOTE_ROOT/$2/"
