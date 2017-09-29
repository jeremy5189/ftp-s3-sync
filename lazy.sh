#!/bin/bash
./convert.sh $1 && ./rename.sh $1 && ./s3.sh $1 $2
