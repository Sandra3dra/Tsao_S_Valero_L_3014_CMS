<?php

    require_once '../load.php';
    confirm_logged_in();
    $p_table = 'tbl_products';
    $getProducts = getAll($p_table);

    if(!empty($_GET['createP'])){
        $msg = $_GET['createP'];
        $message = '<p class="actions">'.$msg.'</p>';
    }
    if(!empty($_GET['editP'])){
        $msg = $_GET['editP'];
        $message = '<p class="actions">'.$msg.'</p>';
    }
    if(!empty($_GET['deleteP'])){
        $msg = $_GET['deleteP'];
        $message = '<p class="actions">'.$msg.'</p>';
    }

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard</title>
</head>
<body>
    <h2>Welcome to the dashboard pageeeee</h2>
    <h3>Hello, <?php echo $_SESSION['user_name']; ?>!</h3>
    <a href="admin_logout.php">Sign Out</a>
    <div id="user-panel">
        <a href="admin_createuser.php">Create User</a>
        <a href="admin_edituser.php">Edit Account</a>
        <a href="admin_deleteuser.php">Delete User</a>
    </div>
    <div id="product-panel">
        <h4>Product List</h4>
        <a href="admin_addproduct.php">Create Product</a>
    </div>
    <?php echo !empty($message)? $message:''; ?>
    <div id="products">
        <?php while($row = $getProducts->fetch(PDO::FETCH_ASSOC)):?>
            <div class="p-item">
                <h2><?php echo $row['p_name'];?></h2>
                <h4><?php echo $row['p_brand'];?></h4>
                <p>Price: &#36;<?php echo $row['p_price'];?></p>
                <a href="admin_editproduct.php?id=<?php echo $row['p_id'];?>">Edit Product</a>
                <a href="admin_deleteproduct.php?id=<?php echo $row['p_id'];?>">Delete Product</a>
            </div>
        <?php endwhile;?>
    </div>
    
</body>
</html>