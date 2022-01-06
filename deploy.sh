#!/bin/bash

echo -e "\033[0;32mDeploying Blog...\033[0m"

git add .

msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"

git push origin master

hugo -t hugo-coder

cd public

git add .

msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push origin master
