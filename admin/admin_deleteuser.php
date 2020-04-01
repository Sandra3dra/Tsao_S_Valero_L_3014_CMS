<?php 
    require_once '../load.php';
    confirm_logged_in();
    
    if(isset($_GET['id'])){
        $user_id = $_GET['id'];
        $delete_user_result = deleteUser($user_id);

        if(!$delete_user_result){
            $message = 'Failed to delete user';
        }
    }

    $users = getAllUsers();
    if(!$users){
        $message = 'Failed to get user list';
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete User</title>
</head>
<body>
   <h2>Time to kick some one out....</h2>
   <?php echo !empty($message)?$message:'';?>
   <?php if($users):?>
   <table>
        <thead>
            <tr>
                <td>User ID</td>
                <td>User Name</td>
                <td>User Email</td>
                <td>Delete</td>
            </tr>
        </thead>
        <tbody>
            <?php while($user = $users->fetch(PDO::FETCH_ASSOC)):?>
                <tr>
                    <td><?php echo $user['user_id'];?></td>
                    <td><?php echo $user['user_name'];?></td>
                    <td><?php echo $user['user_email'];?></td>
                    <td><a href="admin_deleteuser.php?id=<?php echo $user['user_id'];?>">Delete</a></td>
                </tr>
            <?php endwhile;?>
        </tbody>
   </table>
   <?php endif;?>
</body>
</html>