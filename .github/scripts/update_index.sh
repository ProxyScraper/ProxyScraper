#!/bin/bash

Latest_Update_File="LATEST_UPDATE"
Latest_Update=$(cat $Latest_Update_File)
Massage_Text="**Latest Update**: \`$Latest_Update\`"

sed -i '18s/.*//' README.md
sed -i "18i $Massage_Text" README.md
