#!/bin/bash

STATUS=$(playerctl status 2>/dev/null)

if [ "$STATUS" = "Playing" ]; then
    echo '{"text":""}'
else
    echo '{"text":""}'
fi