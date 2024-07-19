<?php

include "../connect.php";

$vehicle_id = filterRequest("vehicle_id");
$parkinglot_id = filterRequest("parkinglot_id");





    $data = array(
        "vehicle_id" => $vehicle_id,
        "parkinglot_id" =>  $parkinglot_id,

    );

    insertData("parkingreservation" , $data) ; 
