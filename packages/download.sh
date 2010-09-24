#!/bin/sh

download() {
    fname=`basename $1`
    if [ ! -e $fname ]; then
        wget "$1"
    fi
}

download http://ftp.kddilabs.jp/infosystems/apache/xmlgraphics/fop/binaries/fop-1.0-bin.tar.gz
download http://jaist.dl.sourceforge.net/sourceforge/docbook/docbook-xsl-1.76.0.tar.bz2
#download http://download.java.net/media/jai/builds/stable/1_1_3-beta/jai-1_1_3-beta-lib-linux-i586.tar.gz

download "http://sourceforge.jp/frs/redir.php?m=iij&f=/vlgothic/48642/VLGothic-20100818.tar.bz2"