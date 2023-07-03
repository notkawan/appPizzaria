
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Pizzaria</title>
  <meta content="Pizzaria barata e gostosa" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">


    <?php 
     include_once('./config/constantes.php'); 
     include_once('./config/conexao.php'); 
     include_once('./func/funcoes.php'); 
     ?>




</head>    

<body>

  <!-- ======= Header ======= -->
      <?php include_once('menu-top.php') ?>
  <!-- End Header -->

  <!-- ======= Hero Sectio n ======= -->
      <?php include_once('banner.php')?>
  <!-- End Hero Section -->

  <main id="main">

    <!-- ======= About Section ======= -->
        <?php include_once('about.php')?>
   <!-- End About Section -->

    <!-- ======= Why Us Section ======= -->
        <?php include_once('why.php')?>
    <!-- End Why Us Section -->

    <?php include_once('stats.php')?>
    
    <!-- ======= Menu Section ======= -->
        <?php include_once('menu-meio.php')?>
    <!-- End Menu Section -->

    <!-- ======= Testimonials Section ======= -->
        <?php include_once('testimonials.php')?>
    <!-- End Testimonials Section -->

    <!-- ======= Events Section ======= -->
        <?php include_once('events.php')?>
    <!-- End Events Section -->

    <!-- ======= Chefs Section ======= -->
        <?php include_once('chefs.php')?>
    <!-- End Chefs Section -->

    <!-- ======= Book A Table Section ======= -->
        <?php include_once('book-table.php')?>
    <!-- End Book A Table Section -->

    <!-- ======= Gallery Section ======= -->
        <?php include_once('gallery.php')?>
    <!-- End Gallery Section -->

    <!-- ======= Contact Section ======= -->
        <?php include_once('contact.php')?>
    <!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <!-- End Footer -->
  <?php include_once('footer.php')?>
  <!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>