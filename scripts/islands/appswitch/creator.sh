#!/usr/bin/env/bash

appname=(
	width=0
	label.color="$P_DYNAMIC_ISLAND_COLOR_TRANSPARENT"
	label.padding_left=0
	label.padding_right=0
	label.font="$P_DYNAMIC_ISLAND_FONT:Bold:14.0"
	label.y_offset=-17
	label.align=right
	background.padding_left=5
	background.padding_right=0
	drawing=off
)

appbackground=(
	width="$P_DYNAMIC_ISLAND_APPSWITCH_EXPAND_WIDTH"
	background.height="$P_DYNAMIC_ISLAND_DEFAULT_HEIGHT"
	background.color="$P_DYNAMIC_ISLAND_COLOR_TRANSPARENT"
	background.border_color="$P_DYNAMIC_ISLAND_COLOR_TRANSPARENT"
	background.corner_radius=9999 # Set a large value for full rounding
	background.padding_left=0
	background.padding_right=0
	background.y_offset=0
	background.shadow.drawing=off
	drawing=off
)

applogo=(
	background.color="$P_DYNAMIC_ISLAND_COLOR_ICON_HIDDEN"
	background.padding_left=20
	background.padding_right=5
	background.image.scale="$P_DYNAMIC_ISLAND_APPSWITCH_ICON_SIZE"
	y_offset=-16
	drawing=off
)

dynamic-island-sketchybar --add item island.appname popup.island \
	--set island.appname "${appname[@]}" \
	--add item island.appbackground popup.island \
	--set island.appbackground "${appbackground[@]}" \
	--add item island.applogo popup.island \
	--set island.applogo "${applogo[@]}"
