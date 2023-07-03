<section id="menu" class="menu">
  <div class="container" data-aos="fade-up">

    <div class="section-header">
      <h2>Our Menu</h2>
      <p>Check Our <span>Yummy Menu</span></p>
    </div>

    <ul class="nav nav-tabs d-flex justify-content-center" data-aos="fade-up" data-aos-delay="200">
      <?php
$retornoMenu = listarGeral('idmenuCardapio, nomeMenu', 'menucardapio');
$conta = 0;
foreach ($retornoMenu as $retorno) {
    $nomeMenu = $retorno->nomeMenu;
    ?>
          <li class="nav-item">
            <a class="nav-link <?php if ($conta == 0) {?>active show<?php }?>" data-bs-toggle="tab" data-bs-target="#menu<?php echo $nomeMenu ?>">
              <h4><?php echo $nomeMenu . 'count' ?></h4>
            </a>
            <?php $conta++;}?>
    </ul>

    <div class="tab-content" data-aos="fade-up" data-aos-delay="300">
      <?php

$lista1 = listarGeral('*', "menucardapio");
$conta = 0;
foreach ($lista1 as $lista) {
    $idmenuCardapio = $lista->idmenuCardapio;
    $nomeMenu = $lista->nomeMenu;
    ?>

<div class="tab-pane fade <?php if($conta == 0) {?>active show<?php }?> " id="menu<?php echo $nomeMenu ?>">
        <div class="tab-header text-center">
              <p>Menu</p>
              <h3><?php echo $nomeMenu ?></h3>
        </div>
        <div class="row gy-5">
        <?php

    $conta++;
    $lista2 = listarGeral('*', "cardapio WHERE  idmenuCardapio=$idmenuCardapio");
    foreach ($lista2 as $retornoProdCardapioItem) {
        $idcardapio = $retornoProdCardapioItem->idcardapio;
        $idmenucardapio = $retornoProdCardapioItem->idmenucardapio;
        $img = $retornoProdCardapioItem->img;
        $nomePrato = $retornoProdCardapioItem->titulo;
        $descricao = $retornoProdCardapioItem->descricao;
        $preco = $retornoProdCardapioItem->valor;
        ?>
              <div class="col-lg-4 menu-item">
                <a href="assets/img/menu/menu-item-1.png" class="glightbox"><img src="assets/img/menu/menu-item-1.png" class="menu-img img-fluid" alt=""></a>
                <h4><?php echo $nomePrato ?></h4>
                <p class="ingredients">
                  Lorem, deren, trataro, filede, nerada
                </p>
                <p class="price">
                  R$ <?php echo $preco ?>
                </p>
              </div>
            <?php
}
    ?>

        </div>
      </div>
      <?php }?>
    </div>
  </div>
</section>