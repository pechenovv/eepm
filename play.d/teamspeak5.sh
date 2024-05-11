#!/bin/sh

PKGNAME=teamspeak5
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="TeamSpeak5 Client for Linux from the official site"
DESCRIPTION="TeamSpeak 5 - это программное обеспечение для голосового общения в режиме реального времени через Интернет."
URL="https://www.teamspeak.com/"

. $(dirname $0)/common.sh

warn_version_is_not_supported
# TODO: check latest version here: https://www.teamspeak.com/en/downloads/#ts5client
#[ "$VERSION" = "*" ] && VERSION=5.0.0-beta77
VERSION=5.0.0-beta77

PKGURL="https://files.teamspeak-services.com/pre_releases/client/$VERSION/teamspeak-client.tar.gz"

install_pack_pkgurl "$VERSION"
