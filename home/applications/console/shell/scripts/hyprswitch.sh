hyprDir="$CFG/hypr"
hyprSetupsDir="$CFG/hypr-setups"

if [ -z "$1" ]; then
  echo "Usage: hyprswitch <setupName>"
  echo ""
  echo "Available setups:"
  for directory in `ls $hyprSetupsDir`
    do echo "  $directory (alias ${directory#$NICKNAME-})"
  done
  exit 1
fi

set -euo pipefail


setupName="$1"

setupPath="$hyprSetupsDir/$setupName"

if [ ! -d "$setupPath" ]; then
  setupName="$NICKNAME-$1"
  setupPath="$hyprSetupsDir/$setupName"
fi

if [ ! -d "$setupPath" ]; then
  echo "❌ Error: Setup '$setupName' does not exist at '$setupPath'."
  exit 1
fi

if [ -L "$hyprDir" ] || [ -d "$hyprDir" ]; then
  echo "⚠️  Removing existing config at '$hyprDir'..."
  rm -rf "$hyprDir"
fi

ln -s "$setupPath" "$hyprDir"
hyprctl reload
echo "✅ Linked '$setupPath' to '$hyprDir'"
