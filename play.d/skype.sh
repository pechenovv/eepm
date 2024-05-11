#!/bin/sh

PKGNAME=skypeforlinux
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Skype for Linux - Stable/Release Version from the official site"
DESCRIPTION="Skype for Linux - популярное приложение для обмена сообщениями, голосовых и видеозвонков через интернет"
URL="https://skype.com"

. $(dirname $0)/common.sh

#arch=$(epm print info --distro-arch)
#pkgtype=$(epm print info -p)
pkgtype=deb

# https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=skypeforlinux-stable-bin
PKGURL="https://repo.skype.com/deb/pool/main/s/${PKGNAME}/${PKGNAME}_${VERSION}_amd64.deb"

install_pkgurl
