#!/bin/sh

PKGNAME=sidequest
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION='The SideQuest desktop application'
DESCRIPTION="SideQuest - это платформа для управления и установки приложений на устройства виртуальной реальности Oculus Quest"
URL="https://sidequestvr.com/"

. $(dirname $0)/common.sh

PKGURL=$(eget --list --latest "https://github.com/SideQuestVR/SideQuest/releases/" "SideQuest-$VERSION.tar.xz")

install_pack_pkgurl
