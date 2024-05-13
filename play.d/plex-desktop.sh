#!/bin/sh

PKGNAME=plex-desktop
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Plex Desktop from the official site"
DESCRIPTION="Plex Desktop - приложение для просмотра и организации медиа-контента на компьютере с сервера Plex"
URL="https://www.plex.tv/"

. $(dirname $0)/common.sh

PKGURL="$(snap_get_pkgurl https://snapcraft.io/plex-desktop)"

install_pkgurl
