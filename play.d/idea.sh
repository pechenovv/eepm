#!/bin/sh

PKGNAME=ideaIU
SUPPORTEDARCHES="x86_64 aarch64"
VERSION="$2"
#DESCRIPTION="IntelliJ IDEA Ultimate - The Leading Java and Kotlin IDE from the official site"
DESCRIPTION="IntelliJ IDEA Ultimate - расширенная версия среды разработки IntelliJ IDEA"
URL="https://www.jetbrains.com/idea/"

. $(dirname $0)/common-jetbrains.sh

PKGURL="$(get_jetbrains_pkgurl IIU idea)"

install_pkgurl

