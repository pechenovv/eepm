#!/bin/sh

PKGNAME=jetbrains-toolbox
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="JetBrains Toolbox App from the official site"
DESCRIPTION="JetBrains Toolbox - Приложение, которое позволяет управлять установкой инструментов разработки от JetBrains"
URL="https://www.jetbrains.com/toolbox/"

. $(dirname $0)/common.sh

warn_version_is_not_supported

# https://github.com/nagygergo/jetbrains-toolbox-install/blob/master/jetbrains-toolbox.sh

# https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.25.12627.tar.gz

PKGURL=$(eget -O- "https://data.services.jetbrains.com/products?code=TBA&release.type=eap%2Crc%2Crelease&fields=distributions%2Clink%2Cname%2Creleases" | epm --inscript tool json -b | grep '0,"releases",0,"downloads","linux","link"' | sed -e 's|.*[[:space:]]||' -e 's|"||g' )

install_pack_pkgurl
