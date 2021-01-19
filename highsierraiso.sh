#!/bin/bash
installer="/Applications/Install macOS High Sierra.app"    
hdiutil create -o /tmp/HighSierra.cdr -size 5500m -layout SPUD -fs HFS+J
hdiutil attach /tmp/HighSierra.cdr.dmg -noverify -mountpoint /Volumes/install_build
sudo "$installer"/Contents/Resources/createinstallmedia --volume /Volumes/install_build
mv /tmp/HighSierra.cdr.dmg ~/Downloads/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ High\ Sierra
hdiutil convert ~/Downloads/InstallSystem.dmg -format UDTO -o ~/Downloads/HighSierra.iso
