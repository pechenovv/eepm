#!/bin/sh

PKGNAME=rocketchat
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION='Rocket.Chat Linux Desktop Client from the official site'
DESCRIPTION="Rocket.Chat - это открытая платформа для обмена сообщениями и совместной работы, предоставляющая возможности чатов, видеоконференций и интеграции с другими сервисами"
URL="https://github.com/RocketChat/Rocket.Chat.Electron"

. $(dirname $0)/common.sh

arch=amd64
pkgtype=deb

PKGURL=$(eget --list --latest https://github.com/RocketChat/Rocket.Chat.Electron/releases/ "$PKGNAME*$VERSION*$arch.$pkgtype")

install_pkgurl
