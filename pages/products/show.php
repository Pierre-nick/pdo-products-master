<?php
  require_once '../app/Product.php';
  $product = Product::find($_GET['id']);
  if(!$product) {
    App::notFound();
  }
?>

<div class="row mb-3">
  <div class="col">
    <img src="http://fakeimg.pl/1200x800" alt="" class="img-fluid">
  </div>
  <div class="col">
    <h1 class="">Découvrez ce produit : <?php echo $product->name; ?></h1>
    <h2>Marque : <?php echo $product->brands;?></h2>
    <p>
      <?php echo str_replace(';', ' / ', $product->countries); ?>
      <br>
      <small>code : <?php echo $product->code; ?></small> 
    </p>
    <h6>Description :</h6>
    <p>
      <?php echo $product->description; ?>
    </p>
    <h6>Ingredients :</h6>
    <p>
      <?php echo $product->ingredients; ?>
    </p>
  </div>
</div>
