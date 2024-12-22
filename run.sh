#!/usr/bin/with-contenv bashio

echo "Starting snapclient..."

hostID=""
if bashio::config.exists 'hostID'; then
    hostID="--hostID $(bashio::config 'hostID')"
fi

snapclient -h $(bashio::config 'host') -p $(bashio::config 'port') $hostID
