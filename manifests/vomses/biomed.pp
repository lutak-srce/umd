# Class: umd::vomses::biomed
#
# This module installs /etc/vomses config for biomed
#
class umd::vomses::biomed {
  require umd::vomses

  file { '/etc/vomses/biomed-cclcgvomsli01.in2p3.fr':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => '"biomed" "cclcgvomsli01.in2p3.fr" "15000" "/DC=org/DC=terena/DC=tcs/C=FR/ST=Paris/O=Centre national de la recherche scientifique/CN=cclcgvomsli01.in2p3.fr" "biomed" "24"',
    require => File['/etc/vomses'],
  }
}
