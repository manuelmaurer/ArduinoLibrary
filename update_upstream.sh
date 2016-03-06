#!/bin/bash

set -e

UPDIR=./upstream/
ARDU=https://github.com/arduino/Arduino
UPINFO=./UPSTREAM.INFO

SRCDIR=${UPDIR}hardware/arduino/avr/
TARDIR=./src/

PATCH=./upstream.patch

if [ ! -d "$UPDIR" ]; then
	echo "Cloning arduino sources from web"
	git clone $ARDU $UPDIR
fi

echo "Resetting sources"

cd $UPDIR
git fetch --all
git reset --hard origin/master
REV=`git rev-parse HEAD`
cd ../

echo "We are on hash $REV"
echo "Upstream information:" > $UPINFO
echo "Source: ${ARDU}" >> $UPINFO
echo "Hash: ${REV}" >> $UPINFO

echo "Copy data to local"
 
rm -rf ${TARDIR}*
cp -rf ${SRCDIR}* ${TARDIR}

if [ -f $PATCH ]; then
	echo "Patching sources"
	patch -p0 -E -t -i $PATCH
fi
