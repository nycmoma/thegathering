#!/bin/bash

set -xe

ISODIR=../iso/
cd $ISODIR

mkisofs -o ../thegathering.iso \
     -b isolinux/isolinux.bin \
     -c isolinux/boot.cat \
     -no-emul-boot \
     -boot-load-size 4 \
     -boot-info-table \
     -J -r .

echo "Done!"