<?php
    require_once '../load.php';
    confirm_logged_in();

    $id = $_SESSION['user_id'];
    // $id = 'randomID';
    $current_user = getSingleUser($id);
    
    if(!$current_user){
        $message = 'Failed to get user info.';
    }

    if(isset($_POST['submit'])){
        $fname = trim($_POST['fname']);
        $username = trim($_POST['username']);
        $password = trim($_POST['password']);
        $email = trim($_POST['email']);

        $message = editUser($id, $fname, $username, $password, $email);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Account</title>
</head>
<body>
    <h2>Edit Account Info</h2><p><a href="index.php">Go Back</a></p>
    <?php echo !empty($message)? $message:''; ?>
    <form action="admin_edituser.php" method="post">
        <?php if ($current_user):?>
            <?php while($user_info = $current_user->fetch(PDO::FETCH_ASSOC)):?>
                <label>First Name:</label>
                <input type="text" name="fname" value="<?php echo $user_info['user_fname']; ?>"><br><br>
                <label>Username:</label>
                <input type="text" name="username" value="<?php echo $user_info['user_name']; ?>"><br><br>
                <label>Password:</label>
                <input type="password" name="password" value="<?php echo $user_info['user_pass']; ?>"><br><br>
                <label>Email:</label>
                <input type="email" name="email" value="<?php echo $user_info['user_email']; ?>"><br><br>
                <button type="submit" name="submit">Submit</button>
            <?php endwhile;?>
        <?php endif;?>
    </form>

</body>
</html>