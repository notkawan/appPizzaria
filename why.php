
<?php  
  $listar = listarTodosRegistros('cards','idcards, titulo, text, img, ativo, cadastro','A');  
  if($listar == 'Vazio')
  {      
    echo '<h6 class=""> Nao foi possivel acessar seus dados! </h6>';  
  }else{     
   
?>



<section id="why-us" class="why-us section-bg">
      <div class="container" data-aos="fade-up">

        <div class="row gy-4">

          <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="why-box">
              <h3>Pizzaria</h3>
              <p>
              Boa culinária não é para os fracos de coração. É para as mentes criativas! Corações fortes! As coisas podem até dar errado, mas não deve deixar ninguém definir seus limites a partir de sua origem. O único limite é sua alma.
              </p>
              <div class="text-center">
                <a href="#" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-8 d-flex align-items-center">
            <div class="row gy-4">
          
<?php
  foreach($listar as $itemLinha){      
      $titulo = $itemLinha->titulo;       
      $text = $itemLinha->text;       
      $img = $itemLinha->img;       
      $ativo = $itemLinha->ativo; 
      $cadastro = $itemLinha->cadastro;     
?>

              <div class="col-xl-4" data-aos="fade-up" data-aos-delay="200">
                <div class="icon-box d-flex flex-column justify-content-center align-items-center">
                  <i class="bi bi-clipboard-data"><?php echo $img ?></i>
                  <h4><?php echo $titulo ?></h4>
                  <p><?php echo $text ?></p>
                </div> 
              </div><!-- End Icon Box -->

            
<?php
}}
?>
              

            </div>
          </div>

        </div>

      </div>
  </section>



 