#!/bin/bash
# git checkout --patch <from-branch> <filename> ...
# See:  https://git-scm.com/docs/git-checkout#Documentation/git-checkout.txt---patch

# to pull origin/master w/ certainty:
# (ref: https://stackoverflow.com/questions/9589814/how-do-i-force-git-pull-to-overwrite-everything-on-every-pull/9589927)
git fetch origin master
git reset --hard FETCH_HEAD
# this will remove ignored directories too:
git clean -df
#
# if the file does not exist in your current (target) branch,
# then just do a checkout
#
git checkout --patch master

# then check that there are any new files to checkout from master:
git ls-tree -r --name-only master > tmp/master.list
git ls-tree -r --name-only connectable > tmp/connectable.list
# red-master files are the ones to checkout
gdiff tmp/master.list tmp/connectable.list

