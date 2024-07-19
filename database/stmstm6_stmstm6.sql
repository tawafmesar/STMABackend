-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 10.123.0.211:3307
-- Generation Time: Jul 19, 2024 at 03:04 AM
-- Server version: 8.0.25
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stmstm6_stmstm6`
--

-- --------------------------------------------------------

--
-- Table structure for table `flightreservations`
--

CREATE TABLE `flightreservations` (
  `flightreservations_id` int NOT NULL,
  `flight_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flight_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flight_airline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flight_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flight_travelclass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flight_userid` int NOT NULL,
  `reservationsdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci TABLESPACE `stmstm6_stmstm6`;

--
-- Dumping data for table `flightreservations`
--

INSERT INTO `flightreservations` (`flightreservations_id`, `flight_from`, `flight_to`, `flight_airline`, `flight_date`, `flight_travelclass`, `flight_userid`, `reservationsdate`) VALUES
(9, 'ttaasdasd', 'dsaasd', 'SAUDIA AIRLINE', '2024-04-24', 'Business Class', 64, '2024-04-24 02:29:37'),
(10, 'Jazan', 'Medina Al-Ula', 'flynas', '2024-05-26', 'First Class', 99, '2024-04-24 03:35:07'),
(11, 'jizan', 'jeddah', 'SAUDIA AIRLINE', '2024-09-18', 'Business Class', 87, '2024-05-18 12:55:52'),
(12, 'jazan', 'jeddah', 'SAUDIA AIRLINE', '2024-06-22', 'Business Class', 87, '2024-05-18 16:42:07'),
(13, 'jazab', 'ghh', 'QATAR AIRLINE', '2024-05-23', 'Economy Class', 87, '2024-05-21 02:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `hotdelrooms`
--

CREATE TABLE `hotdelrooms` (
  `room_id` int NOT NULL,
  `room_number` int NOT NULL,
  `room_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `room_beds` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `room_price` float NOT NULL,
  `hotel_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci TABLESPACE `stmstm6_stmstm6`;

--
-- Dumping data for table `hotdelrooms`
--

INSERT INTO `hotdelrooms` (`room_id`, `room_number`, `room_type`, `room_beds`, `room_price`, `hotel_id`) VALUES
(1, 101, 'Standard', '1 Queen Bed', 400, 1),
(2, 102, 'Standard', '2 Queen Beds', 420, 1),
(3, 201, 'Deluxe', '1 King Bed', 450, 1),
(5, 301, 'Suite', '1 King Bed + Sofa Bed', 500, 1),
(6, 5001, 'Standard', '1 Queen Beds', 650, 3),
(9, 5003, 'Standard', '2 Queen Beds', 750, 4),
(10, 5003, 'Deluxe', '1 King Bed', 800, 4),
(11, 5004, 'Suite', '1 King Bed + Sofa Bed', 1000, 4),
(12, 5003, 'Standard', '2 Queen Beds', 750, 5),
(13, 5003, 'Deluxe', '1 King Bed', 800, 5),
(14, 5004, 'Suite', '1 King Bed + Sofa Bed', 1000, 5),
(15, 5003, 'Standard', '2 Queen Beds', 750, 6),
(16, 5003, 'Deluxe', '1 King Bed', 800, 6),
(17, 5004, 'Suite', '1 King Bed + Sofa Bed', 1000, 6),
(18, 5003, 'Standard', '2 Queen Beds', 750, 7),
(19, 5003, 'Deluxe', '1 King Bed', 800, 7),
(20, 5004, 'Suite', '1 King Bed + Sofa Bed', 1000, 7),
(21, 5003, 'Standard', '2 Queen Beds', 750, 8),
(22, 5003, 'Deluxe', '1 King Bed', 800, 8),
(23, 5004, 'Suite', '1 King Bed + Sofa Bed', 1000, 8),
(24, 5003, 'Standard', '2 Queen Beds', 750, 9),
(25, 5003, 'Deluxe', '1 King Bed', 800, 9),
(26, 5004, 'Suite', '1 King Bed + Sofa Bed', 1000, 9),
(27, 5003, 'Standard', '2 Queen Beds', 750, 10),
(28, 5003, 'Deluxe', '1 King Bed', 800, 10),
(29, 5004, 'Suite', '1 King Bed + Sofa Bed', 1000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hotelimages`
--

CREATE TABLE `hotelimages` (
  `hotelimages_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `hotelimages_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci TABLESPACE `stmstm6_stmstm6`;

--
-- Dumping data for table `hotelimages`
--

INSERT INTO `hotelimages` (`hotelimages_id`, `hotel_id`, `hotelimages_path`) VALUES
(1, 1, '439963570.jpg'),
(2, 1, '332740341.jpg'),
(3, 1, '430034483_71166700067_n.jpg'),
(4, 1, '434130727_7207286135.jpg'),
(5, 1, '434175548_7235623433_n.jpg'),
(6, 1, 'habitas-accom1.jpg'),
(7, 1, 'habitas-alu00.jpg'),
(8, 1, 'Habitas-Al38.jpg'),
(9, 1, '1701688689479.jpeg'),
(10, 1, '4795dsfs8241.jpg'),
(11, 1, 'Habitas_Alula_Low-1151.jpg'),
(12, 3, '518-habitas-al-scaled.jpg'),
(13, 3, 'caravan-by-habitas04.jpg'),
(14, 3, 'AlUla-Portrait-1.jpg'),
(15, 3, '1365232.jpg'),
(16, 3, '1365238.jpg'),
(17, 3, 'Habitas_Carav152.jpg'),
(18, 3, '351754216.jpg'),
(19, 3, 'caravan-1024x768.png'),
(20, 3, 'Caravan-by-Habitas-5-scaled.jpg'),
(21, 3, '1365236.jpg'),
(22, 4, 'AlUla-Main-3.jpg'),
(23, 4, 'banyan-tree-alula-ddi-arabia.jpg'),
(24, 4, 'banyan-tree-r-outcroppings-with.jpg'),
(25, 4, '484525021.jpg'),
(26, 4, '484525017.jpg'),
(27, 4, '401839434.jpg'),
(28, 4, '484525018.jpg'),
(29, 4, '484525098.jpg'),
(30, 5, 'KpvzjWXhxXKbH_uvbcVO.jpg'),
(31, 5, 'pic-aseel-resort-riyadh-14.jpeg'),
(32, 5, 'pic-aseel-resort-riyadh-25.jpeg'),
(33, 5, 'pic-aseel-resort-riyadh-13.jpeg'),
(34, 5, 'E2Gko86X0AIyEV_.jpeg'),
(35, 5, 'AseelResortWedding.jpg'),
(36, 5, 'AseelResortbusiness-events.jpg'),
(37, 5, 'AseelResortLuxury-meets-heritage.jpg'),
(38, 5, 'image-asselkjt.jpeg'),
(39, 6, 'jareed-riy.jpg'),
(40, 6, 'maxresdefault.jpg'),
(41, 6, 'img-cheerful-villa-wit5.jpeg'),
(42, 6, 'pic-riyadh-12.jpeg'),
(43, 6, 'pic-riyadh-13.jpeg'),
(44, 6, 'diriya-hotels.jpeg'),
(45, 6, 'riyadh-photo-30.jpeg'),
(46, 7, 'Jareed-Hotel-004.jpg'),
(47, 7, '493791338.jpg'),
(48, 7, '489207410.jpg'),
(49, 7, '489203356.jpg'),
(50, 7, '376791405.jpg'),
(51, 7, '489202745.jpg'),
(52, 8, 'jeddah-trident-hotel-pho.jpeg'),
(53, 8, '427180.jpg'),
(54, 8, 'Casablanca-Grand-Hote.jpeg'),
(55, 8, 'Jeddah-Grand-Hotel-Exterior.jpeg'),
(56, 8, '186363754.jpg'),
(57, 8, '186364357.jpg'),
(58, 8, 'jeddah-trident-hotel-photo-12.jpeg'),
(59, 8, '186370269.jpg'),
(60, 8, '186375960.jpg'),
(61, 9, 'Al-Balad-Heritage-Hotels-001-scaled.jpg'),
(62, 9, 'Al-Balad-heritage-hotels.jpg'),
(63, 9, 'burj-al-balad-h.jpg'),
(64, 9, 'mecca-al-balad-tower-hotel-photo-7.jpeg'),
(65, 9, 'burj-al-balad-hotel.jpg'),
(66, 9, 'Al-Balad-Heritage-Hotels-004-scaled.jpg'),
(67, 10, '186364357.jpg'),
(68, 10, 'jeddah-trident-hotel-photo-12.jpeg'),
(69, 10, '186370269.jpg'),
(70, 10, '186375960.jpg'),
(71, 10, 'Al-Balad-Heritage-Hotels-001-scaled.jpg'),
(72, 10, 'Al-Balad-heritage-hotels.jpg'),
(73, 10, 'burj-al-balad-h.jpg'),
(74, 10, 'mecca-al-balad-tower-hotel-photo-7.jpeg'),
(75, 10, 'burj-al-balad-hotel.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_desc` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_price` int NOT NULL,
  `hotel_image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `place_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci TABLESPACE `stmstm6_stmstm6`;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `hotel_desc`, `hotel_address`, `hotel_price`, `hotel_image`, `place_id`) VALUES
(1, 'Our Habitas AlUla', 'Our Habitas AlUla has a fitness centre, terrace, a restaurant and bar in AlUla. The accommodation features a concierge service, luggage storage space and currency exchange for guests.\r\n\r\nAt the hotel, each room is fitted with a balcony. At Our Habitas AlUla the rooms are fitted with air conditioning and a safety deposit box.\r\n\r\nThe area is popular for hiking and cycling, and car hire is available at this 5-star hotel.\r\n\r\nSpeaking Arabic, English, Spanish and French at the reception, staff are willing to help at any time of the day.\r\n\r\nMadain Saleh Tombs is 24 km from the accommodation. The nearest airport is Prince Abdul Majeed bin Abdulaziz International, 54 km from Our Habitas AlUla, and the property offers a paid airport shuttle service.', 'Ashar Valley, AlUla', 500, '439963570.jpg', 1),
(3, 'Caravan by Habitas AlUla', 'Set in AlUla, 25 km from Madain Saleh Tombs, Caravan by Habitas AlUla offers accommodation with free bikes, free private parking and a restaurant. The accommodation features a 24-hour front desk, a concierge service and currency exchange for guests.\r\n\r\nAt the hotel, rooms are fitted with a patio. With a private bathroom equipped with a bidet and free toiletries, rooms at Caravan by Habitas AlUla also have free WiFi, while selected rooms here will provide you with a mountain view. At the accommodation all rooms come with bed linen and towels.\r\n\r\nYou can play table tennis at this 5-star hotel.\r\n\r\nThe nearest airport is Prince Abdul Majeed bin Abdulaziz International Airport, 54 km from Caravan by Habitas AlUla.', 'Wadi Al Ashar, 43532 AlUla, Saudi Arabia ', 700, '352194026.jpg', 1),
(4, 'Banyan Tree AlUla', 'Situated in AlUla, 35 km from Madain Saleh Tombs, Banyan Tree AlUla features accommodation with an outdoor swimming pool, free private parking, a terrace and a restaurant. This 5-star hotel offers room service, a 24-hour front desk and free WiFi. The rooms have a patio.\r\n\r\nThe units at the hotel are fitted with a seating area and a flat-screen TV. All rooms have a private bathroom, free toiletries and bed linen.\r\n\r\nGuests at Banyan Tree AlUla can enjoy an à la carte breakfast.\r\n\r\nGuests at the accommodation will be able to enjoy activities in and around AlUla, like horse riding.\r\n\r\nThe nearest airport is Prince Abdul Majeed bin Abdulaziz International Airport, 57 km from Banyan Tree AlUla.', 'Abdulrahman Al Ghafiqi Street, 43562 AlUla, Saudi Arabia', 400, '484525018.jpg', 1),
(5, 'Aseel Resort', 'Located in Riyadh, 2.1 km from DIR\\x92IYYAH, Aseel Resort provides accommodation with an outdoor swimming pool, free private parking, a garden and a terrace. This 5-star hotel offers room service and a 24-hour front desk. The hotel has a barbecue and garden views, and guests can enjoy a meal at the restaurant or a drink at the snack bar.\r\n\r\nAt the hotel each room is equipped with air conditioning, a wardrobe, a patio with pool view, a private bathroom, a flat-screen TV, bed linen and towels. Each room is fitted with a coffee machine and a shared bathroom with a bidet and free toiletries, while some rooms are equipped with a kitchen equipped with an oven. Guest rooms will provide guests with a fridge.\r\n\r\nRiyadh Park is 11 km from Aseel Resort, while King Khalid Grand Mosque is 15 km away. The nearest airport is King Khalid International Airport, 32 km from the accommodation.', 'Wadi Hanifah Street, 13713 Riyadh, Saudi Arabia', 700, '340337081.jpg', 2),
(6, 'Malfakum Al Diriyah', 'Malfakum Al Diriyah is located in Riyadh, 7.6 km from Riyadh Park, 12 km from King Khalid Grand Mosque, as well as 12 km from Riyadh Gallery Mall. The air-conditioned accommodation is 3.2 km from DIR\\x92IYYAH, and guests can benefit from complimentary WiFi and private parking available on site. The aparthotel features family rooms.\r\n\r\nAt the aparthotel, some units are soundproof.\r\n\r\nPanorama Mall is 14 km from the aparthotel, while Al Nakheel Mall is 17 km away. The nearest airport is King Khalid International Airport, 33 km from Malfakum Al Diriyah.', 'King Abdulaziz Road 13326', 500, '331576013.jpg', 2),
(7, 'Jareed Hotel Riyadh', 'Located in Riyadh, 4.1 km from Riyadh Park, Jareed Hotel Riyadh provides accommodation with a fitness centre, free private parking, a shared lounge and a terrace. The property features a bar, as well as a restaurant serving Italian cuisine. The accommodation offers a 24-hour front desk, airport transfers, room service and free WiFi.\r\n\r\nThe hotel will provide guests with air-conditioned rooms with a desk, a coffee machine, a fridge, a minibar, a safety deposit box, a TV and a private bathroom with a shower. Each room includes a kettle, while some rooms here will provide you with a balcony and others also provide guests with city views. At Jareed Hotel Riyadh every room is fitted with bed linen and towels.\r\n\r\nAn à la carte, continental or American breakfast can be enjoyed at the property.\r\n\r\nRiyadh Gallery Mall is 8.1 km from the accommodation, while DIR\\x92IYYAH is 8.3 km away. The nearest airport is King Khalid International Airport, 30 km from Jareed Hotel Riyadh.', 'Prince Turki Ibn Abdulaziz Al Awwal Road Boulevard Riyadh,', 800, '493791338.jpg', 2),
(8, 'Jeddah Grand Hotel', 'Jeddah Grand Hotel features air-conditioned rooms and a lobby café serving pastries and light snacks. Located on Mina Road, it is less than 2 km from Balad’s shopping venues.\r\n\r\nAll rooms are decorated in warm colours and feature large windows with black-out curtains. Each non-smoking room has a TV and bathroom.\r\n\r\nThe authentic Indian Kandahar Restaurant serves Tandoori Chicken, Kebabs, Chicken and Lamb Biryani and much more. Al Rawdah Restaurant is open throughout the day and features international and European dishes.\r\n\r\nHotel Jeddah Trident is less than one km away from Jeddah Seaport. Parking is available on-site.', 'Mina Street , Al Balad District, 24194 Jeddah', 600, '186366579.jpg', 3),
(9, 'Al Balad', 'Set in Jeddah, less than 1 km from Nassif House Museum, Al Balad Hospitality offers accommodation with a shared lounge, free private parking, a terrace and a restaurant. This 5-star hotel offers room service, a 24-hour front desk and free WiFi. The property is non-smoking and is located 7.2 km from Al Andalus Mall.\r\n\r\nAll guest rooms in the hotel are fitted with a flat-screen TV with satellite channels. At Al Balad Hospitality all rooms are fitted with air conditioning and a private bathroom.\r\n\r\nThe accommodation offers an à la carte or halal breakfast.\r\n\r\nJeddah Corniche is 8.7 km from Al Balad Hospitality, while Jeddah Mall is', 'Al Balad District, 22236 Jeddah', 950, '528378088.jpg', 3),
(10, 'Touq Balad', 'Featuring 3-star accommodation, is set in Jeddah, 1.1 km from Nassif House Museum and 6 km from Jeddah Corniche. This 3-star hotel offers an ATM. The accommodation offers a 24-hour front desk, airport transfers, room service and free WiFi throughout the property, as well as free private parking.\r\n\r\nGuests at the hotel can enjoy a continental breakfast.', ' King Fahd Road 6888434', 400, '233450674.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `placeimages`
--

CREATE TABLE `placeimages` (
  `placeimages_id` int NOT NULL,
  `place_id` int NOT NULL,
  `placeimages_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci TABLESPACE `stmstm6_stmstm6`;

--
-- Dumping data for table `placeimages`
--

INSERT INTO `placeimages` (`placeimages_id`, `place_id`, `placeimages_path`) VALUES
(1, 1, 'ulaa.jpg'),
(2, 1, 'allaa.jpg'),
(3, 1, 'alula.jpeg'),
(4, 1, 'GIxxzUKXwAAF7K_.jpeg'),
(5, 1, 'GIYILQsW0AAUA_C.jpeg'),
(6, 1, 'hegra-alula-scaled.jpg'),
(7, 1, 'HOME-SAGA-ALULA-1536x1536.jpg'),
(8, 1, 'alala.jpg'),
(9, 1, 'DSC06371-scaled.jpg'),
(10, 1, 'aallla.jpg'),
(11, 2, 'proj-diriyahsda-mobile.jpg'),
(12, 2, 'GIjTa7qW8AA47Ki.jpg'),
(13, 2, 'ddas.jpeg'),
(14, 2, 'adsasdd.jpeg'),
(15, 2, '165097(1).jpg'),
(16, 2, 'GIpJClsWIAA0T5u.jpeg'),
(17, 2, 'dda.jpeg'),
(18, 2, 'GIjTbjZWgAAldGH.jpg'),
(19, 2, 'GIpJBgzXIAA0RYx.jpg'),
(20, 3, 'jeddah11.jpeg'),
(21, 3, 'jeddah07.jpeg'),
(22, 3, 'jeddah08.jpg'),
(23, 3, 'jeddah04.jpg'),
(24, 3, 'jeddah02.jpg'),
(25, 3, 'jeddah01.jpg'),
(26, 3, 'jeddah09.jpg'),
(27, 3, 'jeddah05.jpg'),
(28, 3, 'jeddah06.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `place_id` int NOT NULL,
  `place_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `place_about` text COLLATE utf8_unicode_ci,
  `places_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `place_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci TABLESPACE `stmstm6_stmstm6`;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`place_id`, `place_name`, `place_about`, `places_address`, `place_img`) VALUES
(1, 'AlUla', 'Discover the extraordinary heritage of AlUla – a living museum of sandstone outcrops, historic developments, and preserved tombs.\nHome to boundless cultural treasures, including Saudi Arabia’s first UNESCO World Heritage site, AlUla is transforming into a once-in-a-lifetime experience for visitors from around the world.\n\nWith over 200,000 years of largely underexplored history, including the Nabataean city of Hegra, the ancient Kingdoms Dadanite and Lihyanite, and AlUla Old Town, AlUla’s rich heritage and bright future are open to explore.\n\nThe Royal Commission for AlUla is committed to a sustainable and responsible approach to the area’s urban, economic, and heritage development. Initiatives across archaeology, tourism, culture, education, and the arts are helping open this extraordinary destination to the world, all while preserving the area\'s remarkable natural and historic character.', 'Medina Province', 'AlulaSaudiArabia_Hero.jpg'),
(2, 'Diriyah', 'Experience over 600 years of authentic Najdi culture and history through a unique heritage experience, educational and cultural opportunities, and world-class residential living at the incredible Diriyah.\nJust 15 minutes northwest of Riyadh, Diriyah is the home of the At-Turaif UNESCO World Heritage Site, a beautifully preserved mud-brick city that was the birthplace of the Kingdom of Saudi Arabia, and the original home of House Al Saud. Combining traditional Najdi architectural styles with modern urbanism, Diriyah is a place that emotionally connects with visitors and celebrates the destination\'s rich heritage, revealing the origins of modern Saudi Arabia and the spiritual values it is rooted in.\n\nThis $62.2bn development, a giga-project under the Public Investment Fund, offers a unique opportunity to visit, live, work, shop, dine, and celebrate the wonder of the birthplace of the Kingdom’s rich heritage and culture. Designed to be a sustainable landmark, Diriyah is delivering initiatives focused on water conservation, energy efficiency, wellness, culture and heritage preservation, and climate change resilience. This new city is 100% walkable, promoting a healthy population.\n\nLearn more about how Vision 2030 is protecting and preserving historic sites across the Kingdom.', 'On the northwestern outskirts of the Riyadh', 'proj-diriyah.jpg'),
(3, 'Jeddah Historic District', 'Jeddah Historic District, once a small fishing village on the\nRed Sea coast, has a rich history  and cultural heritage. \nIt flourished as a vital trading hub on the ancient Silk Road and became a global gateway for pilgrims from all over the world.\nJeddah Historic District, a UNESCO World Heritage Site, is home to many diverse markets and more than 600 historic buildings with distinctive architecture that reflects the resourcefulness and adaptation of its people to their environment.\n\nUnder the supervision of the Ministry of Culture, the Jeddah Historic District program leads the efforts in the regeneration of the historical center of Jeddah (Al Balad). Its aim is to establish it as a hub of culture and the arts, and an international heritage destination.', 'Jeddah', 'jeddah10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int NOT NULL,
  `satrt_date` date NOT NULL,
  `end_date` date NOT NULL,
  `user_id` int NOT NULL,
  `room_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci TABLESPACE `stmstm6_stmstm6`;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `satrt_date`, `end_date`, `user_id`, `room_id`) VALUES
(12, '2024-04-24', '2024-04-26', 64, 6),
(14, '2024-05-18', '2024-06-19', 87, 2),
(15, '2024-05-21', '2024-06-18', 87, 6),
(16, '2024-05-20', '2024-05-24', 87, 23),
(17, '2024-09-21', '2024-12-21', 87, 21),
(19, '2024-07-21', '2024-05-25', 87, 1),
(20, '2024-05-26', '2024-07-21', 87, 18),
(21, '2024-05-21', '2024-05-23', 87, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int NOT NULL,
  `users_name` varchar(100) NOT NULL,
  `users_password` varchar(255) NOT NULL,
  `users_email` varchar(100) NOT NULL,
  `users_phone` varchar(100) NOT NULL,
  `users_verfiycode` int NOT NULL,
  `users_approve` tinyint NOT NULL DEFAULT '0',
  `users_role` int NOT NULL DEFAULT '1',
  `services_offered` int DEFAULT NULL,
  `services_details` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `users_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 TABLESPACE `stmstm6_stmstm6`;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_password`, `users_email`, `users_phone`, `users_verfiycode`, `users_approve`, `users_role`, `services_offered`, `services_details`, `image_url`, `users_create`) VALUES
(64, 'layan', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'layandasdasd@gmail.com', '123456788', 55793, 1, 1, NULL, NULL, NULL, '2024-01-01 22:20:06'),
(65, 'shahad', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'dassdasd@gmail.sa', '13231232', 12822, 1, 1, NULL, NULL, NULL, '2024-01-04 01:56:33'),
(67, 'wqeqw', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'dasdasdd@gmail.com', '12112', 12223, 1, 1, NULL, NULL, NULL, '2024-01-08 03:40:24'),
(68, 'shahad', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'qweq@gmail.com', '234224234', 83979, 1, 1, NULL, NULL, NULL, '2024-01-20 18:39:39'),
(69, 'Ghada123', '535a97a8c7ab406294c5a5f8c022c73f2bacc0a7', 'ghadamaswadi84@gmail.com', '21312312', 42956, 1, 1, NULL, NULL, NULL, '2024-03-25 16:30:26'),
(78, 'qweqwe', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ttawafmesar@gmail.com', '13212312111', 48659, 0, 1, NULL, NULL, NULL, '2024-04-19 06:54:56'),
(86, 'twadas', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'twafmsar@gmail.com', '123213312', 47045, 0, 1, NULL, NULL, NULL, '2024-04-19 21:15:42'),
(87, 'test', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'test@gmail.com', '1131221312', 76137, 1, 1, NULL, NULL, NULL, '2024-04-19 21:18:53'),
(88, 'AsASADA', 'ea80df51bc3b7aaa3932e00adace048402036ebc', 'weqwe@gmail.com', '1232131231', 58423, 0, 1, NULL, NULL, NULL, '2024-04-19 21:29:33'),
(89, 'wertu', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'qwerty@gmail.com', '1234567898', 66524, 0, 1, NULL, NULL, NULL, '2024-04-19 21:32:41'),
(91, 'assasaasasa', '20eabe5d64b0e216796e834f52d61fd0b70332fc', 'qwqwqwqtrrt@gmail.com', '2131231454', 14336, 0, 1, NULL, NULL, NULL, '2024-04-20 00:39:16'),
(97, 'Mxx_278', '016818778e70d3471e85c7f0b396bb8fa115b4de', 'weqwewe@gmail.com', '123123123', 89681, 1, 1, NULL, NULL, NULL, '2024-04-20 04:17:59'),
(99, 'Mshael', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'asdasdsa@gmail.com', '213 3213 2', 79367, 1, 1, NULL, NULL, NULL, '2024-04-24 03:10:42'),
(100, 'sasass', '20eabe5d64b0e216796e834f52d61fd0b70332fc', 'nawafmesar@gmail.com', '1212124444', 99443, 0, 1, NULL, NULL, NULL, '2024-06-06 20:37:52'),
(105, 'saadasd', '8cb2237d0679ca88db6464eac60da96345513964', 'sadasdasdas@gmail.com', '1221212111', 68973, 0, 2, 3312, 'testtt3', 'testt4', '2024-06-14 16:31:41'),
(106, 'ljnljh', '4d19335f2caf7a1dfa7bd6693d308c43f32f9ef2', 'ADSDSSA@gmail.com', '21312312', 223344, 0, 123123, 22323232, '123123', '1376majed.jpg', '2024-06-16 22:44:18'),
(107, 'ytrtrytrytr', '20eabe5d64b0e216796e834f52d61fd0b70332fc', 'adasdasadf@gmail.com', '21213123121', 25219, 0, 1234567, 0, '21213123121', '33643747pexels-pedro-ilhéu-oliveira-1583119.jpg', '2024-06-16 22:52:12'),
(108, 'essesses', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'tawafmesaar@gmail.com', '111222333', 88952, 0, 123456, 0, '111222333', '36133747pexels-pedro-ilhéu-oliveira-1583119.jpg', '2024-06-16 23:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `votessuggestions`
--

CREATE TABLE `votessuggestions` (
  `vs_id` int NOT NULL,
  `suggestion` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `vote` int NOT NULL,
  `vs_approve` int NOT NULL DEFAULT '1',
  `users_id` int NOT NULL,
  `place_id` int NOT NULL,
  `vs_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci TABLESPACE `stmstm6_stmstm6`;

--
-- Dumping data for table `votessuggestions`
--

INSERT INTO `votessuggestions` (`vs_id`, `suggestion`, `vote`, `vs_approve`, `users_id`, `place_id`, `vs_date`) VALUES
(1, 'Our Habitas AlUla has a fitness centre, terrace, a restaurant and bar in AlUla. The accommodation features a concierge service, luggage storage space and currency exchange for guests.\r\n\r\nAt the hotel, each room is fitted with a balcony. At Our Habitas AlUla the rooms are fitted with air conditioning and a safety deposit box.\r\n\r\nThe area is popular for hiking and cycling, and car hire is available at this 5-star hotel.\r\n\r\nSpeaking Arabic, English, Spanish and French at the reception, staff are willing to help at any time of the day.\r\n\r\nMadain Saleh Tombs is 24 km from the accommodation. The nearest airport is Prince Abdul Majeed bin Abdulaziz International, 54 km from Our Habitas AlUla, and the property offers a paid airport shuttle service.', 8, 1, 64, 1, '2024-03-20 03:17:23'),
(2, 'votessuggestions_ suggestion model  ', 3, 1, 65, 1, '2024-03-01 00:32:38'),
(3, 'sadas asd dadasd', 2, 1, 64, 1, '2024-03-04 02:32:06'),
(4, '1asassad dsaasd', 1, 1, 64, 1, '2024-03-04 02:34:08'),
(5, 'ggkghhh ', 4, 1, 64, 1, '2024-03-04 02:36:40'),
(6, 'his sadasda', 4, 1, 64, 1, '2024-03-04 02:38:36'),
(7, 'asdasdsad adsadaas', 5, 1, 64, 1, '2024-03-04 02:40:55'),
(8, 'sadsdasd', 5, 1, 64, 1, '2024-03-04 03:08:27'),
(9, 'edwe lew', 4, 1, 64, 1, '2024-03-06 23:55:38'),
(10, 'good place', 5, 1, 64, 3, '2024-03-19 03:54:18'),
(11, 'not good', 2, 1, 64, 3, '2024-03-19 03:54:54'),
(12, 'I visited it last year and it was an enjoyable trip. I highly recommend this place', 5, 1, 99, 3, '2024-04-24 03:46:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flightreservations`
--
ALTER TABLE `flightreservations`
  ADD PRIMARY KEY (`flightreservations_id`),
  ADD KEY `flight_userid` (`flight_userid`);

--
-- Indexes for table `hotdelrooms`
--
ALTER TABLE `hotdelrooms`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `hotelimages`
--
ALTER TABLE `hotelimages`
  ADD PRIMARY KEY (`hotelimages_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `hotels_ibfk_1` (`place_id`);

--
-- Indexes for table `placeimages`
--
ALTER TABLE `placeimages`
  ADD PRIMARY KEY (`placeimages_id`),
  ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `reservation_ibfk_2` (`room_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `users_phone` (`users_phone`),
  ADD UNIQUE KEY `users_email` (`users_email`);

--
-- Indexes for table `votessuggestions`
--
ALTER TABLE `votessuggestions`
  ADD PRIMARY KEY (`vs_id`),
  ADD KEY `place_id` (`place_id`),
  ADD KEY `users_id` (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flightreservations`
--
ALTER TABLE `flightreservations`
  MODIFY `flightreservations_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hotdelrooms`
--
ALTER TABLE `hotdelrooms`
  MODIFY `room_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `hotelimages`
--
ALTER TABLE `hotelimages`
  MODIFY `hotelimages_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `placeimages`
--
ALTER TABLE `placeimages`
  MODIFY `placeimages_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `place_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservation_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `votessuggestions`
--
ALTER TABLE `votessuggestions`
  MODIFY `vs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flightreservations`
--
ALTER TABLE `flightreservations`
  ADD CONSTRAINT `flightreservations_ibfk_1` FOREIGN KEY (`flight_userid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotdelrooms`
--
ALTER TABLE `hotdelrooms`
  ADD CONSTRAINT `hotdelrooms_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotelimages`
--
ALTER TABLE `hotelimages`
  ADD CONSTRAINT `hotelimages_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`place_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `placeimages`
--
ALTER TABLE `placeimages`
  ADD CONSTRAINT `placeimages_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`place_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `hotdelrooms` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `votessuggestions`
--
ALTER TABLE `votessuggestions`
  ADD CONSTRAINT `votessuggestions_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`place_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votessuggestions_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
