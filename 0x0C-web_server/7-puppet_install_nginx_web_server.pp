# Puppet file to configure nginx:
#	- Nginx should be listening on port 80
#	- string "Hello World!" upon GET request by curl
#	- a redirection 301 Moved Permanently

package { 'nginx':
  ensure => installed,
}

}
file { '/etc/nginx/sites-available/default':
  content => "server {
      listen 80;
      root /etc/nginx/html;
      index index.html index.htm;
      return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }",
}
