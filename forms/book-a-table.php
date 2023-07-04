<?php


include_once ('../config/conexao.php');
include_once ('../config/constantes.php');
include_once ('../func/funcoes.php');
  /**
  * Requires the "PHP Email Form" library
  * The "PHP Email Form" library is available only in the pro version of the template
  * The library should be uploaded to: vendor/php-email-form/php-email-form.php
  * For more info and help: https://bootstrapmade.com/php-email-form/
  */

  // Replace contact@example.com with your real receiving email address
  //$receiving_email_address = 'contact@example.com';

  /**if( file_exists($php_email_form = '../assets/vendor/php-email-form/php-email-form.php' )) {
    include( $php_email_form );
  } else {
    die( 'Unable to load the "PHP Email Form" Library!');
  }

  $book_a_table = new PHP_Email_Form;
  $book_a_table->ajax = true;
  
  $book_a_table->to = $receiving_email_address;
  $book_a_table->from_name = $_POST['name'];
  $book_a_table->from_email = $_POST['email'];
  $book_a_table->subject = "New table booking request from the website";
*/

if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['phone']) && isset($_POST['date']) && isset($_POST['time']) && isset($_POST['people']) && isset($_POST['message'])) {

  $nome = $_POST['name'];
  $email = $_POST['email'];
  $telefone = $_POST['phone'];
  $data = $_POST['date'];
  $tempo = $_POST['time'];
  $quantidade = $_POST['people'];
  $mensagem = $_POST['message'];

  if (empty($nome) || empty($email) || empty($telefone) || empty($data) || empty($tempo) || empty($quantidade) || empty($mensagem)) {
    echo "Não deu certo";
  } else {
    $fazerReserva = inserirnalista('cliente', ' nome, email, telefone, data, tempo, quantidade, mensagem', "'$nome','$email','$telefone','$data','$tempo','$quantidade','$mensagem'");
  }
}




  // Uncomment below code if you want to use SMTP to send emails. You need to enter your correct SMTP credentials
  /*
  $book_a_table->smtp = array(
    'host' => 'example.com',
    'username' => 'example',
    'password' => 'pass',
    'port' => '587'
  );
  */

  /**$book_a_table->add_message( $_POST['name'], 'Name');
  $book_a_table->add_message( $_POST['email'], 'Email');
  $book_a_table->add_message( $_POST['phone'], 'Phone', 4);
  $book_a_table->add_message( $_POST['date'], 'Date', 4);
  $book_a_table->add_message( $_POST['time'], 'Time', 4);
  $book_a_table->add_message( $_POST['people'], '# of people', 1);
  $book_a_table->add_message( $_POST['message'], 'Message');

  echo $book_a_table->send();
  */
