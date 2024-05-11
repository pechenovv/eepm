#!/bin/sh

PKGNAME=meridius
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Meridius — music player for VK"
DESCRIPTION="Meridius - Музыкальный плеер для VK"
URL="https://github.com/PurpleHorrorRus/Meridius"

. $(dirname $0)/common.sh

if [ "$VERSION" != "*" ] ; then
    PKGURL="https://github.com/PurpleHorrorRus/Meridius/releases/download/v$VERSION/meridius-$VERSION.tar.gz"
else
    PKGURL=$(eget --list --latest https://github.com/PurpleHorrorRus/Meridius/releases "$PKGNAME-*.tar.gz")
fi

install_pack_pkgurl
