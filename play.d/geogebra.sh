#!/bin/sh

PKGNAME=geogebra-classic
SUPPORTEDARCHES="x86_64 x86"
VERSION="$2"
#DESCRIPTION="Geogebra 6 from the official site"
DESCRIPTION="Geogebra - Программное обеспечение для математического моделирования и обучения, которое объединяет инструменты геометрии, алгебры, таблиц и графиков"
URL="https://wiki.geogebra.org/en/Reference:GeoGebra_Installation"

. $(dirname $0)/common.sh

arch=$(epm print info --distro-arch)
case $arch in
    x86_64|amd64)
        arch=$arch ;;
    i686|i586|i386)
        arch=i386 ;;
    *)
        fatal "Unsupported arch $arch for $(epm print info -d)"
esac

pkgtype="$(epm print info -p)"

case $pkgtype in
    #deb)
    #    epm install "https://www.geogebra.net/linux/pool/main/g/geogebra-classic/$(epm print constructname $PKGNAME "$VERSION" $arch)"
    #    ;;
    rpm)
        #PKGURL="https://www.geogebra.net/linux/rpm/$arch/$(epm print constructname $PKGNAME "$VERSION" $arch)"
        #http://www.geogebra.net/linux/rpm/x86_64/geogebra-classic-6.0.666.0-202109211234.x86_64.rpm
        PKGURL="ipfs://Qmc6KzDcverDKJptZd6ffJMqyYbKKcuwdHitB6EAEw2C6n?filename=geogebra-classic-6.0.666.0-202109211234.x86_64.rpm"
        ;;
    *)
        fatal "Unsupported $pkgtype"
        ;;
esac

install_pkgurl
