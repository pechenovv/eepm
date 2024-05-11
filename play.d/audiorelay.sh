#!/bin/sh

PKGNAME=audiorelay
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="AudioRelay from the official site"
DESCRIPTION="AudioRelay - Утилита позволяющая передавать звук с вашего компьютера на мобильное устройство и наоборот"
URL="https://audiorelay.net"

. $(dirname $0)/common.sh

warn_version_is_not_supported

VERSION="0.27.5"

# https://audiorelay.net/downloads
# TODO: https://api.audiorelay.net/downloads
PKGURL="https://dl.audiorelay.net/setups/linux/audiorelay-$VERSION.deb"

install_pkgurl
