#!/bin/bash
Latest_Update_File="LATEST_UPDATE"
Latest_Update=$(cat $Latest_Update_File)

if [ -n "$Latest_Update" ]; then
    Massage_Text="**Latest Update**: \`$Latest_Update\`"
	Massage_Text=$(echo "$Massage_Text" | sed 's/\//\\\//g')
    usage_line=$(grep -n "## Usage" README.md | cut -d ":" -f 1)
    sed -i "${usage_line}i $Massage_Text" README.md

    if grep -q "**Latest Update**" README.md; then
        sed -i "/**Latest Update**/d" README.md
    fi
else
    echo "Error: No content found in $Latest_Update_File"
fi
