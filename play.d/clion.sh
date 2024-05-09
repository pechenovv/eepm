#!/bin/sh

PKGNAME=CLion
SUPPORTEDARCHES="x86_64 aarch64"
VERSION="$2"
#DESCRIPTION="CLion - A cross-platform IDE for C and C++ from the official site"
DESCRIPTION="CLion - Среда разработки на языках C и C++"
URL="https://www.jetbrains.com/clion/"

. $(dirname $0)/common-jetbrains.sh

PKGURL="$(get_jetbrains_pkgurl CL cpp)"

install_pkgurl
