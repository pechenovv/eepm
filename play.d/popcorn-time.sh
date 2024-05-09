#!/bin/sh

PKGNAME=Popcorn-Time
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION='Popcorn Time is a multi-platform, free software BitTorrent client that includes an integrated media player'
DESCRIPTION="Popcorn Time - приложение для потокового просмотра или загрузки фильмов и телешоу через торренты"
URL="https://github.com/popcorn-official/popcorn-desktop"

. $(dirname $0)/common.sh

PKGURL=$(epm tool eget --list --latest https://github.com/popcorn-official/popcorn-desktop/releases "Popcorn-Time-$VERSION-amd64.deb")

# repack always, ever for deb system (bad postinst script)
install_pkgurl --repack

