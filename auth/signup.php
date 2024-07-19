<?php

include "../connect.php";

$username = filterRequest("username");
$password = sha1($_POST['password']);
$email = filterRequest("email");
$phone = filterRequest("phone");
$verfiycode     = filterRequest("verifyCode") ;

$users_role     = filterRequest("users_role") ;
$services_offered     = filterRequest("services_offered") ;
$services_details     = filterRequest("services_details") ;


$file_path = imageUpload("files");


$stmt = $con->prepare("SELECT * FROM users WHERE users_email = ? OR users_phone = ? ");
$stmt->execute(array($email, $phone));
$count = $stmt->rowCount();
if ($count > 0) {
    printFailure("PHONE OR EMAIL");
} else {

    $data = array(
        "users_name" => $username,
        "users_password" =>  $password,
        "users_email" => $email,
        "users_phone" => $phone,
        "users_verfiycode" => $verfiycode ,

        "users_role" => $users_role ,
        "services_offered" => $services_offered ,
        "services_details" => $services_details ,
        "image_url"  =>   $file_path,

    );
   // sendEmail($email , "رمز التحقق الخاص بك هو :  $verfiycode", "رمز تحقق تأكيد الحساب" ) ; 
    insertData("users" , $data) ; 

}