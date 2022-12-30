# Using puppet, configured
# SSH client configuration to use the private key ~/.ssh/school
# SSH client configuration refuse to authenticate using a password
exec { 'echo 'IdentityFile ~/.ssh/school' >> /etc/ssh/ssh_config':
 path => /etc/ssh/ssh_config
}
