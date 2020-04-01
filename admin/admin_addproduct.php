<?php
    require_once '../load.php';
    confirm_logged_in();

    $genre_table = 'tbl_genre';
    $genres      = getAll($genre_table);

    if(isset($_POST['submit'])){
        $p_name = trim($_POST['name']);
        $p_img = $_FILES['img'];
        $p_brand = trim($_POST['brand']);
        $p_price = trim($_POST['price']);
        $p_review = trim($_POST['revList']);
        $p_des = trim($_POST['des']);
        $p_gen = trim($_POST['genList']);

        if(!empty($p_name) && !empty($p_brand) && !empty($p_price) && !empty($p_review) && !empty($p_gen)){
            $message = addProduct($p_id, $p_name, $p_img, $p_brand, $p_price, $p_review, $p_des, $p_gen);
        }else{
            $message = 'please fill in the missing information.';
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
</head>
<body>
    <?php echo !empty($message) ? $message : ''; ?>
    <form action="admin_addproduct.php" method="post" enctype="multipart/form-data">
        <label>Product Name:*</label>
        <input type="text" name="name" value="" required><br><br>

        <label>Product Image:</label><br>
        <input type="file" name="img" value=""><br><br>

        <label>Product Brand:*</label><br>
        <input type="text" name="brand" value="" required><br><br>

        <label>Product Price:*</label><br>
        <input type="number" name="price" step="0.01" value="" required><br><br>

        <label>Product Review:*</label><br>
        <select name="revList" required>
            <option>Please select a rating..</option>
            <option value="N/A">N/A</option>
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
        <textarea name="des"></textarea><br><br>

        <label>Product genre:*</label><br>
        <select name="genList" required>
            <option>Please select a product genre..</option>
            <?php while ($row = $genres->fetch(PDO::FETCH_ASSOC)): ?>
                <option value="<?php echo $row['genre_id'] ?>"><?php echo $row['genre_name']; ?></option>
            <?php endwhile;?>
        </select>
        <br><p>* required</p>
        <br>
        <button type="submit" name="submit">Add Product</button>
    </form>
</body>
</html>