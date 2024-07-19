<?php


include "../connect.php";


$id = filterRequest("id");


getAllData("votes&suggestions", "place_id  = ?  ", array($id));

