
set -euo pipefail

setupName="$1"

hyprDir="$CFG/hypr"
hyprSetupsDir="$CFG/hypr-setups"
setupPath="$hyprSetupsDir/$setupName"

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
