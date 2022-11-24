#!/bin/sh

EMOJI=$(cat ~/.emojis.txt | fuzzel -d -f FiraSans:weight=medium:size=16)

echo $EMOJI | awk '{print $1}'

