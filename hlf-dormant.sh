#!/bin/sh

user=`cat ./user`
PROJECTS=projects.txt
DATE=`date -v-2w +"%Y-%m-%d"`

rm -fr dormant-crs.txt
touch dormant-crs.txt

for x in $(grep -v '^#' ${PROJECTS}); do
    ssh -p 29418 ${user}@gerrit.hyperledger.org gerrit query project:${x} status:open before:$DATE --current-patch-set --comments --format=json >> dormant-crs.txt
done 

node hlf-unreviewed.js | grep -v WIP | grep -v DRAFT
#node hlf-dormant.js | cut -d' ' -f1 | xargs hlf-bump.sh 
