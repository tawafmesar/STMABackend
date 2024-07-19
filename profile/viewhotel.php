<?php


include "../connect.php";


$id = filterRequest("id");
    
    $stmt = $con->prepare("SELECT
    res.satrt_date,
    res.end_date,
    room.room_number,
    hotel.hotel_name,
    hotel.hotel_address,
    hotel.hotel_image,
    place.place_name
FROM
    reservation AS res
JOIN
    hotdelrooms AS room ON res.room_id = room.room_id
JOIN
    hotels AS hotel ON room.hotel_id = hotel.hotel_id
JOIN
    places AS place ON hotel.place_id = place.place_id
WHERE
    res.user_id = ? ");

    $stmt->execute(array($id));
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $count = $stmt->rowCount();
    if ($count > 0) {
        echo json_encode(array("status" => "success", "data" => $data));
    } else {
        echo json_encode(array("status" => "failure"));
    }
