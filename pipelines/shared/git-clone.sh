#!/bin/bash

branchname=$1

branchExists=$(git ls-remote --heads https://github.com/Gepardec/cia-coding-dojo.git refs/heads/"$branchname" | wc -l)

if [[ $branchExists == 1 ]]
then
git clone https://github.com/Gepardec/cia-coding-dojo.git ../workspace
cd ../workspace || exit
git checkout "$1"
else
  echo "Branch $branchname does not exist"
fi