<?php

include "../connect.php";

$flight_from = filterRequest("flight_from");
$flight_to = filterRequest("flight_to");
$flight_airline = filterRequest("flight_airline");
$flight_date = filterRequest("flight_date");
$flight_travelclass = filterRequest("flight_travelclass");
$flight_userid = filterRequest("flight_userid");












    $data = array(
        "flight_from" => $flight_from,
        "flight_to" =>  $flight_to,
        "flight_airline" => $flight_airline,
        "flight_date" =>  $flight_date,
        "flight_travelclass" => $flight_travelclass,
        "flight_userid" =>  $flight_userid,
    );

    insertData("flightreservations" , $data) ; 
