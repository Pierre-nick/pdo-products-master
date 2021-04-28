<?php 

  class Product {

    public static function findAll() {
      return App::getDb()->query('SELECT * FROM products', 'Product');
    }

    public static function findRandom(int $nbr) {
      return App::getDb()->query('SELECT * FROM products ORDER BY RAND() LIMIT ' . $nbr, 'Product');
    }

    public static function search($keyword) {
      $keywords = explode(' ', trim($keyword));
      $kw_joker = [];
      foreach($keywords as $k => $key) {
        if($k === 0) {
          $sql_elmt = 'WHERE name LIKE ?';
        } else {
          $sql_elmt .= ' OR name LIKE ?';
        }
        $kw_joker[] = "%$key%";
      }

      return App::getDb()->prepare('SELECT * FROM products ' . $sql_elmt, $kw_joker, 'Product');
    }

    public static function find($id) {
      return App::getDb()->prepare('SELECT * FROM products WHERE id=?',[$id], 'Product', true);
    }

    public static function update($id, $fields) {
      $names = [];
      $values = [];
      foreach($fields as $k => $v) {
        $names[] = "$k = ?";
        $values[] = $v;
      }
      $values[] = $id;
      $names = implode(',', $names);

      return App::getDb()->prepare("UPDATE products SET $names where id = ?", $values, 'Product', true);
    }

    public static function create($fields) {
      $names = [];
      $values = [];
      foreach($fields as $k => $v) {
        $names[] = $k;
        $values[] = ":$k";
      }
      $names = implode(',', $names);
      $values = implode(',', $values);

      return App::getDb()->prepare("INSERT INTO products ($names) VALUES ($values)", $fields, 'Product', true);
    }

    public static function destroy($id) {
      return App::getDb()->prepare("DELETE FROM products WHERE id = ?", [$id], 'Product', true);
    }
  }

?>