#!/bin/sh

PKGNAME=nekoray
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Qt based cross-platform GUI proxy configuration manager (backend: Xray / sing-box)"
DESCRIPTION="Nekoray - Основанный на библиотеке Qt кросс-платформенный GUI менеджер для конфигурации прокси (на базе ядер: v2ray / sing-box)"
URL="https://github.com/MatsuriDayo/nekoray"
. $(dirname $0)/common.sh

arch=x64
pkgtype=deb

PKGURL=$(eget --list --latest https://github.com/MatsuriDayo/nekoray/releases "nekoray-$VERSION-debian-$arch.$pkgtype")

install_pkgurl

