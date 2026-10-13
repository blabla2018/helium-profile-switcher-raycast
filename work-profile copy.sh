#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Helium: Work Profile
# @raycast.mode silent

# Optional parameters:
# @raycast.packageName Helium Profiles
# @raycast.description Switch to 'Work' profile

script_dir=${0:A:h}
open -a Helium
osascript "$script_dir/helium-profile.applescript" Work >/dev/null
