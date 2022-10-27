#!/bin/bash

DIR=pasta
FILE=arquivo
p=pasta_teste
mkdir $p
cd $p
for i in $(seq 1 10)
do
    mkdir $DIR$i
    for j in $(seq 1 5)
    do
        touch $DIR$i/$FILE$j.txt
    done
done