#!/bin/bash
Latest_Update_File="LATEST_UPDATE"
Latest_Update=$(cat $Latest_Update_File)
Massage_Text="**Latest Update**: \`$Latest_Update\`"


sed -i "s/\*\*Latest Update\*\*.*$/$Massage_Text/" README.md


if ! grep -q "**Latest Update**" README.md; then
    awk -v var="$Massage_Text" 'NR==2 {print var} 1' README.md > temp.md && mv temp.md README.md
fi
