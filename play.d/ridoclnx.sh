#!/bin/sh

PKGNAME=ridoclnx
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="RiDocLNX - scanner software for Linux"
DESCRIPTION="RiDocLNX - программа для сканирования документов в PDF и другие форматы, создания многостраничных документов, просмотра PDF/TIFF файлов и добавления водяных знаков"
URL="https://ridoclnx.com/"

. $(dirname $0)/common.sh

warn_version_is_not_supported

pkgtype=$(epm print info -p)
case $pkgtype in
    rpm)
        mask="ridoclnx-1.0-4.4.x86_64.rpm"
        ;;
    *)
        mask="ridoclnx_1.0.4.4.deb"
        ;;
esac

PKGURL="https://ridoclnx.com/download/$mask"

install_pkgurl
