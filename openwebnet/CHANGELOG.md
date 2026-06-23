# Changelog

## 0.2.2

- Remove `ARG BUILD_FROM` entirely and hardcode `FROM alpine:3.20`. An empty
  `BUILD_FROM` passed by the Supervisor can no longer blank out the base image.

## 0.2.1

- Fix Docker build failing with `base name ($BUILD_FROM) should not be blank`
  on installs without a `build.yaml`: the Dockerfile now defaults to a concrete
  `alpine:3.20` base (still overridable via `BUILD_FROM`).
- Install `bash` in the image so `run.sh` runs.

## 0.2.0

- Updated to the current Home Assistant add-on format so it installs on modern
  Home Assistant (Supervisor).
- Replaced the deprecated `auto_uart` option with `uart: true`.
- Added `arch` (aarch64, amd64, armhf, armv7, i386) and `init: false`.
- Removed the unused `map: ["config:rw", "ssl"]` permissions.
- `run.sh`: use `exec` for socat, quote variables, add a startup log line.

## 0.1

- Original release by fluture.net.
