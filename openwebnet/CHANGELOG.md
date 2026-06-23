# Changelog

## 0.2.0

- Updated to the current Home Assistant add-on format so it installs on modern
  Home Assistant (Supervisor).
- Replaced the deprecated `auto_uart` option with `uart: true`.
- Added `arch` (aarch64, amd64, armhf, armv7, i386) and `init: false`.
- Removed the unused `map: ["config:rw", "ssl"]` permissions.
- `run.sh`: use `exec` for socat, quote variables, add a startup log line.

## 0.1

- Original release by fluture.net.
