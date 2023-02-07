#!/bin/sh -l

# Add safe directory option for github workspace to disable fatal error
#  - docker container uid is 0(root)
#  - github workspace directory owner is 1001
git config --global --add safe.directory /github/workspace

eval $1
