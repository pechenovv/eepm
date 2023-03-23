#!/bin/sh

FILENAME="$1"
RETURNTARNAME="$2"

. $(dirname $0)/common.sh

# unpack if something like server64_8_3_22_1851.tar.gz
if echo "$(basename "$FILENAME")" | grep -q "^server.._8_3.*tar\.gz$" ; then
    tdir=$(mktemp -d)
    trap "rm -fr $tdir" EXIT

    # FIXME: erc?
    epm install --skip-installed tar || fatal

    CURDIR="$(pwd)"
    cd $tdir || fatal
    a= tar xvfz $FILENAME || fatal
    FILENAME="$(echo $tdir/setup-full-8.*.run)"
fi

# with run with setup-full.*.run file
echo "$(basename "$FILENAME")" | grep -q "^setup-full-8\.3.*-.*.run$" || fatal "run with file looks like setup-full-8.3.22.1851-x86_64.run"


INSTDIR="/opt/1cv8"
VERSION="$(echo $FILENAME | sed 's|.*-8|8|' | sed 's|-.*||')"
TARNAME="1c83-client-$VERSION.tar"

[ -d "$INSTDIR" ] && fatal "Don't use the script if you have already installed 1C (or just remove $INSTDIR before)"

chmod -v u+x $FILENAME
# По умолчанию устанавливается только "client_full,langs,en,ru,advanced". Все остальные компоненты по умолчанию отключены.
# Задана тихая установка.
$SUDO $(realpath $FILENAME) --mode unattended || fatal "Can't install"

if echo "$FILENAME" | grep -q "x86_64.run$" ; then
    arch="x86_64"
elif echo "$FILENAME" | grep -q "i586.run$"; then
    arch="i586"
else
    fatal "Unsupported arch"
fi

# FIXME
UNINSTFILE=$INSTDIR/$arch/$VERSION/uninstaller-full
[ -x "$UNINSTFILE" ] || fatal "Can't detect executable $UNINSTFILE"

# 8.3.22.1851 -> 8*3*22*1851 (they use - in 1cv8-8.3.22-1851.desktop)
ADDFILES="/usr/share/applications/1cv8*$(echo $VERSION| sed -e 's|\.|*|g').desktop"
# icons
ADDFILES="$ADDFILES /usr/share/pixmaps/1c* /usr/share/app-install/icons/1c* /usr/share/icons/hicolor/*/apps/1c*"

# FIXME: erc?
epm install --skip-installed tar || fatal
a= tar cf $TARNAME $INSTDIR $ADDFILES

$SUDO touch /opt/.placeholder
# Задана тихая деинсталяция.
$SUDO $UNINSTFILE --mode unattended
$SUDO rm /opt/.placeholder

return_tar $TARNAME