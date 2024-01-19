#!/usr/bin/env bash

set -euo pipefail

systemctl disable gdm.service
systemctl enable sddm.service
