<?php

$listar = listarTodosRegistrosAtivo('cliente c
INNER JOIN proficao p ON p.idproficao = c.idproficao
RIGHT JOIN avaliacaocliente a ON a.idcliente = c.idcliente','c.nome, p.proficao,  a.descricao','c.ativo','A');

if($listar == 'Vazio'){
  
  echo '<h6 class=""> Nao foi possivel acessar seus dados! </h6>';

}else{
                                                                                                     
?>

<section id="testimonials" class="testimonials section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Testimonials</h2>
          <p>What Are They <span>Saying About Us</span></p>
        </div>




        <div class="slides-1 swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

<?PHP
  foreach($listar as $itemLinha){
    $nome= $itemLinha->nome;
    $proficao= $itemLinha->proficao;
    $descricao= $itemLinha->descricao;
 
  

 
?>


            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="row gy-4 justify-content-center">
                  <div class="col-lg-6">
                    <div class="testimonial-content">
                      <p>
                        <i class="bi bi-quote quote-icon-left"></i>
                        <?php echo $descricao ?>
                        <i class="bi bi-quote quote-icon-right"></i>
                      </p>
                      <h3><?php echo $nome ?></h3>
                      <h4><?php echo $proficao ?></h4>
                      <div class="stars">
                        <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-2 text-center">
                    <img src="assets/img/testimonials/testimonials-1.jpg" class="img-fluid testimonial-img" alt="">
                  </div>
                </div>
              </div>
            </div><!-- End testimonial item -->
<?PHP
  }
}
?>
           

           

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section>