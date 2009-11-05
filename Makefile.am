SUBDIRS	= packages common css default doc images template xsl

pkgdata_DATA = README INSTALL NEWS AUTHORS COPYING ChangeLog

install-data-local:
	install -d $(DESTDIR)$(pkgdatadir)/default
	install -m 644 default/Makefile default/*.xsl $(DESTDIR)$(pkgdatadir)/default

	install -d $(DESTDIR)$(pkgdatadir)/common
	install -m 644 common/Makefile* $(DESTDIR)$(pkgdatadir)/common

	install -d $(DESTDIR)$(pkgdatadir)/css
	install -m 644 css/*.css $(DESTDIR)$(pkgdatadir)/css

	install -d $(DESTDIR)$(pkgdatadir)/images
	install -m 644 images/*.png $(DESTDIR)$(pkgdatadir)/images

	install -m 644 pdf/userconfig.xml $(DESTDIR)$(pkgdatadir)/fop/conf

	install -d $(DESTDIR)$(pkgdatadir)/doc
	install -m 644 doc/*.xml doc/*.css doc/*.html $(DESTDIR)$(pkgdatadir)/doc

rpm: dist
	rpmbuild --ta $(PACKAGE)-$(VERSION).tar.gz
