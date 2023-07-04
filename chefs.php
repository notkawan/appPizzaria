<?php

$listar = listarTodosRegistrosAtivo('cliente c
INNER JOIN chefs ch ON ch.idcliente = c.idcliente
INNER JOIN proficao p ON p.idproficao = c.idproficao',
'c.nome, ch.img, ch.descricao, p.proficao','c.ativo','A');

if($listar == 'Vazio'){
  
  echo '<h6 class=""> Nao foi possivel acessar seus dados! </h6>';

}else{

?>

<section id="chefs" class="chefs section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Chefes</h2>
          <p>Os <span>Melhores da </span>Yummy</p>
        </div>

        <div class="row gy-4">

<?PHP
  foreach($listar as $itemLinha){
    $img= $itemLinha->img;
    $nome= $itemLinha->nome;
    $proficao= $itemLinha->proficao;
    $descricao= $itemLinha->descricao;
 
  
?>
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="chef-member">
              <div class="member-img">
                <img src="<?php echo $img ?>" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4> <?php echo $nome ?></h4>
                <span> <?php echo $proficao ?></span>
                <p> <?php echo $descricao ?></p>
              </div>
            </div>
          </div><!-- End Chefs Member -->
      <?PHP
  }
}
?>      
        </div>

      </div>
    </section>