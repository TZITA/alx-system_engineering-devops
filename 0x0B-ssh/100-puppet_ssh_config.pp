# Using puppet, configured
# SSH client configuration to use the private key ~/.ssh/school
# SSH client configuration refuse to authenticate using a password
file_line { 'Turn_off_passwd_auth':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
}
file_line { 'Declare_identity_file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
}
