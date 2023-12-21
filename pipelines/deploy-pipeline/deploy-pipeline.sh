#!/bin/bash

cd ../releases || exit

find *.jar -maxdepth 1 -not -type d

echo "Welches File soll deployed werden?"
read targetVersion

mkdir -p ../WBoss

cp ./$targetVersion ../WBoss/$targetVersion

java -jar ./../WBoss/$targetVersion