

    <?php  
  $listar = listarTodosRegistros('evento','idevento, img, titulo, valor, descricao, ativo, cadastro','A');  
  if($listar == 'Vazio')
  {      
    echo '<h6 class=""> Nao foi possivel acessar seus dados! </h6>';  
  }else{     
   
?>







<section id="events" class="events">
      <div class="container-fluid" data-aos="fade-up">

        <div class="section-header">
          <h2>Events</h2>
          <p>Share <span>Your Moments</span> In Our Restaurant</p>
        </div>

        <div class="slides-3 swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">


          <?php
   
   foreach($listar as $itemLinha){ 
       $img = $itemLinha->img;    
       $titulo = $itemLinha->titulo;       
       $valor = $itemLinha->valor;       
       $descricao = $itemLinha->descricao;     
       $ativo = $itemLinha->ativo; 
       $cadastro = $itemLinha->cadastro;     
 ?>


          <div class="swiper-slide event-item d-flex flex-column justify-content-end" style="background-image: url(<?php echo $img ?>)"> 
        
              <h3><?php echo $titulo ?></h3>
              <div class="price align-self-start"><?php echo $valor ?></div>
              <p class="description">
              <?php echo $descricao ?>
              </p>
            </div>

  <?php
    }}
  ?>
           

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section>