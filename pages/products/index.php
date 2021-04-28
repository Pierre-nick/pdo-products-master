<?php 
  require_once '../app/Product.php';
  $products = Product::findAll();
?>

<div class="row">
  <div class="col">
    <h1>Découvrez tous nos produits</h1>
  </div>
</div>
<div class="row row-cols-1 row-cols-md-4">
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