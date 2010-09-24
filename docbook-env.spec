%define name	docbook-env
%define version	1.0.6
%define release	1

%define	prefix	/usr
%define pkgdatadir %{prefix}/share/docbook-env/

Name: 		%{name}
Version: 	%{version}
Release: 	%{release}
License: 	GPL
Group: 		Applications/Publishing
Source: 	%{name}-%{version}.tar.gz
Summary: 	DocBook environments.
#Vendor: 	
Packager: 	Takuya Murakami <tmurakam@mtd.biglobe.ne.jp>
BuildRoot: 	%{_tmppath}/%{name}-%{version}-root
Requires:	docbook-dtds docbook-utils libxslt

%description
DocBook environments.
Includes DocBook XSL stylesheets, Apache FOP, JAI.
Also, you need Java, Windows TrueType fonts.

%prep

%setup
#./autogen.sh
./configure --prefix=%{prefix}

%build
make

%install
[ $RPM_BUILD_ROOT != / ] && rm -rf $RPM_BUILD_ROOT
make DESTDIR=$RPM_BUILD_ROOT install

%post

%clean

%files
%defattr(-,root,root)
%{pkgdatadir}/*

%config %{pkgdatadir}/fop/conf/userconfig.xml

%changelog
