#!/bin/bash

TITLE=$(playerctl metadata title 2>/dev/null)
ARTIST=$(playerctl metadata artist 2>/dev/null)

if [ -z "$TITLE" ]; then
    jq -nc --arg text "No media" '{text:$text}'
else
    jq -nc --arg text "$TITLE - $ARTIST" '{text:$text}'
fi