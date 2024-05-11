#!/bin/sh

PKGNAME=pachca
SUPPORTEDARCHES="x86_64"
VERSION="$2"
DESCRIPTION="Корпоративный мессенджер Пачка"
URL="https://github.com/pachca/pachca-desktop"

. $(dirname $0)/common.sh

arch="$(epm print info --debian-arch)"
file="${PKGNAME}_${VERSION}_$arch.deb"

PKGURL=$(eget --list --latest https://github.com/pachca/pachca-desktop/releases "$file")

install_pkgurl
