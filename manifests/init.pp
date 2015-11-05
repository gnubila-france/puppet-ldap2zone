# == Class: ldap2zone
#
# Manage ldap2zone.
#
# === Parameters
#
# Document parameters here.
#
# === Examples
#
#  include '::ldap2zone'
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
class ldap2zone (
  $ldap_server_uri = $ldap2zone::params::ldap_server_uri,
  ) inherits ldap2zone::params {
  anchor { '::ldap2zone::begin': } ->
  class { '::ldap2zone::install': } ->
  class { '::ldap2zone::config': } ->
  anchor { '::ldap2zone::end': }
}

# vim: set et sw=2:
