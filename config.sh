#!/bin/bash

# Device
export FOX_BRANCH="fox_12.1"
export DT_LINK="https://github.com/Magendanz/android_device_samsung_gta8wifi.git -b fox_12.1"

export DEVICE="gta8wifi"
export OEM="samsung"

# Build Target
## "recoveryimage" - for A-Only Devices without using Vendor Boot
## "bootimage" - for A/B devices without recovery partition (and without vendor boot)
## "vendorbootimage" - for devices Using vendor boot for the recovery ramdisk (Usually for devices shipped with Android 12 or higher)
export TARGET="recoveryimage"

export OUTPUT="OrangeFox*.zip"

# Additional Dependencies (eg: Kernel Source)
# Format: "repo dest"
DEPS=(
    "https://github.com/OrangeFoxRecovery/Avatar.git misc"
    "https://github.com/Magendanz/android_device_samsung_gta8wifi/blob/5981f01ae2dfc3339f4739cdfc224797ab3e619b/prebuilt/kernel Kernel"
)

# Extra Command
export EXTRA_CMD="export OF_MAINTAINER=Sushrut1101"

# Magisk
## Use the Latest Release of Magisk for the OrangeFox addon
export OF_USE_LATEST_MAGISK=true

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
