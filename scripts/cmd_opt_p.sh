#!/bin/sh

# This is a hack to force Xcode to resume SwiftUI previews
# Source: https://hybridcattt.com/blog/fixing-swiftui-previews/
#
# Preferences -> Behaviours -> Build Succeeds -> Run
# Add the script

osascript -e 'activate application "Xcode"'
osascript -e 'tell application "System Events" to keystroke "p" using {command down, option down}'
