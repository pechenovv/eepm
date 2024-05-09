#!/bin/sh

PKGNAME=rememberthemilk
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION='' # 'Remember the milk from the official site'
DESCRIPTION="Remember The Milk - приложение для управления задачами и организации рабочего времени с поддержкой синхронизации между устройствами"
URL="https://www.rememberthemilk.com/"

. $(dirname $0)/common.sh

warn_version_is_not_supported

# https://www.rememberthemilk.com/services/linux/
PKGURL="https://www.rememberthemilk.com/services/linux/download/?os=ubuntu_64&subtype=1.3.11"

install_pkgurl
