<?php 
  require_once  '../app/Database.php';

/**
 * Handle global function for the App
 */
  class App {

    const DB_NAME = 'pdo-test';
    const DB_USER = 'root';
    const DB_PASS = 'root';
    const DB_HOST = 'localhost';
    const DB_PORT = 8889;

    private static $database;

    public static function getDb() {
      if(self::$database === null) {
        self::$database = new Database(self::DB_NAME, self::DB_HOST, self::DB_USER, self::DB_PASS, self::DB_PORT);
      }
      return self::$database;
    }

    public static function forbidden() {
      header('HTTP/1.0 403 Forbidden');
      header('Location: index.php');
      die('Pas Accès');
    }

    public static function notFound() {
      header('HTTP/1.0 404 Not Found');
      header('Location: index.php?p=404');
    }
  }

?>