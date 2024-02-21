#!/bin/bash
Latest_Update_File="LATEST_UPDATE"
Latest_Update=$(cat $Latest_Update_File)
Massage_Text="**Latest Update**: \`$Latest_Update\`"

usage_line=$(grep -n "## Usage" README.md | cut -d ":" -f 1)

sed -i "${usage_line}i $Massage_Text" README.md

if grep -q "**Latest Update**" README.md; then
    sed -i "/**Latest Update**/d" README.md
fi
