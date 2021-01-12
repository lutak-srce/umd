# Class: umd::vomses::ops
#
# This module installs /etc/vomses config for ops
#
class umd::vomses::ops {
  require umd::vomses

  file { '/etc/vomses/ops-voms2.cern.ch':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => '"ops" "voms2.cern.ch" "15009" "/DC=ch/DC=cern/OU=computers/CN=voms2.cern.ch" "ops" "24"',
    require => File['/etc/vomses'],
  }
  file { '/etc/vomses/ops-lcg-voms2.cern.ch':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => '"ops" "lcg-voms2.cern.ch" "15009" "/DC=ch/DC=cern/OU=computers/CN=lcg-voms2.cern.ch" "ops" "24"',
    require => File['/etc/vomses'],
  }
}
