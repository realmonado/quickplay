#!/bin/sh
git pull
git add .
echo "enter a commit message:"
read msg
git commit . -m "$msg"
git push
