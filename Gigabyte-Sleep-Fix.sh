#!/bin/bash

echo "Redirecting to DAK404's Gigabyte Sleep Fix at: https://github.com/DAK404/OpenSUSE-Setup-Scripts"
echo "Sleep Fix can be found under Scriptlets/Fixes-and-Tweaks in that repository."
exec bash <(curl -fsSL https://raw.githubusercontent.com/DAK404/OpenSUSE-Setup-Scripts/main/Scriptlets/Fixes-and-Tweaks/Fix-GigabyteDesktopSleepFix.sh)
echo "Done!"
