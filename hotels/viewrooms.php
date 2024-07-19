<?php


include "../connect.php";


$id = filterRequest("id");


getAllData("hotdelrooms", "hotel_id  = ?  ", array($id));

