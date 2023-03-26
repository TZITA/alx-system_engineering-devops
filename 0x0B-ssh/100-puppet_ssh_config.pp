# Using puppet, configured
# SSH client configuration to use the private key ~/.ssh/school
# SSH client configuration refuse to authenticate using a password
file_line { 'config_passwd':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  match  => '    PasswordAuthentication no',
}
file_line { 'config_privateKey':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
}
