#!/bin/sh

PKGNAME=mobirise
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Mobirise - create awesome mobile-friendly websites!"
DESCRIPTION="Mobirise - Конструктор, который позволяет создавать веб-сайты с помощью перетаскивания элементов интерфейса"
URL="https://mobirise.com"

. $(dirname $0)/common.sh

warn_version_is_not_supported

PKGURL="https://download.mobirise.com/MobiriseSetup.deb"

install_pkgurl
