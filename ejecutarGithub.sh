#!/bin/bash

git init
git add .
git commit -m "script"
git branch -M main
git remote add origin https://github.com/FRM00/BBDD2.git
git push -u origin main
