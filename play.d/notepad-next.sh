#!/bin/sh

PKGNAME=NotepadNext
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="A cross-platform, reimplementation of Notepad++"
DESCRIPTION="Notepadnext - это текстовый редактор с открытым исходным кодом, вдохновленный функциональностью и интерфейсом популярного редактора Notepad++"
URL="https://github.com/dail8859/NotepadNext"

. $(dirname $0)/common.sh

PKGURL=$(eget --list --latest https://github.com/dail8859/NotepadNext/releases "NotepadNext-v$VERSION-x86_64.AppImage")

install_pkgurl
