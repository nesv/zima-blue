# This was copied from https://github.com/ublue-os/framework/blob/main/system_files/just/custom.just

framework-13:
    #!/usr/bin/env bash
    CPU_MODEL=$(grep -m 1 "model name" /proc/cpuinfo)
    if grep -q "13th Gen" <<< $CPU_MODEL
    then
      rpm-ostree kargs --append="module_blacklist=hid_sensor_hub" --append="rd.luks.options=discard"
    elif grep -q "12th Gen" <<< $CPU_MODEL
    then
      rpm-ostree kargs --append="module_blacklist=hid_sensor_hub"
    fi
