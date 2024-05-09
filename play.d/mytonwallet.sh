#!/bin/sh

PKGNAME=MyTonWallet
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="MyTonWallet from the official site"
DESCRIPTION="MyTonWallet - Многофункциональный кошелек для сети TON, поддерживающий jettons, NFT, TON DNS, TON Sites, TON Proxy и TON Magic"
URL="https://mytonwallet.app/"

. $(dirname $0)/common.sh

PKGURL=$(eget --list --latest https://github.com/mytonwalletorg/mytonwallet/releases "MyTonWallet-x86_64.AppImage")

install_pkgurl
