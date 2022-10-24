#!/bin/bash
if [ -f $1 ]
then
    echo "$1 existe e é um arquivo"
else
    echo "$1 não é um arquivo"
fi