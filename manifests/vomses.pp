# Class: umd::vomses
#
class umd::vomses {
  file { '/etc/vomses':
      ensure => directory,
      purge  => true,
      owner  => root,
      group  => root,
      mode   => '0755',
  }
}
