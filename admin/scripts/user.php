<?php

function createUser($fname, $username, $password, $email){
    $pdo = Database::getInstance()->getConnection();

    $check_exist_query = 'SELECT COUNT(*) FROM `tbl_user` WHERE user_name =:username';
    $user_set = $pdo->prepare($check_exist_query);
    $user_set->execute(
        array(
            ':username'=>$username
        )
    );

    if($user_set->fetchColumn()>0){
        return 'User already exits.';
    }else{
        $insert_new_query = "INSERT INTO tbl_user (user_fname, user_name, user_pass, user_email) VALUES (:fname, :username, :password, :email);";
        $user_add = $pdo->prepare($insert_new_query);
        $create_user_result = $user_add->execute(
            array(
                ':fname'=>$fname,
                ':username'=>$username,
                ':password'=>$password,
                ':email'=>$email
            )
        );
        
        if($create_user_result){
            return '<p>You have signed up sucessfully! Go back to <a href="index.php">dashboard</a></p>';
        } else {
            return 'Something went wrong';
        }
    }
}

function getSingleUser($id){
    $pdo = Database::getInstance()->getConnection();

    $get_single_query = 'SELECT * FROM `tbl_user` WHERE user_id =:id';
    $user_get = $pdo->prepare($get_single_query);
    $got_single = $user_get->execute(
        array(
            ':id'=>$id
        )
    );

    // echo $user_get->debugDumpParams();
    // exit;

    if($got_single && $user_get->rowCount()){
        return $user_get;
    }else{
        return false;
    }
}

function getAllUsers(){
    $pdo = Database::getInstance()->getConnection();
    $get_user_query = "SELECT * FROM tbl_user";
    $user_state = $pdo->query($get_user_query);

    if($user_state){
        return $user_state;
    }else{
        return false;
    }
}

function editUser($id, $fname, $username, $password, $email){
    $pdo = Database::getInstance()->getConnection();

    $update_user_query = 'UPDATE `tbl_user` SET user_fname =:fname, user_name =:username, user_pass =:password, user_email =:email WHERE user_id =:id';
    $single_update = $pdo->prepare($update_user_query);
    $updated_single = $single_update->execute(
        array(
            ':fname'=>$fname,
            ':username'=>$username,
            ':password'=>$password,
            ':email'=>$email,
            ':id'=>$id
        )
    );

    if($updated_single){
        redirect_to('index.php');
        // return '<p>You have updated sucessfully!</p>';
    }else{
        return 'Something went wrong with the update.';
    }
}

function deleteUser($id){
    //TODO: ==> 6:50
    //1. get the db connection
    $pdo = Database::getInstance()->getConnection();

    //2. Run the proper SQL query that remove the user with user_id = $id
    $delete_user_query = 'DELETE FROM tbl_user WHERE user_id=:id';
    $delete_user_set = $pdo->prepare($delete_user_query);
    $delete_user_result = $delete_user_set->execute(array(
        ':id'=>$id
    ));

    //3. If it goes through, redirect to admin_deleteuser.php
    // otherwise, return false
    if($delete_user_result && $delete_user_set->rowCount() > 0){
        redirect_to('admin_deleteuser.php');
    }else{
        return false;
    }
}