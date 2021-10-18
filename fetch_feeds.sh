#!/bin/sh
set -e

cd /srv/pluto/
bundle exec pluto -c $GITHUB_WORKSPACE/planet.ini -d $GITHUB_WORKSPACE/planet.db update

