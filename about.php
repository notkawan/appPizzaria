<?php



$listar = listarTodosRegistros('sobreNois',' img, subtitulo, contato, text, video, cadastro, ativo,text2,text3,text4,titulo,subtituloP','A');

if($listar == 'Vazio'){
  
  echo '<h6 class=""> Nao foi possivel acessar seus dados! </h6>';

}else{
    foreach($listar as $itemLinha){
      $img = $itemLinha->img;
      $subtitulo = $itemLinha->subtitulo;
      $contato = $itemLinha->contato;
      $text = $itemLinha->text;
      $text2 = $itemLinha->text2;
      $text3 = $itemLinha->text3;
      $text4 = $itemLinha->text4;
      $subtituloP = $itemLinha->subtituloP;
      $titulo = $itemLinha->titulo;
      $video = $itemLinha->video;
      $cadastro = $itemLinha->cadastro;
      $ativo =$itemLinha->ativo;
    }
}

?>

                                        



<section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2><?php echo $titulo ?></h2>
          <p><?php echo $subtituloP ?></p>
        </div>

        <div class="row gy-4">
          <div class="col-lg-7 position-relative about-img" style="background-image: url(assets/img/about.jpg) ;" data-aos="fade-up" data-aos-delay="150">
            <div class="call-us position-absolute">
              <h4><?php echo $subtitulo ?></h4>
              <p><?php echo $contato ?></p>
            </div>
          </div>
          <div class="col-lg-5 d-flex align-items-end" data-aos="fade-up" data-aos-delay="300">
            <div class="content ps-0 ps-lg-5">
              <p class="fst-italic">
              <?php echo $text ?>
              </p>
              <ul>
              
                <li><i class="bi bi-check2-all"></i><?php echo $text2 ?></li>
                <li><i class="bi bi-check2-all"></i><?php echo $text3 ?></li>
              </ul>
              <p>
              <?php echo $text4 ?>
              </p>

              <div class="position-relative mt-4">
                <img src="assets/img/about-2.jpg" class="img-fluid" alt="">
                <a href=" <?php echo $video ?>" class="glightbox play-btn"></a>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>