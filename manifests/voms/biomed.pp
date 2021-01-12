# Class: umd::voms::biomed
#
# This module installs VOMS config for biomed
#
class umd::voms::biomed {
  require umd::voms

  file { '/etc/grid-security/vomsdir/biomed':
      ensure => directory,
      purge  => true,
      owner  => root,
      group  => root,
      mode   => '0755',
  }

  file { '/etc/grid-security/vomsdir/biomed/cclcgvomsli01.in2p3.fr.lsc':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => [
      'puppet:///modules/umd/voms/biomed/cclcgvomsli01.in2p3.fr.lsc',
    ],
    require => [ Package['ca-policy-egi-core'], File['/etc/grid-security/vomsdir/biomed'] ],
  }
}
