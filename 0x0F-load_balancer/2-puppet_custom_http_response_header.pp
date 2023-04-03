-- A puppet script that automates the task of creating a custom HTTP header response

package { 'nginx':
  ensure   => latest,
  provider => 'apt',
}

service { 'nginx':
  ensure => running,
  enable => true,
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "server {\nlisten\t80 default_server;\nlisten\t[::]:80 default_server;\n
root\t/etc/nginx/html/;\nindex\tindex.html index.htm;\nadd_header X-Served-By "$hs';}',
}
