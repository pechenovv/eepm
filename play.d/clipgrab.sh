#!/bin/sh

PKGNAME=ClipGrab
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="ClibGrab - A friendly downloader for YouTube and other sites from the official site"
DESCRIPTION="ClibGrab - Удобный загрузчик медиа с YouTube и других сайтов"
URL="https://clipgrab.org/"

. $(dirname $0)/common.sh

if [ "$VERSION" != "*" ] ; then
    PKGURL="https://download.clipgrab.org/ClipGrab-$VERSION-x86_64.AppImage"
else
    PKGURL="$(eget --list --latest https://clipgrab.org/ "ClipGrab-*-x86_64.AppImage")"
fi

install_pkgurl
