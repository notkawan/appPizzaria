<?php
function conectar() {
    try {
        ini_set('display_errors', 0);
        $conn = new \PDO("mysql:host=localhost;dbname=dbpizza;charset=utf8", 'root', '');
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
    } catch (PDOException $e) {
        echo "Erro ao conectar ao banco de dados" . $e->getMessage();
        die();
    }
    return $conn;
}