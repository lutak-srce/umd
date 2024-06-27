# Class: umd::voms::ops
#
# This module installs VOMS config for ops
#
class umd::voms::ops {
  require umd::voms

  file { '/etc/grid-security/vomsdir/ops':
      ensure => directory,
      purge  => true,
      owner  => root,
      group  => root,
      mode   => '0755',
  }

  file { '/etc/grid-security/vomsdir/ops/voms2.cern.ch.lsc':
    ensure  => absent,
  }
  file { '/etc/grid-security/vomsdir/ops/lcg-voms2.cern.ch.lsc':
    ensure  => absent,
  }
  file { '/etc/grid-security/vomsdir/ops/voms-ops-auth.cern.ch.lsc':
    ensure  => absent,
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => [
      'puppet:///modules/umd/voms/ops/voms-ops-auth.cern.ch.lsc',
    ],
    require => [ Package['ca-policy-egi-core'], File['/etc/grid-security/vomsdir/ops'] ],
  }

}
