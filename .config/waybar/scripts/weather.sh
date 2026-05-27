#!/bin/bash

LOCATION="Bolpur,West_Bengal"

weather=$(curl -s "https://wttr.in/${LOCATION}?m&format=%C|%t")

condition=$(echo "$weather" | cut -d "|" -f1)
temp=$(echo "$weather" | cut -d "|" -f2)

cond_lower=$(echo "$condition" | tr '[:upper:]' '[:lower:]')

case "$cond_lower" in
    *clear*|*sunny*)
        icon="󰖙"
        ;;
    *partly*cloud*)
        icon="󰖕"
        ;;
    *cloud*|*overcast*)
        icon="󰖐"
        ;;
    *rain*|*shower*)
        icon="󰖗"
        ;;
    *drizzle*)
        icon="󰖖"
        ;;
    *thunder*|*storm*)
        icon="󰖓"
        ;;
    *snow*|*sleet*|*blizzard*)
        icon="󰖘"
        ;;
    *mist*|*fog*)
        icon="󰖑"
        ;;
    *haze*|*smoke*)
        icon="󰼰"
        ;;
    *)
        icon="󰖕"
        ;;
esac

temp=$(echo "$temp" | sed 's/+//')

echo "<span size='17000'>$icon</span> <span rise='1000'>$temp</span>"