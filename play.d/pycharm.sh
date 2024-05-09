#!/bin/sh

PKGNAME=pycharm-community
SUPPORTEDARCHES="x86_64 aarch64"
VERSION="$2"
#DESCRIPTION="PyCharm CE — The Python IDE for Professional Developers"
DESCRIPTION="PyCharm Community - бесплатная среда разработки для языка Python, обеспечивающая расширенные инструменты для разработки, отладки, тестирования и управления проектами"
URL="https://www.jetbrains.com/ru-ru/pycharm/"

. $(dirname $0)/common-jetbrains.sh

PKGURL="$(get_jetbrains_pkgurl PCC python)"

install_pkgurl
