# == Class: ldap2zone::install
#
# Install ldap2zone.
#
# === Parameters
#
# Document parameters here.
#
# === Examples
#
#  include '::ldap2zone::install'
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
class ldap2zone::install () {
  package { 'ldap2zone':
    ensure => 'latest',
  }
  package { 'dnsutils':
    ensure => 'latest',
  }
  package { 'ldap-utils':
    ensure => 'latest',
  }
}

# vim: set et sw=2:
