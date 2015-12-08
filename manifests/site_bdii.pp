# Class: umd::site_bdii
#
# This modules installs UMD Site BDII
#
class umd::site_bdii (
  $bdii_version = 'present',
) inherits umd {
  package { 'emi-bdii-site':
    ensure  => $bdii_version,
  }
  exec { 'bdii-yaim':
    command => '/opt/glite/yaim/bin/yaim -c -s /opt/glite/yaim/etc/site-info.def -n BDII_site && /bin/rpm -q emi-bdii-site > /opt/glite/yaim/etc/emi-bdii-site.info',
    unless  => '/bin/test -f /opt/glite/yaim/etc/emi-bdii-site.info',
    require => [ File['/opt/glite/yaim/etc/site-info.def'], Package['emi-bdii-site'] ],
    timeout => 0,
  }
}
