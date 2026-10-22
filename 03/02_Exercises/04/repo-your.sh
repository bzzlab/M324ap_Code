#!/bin/bash
#
git init
git add .
git commit -m "Initial M324_trafficlight-api"
git branch -M main
git remote add origin https://github.com/<your-repo>.git
git push -u origin main
