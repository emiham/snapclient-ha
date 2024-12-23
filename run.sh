#!/usr/bin/with-contenv bashio


flags_available=("host" "port" "hostID")
flags=()

for flag in ${flags_available[@]}; do
    if bashio::config.exists ${flag}; then
        flags+=("--${flag} $(bashio::config ${flag})")
    fi
done

echo "Starting snapclient with flags: ${flags[*]}"
snapclient ${flags[*]}
