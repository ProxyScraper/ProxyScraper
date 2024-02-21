#!/bin/bash
Latest_Update_File="LATEST_UPDATE"
Latest_Update=$(cat $Latest_Update_File)
Massage_Text="\n**Latest Update** : ` $Latest_Update ` "
sed -i "/## Usage/i $Massage_Text" README.md
