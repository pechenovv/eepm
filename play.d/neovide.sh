#!/bin/sh

PKGNAME=neovide
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="No Nonsense Neovim Client in Rust from the official site"
DESCRIPTION="Neovide - графический клиент для Neovim, популярного текстового редактора с поддержкой расширений"
URL="https://neovide.dev/"

. $(dirname $0)/common.sh

PKGURL=$(eget --list --latest https://github.com/neovide/neovide/releases "$PKGNAME.AppImage")

install_pkgurl

