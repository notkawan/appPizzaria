<?php
$listar = listarTodosRegistros('galeria', 'idgaleria, img, ativo, cadastro', 'A');
if ($listar == 'Vazio') {
  echo '<h6 class=""> Nao foi possivel acessar seus dados! </h6>';
} else {

?>
<section id="gallery" class="gallery section-bg">
    <div class="container" data-aos="fade-up">
        <div class="section-header">
            <h2>gallery</h2>
            <p>Check <span>Our Gallery</span></p>
        </div>


        <div class="gallery-slider swiper">
            <div class="swiper-wrapper align-items-center">
                <?php
        foreach ($listar as $itemLinha) {
          $img = $itemLinha->img;
          $ativo = $itemLinha->ativo;
          $cadastro = $itemLinha->cadastro;
        ?>


                <div class="swiper-slide"><a class="glightbox" data-gallery="images-gallery"
                        href="<?php echo $img ?>"><img src="<?php echo $img ?>" class="img-fluid" alt=""></a></div>

                <?php

        }
        ?>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
</section>
<?php
  }
    ?>


