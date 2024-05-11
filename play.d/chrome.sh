#!/bin/sh

PKGNAME=google-chrome-stable
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="The popular and trusted web browser by Google (Stable Channel) from the official site"
DESCRIPTION="Популярный браузер от компании Google"
URL="https://www.google.com/chrome/"

. $(dirname $0)/common.sh

arch=amd64
pkgtype=deb
_channel="stable"

warn_version_is_not_supported

if [ "$VERSION" = "*" ] ; then
    PKGURL="https://dl.google.com/linux/direct/google-chrome-stable_current_$arch.$pkgtype"
else
    VERSION="$VERSION-1"
    PKGURL="https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-${_channel}/google-chrome-${_channel}_${VERSION}_$arch.$pkgtype"
fi

install_pkgurl
