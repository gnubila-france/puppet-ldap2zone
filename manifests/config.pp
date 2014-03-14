class ldap2zone::config {
  include ldap2zone

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

# vim: set et sta sw=2 ts=2 sts=2 noci noai:
