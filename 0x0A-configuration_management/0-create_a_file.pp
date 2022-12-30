# Creates a file in the directory /tmp using puppet.
file { 'school':
  ensure  => file,
  content => 'I love Puppet',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
  path    => '/tmp/school',
}
