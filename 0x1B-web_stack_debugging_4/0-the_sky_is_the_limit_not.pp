# A puppet manifest to config nginx and sys config files prevent too many open files error
exex { 'fix--for-nginx':
  command => 'sed -E -i "s/ULIMIT=\"-n [[:digit:]]+\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx; \
	      sed -E -i "s/holberton soft nofile [[:digit:]]+/holberton soft nofile 65536/" /etc/security/limits.conf; \
              sed -E -i "s/holberton hard nofile [[:digit:]]+/holberton hard nofile 65536/" /etc/security/limits.conf'; \
	      sed -i "3iworker_rlimit_nofile 30000;"0 /etc/nginx/nginx.conf',
  path    => ['usr/bin', '/bin'],
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}
