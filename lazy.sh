#!/bin/bash
./ftp-sync-dir.sh $1 && ./convert.sh $1 && ./rename.sh $1
