#!/bin/sh

PKGNAME=duckstation
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="DuckStation is an simulator/emulator of the Sony PlayStation(TM) from the official site"
DESCRIPTION="DuckStation - Эмулятор игровой консоли Sony PlayStation(TM)"
URL="https://github.com/stenzek/duckstation/releases"

. $(dirname $0)/common.sh

warn_version_is_not_supported

file="DuckStation-x64.AppImage"

# TODO: preview, previous-latest
SELECTOR="preview"

PKGURL=$(eget --list https://github.com/stenzek/duckstation/releases $file | grep "/$SELECTOR/")

install_pack_pkgurl
