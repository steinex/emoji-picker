#!/bin/sh
api_key=78c4b13d12056091dc324bd0b125e27bb91af429
emojis=$(curl -s https://emoji-api.com/emojis?access_key=$api_key)

emojis=$(echo $emojis | jq --raw-output ".[] | \"\(.character) \(.slug),\"")

echo -e $emojis | sed -e 's/, /\n/g' | grep -v '^-e' > ~/.emojis.txt
