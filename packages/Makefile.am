fop_ver = 1.0
docbook_xsl_ver = 1.77.1
vlgothic_ver = 20120928

fop_dir = fop-${fop_ver}
fop_tarball = fop-${fop_ver}-bin.tar.gz
fop_url = http://ftp.kddilabs.jp/infosystems/apache/xmlgraphics/fop/binaries/${fop_tarball}

docbook_xsl_dir = docbook-xsl-${docbook_xsl_ver}
docbook_xsl_tarball = docbook-xsl-${docbook_xsl_ver}.tar.bz2
docbook_xsl_url = "http://jaist.dl.sourceforge.net/sourceforge/docbook/${docbook_xsl_tarball}"

vlgothic_tarball = VLGothic-${vlgothic_ver}.tar.bz2
vlgothic_url = "http://sourceforge.jp/frs/redir.php?m=iij&f=%2Fvlgothic%2F56952%2F${vlgothic_tarball}"
vlgothic_dir = VLGothic

pkgdata_DATA = 

all: ${fop_dir} ${docbook_xsl_dir} ${vlgothic_dir}

${fop_tarball}:
	wget ${fop_url}

${docbook_xsl_tarball}:
	wget ${docbook_xsl_url}

${vlgothic_tarball}:
	wget ${vlgothic_url} -O ${vlgothic_tarball}

${fop_dir}: ${fop_tarball}
	if [ ! -d ${fop_dir} ]; then tar xzf ${fop_tarball}; fi

${docbook_xsl_dir}: ${docbook_xsl_tarball}
	if [ ! -d ${docbook_xsl_dir} ]; then tar xjf ${docbook_xsl_tarball}; fi

${vlgothic_dir}: ${vlgothic_tarball}
	if [ ! -d ${vlgothic_dir} ]; then tar xjf ${vlgothic_tarball}; fi

clean-local:
	-rm -rf ${fop_dir} ${docbook_xsl_dir} ${vlgothic_dir}

install-data-local: all install-fop install-docbook_xsl install-font

install-font:
	install -d $(DESTDIR)$(pkgdatadir)/fonts
	install -m 644 $(vlgothic_dir)/*.ttf $(DESTDIR)$(pkgdatadir)/fonts

install-fop:
	install -d $(DESTDIR)$(pkgdatadir)
	cp -r $(fop_dir) $(DESTDIR)$(pkgdatadir)/fop

install-docbook_xsl:
	install -d $(DESTDIR)$(pkgdatadir)
	cp -r $(docbook_xsl_dir) $(DESTDIR)$(pkgdatadir)/docbook-xsl

EXTRA_DIST = # download.sh
