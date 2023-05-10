# A puppet manifest that fixes a bug (spelling error) in the file wp-settings.php. The change is from .phpp to .php

exec { 'fix wp':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/bin/'
}
