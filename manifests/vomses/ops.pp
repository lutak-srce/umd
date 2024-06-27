# Class: umd::vomses::ops
#
# This module installs /etc/vomses config for ops
#
class umd::vomses::ops {
  require umd::vomses

  file { '/etc/vomses/ops-voms2.cern.ch':
    ensure  => absent,
  }
  file { '/etc/vomses/ops-lcg-voms2.cern.ch':
    ensure  => absent,
  }
  file { '/etc/vomses/ops-voms-ops-auth.cern.ch':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => '"ops" "voms-ops-auth.cern.ch" "443" "/DC=ch/DC=cern/OU=computers/CN=ops-auth.cern.ch" "ops"',
    require => File['/etc/vomses'],
  }
}
