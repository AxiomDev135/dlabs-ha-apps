#!/bin/sh
# Reads Home Assistant's app options and starts dashcast as an unprivileged user, as upstream does.
set -eu
OPTS=/data/options.json
export HA_URL="$(jq -r '.ha_url' "$OPTS")"
export HA_TOKEN="$(jq -r '.ha_token' "$OPTS")"
export DASHCAST_KEY="$(jq -r '.dashcast_key' "$OPTS")"
export DASHCAST_WARM_FOR="$(jq -r '.warm_for' "$OPTS")"
export DASHCAST_WARM_COUNT="$(jq -r '.warm_count' "$OPTS")"
export LISTEN=":9555"
export HOME=/tmp
if [ -z "$HA_TOKEN" ] || [ -z "$DASHCAST_KEY" ]; then
  echo "dashcast: set ha_token and dashcast_key in the app's Configuration tab, then start the app." >&2
  exit 1
fi
if [ "${#DASHCAST_KEY}" -lt 16 ]; then
  echo "dashcast: dashcast_key must be at least 16 characters." >&2
  exit 1
fi
echo "dashcast: starting for $HA_URL"
exec setpriv --reuid=65534 --regid=65534 --clear-groups /usr/local/bin/dashcast
