<?php 
require_once '../app/Product.php';
$products = Product::findAll();
?>

<div class="row">
  <div class="col-9">
    <h1>Gestion des produits</h1>
  </div>
  <div class="col-3">
    <a href="admin.php?p=products.new" class="btn btn-success">Ajouter un produit</a>
  </div>
</div>

<div class="row">
  <div class="col">
    <table class="table table-striped">
      <thead>
        <tr>
          <th>Id</th>
          <th>Nom</th>
          <th>Fabriqué en</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($products as $product): ?>
        <tr>
          <td><?= $product->id; ?></td>
          <td><?= $product->name; ?></td>
          <td><?= $product->countries; ?></td>
          <td>
            <a href="index.php?p=products.show&id=<?= $product->id; ?>" class="btn btn-primary">Voir</a>
            <a href="admin.php?p=products.edit&id=<?= $product->id; ?>" class="btn btn-warning">Editer</a>
            <a href="admin.php?p=products.delete&id=<?= $product->id; ?>" class="btn btn-danger">Supprimer</a>
          </td>
        </tr>
        <?php endforeach;?>
      </tbody>
    </table>
  </div>
</div>