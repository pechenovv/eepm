#!/bin/sh

PKGNAME=slack
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION='Slack from the official site'
DESCRIPTION="Slack - это платформа для коммуникации и совместной работы в команде, предоставляющая чаты, каналы, обмен файлами, а также интеграции с другими сервисами"
URL="https://slack.com"

. $(dirname $0)/common.sh

arch=x86_64
pkgtype=rpm

# https://downloads.slack-edge.com/desktop-releases/linux/x64/4.37.94/slack-4.37.94-0.1.el8.x86_64.rpm
mask="$(epm print constructname $PKGNAME "$VERSION-[.09]*" $arch $pkgtype)"
PKGURL="$(eget --list --latest https://slack.com/downloads/instructions/fedora "$mask")"

install_pkgurl
