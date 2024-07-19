<?php

include "../connect.php";

 
$password = sha1($_POST['password']);
$email = filterRequest("email"); 



getData("users" , "users_email = ? AND  users_password = ?" , array($email , $password)) ;
 
