<?php
return array (
  'release_branch' => 'master',
  'release_dir' => '/home/www/www.nf.u16',
  'php_bin' => '/usr/bin/php',
  'composer_bin' => '/usr/local/bin/composer',
  'auth_key' => '.gKZBMCg]>(Qrs,M@u&xnw~"^*tTtFy@LHjkjo-_/H.~Vn~+R<StPuV~(J%]ewdz',
  'app_debug' => true,
  'app_trace' => true,
  'env_pre' => 'nf_',
  'session_table' => 'admin_session',
  'global' => 
  array (
    'DOMAIN' => 'nf.com',
    'CDN_DIR' => 'public/cdn',
    'PRE2CDN_DIR' => 'public/cdn-ready',
  ),
  'mysql' => 
  array (
    'hostname' => '127.0.0.1',
    'database' => 'neco_framework',
    'username' => 'root',
    'hostport' => 3306,
    'prefix' => 'nf_',
  ),
  'email' => 
  array (
    'smtp_host' => 'smtp.qq.com',
    'smtp_port' => 465,
    'smtp_user' => '308715744@qq.com',
    'smtp_pass' => 'bleammqirwozbgbc',
    'from_email' => '308715744@qq.com',
    'from_name' => 'Neconano',
  ),
  'feature' => 
  array (
    'hash_assets' => true,
    'minify_css' => true,
    'minify_js' => true,
    'minify_html' => false,
  ),
  'url' => 
  array (
    'CDN_DOMAIN' => 'http://cdn.nf.com',
    'PUB_DOMAIN' => 'http://pub.nf.com',
    'ULS_DOMAIN' => 'http://uls.nf.com',
    'ADN_DOMAIN' => 'http://adn.nf.com',
  ),
);