#!/bin/bash
#
git init
git add .
git commit -m "initial version"
git branch -M main
git remote add origin https://github.com/<YOUR-REPO>
git push -u origin main
