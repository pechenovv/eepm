#!/bin/sh

PKGNAME=ipera-client
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="FlyView Client from the official site"
DESCRIPTION="FlyView Client - приложение для просмотра трехмерных моделей и облаков точек в формате 3D"

. $(dirname $0)/common.sh

warn_version_is_not_supported

#PKG="$(eget --list --latest https://flyviewvms.ru/downloads/ "flyview-client*linux64.deb")"
PKGURL="https://flyviewvms.ru/distro/flyview-client.deb"

install_pkgurl
