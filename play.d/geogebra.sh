#!/bin/sh

PKGNAME=geogebra-classic
DESCRIPTION="Geogebra 6 from the official site"

. $(dirname $0)/common.sh

arch=$($DISTRVENDOR --distro-arch)
case $arch in
    x86_64|amd64)
        arch=$arch ;;
    i686|i586|i386)
        arch=i386 ;;
    *)
        fatal "Unsupported arch $arch for $($DISTRVENDOR -d)"
esac

pkgtype="$($DISTRVENDOR -p)"

repack=''
[ "$($DISTRVENDOR -d)" = "ALTLinux" ] && repack='--repack'

case $pkgtype in
    deb)
        epm install "http://www.geogebra.net/linux/pool/main/g/geogebra-classic/(epm print constructname $PKGNAME "*")"
        ;;
    rpm)
        epm $repack install "http://www.geogebra.net/linux/rpm/$arch/$(epm print constructname $PKGNAME "*")"
        ;;
    *)
        fatal "Unsupported $pkgtype"
        ;;
esac
