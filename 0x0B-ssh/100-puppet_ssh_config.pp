# Using puppet, configured
# SSH client configuration to use the private key ~/.ssh/school
# SSH client configuration refuse to authenticate using a password
file { 'ssh_config':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
}
-> file_line { 'remove_lines':
  ensure => absent,
  path   => '/etc/ssh/ssh_config',
  match  => '    PasswordAuthentication [yes|no]',
}
file_line { 'add_line':
  path => '/etc/ssh/ssh_config',
  line => '    IdentityFile ~/.ssh/school',
}
file_line { 'add_line':
  path => '/etc/ssh/ssh_config',
  line => '    PasswordAuthentication no',
}
