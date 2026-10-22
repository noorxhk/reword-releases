#!/bin/bash
# Installs the latest Reword release into /Applications and opens it:
#   curl -fsSL https://raw.githubusercontent.com/noorxhk/reword-releases/main/install.sh | bash
# curl doesn't quarantine what it downloads, so there's no "Open Anyway" step this way.
set -euo pipefail

[ "$(uname -m)" = arm64 ] || { echo "Reword needs a Mac with Apple silicon (M1 or newer)."; exit 1; }
[ "$(sw_vers -productVersion | cut -d. -f1)" -ge 26 ] || { echo "Reword needs macOS 26 or later. You have $(sw_vers -productVersion)."; exit 1; }

DMG_URL=$(curl -fsSL https://api.github.com/repos/noorxhk/reword-releases/releases/latest \
  | grep -o '"browser_download_url": *"[^"]*\.dmg"' | head -1 | cut -d'"' -f4)
[ -n "$DMG_URL" ] || { echo "Couldn't find the latest Reword download. Get it from https://github.com/noorxhk/reword-releases/releases/latest"; exit 1; }

TMP=$(mktemp -d)
trap 'hdiutil detach -quiet -force "$TMP/mount" 2>/dev/null || true; rm -rf "$TMP"' EXIT

echo "Downloading ${DMG_URL##*/}…"
curl -fL --progress-bar -o "$TMP/Reword.dmg" "$DMG_URL"
hdiutil attach -quiet -nobrowse -readonly -mountpoint "$TMP/mount" "$TMP/Reword.dmg"

echo "Installing to /Applications…"
pkill -x Reword 2>/dev/null && sleep 1 || true
rm -rf /Applications/Reword.app
ditto "$TMP/mount/Reword.app" /Applications/Reword.app

open /Applications/Reword.app
echo "Reword is installed. Allow Accessibility and Microphone when asked, then add a free AI key in Settings › AI."
echo "Tip: System Settings › Keyboard › \"Press 🌐 key to\" › Do Nothing, so fn is free for dictation."
