#!/bin/sh

PKGNAME=hansoft
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Hansoft client from the official site"
DESCRIPTION="Hansoft client - Программное обеспечение для управления проектами и планирования задач для организации работы команд"
URL="https://www.perforce.com/products/hansoft"

. $(dirname $0)/common.sh

# TODO
[ "$VERSION" = "*" ] && VERSION="11.1028"

VERSION="${VERSION/\./_}"

PKGURL="https://cache.hansoft.com/hansoft_${VERSION}_x64.deb"

install_pkgurl
