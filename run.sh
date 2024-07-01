#!/usr/bin/with-contenv bashio

echo "Starting snapclient..."

snapclient -h $(bashio::config 'host') -p $(bashio::config 'port')
