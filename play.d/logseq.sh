#!/bin/sh

PKGNAME=logseq
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION='Logseq - a platform for knowledge management and collaboration. From the official site'
DESCRIPTION="Logseq - Инструмент для заметок и личного хранения данных, основанный на структуре вики-страниц"
URL="https://github.com/logseq/logseq"

. $(dirname $0)/common.sh

# https://github.com/logseq/logseq/releases/download/0.9.5/Logseq-linux-x64-0.9.5.AppImage
PKGURL=$(eget --list https://github.com/logseq/logseq/releases/ "Logseq-linux-x64-$VERSION.AppImage" | grep -v nightly | head -n1)

install_pack_pkgurl
