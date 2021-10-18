#!/bin/sh
set -e

cd /srv/pluto/
ln -s $GITHUB_WORKSPACE/planet.ini
bundle exec pluto update -d $GITHUB_WORKSPACE/

