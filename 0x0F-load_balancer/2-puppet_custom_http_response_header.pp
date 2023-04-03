-- A puppet script that automates the task of creating a custom HTTP header response

package { 'nginx':
  ensure   => latest,
  provider => 'apt',
}

service { 'nginx':
  ensure => running,
  enable => true,
}

file { '':
  ensure  => file,
  content => "Hello World",
}

$str = "server {
     listen      80 default_server;
     listen      [::]:80 default_server;
     root        /etc/nginx/html/;
     index       index.html index.htm;
     add_header X-Served-By $trusted['hostname'];
}"

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => $str,
}
