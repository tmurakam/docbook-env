SUBDIRS	= packages common css default images template xsl sample

pkgdata_DATA = README INSTALL NEWS AUTHORS COPYING ChangeLog

EXTRA_DIST = docbook-env.spec autogen.sh

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

#	install -d $(DESTDIR)$(pkgdatadir)/sample
#	install -m 644 sample/Makefile.doc sample/*.xml sample/*.css sample/*.xsl $(DESTDIR)$(pkgdatadir)/sample

rpm: dist
	rpmbuild --ta $(PACKAGE)-$(VERSION).tar.gz
