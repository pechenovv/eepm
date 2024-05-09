#!/bin/sh

PKGNAME=draw.io
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="diagrams.net desktop"
DESCRIPTION="diagrams.net - Инструмент для создания диаграмм, схем и графических изображений"

. $(dirname $0)/common.sh

arch=amd64
pkgtype=deb

PKGURL=$(eget --list --latest https://github.com/jgraph/drawio-desktop/releases "drawio-$arch-$VERSION.$pkgtype")

install_pkgurl
