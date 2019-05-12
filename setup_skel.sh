#!/bin/bash -x
GITHUB_USER="rgooler"
for f in build.sh run.sh run_daemon.sh README.md .appveyor.yml; do
sed -i 's/python3_skel/${1}/g' $f
done


#Clean up this script
rm -- "$0"

rm -rf .git
git init
git commit -m "Initial Commit" -a
git remote add origin "git@github.com:${GITHUB_USER}/${1}"
git push -u origin master
