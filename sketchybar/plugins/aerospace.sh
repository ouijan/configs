#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh
#
# for m in $(aerospace list-monitors); do
#     for sid in $(aerospace list-workspaces --monitor $m --empty no); do
#         echo $m $sid
#         sketchybar --set space.$sid display=1
#     done
# done
#
# for m in $(aerospace list-monitors); do
#     echo $m

# Show non-empty workspaces
# for sid in $(aerospace list-workspaces --monitor $m --empty no); do
#     sketchybar --set space.$sid display=1
# done

# Hide empty workspaces
# for sid in $(aerospace list-workspaces --monitor $m --empty); do
#     sketchybar --set space.$sid display=0
# done


# done

# Style background workspaces
# for sid in $(aerospace list-workspaces --all); do
#     echo "Inactive space.$sid"
#     sketchybar --set space.$sid label.highlight=off background.drawing=on
# done
#
# # Style focused workspaces
# for sid in $(aerospace list-workspaces --focused); do
#     echo "Active space.$sid"
#     sketchybar --set space.$sid display=1 label.highlight=on background.drawing=off
# done


if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME display=active background.drawing=on
else
    sketchybar --set $NAME background.drawing=off
fi
