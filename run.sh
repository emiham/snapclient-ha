#!/usr/bin/with-contenv bashio


flags_available=("host" "port" "hostID")
flags=()

for i in ${!flags_available[@]}; do
    if bashio::config.exists ${flags_available[$i]}; then
        flags+=("--${flags_available[$i]} $(bashio::config ${flags_available[$i]})")
    fi
done

echo "Starting snapclient with flags: ${flags[@]+"${flags[@]}"}"
snapclient ${flags[@]+"${flags[@]}"}
