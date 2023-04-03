# A puppet script that automates the task of creating a custom HTTP header
package { 'nginx':
  ensure   => installed,
}

file { '/etc/nginx/html/index.html':
  ensure  => file,
  content => 'Hello World',
  notify  => Service['nginx'],
}

$hostname = $facts['hostname']
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => "server {
     listen      80 default_server;
     listen      [::]:80 default_server;
     root        /etc/nginx/html/;
     index       index.html index.htm;
     add_header X-Served-By $hostname};
}",
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}
