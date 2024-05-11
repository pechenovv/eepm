#!/bin/sh

PKGNAME=steam-launcher
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION='Steam Launcher (from the repository if the package is there, or from the official site)'
DESCRIPTION="Steam Launcher - это программа, которая запускает клиент Steam, позволяя пользователям получать доступ к играм, обновлениям, друзьям и другим функциям платформы Steam (При наличии будет предоставлен пакет из репозитория)"
URL="https://store.steampowered.com/about"

[ "$(epm print info -s)" = "alt" ] && REPOPKGNAME=i586-steam || REPOPKGNAME=steam

epm installed $REPOPKGNAME && PKGNAME=$REPOPKGNAME

. $(dirname $0)/common.sh

warn_version_is_not_supported

if [ "$(epm print info -s)" = "alt" ] ; then
    epm install $REPOPKGNAME || exit
    epm play i586-fix
    exit
fi

if epm status --installable $REPOPKGNAME ; then
    epm install $REPOPKGNAME || exit
else
    PKGURL="https://cdn.akamai.steamstatic.com/client/installer/steam.deb"
    epm install $PKGURL || exit

    if [ "$(epm print info -s)" = "alt" ] ; then
        # https://bugzilla.altlinux.org/46110
        epm install --skip-installed lsof i586-libcurl
    fi

fi

epm play i586-fix

