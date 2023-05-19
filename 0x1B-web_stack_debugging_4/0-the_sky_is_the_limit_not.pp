# A puppet manifest to config nginx and sys config files prevent too many open files error
exex { 'fix--for-nginx':
  command => 'sed -E -i "s/ULIMIT=\"-n [[:digit:]]+\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx',
  path    => 'usr/local/bin:/bin'
}

-> exec { 'nginx-re':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
