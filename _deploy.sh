#!/bin/sh

set -e

[ -z "${GITHUB_TOKEN}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "chequered@gmail.com"
git config --global user.name "Xiaoyue Cheng"

git clone https://${GITHUB_TOKEN}@github.com/unodatasciences/unodatasciences.github.io.git dds-site
cd dds-site

ls | xargs rm -rf
git ls-files --deleted -z | xargs -0 git rm

cp -r ../public/* ./
git add --all *
git commit -m"Update website" || true
git push -q origin master
