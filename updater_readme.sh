#!/bin/bash

Latest_Update_File="LATEST_UPDATE"
Latest_Update=$(cat $Latest_Update_File)
Massage_Text="**Latest Update**: \`$Latest_Update\`"
sed -i '18s/.*//' README.md
sed -i "18i $Massage_Text" README.md

git pull
echo "[+] Commit Result to Github"
git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_NAME"
git add -A
git commit -m "Update Proxy List: $(date)"
git push