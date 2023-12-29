#!/bin/bash -xe

INSTALL_BASE="/usr/local"

AUTOCONF_ARCHIVE="autoconf-2.71"
AUTOCONF_URL="http://ftpmirror.gnu.org/autoconf/$AUTOCONF_ARCHIVE.tar.gz"

AUTOMAKE_ARCHIVE="automake-1.16.5"
AUTOMAKE_URL="http://ftpmirror.gnu.org/automake/$AUTOMAKE_ARCHIVE.tar.gz"

LIBTOOL_ARCHIVE="libtool-2.4.7"
LIBTOOL_URL="http://ftpmirror.gnu.org/libtool/$LIBTOOL_ARCHIVE.tar.gz"

JQ_ARCHIVE="jq-1.7"
JQ_URL="https://github.com/jqlang/jq/releases/download/$JQ_ARCHIVE/$JQ_ARCHIVE.tar.gz"


# build and install autoco