#!/bin/zsh
# Install hardened Brave managed preferences on macOS

set -euo pipefail

PLIST_NAME="com.brave.Browser.plist"
SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"
SRC_PLIST="${SRC_DIR}/${PLIST_NAME}"
DEST_DIR="/Library/Managed Preferences"
DEST_PLIST="${DEST_DIR}/${PLIST_NAME}"

echo "Source plist: ${SRC_PLIST}"
echo "Destination:  ${DEST_PLIST}"

if [[ ! -f "${SRC_PLIST}" ]]; then
  echo "ERROR: ${SRC_PLIST} not found. Make sure your plist is named ${PLIST_NAME} and in ${SRC_DIR}."
  exit 1
fi

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root. Re-run with: sudo $0"
  exit 1
fi

echo "Creating managed preferences directory (if needed)..."
mkdir -p "${DEST_DIR}"
chown root:wheel "${DEST_DIR}"
chmod 755 "${DEST_DIR}"

# Backup any existing plist
if [[ -f "${DEST_PLIST}" ]]; then
  TS=$(date +%Y%m%d-%H%M%S)
  BACKUP="${DEST_PLIST}.${TS}.bak"
  echo "Existing plist found. Backing up to ${BACKUP}"
  cp "${DEST_PLIST}" "${BACKUP}"
fi

echo "Copying new plist..."
cp "${SRC_PLIST}" "${DEST_PLIST}"
chown root:wheel "${DEST_PLIST}"
chmod 644 "${DEST_PLIST}"

echo "Flushing preferences cache..."
killall cfprefsd 2>/dev/null || true

echo "Done. Restart Brave and check brave://policy to confirm policies are applied."
