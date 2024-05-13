#!/bin/sh

PKGNAME=obsidian
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION='Obsidian from the official site'
DESCRIPTION="Obsidian - инструмент для организации знаний и заметок"
URL="https://obsidian.md"

. $(dirname $0)/common.sh

arch=amd64
pkgtype=deb

PKGURL=$(eget --list --latest https://github.com/obsidianmd/obsidian-releases/releases/ "$PKGNAME*$VERSION*$arch.$pkgtype")

install_pkgurl
