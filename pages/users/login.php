<?php 
// besoin du fichier Auth
require_once '../app/Auth.php';

if(!empty($_POST)) {
  $auth = new Auth();
  var_dump($auth->login($_POST['username'], $_POST['password']));
  if($auth->login($_POST['username'], $_POST['password'])) {
    header('Location: admin.php');
  } else {
  }
}
?>

<div class="row">
  <div class="col-sm-4 mx-auto">
    <h1 class="text-center mb-3">Connexion</h1>
    <form method="post">
      <div class="form-group">
        <label for="username">Nom d'utilisateur</label>
        <input type="text" name="username" id="username" class="form-control">
      </div>
      <div class="form-group">
        <label for="password">Mot de passe</label>
        <input type="password" name="password" id="password" class="form-control">
      </div>
    <input type="submit" value="Connexion" class="btn btn-success btn-block">
    </form>
  </div>
</div>