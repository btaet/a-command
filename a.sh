#!/bin/bash
if [[ "$1" = "-r" ]]; then 
    pwd > ~/.a-dirs.txt
elif [[ "$1" = "" ]]; then
    DIR=`cat ~/.a-dirs.txt`
    cd $DIR
else
    cd "$1"
fi
