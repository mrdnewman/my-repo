#!/usr/bin/env bash

for branch in feature-x feature/cool-update feature/ver1.0; do
  git branch -d $branch && git push origin --delete $branch || echo "$branch not found or not merged"
done
git fetch --prune

