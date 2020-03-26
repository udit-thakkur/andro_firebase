#!/bin/bash
echo ""
echo "                        Made with <3 by team                       "
echo " _   _      _       ____   _  __   ____   _   _   ____       _     "
echo "| | | |    / \     / ___| | |/ /  / ___| | | | | |  _ \     / \    "
echo "| |_| |   / _ \   | |     | ' /  | |     | | | | | |_) |   / _ \   "
echo "|  _  |  / ___ \  | |___  | . \  | |___  | |_| | |  _ <   / ___ \  "
echo "|_| |_| /_/   \_\  \____| |_|\_\  \____|  \___/  |_| \_\ /_/   \_\ "
echo ""
echo "Creator: udit_thakkur   (https://twitter.com/udit_thakkur)  "
echo "         Harshit Sengar (https://twitter.com/sengarharshit1)"
echo ""
echo "+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
echo ""
apktool d $1 -o ./hackcura 
firebase=$(cat ./hackcura/res/values/strings.xml | grep firebase | cut -f 2 -d ">" | tr -d "<" | cut -f 1,2,3 -d "/")
echo "--------------------------------------------------------------------------"
echo "Firebase URL = $firebase"
echo "--------------------------------------------------------------------------"
echo "...Now checking if the Firebase Database is misconfigured..."
echo ""
curl -s $firebase/.json | jq .
rm -r ./hackcura
