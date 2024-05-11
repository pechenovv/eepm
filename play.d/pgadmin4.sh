#!/bin/sh

PKGNAME=pgadmin4-desktop
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION=''
DESCRIPTION="pgAdmin 4 - это графический клиент для управления базами данных PostgreSQL"

if [ "$1" = "--remove" ] ; then
    epm remove pgadmin4-server pgadmin4-desktop
    exit
fi

. $(dirname $0)/common.sh

[ "$VERSION" = "*" ] || VERSION="$VERSION-1"

# TODO:
#   File "/opt/pgadmin4/web/pgAdmin4.py", line 44, in <module>
#    from eventlet import hubs
#ModuleNotFoundError: No module named 'eventlet'

BASEURL=https://ftp.postgresql.org/pub/pgadmin/pgadmin4/yum/redhat/rhel-8Workstation-x86_64
#BASEURL=https://ftp.postgresql.org/pub/pgadmin/pgadmin4/yum/fedora/fedora-38Workstation-x86_64

pkgarch='x86_64'
PKGURL="$BASEURL/pgadmin4-server-$VERSION.*.$pkgarch.rpm $BASEURL/pgadmin4-desktop-$VERSION.*.$pkgarch.rpm"

install_pkgurl
