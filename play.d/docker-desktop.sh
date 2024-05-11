#!/bin/sh

PKGNAME=docker-desktop
SUPPORTEDARCHES="x86_64 aarch64"
VERSION="$2"
#DESCRIPTION="Docker Desktop from the official site"
DESCRIPTION="Docker Desktop - Простое приложение для создания, развертывания и управления контейнерами Docker"
URL="https://docs.docker.com/desktop/install/ubuntu/"

. $(dirname $0)/common.sh

warn_version_is_not_supported

pkgtype=$(epm print info -p)
case $pkgtype in
    rpm)
        PKGURL="https://desktop.docker.com/linux/main/amd64/139021/docker-desktop-4.28.0-x86_64.rpm"
        ;;
    *)
        PKGURL="https://desktop.docker.com/linux/main/amd64/139021/docker-desktop-4.28.0-amd64.deb"
        ;;
esac

# TODO: rpm and deb packages has diffent binaries
#if [ "$(epm print info -s)" = "alt" ] ; then
#    PKGURL="https://desktop.docker.com/linux/main/amd64/139021/docker-desktop-4.28.0-amd64.deb"
#fi

install_pkgurl
