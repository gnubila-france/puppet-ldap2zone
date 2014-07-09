class ldap2zone (
  $ldap_server_uri = $ldap2zone::params::ldap_server_uri,
  ) inherits ldap2zone::params {
  anchor { 'ldap2zone::begin': } ->
  class { 'ldap2zone::install': } ->
  class { 'ldap2zone::config': } ->
  anchor { 'ldap2zone::end': }
}

# vim: set et sta sw=2 ts=2 softtabstop=2 noci noai:
