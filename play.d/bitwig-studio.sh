#!/bin/sh

PKGNAME=bitwig-studio
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Bitwig Studio from the official site"
DESCRIPTION="Bitwig Studio - Программное обеспечение для создания музыки и звукозаписи"
URL="https://www.bitwig.com"

. $(dirname $0)/common.sh

if [ "$VERSION" = "*" ] ; then
    PKGURL="https://www.bitwig.com/dl/?id=533&os=installer_linux"
else
    PKGURL="https://downloads.bitwig.com/$VERSION/bitwig-studio-$VERSION.deb"
fi

install_pkgurl
