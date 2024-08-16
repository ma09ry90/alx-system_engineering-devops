# a puppet code that fixes a wordpress size 5xx error to 200 ok
# editing the mistyped .phpp in the /var/www/html/wp-settings.php file

exec { 'fix-wordpess-server-error':
    command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
    path    => '/usr/bin/:/bin/',

}
