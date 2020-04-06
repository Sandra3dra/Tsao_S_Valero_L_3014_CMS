<?php

function getAll($tbl){
    $pdo = Database::getInstance()->getConnection();

    $queryAll = 'SELECT * FROM '.$tbl;
    $results = $pdo->query($queryAll);

    if($results){
        return $results;
    }else{
        return 'There was a problem accessing the info';
    }
};

function getSingleProduct($tbl, $col, $id) {
    //TODO: refer the function above to finish this one
    //make sure it returns only one movie that is filtered by $col = $id
    $pdo = Database::getInstance()->getConnection();

    $queryOne = 'SELECT * FROM '. $tbl .' WHERE '.$col. ' =:id';
    $results = $pdo->prepare($queryOne);
    $results->execute(
        array(
            ':id'=>$id
        )
    );

    if($results){
        return $results;
    }else{
        return 'There was a problem accessing the info';
    }
}

function getProductsByFilter($args){
    $pdo = Database::getInstance()->getConnection();

    $queryAll = 'SELECT * FROM '. $args['tbl'].' AS t,';
    $queryAll .= ' '.$args['tbl2'].' AS t2,';
    $queryAll .= ' '.$args['tbl3'].' AS t3';
    $queryAll .= ' WHERE t.'.$args['col'].' = t3.' .$args['col'];
    $queryAll .= ' AND t2.'.$args['col2'].' = t3.' .$args['col2'];
    $queryAll .= ' AND t2.'.$args['col3'].' = :filter';
    $results = $pdo->prepare($queryAll);
    $results->execute(
        array(
            ':filter'=>$args['filter']
        )
    );

    // echo $results->debugDumpParams();
    // exit;

    if($results){
        return $results;
    }else{
        return 'There was a problem accessing the info';
    }
}

function searchProduct($search) {
    $pdo = Database::getInstance()->getConnection();

    $querySearch = 'SELECT * FROM tbl_products WHERE p_name LIKE :search OR p_des LIKE :search';
    $results = $pdo->prepare($querySearch);
    $results->execute(
        array(
            ':search'=>"%$search%"
        )
    );

    // echo $results->debugDumpParams();
    // exit;

    if($results){
        return $results;
    }else{
        return 'There was a problem accessing the info';
    }
}