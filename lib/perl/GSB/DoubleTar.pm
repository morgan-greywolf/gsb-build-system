package GSB::DoubleTar;
require Exporter;

use strict;
use warnings;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(%double_tarballs_url);
our @EXPORT_OK = qw();
our $VERSION   = 0.03;



# Strangely named source tarballs can be found here.
our %double_tarballs_url =
  (
   'boost'            => {
             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/boost/',
             'ver' => '1_34_1',
			 'dir' => 'libraries/boost',
			 'tar' => 'boost_1_34_1.tar.bz2',
             'var' => 'VERSION',
                        },
   'mozilla-firefox'  => {
			 'ver' => '2.0.0.11',
			 'dir' => 'applications/mozilla-firefox',
			 'url' => 'http://releases.mozilla.org/pub/mozilla.org/firefox/releases/2.0.0.11/source/',
			 'tar' => 'firefox-2.0.0.11-source.tar.bz2',
			 'var' => 'VERSION',
			 },
   'nss'               => {
			 'ver' => '3.11.7',
			 'dir' => 'libraries/nss',
			 'url' => 'http://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_11_7_RTM/src/',
			 'tar' => 'nss-3.11.7-with-nspr-4.6.7.tar.gz',
			 'var' => 'VERSION',
				  },
   'Gtk2-perl'               => {
			 'ver' => '1.162',
			 'dir' => 'extras/gtk2-perl',
			 'url' => 'http://search.cpan.org/CPAN/authors/id/T/TS/TSCH/',
			 'tar' => 'Gtk2-1.162.tar.gz',
			 'var' => 'VERSION',
				  },
   'Glib-perl'               => {
			 'ver' => '1.162',
			 'dir' => 'extras/glib-perl',
			 'url' => 'http://search.cpan.org/CPAN/authors/id/T/TS/TSCH/',
			 'tar' => 'Glib-1.162.tar.gz',
			 'var' => 'VERSION',
				  },
   'Gnome2-Gconf-perl'               => {
			 'ver' => '1.044',
			 'dir' => 'extras/gnome2-perl',
			 'url' => 'http://search.cpan.org/CPAN/authors/id/T/TS/TSCH/',
			 'tar' => 'Gnome2-GConf-1.044.tar.gz',
			 'var' => 'VERSION',
				  },
   'Gnome2-perl'               => {
			 'ver' => '1.042',
			 'dir' => 'extras/gnome2-perl',
			 'url' => 'http://search.cpan.org/CPAN/authors/id/T/TS/TSCH/',
			 'tar' => 'Gnome2-1.042.tar.gz',
			 'var' => 'VERSION',
				  },
   'Gnome2-VFS-perl'               => {
			 'ver' => '1.080',
			 'dir' => 'extras/gnome2-perl',
			 'url' => 'http://search.cpan.org/CPAN/authors/id/T/TS/TSCH/',
			 'tar' => 'Gnome2-VFS-1.080.tar.gz',
			 'var' => 'VERSION',
				  },
   'Gnome2-Canvas'               => {
			 'ver' => '1.002',
			 'dir' => 'extras/gnome2-perl',
			 'url' => 'http://search.cpan.org/CPAN/authors/id/T/TS/TSCH/',
			 'tar' => 'Gnome2-Canvas-1.002.tar.gz',
			 'var' => 'VERSION',
				  },
   'ExtUtilsDepends-perl'               => {
			 'ver' => '0.205',
			 'dir' => 'extras/glib-perl',
			 'url' => 'http://search.cpan.org/CPAN/authors/id/R/RM/RMCFARLA/Gtk2-Perl/',
			 'tar' => 'ExtUtils-Depends-0.205.tar.gz',
			 'var' => 'VERSION',
				  },
   'ExtUtilsPkgConfig-perl'               => {
			 'ver' => '1.08',
			 'dir' => 'extras/glib-perl',
			 'url' => 'http://search.cpan.org/CPAN/authors/id/M/ML/MLEHMANN/',
			 'tar' => 'ExtUtils-PkgConfig-1.08.tar.gz',
			 'var' => 'VERSION',
				  },
   'Cairo-perl'               => {
			 'ver' => '1.044',
			 'dir' => 'extras/gtk2-perl',
			 'url' => 'http://search.cpan.org/CPAN/authors/id/T/TS/TSCH/',
			 'tar' => 'Cairo-1.044.tar.gz',
			 'var' => 'VERSION',
				  },
   'openldap-client'     => {
			 'ver' => '2.3.38',
			 'dir' => 'libraries/openldap-client',
			 'url' => 'ftp://ftp.openldap.org/pub/OpenLDAP/openldap-release/',
			 'tar' => 'openldap-2.3.38.tgz',
			 'var' => 'VERSION',
				  },
   'sqlite3'             => {
			 'ver' => '3.5.2',
			 'dir' => 'libraries/sqlite3',
			 'url' => 'http://www.sqlite.org/',
			 'tar' => 'sqlite-3.5.2.tar.gz',
			 'var' => 'VERSION',
				  },
   'libgc'             => {
			 'ver' => '7.0',
			 'dir' => 'libraries/libgc',
			 'url' => 'http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/',
			 'tar' => 'gc-7.0.tar.gz',
			 'var' => 'VERSION',
				  },
   'hemidal-libraries'         => {
			 'ver' => '1.0.1',
			 'dir' => 'libraries/heimdal-libraries',
			 'url' => 'ftp://ftp.sunet.se/pub/unix/admin/mirror-pdc/heimdal/src/',
			 'tar' => 'heimdal-1.0.1.tar.gz',
			 'var' => 'VERSION',
				  },
   'ode'            => {
             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/opende',
             'ver' => '0.9',
			 'dir' => 'office/ode',
			 'tar' => 'ode-src-0.9.zip',
             'var' => 'VERSION',
                        },
   'simdock'    => {
             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/simdock',
             'ver' => '1.2',
			 'dir' => 'extras/simdock',
			 'tar' => 'simdock_1.2.tar.gz',
             'var' => 'VERSION',
                  },
  );
