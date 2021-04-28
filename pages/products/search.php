<?php 
  require_once '../app/Product.php';
  // Ici traitement de la recherche
  if(isset($_POST['search'])) {
    $products = Product::search($_POST['search']);
  }
?>

<?php if($products): ?>
  <div class="row">
    <div class="col">
      <h1>Résultat pour la recherche : <?= $_POST['search']; ?></h1>
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
  <!-- Ici les résultats -->
<?php else: ?>
  <?php if(isset($_POST['search'])): ?>
    <div class="row">
      <div class="col">
        <h1>Pas de résultat pour la recherche : <?= $_POST['search']; ?></h1>
      </div>
    </div>
  <?php else: ?>
    <div class="row">
      <div class="col">
        <h1>Effectuer une nouvelle recherche</h1>
      </div>
    </div>
  <?php endif; ?>
  <div class="row">
    <div class="col">
      <form class="form-inline my-2 my-lg-0" method="post" action="index.php?p=products.search">
          <input class="form-control mr-sm-2" name="search" type="search" placeholder="Rechercher" aria-label="Search" value="<?= isset($_POST['search']) ? $_POST['search'] : '' ?>">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">OK</button>
        </form>
      </div>
  </div>
<?php endif; ?>