<?php 
  require_once '../app/Product.php';
  // recuperer 6 elements aléatoire dans la base products;
  $products = Product::findRandom(6);
?>

<div class="row">
  <div class="col">
    <div class="h1">Nos meilleurs produits</div>
  </div>
</div>

<div class="row row-cols-1 row-cols-md-3">
  <?php foreach($products as $product): ?>
  <div class="col mb-5">
    <div class="card h-100">
      <img src="http://fakeimg.pl/600x400" alt="" class="img-fluid">
      <div class="card-body">
        <div class="card-title">
          <h6><?= $product->name; ?></h6>
        </div>
      </div>
      <div class="card-footer text-right">
      <a href="index.php?p=products.show&id=<?= $product->id; ?>" class="btn btn-primary">Voir ce produit</a>
      </div>
    </div>
  </div>
  <?php endforeach;?>
</div>