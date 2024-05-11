#!/bin/sh

PKGNAME=t1client-standalone
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="DSSL Trassir Client"
DESCRIPTION="DSSL Trassir Client - клиент для системы видеонаблюдения Trassir, позволяющий просматривать видео с камер, управлять настройками и архивом"
URL="https://confluence.trassir.com/pages/viewpage.action?pageId=36865118"

. $(dirname $0)/common.sh

warn_version_is_not_supported

case "$(epm print info -p)" in
  rpm)
      PKGURL="ipfs://QmarAX2ATvXaqFdar6t5ZYTi9yuVjmAKyS8AvBCJDWC92Z?filename=t1client-standalone-0.1.4.0.13209.rpm"
      ;;
  *)
      PKGURL="ipfs://QmYU1SVJXdPDYxYzoPWSJ39Xmrx16YbTDztyM5nMCAiDZx?filename=t1client-standalone-4.5.5.0-1202308-Release.deb"
      ;;
esac

case "$(epm print info -s)" in
  alt)
      PKGURL="ipfs://QmYU1SVJXdPDYxYzoPWSJ39Xmrx16YbTDztyM5nMCAiDZx?filename=t1client-standalone-4.5.5.0-1202308-Release.deb"
      ;;
esac

install_pkgurl
