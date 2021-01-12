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
    content => '"biomed" "cclcgvomsli01.in2p3.fr" "15000" "/O=GRID-FR/C=FR/O=CNRS/OU=CC-IN2P3/CN=cclcgvomsli01.in2p3.fr" "biomed" "24"',
    require => File['/etc/vomses'],
  }
}
