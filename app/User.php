<?php 

  class User {

    public static function find(string $username) {
      return App::getDb()->prepare('SELECT * FROM users WHERE username = ?', [$username], 'User', true);
    }
  }

?>