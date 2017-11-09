#!/bin/bash

	export HASH="$1"
	export DATE="$2"
git filter-branch -f --env-filter \
    'if [ $GIT_COMMIT = $HASH ]
     then
         export GIT_AUTHOR_DATE="$DATE"
         export GIT_COMMITTER_DATE="$DATE" 
     fi'


