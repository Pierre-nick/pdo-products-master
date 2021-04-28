<?php 

if(isset($_GET['p'])) {
  $page = $_GET['p'];
} else {
  $page = 'home';
}

require_once '../app/App.php';

ob_start();
switch($page) {
  case 'home': 
    require '../pages/home.php';
    break;
  case '404':
    require_once '../pages/404.php';
    break;
  default:
    require '../pages/' . str_replace('.', '/', $page) . '.php';
    break;
}
$content = ob_get_clean();
require_once '../pages/templates/default.php';

?>