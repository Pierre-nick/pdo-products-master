<?php 
  require_once '../app/Product.php';

  if(!empty($_POST)) {
    $result = Product::create([
      'code' => $_POST['code'],
      'name' => $_POST['name'],
      'description' => $_POST['description'],
      'quantity' => $_POST['quantity'],
      'brands' => $_POST['brands'],
      'countries' => $_POST['countries'],
      'ingredients' => $_POST['ingredients'],
    ]);
    if($result) {
      header('Location: admin.php?p=products.index');
    }
  }
?>

<div class="row">
  <div class="col-9">
    <h1>Ajouter un produit</h1>
  </div>
  <div class="col-3 text-right">
    <a href="admin.php?p=products.index" class="btn btn-primary">Retour</a>
  </div>
</div>
<div class="row">
  <div class="col">
    <form method="post">
      <div class="form-group">
        <label for="code">Code</label>
        <input type="text" name="code" id="code" class="form-control">
      </div>
      <div class="form-group">
        <label for="name">Nom</label>
        <input type="text" name="name" id="name" class="form-control">
      </div>
      <div class="form-group">
        <label for="description">Description</label>
        <textarea name="description" id="description" class="form-control"></textarea>
      </div>
      <div class="form-group">
        <label for="quantity">Quantité</label>
        <input type="text" name="quantity" id="quantity" class="form-control">
      </div>
      <div class="form-group">
        <label for="brands">Marques</label>
        <input type="text" name="brands" id="brands" class="form-control">
      </div>
      <div class="form-group">
        <label for="countries">Pays</label>
        <input type="text" name="countries" id="countries" class="form-control">
      </div>
      <div class="form-group">
        <label for="ingredients">Ingrédients</label>
        <input type="text" name="ingredients" id="ingredients" class="form-control">
      </div>
      <input type="submit" value="Ajouter" class="btn btn-success">
    </form>
  </div>
  
</div>