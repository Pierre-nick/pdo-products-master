<?php 
  require_once '../app/Product.php';

  if(isset($_GET['id'])) {
    $result = Product::destroy($_GET['id']);

    if($result) {
      header('Location: admin.php?p=products.index');
    }
  } else {
    header('Location: admin.php?p=products.index');
  }

?>