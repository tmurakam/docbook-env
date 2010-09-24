fop = fop-1.0
docbook_xsl = docbook-xsl-1.76.0
vlgothic = VLGothic

pkgdata_DATA = 

all: download $(fop) $(docbook_xsl) $(vlgothic)

download:
	./download.sh

$(fop):
	tar xzf $(fop)-bin.tar.gz

$(docbook_xsl):
	tar xjf $(docbook_xsl).tar.bz2

$(vlgothic):
	tar xjf $(vlgothic)-20100818.tar.bz2

clean-local:
	-rm -rf $(fop) $(docbook_xsl) $(vlgothic)

install-data-local: install-fop install-docbook_xsl install-font

install-font:
	install -d $(DESTDIR)$(pkgdatadir)/fonts
	install -m 644 $(vlgothic)/*.ttf $(DESTDIR)$(pkgdatadir)/fonts

install-fop:
	install -d $(DESTDIR)$(pkgdatadir)
	cp -r $(fop) $(DESTDIR)$(pkgdatadir)/fop

install-docbook_xsl:
	install -d $(DESTDIR)$(pkgdatadir)
	cp -r $(docbook_xsl) $(DESTDIR)$(pkgdatadir)/docbook-xsl

EXTRA_DIST = download.sh
