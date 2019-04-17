#!/bin/sh
# this file is meant to be run from cron to update the local git branch with the
# associated upstream branch, then build and install into /var/www/html

# fetch changes from origin
git fetch
# get the number of changes between local and remote (current branch)
CHANGES=$(git rev-list HEAD...@{u} --count)

if [ $CHANGES = "0" ]; then
  echo "git repo is current"
else
  echo "git repo is not current. updating..."
  git pull
  if [ $? -eq 0 ]; then
    echo "copying new web files"
    cp -rf dist/* /var/www/html/static/
  else
    echo "failed to pull repo"
  fi
fi
