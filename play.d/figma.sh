#!/bin/sh

PKGNAME=figma-linux
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Figma-linux - an unofficial Electron-based Figma desktop app for Linux"
DESCRIPTION="Неофициальный клиент Figma для Linux на базе Electron"
URL="https://github.com/Figma-Linux/figma-linux"

. $(dirname $0)/common.sh

[ "$VERSION" = "*" ] && VERSION="[0-9]*"

pkgtype="$(epm print info -p)"

# https://github.com/Figma-Linux/figma-linux/releases/download/v0.10.0/figma-linux_0.10.0_linux_x86_64.rpm
# https://github.com/Figma-Linux/figma-linux/releases/download/v0.10.0/figma-linux_0.10.0_linux_amd64.deb

case "$pkgtype" in
    rpm)
        file="${PKGNAME}_${VERSION}_linux_x86_64.$pkgtype"
        ;;
    *)
        pkgtype="deb"
        file="${PKGNAME}_${VERSION}_linux_amd64.$pkgtype"
        ;;
esac

PKGURL=$(eget --list --latest https://github.com/Figma-Linux/figma-linux/releases "$file")

install_pkgurl

