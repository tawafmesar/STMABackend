<?php


include "../connect.php";


$id = filterRequest("id");


getAllData("hotelimages", "hotel_id  = ?  ", array($id));

