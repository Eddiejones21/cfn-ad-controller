#!/bin/bash -e

INSTALL_BASE="/usr/local"

AUTOCONF_ARCHIVE="autoconf-2.71"
AUTOCONF_URL="http://ftpmirror.gnu.org/autoconf/$AUTOCONF_ARCHIVE.tar.gz"

AUTOMAKE_ARCHIVE="automake-1.16.5"
AUTOMAKE_URL="http://ftpmirror.gnu.org/automake/$AUTOMAKE_ARCHIVE.tar.gz"

LIBTOOL_ARCHIVE="libtool-2.4.7"
LIBTOOL_URL="http://ftpmirror.gnu.org/libtool/$LIBTOOL_ARCHIVE.tar.gz"

JQ_ARCHIVE="jq-1.7"
JQ_URL="https://github.com/jqlang/jq/releases/download/$JQ_ARCHIVE/$JQ_ARCHIVE.tar.gz"


# build and install autoconf
curl --location --remote-name --silent "$AUTOCONF_URL"
tar --extract --file "$AUTOCONF_ARCHIVE.tar.gz"

pushd "$AUTOCONF_ARCHIVE"
./configure --prefix="$INSTALL_BASE"
make
sudo make install
popd


# build and install automake
curl --location --remote-name --silent "$AUTOMAKE_URL"
tar --extract --file "$AUTOMAKE_ARCHIVE.tar.gz"

pushd "$AUTOMAKE_ARCHIVE"
./configure --prefix="$INSTALL_BASE"
make
sudo make install
popd


# build and install libtool
curl --location --remote-name --silent "$LIBTOOL_URL"
tar --extract --file "$LIBTOOL_ARCHIVE.tar.gz"

pushd "$LIBTOOL_ARCHIVE"
./configure --prefix="$INSTALL_BASE" --disable-dependency-tracking --enable-ltdl-install
make
sudo make install
popd


# build and install jq
curl --location --remote-name --silent "$JQ_URL"
tar --extract --file "$JQ_ARCHIVE.tar.gz"
pushd "$JQ_ARCHIVE"

./configure --prefix="$INSTALL_BASE" --disable-maintainer-mode --with-oniguruma=builtin
make
sudo make install

popd
jq --version

# done!