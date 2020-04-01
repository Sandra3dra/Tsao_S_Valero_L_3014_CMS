<?php 
    require_once '../load.php';
    confirm_logged_in();
    
    if(isset($_GET['id'])){
        $p_id = $_GET['id'];
        $delete_p_result = deleteProduct($p_id);

        if(!$delete_p_result){
            $message = 'Failed to delete user';
        }
    }
?>