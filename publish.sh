#!/bin/bash

set -e

export LANG=en_US.UTF-8

VERSION=$(cat version.json | jq -r .version)
GIT_TAG=v$VERSION
git tag -a -m "tagging $GIT_TAG" $GIT_TAG
git push -u origin $GIT_TAG
pod cache clean --all # will clean all pods
pod spec lint quantumgraph.podspec
pod trunk push quantumgraph.podspec --allow-warnings
pod spec lint Appier.podspec
pod trunk push Appier.podspec --allow-warnings
