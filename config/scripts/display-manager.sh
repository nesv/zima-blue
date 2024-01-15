#!/usr/bin/env bash

set -euo pipefail

GDM_ENABLED=$(systemctl is-enabled gdm.service)
if [[ "${GDM_ENABLED}" == "enabled" ]]
then
    echo "Disabling gdm.service"
    systemctl disable gdm.service
fi

SDDM_ENABLED=$(systemctl is-enabled sddm.service)
if [[ "${SDDM_ENABLED}" != "enabled" ]]
then
    echo "Enabling sddm.service"
    systemctl enable sddm.service
fi
