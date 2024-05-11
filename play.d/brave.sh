#!/bin/sh

BASEPKGNAME=brave-browser
SUPPORTEDARCHES="x86_64 aarch64"
PRODUCTALT="'' beta nightly"
VERSION="$2"
#DESCRIPTION="Brave browser from the official site"
DESCRIPTION="Brave - Быстрый и безопасный браузер на базе Chromium"

. $(dirname $0)/common.sh

# brave-browser-beta-1.51.105-1.x86_64.rpm
# brave-browser-beta_1.51.105_amd64.deb

# hack to fix short name issue
if [ "$VERSION" = "*" ] ; then
    VERSION="[[:digit:]]*"
    PKGURL=$(eget --list --latest https://github.com/brave/brave-browser/releases $(epm print constructname $PKGNAME "$VERSION"))
else
    OVERSION="$VERSION"
    # rpm packages have a release in their names
    [ "$(epm print info -p)" = "rpm" ] && VERSION="$VERSION-1"
    PKGURL="https://github.com/brave/brave-browser/releases/download/v$OVERSION/$(epm print constructname $PKGNAME "$VERSION")"
fi

# some hack
if [ -z "$PKGURL" ] ; then
    # force use beta if can't get stable version
    if [ "$PKGNAME" = "$BASEPKGNAME" ] ; then
        TOREMOVEPKG=$PKGNAME
        override_pkgname "$BASEPKGNAME-beta"
        PKGURL=$(eget --list --latest https://github.com/brave/brave-browser/releases "$(epm print constructname $PKGNAME "$VERSION")") #"
        [ -n "$PKGURL" ] || fatal "Can't get package URL"

        echo "Force switching from $TOREMOVEPKG to $PKGNAME ... "
        epm installed $TOREMOVEPKG && epm remove $TOREMOVEPKG
    else
        fatal "Can't get package URL for $PKGNAME-$VERSION"
    fi
fi

# we have workaround for their postinstall script, so always repack rpm package
# repack for deb too, they have broken dependency on brave-keyring
# install_pkgurl
epm install --repack "$PKGURL"
