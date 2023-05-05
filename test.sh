#!/bin/bash

echo "1" >> 1.txt
git add -A
git commit -m "1"

echo "2" >> 2.txt
git add -A
git commit -m "2"

git checkout -b dev HEAD~

echo "3" >> 3.txt
git add -A
git commit -m "3"

git checkout -b b1
git checkout dev

git merge main

git checkout main
git merge b1
