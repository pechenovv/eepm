#!/bin/sh

PKGNAME=epson-printer-utility
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Epson Printer Utility - Linux Epson Printer Utility from the official site"
DESCRIPTION="Epson Printer Utility - Программа для управления принтерами Epson, предоставляющая инструменты настройки, обслуживания и диагностики"
URL="http://support.epson.net/linux/Printer/LSB_distribution_pages/en/utility.php"

. $(dirname $0)/common.sh

warn_version_is_not_supported

pkgtype=$(epm print info -p)
arch="$(epm print info -a)"
case "$pkgtype-$arch" in
    rpm-x86_64)
        PKGURL="https://download.ebz.epson.net/dsc/du/02/DriverDownloadInfo.do?LG2=JA&CN2=US&CTI=177&PRN=Linux%20rpm%2064bit%20package&OSC=LX&DL"
        ;;
    *-x86_64)
        PKGURL="https://download.ebz.epson.net/dsc/du/02/DriverDownloadInfo.do?LG2=JA&CN2=US&CTI=177&PRN=Linux%20deb%2064bit%20package&OSC=LX&DL"
        ;;
    *)
        fatal "$arch arch is not supported"
        ;;
esac

install_pkgurl

echo
echo "Note: run
# serv ecbd on
to enable needed epson-printer-utility system service
"
