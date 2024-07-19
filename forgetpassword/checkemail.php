<?php

include "../connect.php";

$email = filterRequest("email");

$verfiycode     = filterRequest("verifyCode") ;


$stmt = $con->prepare("SELECT * FROM users WHERE users_email = ? ");
$stmt->execute(array($email));
$count = $stmt->rowCount();
result($count);

if ($count > 0) {
    $data = array("users_verfiycode" => $verfiycode);
    updateData("users", $data, "users_email = '$email'", false);
    //sendEmail($email , "رمز التحقق الخاص بك هو :  $verfiycode", "رمز تحقق تأكيد الحساب" ) ; 

    
}