#!/bin/sh

PKGNAME=singularityapp
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="SingularityApp from the official site"
DESCRIPTION="SingularityApp - веб-сервис и приложение-планировщик для управления задачами"
URL="https://snapcraft.io/singularityapp"

. $(dirname $0)/common.sh

PKGURL="$(snap_get_pkgurl $URL)"
install_pkgurl
