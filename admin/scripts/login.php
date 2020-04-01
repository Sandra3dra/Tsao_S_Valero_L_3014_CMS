<?php
function login($username, $password, $ip){
    // return sprintf('You are logging in with username=>%s, password=>%s', $username, $password);

    $pdo = Database::getInstance()->getConnection();

    // check existance  SELECT * FROM "tbl_user" WHERE "user_name" =' .$username 'AND "user_pass" =' .$password
    $check_exist_query = 'SELECT COUNT(*) FROM `tbl_user` WHERE user_name =:username';
    $user_set = $pdo->prepare($check_exist_query);
    $user_set->execute(
        array(
            ':username'=>$username
        )
    );

    if($user_set->fetchColumn()>0){
        // check if match
        $check_match_query = 'SELECT * FROM `tbl_user` WHERE user_name =:username';
        $check_match_query .= ' AND user_pass=:password';
        $user_match = $pdo->prepare($check_match_query);
        $user_match->execute(
            array(
                ':username'=>$username,
                ':password'=>$password
            )
        );
        while($founduser = $user_match->fetch(PDO::FETCH_ASSOC)){
            $id = $founduser['user_id'];

            $_SESSION['user_id'] = $id;
            $_SESSION['user_name'] = $founduser['user_fname'];

            $update_exist_query = 'UPDATE `tbl_user` SET user_ip =:ip WHERE user_id =:id';
            $ip_set = $pdo->prepare($update_exist_query);
            $ip_set->execute(
                array(
                    ':id'=>$id,
                    ':ip'=>$ip
                )
            );
        }


        if(isset($id)){
            redirect_to('index.php');
            // return 'You have logged in sucessfully!';
        } else {
            return 'Wrong password, please try agian';
        }
    }else{
        return 'user does not exist';
    }

}

function confirm_logged_in() {
    if(!isset($_SESSION['user_id'])){
        redirect_to('admin_login.php');
    }
}

function logout() {
    session_destroy();
    redirect_to('admin_login');
}