<?php
    require_once "load.php";

    if(isset($_GET['id'])){
        $p_table = 'tbl_products';
        $id = $_GET['id'];
        $col = 'p_id';

        $getProduct = getSingleProduct($p_table, $col, $id);
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
    <?php while($row = $getProduct->fetch(PDO::FETCH_ASSOC)):?>
    <div class="movie-item">
        <h2><?php echo $row['p_name'];?></h2>
        <h4><?php echo $row['p_brand'];?></h4>
        <p>Price: &#36;<?php echo $row['p_price'];?></p>
        <p>Review: <?php echo $row['p_review'];?></p>
        <img width="400px" src="images/<?php echo $row['p_img'];?>" alt="<?php echo $row['p_name'];?>"/>
        <p><?php echo $row['p_des'];?></p>
        <a href="index.php">go back</a>
    </div>
    <?php endwhile;?>

    <?php include "templates/footer.php"; ?>
</body>
</html>