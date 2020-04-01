<?php
    require_once '../load.php';
    confirm_logged_in();

    if(isset($_GET['id'])){
        $p_id = $_GET['id'];
        $get_product = getOneProduct($p_id);

        if(!$get_product){
            $message = 'Failed to get product info.';
        }
    }

    $genre_table = 'tbl_genre';
    $genres      = getAll($genre_table);

    if(isset($_POST['submit'])){
        $p_name = trim($_POST['name']);
        $p_img = $_FILES['img'];
        $p_brand = trim($_POST['brand']);
        $p_review = trim($_POST['revList']);
        $p_des = trim($_POST['des']);
        $p_gen = trim($_POST['genList']);

        $message = editProduct($p_id, $p_name, $p_img, $p_brand, $p_review, $p_des, $p_gen);
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Product</title>
</head>
<body>
    <h2>Edit Product Info</h2><p><a href="index.php">Go Back</a></p>
    <?php echo !empty($message)? $message:''; ?>
    <form action="admin_editproduct.php" method="post" enctype="multipart/form-data">
        <?php if ($get_product):?>
            <?php while($p_info = $get_product->fetch(PDO::FETCH_ASSOC)):?>
                <label>Product Name:</label>
                <input type="text" name="name" value="<?php echo $p_info['p_name']; ?>"><br><br>

                <label>Product Image:</label><br>
                <img src="../images/<?php echo $p_info['p_img'];?>" alt="<?php echo $p_info['p_name']; ?>">
                <input type="file" name="img" value=""><br><br>

                <label>Product Brand:</label><br>
                <input type="text" name="brand" value="<?php echo $p_info['p_brand']; ?>"><br><br>

                <label>Product Review:</label><br>
                <select name="revList">
                    <option>Please select a rating..</option>
                    <option value="0">0</option>
                    <option value="0.5">0.5</option>
                    <option value="1">1</option>
                    <option value="1.5">1.5</option>
                    <option value="2">2</option>
                    <option value="2.5">2.5</option>
                    <option value="3">3</option>
                    <option value="3.5">3.5</option>
                    <option value="4">4</option>
                    <option value="4.5">4.5</option>
                    <option value="5">5</option>
                </select><br><br>

                <label>Product Description:</label><br>
                <textarea name="des"><?php echo $p_info['p_des']; ?></textarea><br><br>

                <label>Product genre:</label><br>
                <select name="genList">
                    <option>Please select a product genre..</option>
                    <?php while ($row = $genres->fetch(PDO::FETCH_ASSOC)): ?>
                        <option value="<?php echo $row['genre_id'] ?>"><?php echo $row['genre_name']; ?></option>
                    <?php endwhile;?>
                </select>
                <br><br>
                <button type="submit" name="submit">Save</button>
            <?php endwhile;?>
        <?php endif;?>
    </form>

</body>
</html>