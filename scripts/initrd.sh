#!/bin/bash

set -xe

RDFOLDER="../initrd"

#it works on ubuntu 16.04
which genromfs > /dev/null || sudo apt-get install genromfs

compressrd(){
    mkdir -p ../iso/isolinux/
#    cd $RDFOLDER
#    find . | cpio -o -c | gzip -9 > ../newiso/isolinux/initrd.img
    genromfs -d $RDFOLDER -f ../iso/isolinux/initrd.img

}

extract(){
    cd $RDFOLDER
#    zcat ../iso/isolinux/initrd.img | cpio -idmv
    genromfs -d root -f
}

    ### MAIN ###
if [ -d "$RDFOLDER" ]; then
    compressrd
else
    mkdir $RDFOLDER
    echo "ROMFS  extract is not working yet!"
    echo "gunzip and mount it manually"
#    extract $RDFOLDER
fi
