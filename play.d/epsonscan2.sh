#!/bin/sh

PKGNAME=epsonscan2
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Epson Scan 2 - Linux Scanner Driver from the official site"
DESCRIPTION="Epson Scan - Программное обеспечение для сканирования от компании Epson"
URL="https://support.epson.net/linux/en/epsonscan2.php"

. $(dirname $0)/common.sh

warn_version_is_not_supported

pkgtype=$(epm print info -p)
arch="$(epm print info -a)"
case "$pkgtype-$arch" in
    rpm-x86_64)
        PKGURL="https://download.ebz.epson.net/dsc/du/02/DriverDownloadInfo.do?LG2=JA&CN2=US&CTI=171&PRN=Linux%20rpm%2064bit%20package&OSC=LX&DL"
        ;;
    *-x86_64)
        PKGURL="https://download.ebz.epson.net/dsc/du/02/DriverDownloadInfo.do?LG2=JA&CN2=US&CTI=171&PRN=Linux%20deb%2064bit%20package&OSC=LX&DL"
        ;;
    *)
        fatal "$arch arch is not supported"
        ;;
esac

install_pack_pkgurl
