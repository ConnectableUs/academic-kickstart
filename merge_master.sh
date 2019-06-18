#!/bin/bash
# git checkout --patch <from-branch> <filename> ...
# See:  https://git-scm.com/docs/git-checkout#Documentation/git-checkout.txt---patch
#
# if the file does not exist in your current (target) branch,
# then just to a checkout
#
git checkout --patch master

