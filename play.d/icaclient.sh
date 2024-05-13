#!/bin/sh

PKGNAME=ICAClient
SUPPORTEDARCHES="x86_64"
#DESCRIPTION="Citrix Workspace app from the official site"
DESCRIPTION="Citrix Workspace - это клиентское приложение, используемое для доступа к виртуальным рабочим столам и приложениям"
URL="https://www.citrix.com/downloads/workspace-app/linux/workspace-app-for-linux-latest.html"

. $(dirname $0)/common.sh

warn_version_is_not_supported

VERSION=24.2.0.65

pkgtype="$(epm print info -p)"
case "$pkgtype" in
    rpm)
        IPFSHASH=QmNtSr1HzmbHz3Yhx9JwFeM8wYEyA3yYR6YT9QUFa1qsAw
        PKGURL="https://downloads.citrix.com/22629/ICAClient-rhel-${VERSION}-0.x86_64.rpm"
        ;;
    deb)
        IPFSHASH=QmanCSx8RSpB3fu6YKyrhbFfdzXbXSEWqrfmPouaWC1ykx
        PKGURL="https://downloads.citrix.com/22629/icaclient_${VERSION}_amd64.deb"
        ;;
    *)
        IPFSHASH=QmanCSx8RSpB3fu6YKyrhbFfdzXbXSEWqrfmPouaWC1ykx
        PKGURL="https://downloads.citrix.com/22629/icaclient_${VERSION}_amd64.deb"
        ;;
esac

# use temp dir
PKGDIR="$(mktemp -d)"
trap "rm -fr $PKGDIR" EXIT
cd $PKGDIR || fatal


if ! eget --check-site $PKGURL ; then
    echo "It is possible you are blocked from USA, trying get from IPFS ..."
    pkgname=$(basename $PKGURL)
    PKGURL="ipfs://$IPFSHASH?filename=$pkgname"
fi

install_pkgurl
