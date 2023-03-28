# Puppet file to configure nginx:
#	- Nginx should be listening on port 80
#	- string "Hello World!" upon GET request by curl
#	- a redirection 301 Moved Permanently
package { 'nginx':
  ensure => installed,
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @(END),
    server {
      listen 80;
      listen [::]:80 default_server;
      root /etc/nginx/html;
      index index.html index.htm;
      location /redirect_me {
          return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }
    | END
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}
