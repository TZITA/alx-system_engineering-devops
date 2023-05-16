# A puppet manifest to config nginx and sys config files prevent too many open files error
exex { 'fix--for-nginx':
  command => 'sed -E -i "s/ULIMIT=\"-n [[:digit:]]+\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx; \
	      sed -i "3iworker_rlimit_nofile 30000;"0 /etc/nginx/nginx.conf',
  path    => ['usr/bin', '/bin'],
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}
