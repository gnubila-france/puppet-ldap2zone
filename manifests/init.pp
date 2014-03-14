class ldap2zone (
  $ldap_server_uri = params_lookup('ldap_server_uri')
  ) inherits ldap2zone::params {
  include ldap2zone::install
  include ldap2zone::config
}

# vim: set et sta sw=2 ts=2 softtabstop=2 noci noai:
