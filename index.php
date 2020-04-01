<?php
    require_once "load.php";

    if(isset($_GET['filter'])){
        $args = array(
            'tbl'=>'tbl_products',
            'tbl2'=>'tbl_genre',
            'tbl3'=>'tbl_p_genre',
            'col'=>'p_id',
            'col2'=>'genre_id',
            'col3'=>'genre_name',
            'filter'=>$_GET['filter']
        );
        $getProducts = getProductsByFilter($args);
    } else if(isset($_POST['submit-search'])) {
        $search = trim($_POST['search']);
        $getProducts = searchProduct($search);
    } else {
        $p_table = 'tbl_products';
        $getProducts = getAll($p_table);
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sport Chek</title>
</head>
<body>

    <?php include "templates/header.php"; ?>
    <?php echo !empty($message)? $message:''; ?>
    <?php while($row = $getProducts->fetch(PDO::FETCH_ASSOC)):?>
    <div class="movie-item">
        <h2><?php echo $row['p_name'];?></h2>
        <h4><?php echo $row['p_brand'];?></h4>
        <img src="images/<?php echo $row['p_img'];?>" alt="<?php echo $row['p_name'];?>"/>
        <a href="details.php?id=<?php echo $row['p_id'];?>">Read More</a>
    </div>
    <?php endwhile;?>

    <?php include "templates/footer.php"; ?>
</body>
</html>