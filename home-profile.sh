#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Helium: Home Profile
# @raycast.mode silent

# Optional parameters:
# @raycast.packageName Helium Profiles
# @raycast.description Switch to 'Home' profile

script_dir=${0:A:h}
open -a Helium
osascript "$script_dir/helium-profile.applescript" Home >/dev/null
