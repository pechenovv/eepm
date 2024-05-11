#!/bin/sh

PKGNAME=tamtam-app
SUPPORTEDARCHES="x86_64 x86"
VERSION="$2"
#DESCRIPTION="TamTam messenger from the official site"
DESCRIPTION="ТамТам - приложение для обмена сообщениями, фото и видео, а также для чтения новостей и общения в сообществах"

. $(dirname $0)/common.sh

warn_version_is_not_supported

arch="$(epm print info --debian-arch)"
case "$arch" in
    amd64)
        ;;
    i386)
        arch=i686
        ;;
    *)
        fatal "Debian $arch arch is not supported"
        ;;
esac

PKGURL="https://download.tamtam.chat/latest/TamTam-$arch.deb"

install_pkgurl
