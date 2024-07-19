<?php


include "../connect.php";


$id = filterRequest("id");


getAllData("flightreservations", "flight_userid  = ?  ", array($id));

