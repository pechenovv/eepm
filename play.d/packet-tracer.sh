#!/bin/sh

PKGNAME=PacketTracer
SUPPORTEDARCHES="x86_64"
VERSION="$2"
#DESCRIPTION="Cisco PacketTracer"
DESCRIPTION="Cisco Packet Tracer - это симулятор сетевых устройств, который позволяет моделировать и тестировать сетевые конфигурации и взаимодействия устройств Cisco"
URL="https://www.sysnettechsolutions.com/en/download-cisco-packet-tracer/"

. $(dirname $0)/common.sh

warn_version_is_not_supported

# Closed by Cisco
case $VERSION in
    8.2|8.2.0)
        PKGURL="ipfs://QmU11PAoS7rpFdEnQAH5xW7sLDP4dpua9HbPXVenKwQVoP?filename=CiscoPacketTracer_820_Ubuntu_64bit.deb"
        ;;
    *)
        PKGURL="ipfs://QmWo3kUEnwm9oUTRmgwFFXPMeoPx44CF6kphKnoRMi2m6n?filename=CiscoPacketTracer_821_Ubuntu_64bit.deb"
        ;;
esac

install_pkgurl
