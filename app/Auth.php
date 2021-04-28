<?php 
  require_once '../app/User.php';
/**
 * Handle user authentication to acces backend
 * admin.php
 */
  class Auth {

    public function __construct() {
      session_start();
    }

    public function login(string $user, string $pass) {
      $candidat = User::find($user);
      
      if($candidat) {
        if($candidat->password === sha1($pass)) {
          $_SESSION['auth'] = $candidat->id;
          return true;
        }
      }
      return false;
    }

    public function logout() {
      unset($_SESSION['auth']);
      header('Location: index.php');
    }

    public function isLogged() {
      return isset($_SESSION['auth']);
    }
  }
?>