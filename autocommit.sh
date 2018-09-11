#!/bin/sh
cd C:\\Users\\60120\\Documents\\auto-commit-test\\
editfile.cmd test.txt
git add .
git commit -am "$(DATE)"
git push
echo Press Enter...
read