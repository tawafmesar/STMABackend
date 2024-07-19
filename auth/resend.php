<?php 

include "../connect.php"  ;

$email = filterRequest("email");

$verfiycode     = filterRequest("verifycode");

$data = array(
"users_verfiycode" => $verfiycode
) ; 

updateData("users" ,  $data  , "users_email = '$email'" ) ; 

//sendEmail($email , "Verfiy Code Ecommerce" , "Verfiy Code $verfiycode") ; 