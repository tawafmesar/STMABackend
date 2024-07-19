<?php


include "../connect.php";


$id = filterRequest("id");


getAllData("hotels", "place_id  = ?  ", array($id));

