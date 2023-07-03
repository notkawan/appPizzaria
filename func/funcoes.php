<?php

function listarTodosRegistros($tabela, $campos, $ativo){
    $conn = conectar();
    try {
        $sqlLista = $conn->prepare("SELECT $campos FROM $tabela WHERE ativo = '$ativo' ");
        $sqlLista->execute();
        if ($sqlLista->rowCount() > 0) {
            return $sqlLista->fetchAll(PDO::FETCH_OBJ);
        } else {
            return 'Vazio';
        };
    }catch(PDOExecption $e){
        
        echo 'Exception -> ';
        return ($e->getMessage());
    };

};
function listarTodosRegistrosAtivo($tabela, $campos, $campoAtivo, $ativo){
    $conn = conectar();
    try {
        $sqlLista = $conn->prepare("SELECT $campos FROM $tabela WHERE $campoAtivo = '$ativo' ");
        $sqlLista->execute();
        if ($sqlLista->rowCount() > 0) {
            return $sqlLista->fetchAll(PDO::FETCH_OBJ);
        } else {
            return 'Vazio';
        };
    }catch(PDOExecption $e){
        
        echo 'Exception -> ';
        return ($e->getMessage());
    };

};

function listarRegistrosUmParamentro($tabela, $campos, $idcampo,  $idparametro, $ativo )
{
    $conn = conectar();
    try {
        if (is_numeric($idparametro)){
            $conn->beginTransaction();
            $sqlLista = $conn->prepare("SELECT $campos" .
             "FROM $tabela" . 
             "WHERE $idcampo = ? AND ativo = '$ativo'" );
            $sqlLista->bindValue(1,$idparametro, PDO::PARAM_INT);
            $sqlLista->execute();
            if ($sqlLista->rowCount() > 0) {
                return $sqlLista->fetchAll(PDO::FETCH_OBJ);
            }else{
                return 'vazio';
            };
        } else{
            return 'variável não é aceita!';
        }
    } catch (PDOException $e) {
        return 'Não foi possivel acessar os dado.' . $e->getMessage();
    };
       
    }
 






?>