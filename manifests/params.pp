# == Class: ldap2zone::params
#
# Default parameters for ldap2zone.
#
# === Parameters
#
# Document parameters here.
#
# === Examples
#
#  include '::ldap2zone::params'
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
class ldap2zone::params () {
  $ldap_server_uri = 'ldap://localhost'
}

# vim: set et sw=2:
