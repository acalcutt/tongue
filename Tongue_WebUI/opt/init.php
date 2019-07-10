<?php
require "config.php";
define('SMARTY_ROOT', $root_directory.'smarty/');
define('SMARTY_DIR', SMARTY_ROOT.'libs/');

require SMARTY_DIR.'/Smarty.class.php';

$smarty = new Smarty();
$smarty->template_dir = SMARTY_ROOT.'/templates/';
$smarty->compile_dir  = SMARTY_ROOT.'/templates_c/';
$smarty->config_dir   = SMARTY_ROOT.'/configs/';
$smarty->cache_dir    = SMARTY_ROOT.'/cache/';

$dsn               = $service.':host='.$sqlhost.';dbname=tongue';
$options = array(
    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
    PDO::ATTR_PERSISTENT => TRUE,
);

$conn    = new PDO($dsn, $sqluser, $sqlpwd, $options);