<?php 

  require_once '../app/Auth.php';
  $auth = new Auth;
  // ici la déconnexion
  $auth->logout();
?>