# == Class: ldap2zone::config
#
# Configure ldap2zone.
#
# === Parameters
#
# Document parameters here.
#
# === Examples
#
#  include '::ldap2zone::config'
#
# Configuration is done using Hiera.
#
# === Authors
#
# Baptiste Grenier <bgrenier@gnubila.fr>
#
# === Copyright
#
# Copyright 2015 gnúbila
#
class ldap2zone::config () {
  include ::ldap2zone

  file { '/etc/bind/named.conf.ldap2zone':
    ensure => 'file',
    owner  => 'root',
    group  => 'bind',
    mode   => '0660',
  }

  file_line { 'Include ldap2zone named conf':
    ensure  => 'present',
    path    => '/etc/bind/named.conf.local',
    line    => 'include "/etc/bind/named.conf.ldap2zone";',
    require => Class['ldap2zone::install'],
  }

  file_line { 'Activate TLS for ldap2zone':
    ensure  => 'present',
    path    => '/etc/default/ldap2zone',
    line    => 'LDAP_HOST_PARAM="-Z"',
    require => Class['ldap2zone::install'],
  }
  file_line { 'Set LDAP hostname for ldap2zone':
    ensure  => 'present',
    path    => '/etc/default/ldap2zone',
    line    => "LDAP_URI=\"${ldap2zone::ldap_server_uri}\"",
    require => Class['ldap2zone::install'],
  }
  file_line { 'Set bind data dir for ldap2zone':
    ensure  => 'present',
    path    => '/etc/default/ldap2zone',
    line    => 'BIND_DATA="/etc/bind"',
    require => Class['ldap2zone::install'],
  }
}

# vim: set et sw=2:
