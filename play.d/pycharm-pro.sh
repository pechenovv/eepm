#!/bin/sh

PKGNAME=pycharm-professional
SUPPORTEDARCHES="x86_64 aarch64"
VERSION="$2"
#DESCRIPTION="PyCharm Professional — The Python IDE for Professional Developers (Trial)"
DESCRIPTION="PyCharm Professional - расширенная версия IDE для Python с интеграцией веб-разработки, баз данных и научных инструментов"
URL="https://www.jetbrains.com/ru-ru/pycharm/"

. $(dirname $0)/common-jetbrains.sh

PKGURL="$(get_jetbrains_pkgurl PCP python)"

install_pkgurl
