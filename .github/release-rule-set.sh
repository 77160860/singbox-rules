#!/bin/bash

set -e -o pipefail

# geoip
cd sing-geoip/geoip
git init
git config --local user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config --local user.name "github-actions[bot]"
git remote add origin https://github-action:$GITHUB_TOKEN@github.com/77160860/sing-box-rules.git
git branch -M geoip
git add .
git commit -m "Update rule-set"
git push -f origin geoip

cd -

# geosite
cd sing-geosite/geosite
git init
git config --local user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config --local user.name "github-actions[bot]"
git remote add origin https://github-action:$GITHUB_TOKEN@github.com/77160860/sing-box-rules.git
git branch -M geosite
git add .
git commit -m "Update rule-set"
git push -f origin geosite
