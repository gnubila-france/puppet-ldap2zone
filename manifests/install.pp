class ldap2zone::install {
  package { 'ldap2zone':
    ensure => 'latest',
  }
  package { 'ldap-utils':
    ensure => 'latest',
  }
}

# vim: set et sta sw=2 ts=2 softtabstop=2 noci noai:
