<?php 

/**
 * [Description Database]
 */
class Database {
  protected
    $host,
    $port,
    $base,
    $user,
    $pass,
    $pdo;

  /**
   * @param mixed $base
   * @param string $host
   * @param string $user
   * @param string $pass
   * @param int $port
   */
  public function __construct($base, $host = 'localhost', $user = 'root', $pass = 'root', $port = 8889) {
    $this->base = $base;
    $this->port = $port;
    $this->host = $host;
    $this->user = $user;
    $this->pass = $pass;
  }

  /**
   * @param mixed $statement
   * @param bool $one
   * 
   * @return [type]
   */
  public function query($statement, $class_name, $one = false) {
    $query = $this->getPDO()->query($statement);

    $query->setFetchMode(PDO::FETCH_CLASS, $class_name);
    if($one) {
      $datas = $query->fetch();
    } else {
      $datas = $query->fetchAll();
    }
    
    return $datas;
  }

  public function prepare($statement, $attributes, $class_name, $one = false) {
    $query = $this->getPDO()->prepare($statement);
    $query->execute($attributes);

    if(strpos($statement, 'UPDATE') === 0 || strpos($statement, 'INSERT') === 0 || strpos($statement, 'DELETE') === 0) {
      return $query;
    }

    $query->setFetchMode(PDO::FETCH_CLASS, $class_name);

    if ($one) {
      $datas = $query->fetch();
    } else {
      $datas = $query->fetchAll();
    }

    return $datas;
  }

  private function getPDO() {
    if ($this->pdo === null) {
      $pdo = new PDO('mysql:dbname=' . $this->base . ';host=' . $this->host . ';port=' . $this->port, $this->user, $this->pass);
    
      $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      $this->pdo = $pdo;
    }
    
    return $this->pdo;
  }

}

?>