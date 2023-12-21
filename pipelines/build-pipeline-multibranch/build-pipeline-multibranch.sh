#!/bin/bash

branchname=$1

for ((i = 0; i <= 20; i++)); do
  branchExists=$(git ls-remote --heads https://github.com/Gepardec/cia-coding-dojo.git refs/heads/"$branchname" | wc -l)

  if [[ $branchExists == 1 ]]
  then
  echo "CLONING THE BRANCH"
  git clone https://github.com/Gepardec/cia-coding-dojo.git workspace
  cd workspace
  git checkout "$1"
  cd source
  echo "BUILDING THE PROJECT"
  mvn package
  echo "REMOVING WORKSPACE"
  rm -rf workspace
  else
    echo "Branch $branchname does not exist"
  fi
  echo "Waiting 5 minutes until next build"
  sleep 300
done

