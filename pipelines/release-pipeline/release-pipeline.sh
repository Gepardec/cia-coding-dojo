#!/bin/bash

echo "welcher branch soll ausgecheckt werden?"
read branchname

echo "welche version soll gesetzt werden?"
read targetVersion

mkdir -p ../releases

branchExists=$(git ls-remote --heads https://github.com/Gepardec/cia-coding-dojo.git refs/heads/"$branchname" | wc -l)

if [[ $branchExists == 1 ]]
then
rm -rf workspace
git clone https://github.com/Gepardec/cia-coding-dojo.git workspace
cd workspace || exit
git checkout "$1"

cd source
mvn versions:set -DnewVersion=$targetVersion
mvn package

cp ./target/cia-project-$targetVersion.jar ../../../releases/cia-project-$targetVersion.jar

else
  echo "Branch $branchname does not exist"
fi
