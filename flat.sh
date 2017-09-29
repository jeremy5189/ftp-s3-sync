#!/bin/bash

mv wav/$1/T$1/* wav/$1
rmdir wav/$1/T$1

mv wav/$1/D$1/* wav/$1
rmdir wav/$1/D$1

mv wav/$1/BI$1/*.wav wav/$1
rmdir wav/$1/BI$1

mv wav/$1/F$1/Completed/*.wav wav/$1
rmdir wav/$1/F$1/Completed
rmdir wav/$1/F$1

ls -1 wav/$1 | wc -l
