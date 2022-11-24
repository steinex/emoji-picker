#!/bin/sh

EMOJI=$(cat ~/.emojis.txt | fuzzel -d -f FiraSans:weight=medium:size=20)

EMOJI_ONLY=$(echo "$EMOJI" | awk '{print $1}')

wtype $EMOJI_ONLY

