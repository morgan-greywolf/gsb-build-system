package GSB::Compiz;
require Exporter;

use warnings;
use strict;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(
                    %compiz
                   );
our @EXPORT_OK = qw();
our $VERSION   = 0.03;


################################################################################
# Config Options for COMPIZ
#

# src/compiz
our %compiz =
  (
   'fuse'              => {
                 'ver' => '2.7.1',
                 'url' => 'http://downloads.sourceforge.net/fuse',
                 'src' => 'tar.gz',
                            },
   'compiz'              => {
                 'ver' => '0.6.2',
                 'url' => 'http://releases.compiz-fusion.org/0.6.0/compiz',
                 'src' => 'tar.bz2',
                            },
   'ccsm'              => {
                 'ver' => '0.6.0',
                 'url' => 'http://releases.compiz-fusion.org/0.6.0',
                 'src' => 'tar.bz2',
                            },
   'compiz-bcop'              => {
                 'ver' => '0.6.0',
                 'url' => 'http://releases.compiz-fusion.org/0.6.0',
                 'src' => 'tar.bz2',
                            },
   'compiz-fusion-plugins-main'              => {
                 'ver' => '0.6.0',
                 'url' => 'http://releases.compiz-fusion.org/0.6.0',
                 'src' => 'tar.bz2',
                            },
   'compiz-fusion-plugins-extra'              => {
                 'ver' => '0.6.0',
                 'url' => 'http://releases.compiz-fusion.org/0.6.0',
                 'src' => 'tar.bz2',
                            },
   'compiz-manager'              => {
                 'ver' => '0.6.0',
                 'url' => 'http://releases.compiz-fusion.org/0.6.0',
                 'src' => 'tar.bz2',
                            },
   'compizconfig-backend-gconf'              => {
                 'ver' => '0.6.0',
                 'url' => 'http://releases.compiz-fusion.org/0.6.0',
                 'src' => 'tar.bz2',
                            },
   'compizconfig-python'              => {
                 'ver' => '0.6.0',
                 'url' => 'http://releases.compiz-fusion.org/0.6.0',
                 'src' => 'tar.bz2',
                            },
   'libcompizconfig'              => {
                 'ver' => '0.6.0',
                 'url' => 'http://releases.compiz-fusion.org/0.6.0',
                 'src' => 'tar.bz2',
                            },
  );


#
# End Config Options
################################################################################
