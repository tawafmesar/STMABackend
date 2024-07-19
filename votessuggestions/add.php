<?php 

include "../connect.php" ; 


$suggestion = filterRequest("suggestion") ; 
$vote  = filterRequest("vote") ; 
$users_id = filterRequest("users_id") ; 
$place_id = filterRequest("place_id") ; 


$data = array(
    "suggestion"  =>   $suggestion ,
    "vote"  =>   $vote,
    "users_id"  =>   $users_id,
    "place_id"  =>   $place_id
    
);


insertData("votes&suggestions" ,$data) ; 
