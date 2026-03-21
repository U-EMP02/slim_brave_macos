# SlimBrave macOS

A script to install Brave browser preferences on macOS for a slimmed-down, privacy-focused browsing experience.

## Usage

```bash
cd slim_brave_macos
chmod +x install_brave_prefs.sh
sudo ./install_brave_prefs.sh
sudo killall cfprefsd
```

## Requirements

- macOS operating system
- Brave browser installed
- sudo/administrator privileges

## What it does

This script configures Brave browser preferences to create a slim, privacy-focused setup by:
- Modifying Brave's preference files
- Applying privacy and performance optimizations
- Reducing unnecessary features and telemetry

## Notes

- The script requires sudo privileges as it modifies system-level browser preferences
- Make sure Brave browser is closed before running the script
- Changes will take effect the next time you launch Brave browser
