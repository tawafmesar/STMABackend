<?php

include "../connect.php";

$satrt_date = filterRequest("satrt_date");
$end_date = filterRequest("end_date");
$user_id = filterRequest("user_id");
$room_id = filterRequest("room_id");





    $data = array(
        "satrt_date" => $satrt_date,
        "end_date" =>  $end_date,
        "user_id" => $user_id,
        "room_id" => $room_id,
    );

    insertData("reservation" , $data) ; 
