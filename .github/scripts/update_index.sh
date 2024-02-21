#!/bin/bash

Latest_Update_File="LATEST_UPDATE"
Latest_Update=$(cat $Latest_Update_File)
Massage_Text="**Latest Update**: \`$Latest_Update\`"

line_number=$(grep -n "## Usage" README.md | cut -d ":" -f 1)

awk -v line="$line_number" 'NR==line-1 {print "'"$Massage_Text"'"} {print}' README.md > temp.md && mv temp.md README.md

sed -i "/\*\*Latest Update\*\*/d" README.md
