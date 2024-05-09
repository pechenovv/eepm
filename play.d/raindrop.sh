#!/bin/sh

PKGNAME=raindrop
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Raindrop.io from the snapcraft"
DESCRIPTION="Raindrop.io - сервис закладок и организации контента, позволяющий сохранять, организовывать и синхронизировать закладки, изображения, статьи и заметки между устройствами"
URL="https://snapcraft.io/raindrop"

. $(dirname $0)/common.sh

PKGURL="$(snap_get_pkgurl $URL)"
install_pkgurl
