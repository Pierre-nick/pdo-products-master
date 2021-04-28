<?php 

if(isset($_GET['p'])) {
  $page = $_GET['p'];
} else {
  $page = 'home';
}

require_once '../app/App.php';
require_once '../app/Auth.php';

// Si tu  es pas connecté, tu sort
$auth = new Auth();
if(!$auth->isLogged()) {
  App::forbidden();
}


ob_start();
switch($page) {
  case 'home': 
    require '../pages/admin/home.php';
    break;
  default:
    require '../pages/admin/' . str_replace('.', '/', $page) . '.php';
    break;
}
$content = ob_get_clean();
require_once '../pages/templates/admin.php';

?>