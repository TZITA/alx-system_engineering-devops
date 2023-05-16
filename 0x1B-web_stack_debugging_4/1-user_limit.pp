# A puppet manifest that changes OS config by increasing nofile to allow login with the holberton user
exec { 'change-os-configuration-for-holberton-user':
  command => 'sed -E -i "s/holberton soft nofile [[:digit:]]+/holberton soft nofile 65536/" /etc/security/limits.conf; \
              sed -E -i "s/holberton hard nofile [[:digit:]]+/holberton hard nofile 65536/" /etc/security/limits.conf',
  path    => ['usr/bin', '/bin'],
}
