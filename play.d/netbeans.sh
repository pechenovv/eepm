#!/bin/sh

PKGNAME=apache-netbeans
SKIPREPACK=1
# noarch package
#SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Apache NetBeans from the official site"
DESCRIPTION="Apache NetBeans - среда разработки с открытым исходным кодом для различных языков программирования, включая Java, JavaScript, PHP, Python и другие"
URL="https://netbeans.apache.org"

. $(dirname $0)/common.sh

if [ "$VERSION" = "*" ] ; then
    VERSION="$(eget --list https://dlcdn.apache.org/netbeans/netbeans-installers/* | tail -n1 | xargs basename)"
fi

pkgtype=$(epm print info -p)
case $pkgtype in
    rpm)
        mask="apache-netbeans-$VERSION-*.noarch.rpm"
        ;;
    *)
        mask="apache-netbeans_${VERSION}-*_all.deb"
        ;;
esac

# epm install "https://dlcdn.apache.org/netbeans/netbeans-installers/$VERSION/$mask"
PKGURL="https://archive.apache.org/dist/netbeans/netbeans-installers/$VERSION/$mask"

install_pkgurl
