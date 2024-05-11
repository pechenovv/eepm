#!/bin/sh

PKGNAME=synology-drive
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION='Synology Drive Client from the official site'
DESCRIPTION="Synology Drive - это приложение для синхронизации и обмена файлами, разработанное для использования с устройствами хранения данных Synology NAS"
URL="https://www.synology.com/"

. $(dirname $0)/common.sh

is_stdcpp_enough "11.0" || VERSION="3.2.1"

# it is so strange, package name contains 3.x.x, but package version is 7.x.x
[ "$VERSION" = "*" ] && VERSION="[0-9]*" || VERSION="$(echo "$VERSION" | sed -e 's|^7|3|')"


urldir="$(eget --list https://archive.synology.com/download/Utility/SynologyDriveClient "/$VERSION-*" | head -n1)"
[ -n "$urldir" ] || fatal "Can't get dir for $VERSION version on https://archive.synology.com/download/Utility/SynologyDriveClient"

PKGURL="$urldir/$PKGNAME-*.x86_64.deb"

install_pkgurl
