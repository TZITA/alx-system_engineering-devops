# Using puppet, configured
# SSH client configuration to use the private key ~/.ssh/school
# SSH client configuration refuse to authenticate using a password
file { 'ssh_config':
  ensure => present,
  path => '/etc/ssh/ssh_config',
}
