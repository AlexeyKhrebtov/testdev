-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 21 2018 г., 14:33
-- Версия сервера: 10.1.34-MariaDB
-- Версия PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vuebnb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `listings`
--

CREATE TABLE `listings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenity_wifi` tinyint(1) NOT NULL DEFAULT '0',
  `amenity_pets_allowed` tinyint(1) NOT NULL DEFAULT '0',
  `amenity_tv` tinyint(1) NOT NULL DEFAULT '0',
  `amenity_kitchen` tinyint(1) NOT NULL DEFAULT '0',
  `amenity_breakfast` tinyint(1) NOT NULL DEFAULT '0',
  `amenity_laptop` tinyint(1) NOT NULL DEFAULT '0',
  `price_per_night` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_extra_people` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_weekly_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_monthly_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `listings`
--

INSERT INTO `listings` (`id`, `title`, `address`, `about`, `amenity_wifi`, `amenity_pets_allowed`, `amenity_tv`, `amenity_kitchen`, `amenity_breakfast`, `amenity_laptop`, `price_per_night`, `price_extra_people`, `price_weekly_discount`, `price_monthly_discount`, `created_at`, `updated_at`) VALUES
(1, 'Central Downtown Apartment with Amenities', 'No. 11, Song-Sho Road, Taipei City, Taiwan 105', 'Come and stay at this modern and comfortable apartment! My home is centrally located right in the middle of the downtown. Talk about convenience! Shops, stores, and other destination areas are nearby. \r\n\r\nFeel the warmth of the sun as there is plenty of natural light showers. The living room features tv, sofa, table, radio, and fan. There is free wi-fi with a fast internet speed. \r\n\r\nForgot shopping for breakfast staples? We provide eggs, bread, cereals, coffee, milk, tea and cookies. Enjoy cooking as my kitchen boasts full size appliances. The dining table is for four people. Need to wash your clothes? There is a washer and a dryer. We provide hampers, detergents, and clothing conditioner. \r\n\r\nIf you need to hit the gym, there is located at the fourth floor of the building. There is indoor spa and pool.', 1, 0, 1, 0, 0, 1, '$109', '$8', '12%', '20%', NULL, NULL),
(2, 'Private Suite with Free Parking', '110, Taiwan, Taipei City, Xinyi District, Section 5, Xinyi Road, 7', 'The entire apartment is for you to enjoy as my home is not shared with other guests or myself. This is a private suite so you can enjoy total privacy! I am just a text away if you need anything. \r\n\r\nThe kitchen has a microwave, oven, coffee machine, electric stove, and many others. The whole unit has air conditioning and heating that you can easily adjust its temperatures. \r\n\r\nAt the living room is like your small office space. It has a desk and chair, a good area for you to work. There is also wi-fi. The bathroom features a bath tub for you to relax. We provide soaps, shampoo, and other toiletries. \r\n\r\nThere is one free parking in this unit. No need to park in metered parking spots or paid garages!', 0, 1, 0, 1, 0, 0, '$105', '$16', '14%', '19%', NULL, NULL),
(3, '2 Bedroom House \' Pool Included!', 'No. 51, Hanzhong Street, Wanhua District, Taipei City, Taiwan 108', 'Come and stay at my home that has two bedrooms and bathrooms. Each bedroom is lockable and secure if you want safety and privacy. \r\nBreakfast is included and there is airport transfer. Wow! \r\n\r\nThere is free wi-fi included in your stay. Dip into the inviting private pool. The kitchen is fully-equipped. Dining area can accommodate up to 8 people. There is cable TV and DVD player in the living room. \r\n\r\nIf you want to go around the town and you have no vehicle, I can rent you out my motorbike. Everything is so easy to access from this fabulous location! Just a ten minute drive is the town where you can shop, dine, and look around!', 1, 1, 1, 1, 1, 1, '$84', '$22', '7%', '8%', NULL, NULL),
(4, 'Amazing Views and Walking Distance from Everything!', 'No. 134, Section 4, Zhongxiao East Road, Da\'an District, Taipei City, Taiwan 106', 'Stay in one of Taipei\'s nicest tower. From your bedroom you will get to see the wonderful views of Taipei. The living room is a great spot for a coffee or wine. There is TV, telephone, DVD player, and radio.  Kitchen has electric stove/oven, kettle, toaster, pans, refrigerator and coffee maker. Bathroom has fresh towels, toiletries, and hot and cold shower. If you want to wash your clothes, there is a laundry card provided for you. Card-operated laundry facilities located at the fifth floor. \r\n\r\nWalk to the train station, enjoy nightlife as the bars and clubs are nearby and enjoy fine dining in delicious restaurants and fun attractions. \r\n\r\nThe area has 24/hour security so you are safe and secured. You also have access to the building\'s community pool and gym.', 0, 0, 1, 1, 0, 1, '$51', 'No charge', '9%', '10%', NULL, NULL),
(5, 'Apartment w/ Balcony', 'No. 12, Songshou Road, Xinyi District, Taipei City, Taiwan 110', 'Unit is on the 15th floor. There is elevator in the building, wheel chair accessible, free parking on premises, hot tub, heating and air conditioning. \r\n\r\nEssentials are provided for you such as towels, soaps, shampoos, conditioners, and hair dryer. \r\n\r\nThe apartment has living room with a kitchen, one bedroom and a bathroom that has a bath tub with shower. You can relax at the balcony and watch the view of the city.\r\n\r\nIn the bedroom there is a big closet. In the kitchen there is an oven, coffee machine, a stove, a dishwasher and a fridge. Vinegar, oil, salt, pepper, tee and cleansing material is provided. \r\n\r\nMy home is comfortable and nice, well equipped with all the necessary facilities to make your stay in Taipei unforgettable.\r\n\r\nCinemas, pizzeria, restaurants, shops, supermarket, malls are accessible. Close to the building, in the main square you can rent bikes.', 0, 0, 0, 1, 0, 1, '$103', '$13', '15%', '16%', NULL, NULL),
(6, 'Elegant 1 bedroom Apartment - Breakfast Included!', '10491, Taiwan, Taipei City, Zhongshan District, Zhangchun Road, 176', 'Elegant apartment with 1 bedroom and just 1 block away from shopping, market, and 2 blocks away from the train station. Walking distance to the best of Taipei\'s financial district! \r\n\r\nMy apartment is located at the 17th floor. The building is secure and modern. \r\n\r\nThe bedroom has one queen size bed that is enough for two people. \r\n\r\nThere is also a comfortable couch next to the bed. Bathroom has bath tub, towels, hot and cold shower, hair dryer, toiletries, soaps, and shampoo. \r\n\r\nBreakfast include eggs, bread, coffee, juice, fruits, jam, and milk. My kitchen has appliances if you want to cook. \r\n\r\nThe view from the living room is just beyond amazing! Watch the spectacular sunset while eating at the dining area.', 1, 0, 1, 0, 1, 1, '$106', '$14', '6%', '7%', NULL, NULL),
(7, '1 Bedroom w/ Parking in Amazing Location!', '111, Taiwan, Taipei City, Shilin District, Lane 62, Tianmu West Road,', 'This luxury apartment has one bedroom with a queen sized bed that can sleep two people. I have an extra mattress that I can prepare if there are more than 2 people staying. My place accommodates up to 4 people. The bathroom is spotlessly clean and has toiletries. Kitchen is fully-stocked and dining table is good up to four people. \r\n\r\nThe building has amenities guests can enjoy such as gym, washer or dryer, and indoor pool. There is a large outdoor patio where you can enjoy a BBQ. Parking is available.\r\n\r\nWatch the beautiful views of the city thanks to the large windows. The living room has a flat screen tv where you can watch your favorite shows. There is cable tv and netflix. The couch is big enough that you can even sleep on it comfortably. Fresh linens are provided and breakfast essentials such as bread, tea, coffee, fruit juices, and other snacks.', 1, 0, 0, 1, 0, 0, '$58', '$11', '6%', '7%', NULL, NULL),
(8, 'Central Condo w/ 2 Beds', 'No. 39, Section 1, Fuxing South Road, Songshan District, Taipei City, Taiwan 105', 'Make my place your home base to explore the city of Taipei. Feel the homey feeling of a private residence with hotel amenities. There is elevator in the building, buzzer/wireless intercom, gym, and a 24 hour security.\r\n\r\nInside the unit there is Wi-Fi, stocked pantry that has breakfast supplies and snacks.\r\n\r\nThe bedroom has a carpeted flooring and two beds that can fit four people. There is a chair where you can overlook the views of the city. \r\n\r\nMy kitchen has a full-size fridge, oven, stove, and a dishwasher. We provide dishwashing liquid.\r\n\r\nIn the bathroom you will find your towels, soaps, shampoo, toilet paper, hanger, and a hair dryer. Relax and enjoy the bath tub. There is also a wall mirror where you can get your make up or hair just right. \r\n\r\nThis is your private suite. No other guests will share it with you.', 1, 0, 0, 0, 1, 0, '$74', '$8', '15%', '27%', NULL, NULL),
(9, 'Apartment in Downtown Area Close to Shopping', 'No. 1, Minle St,, Datong District, Taipei City, Taiwan 103', 'One bedroom unit is surrounded by many dining and shopping options in Taipei. My apartment is the ideal home base for exploring the city as this is located in downtown.\r\n \r\nRelax and enjoy a quiet evening. There is a desk where you can work, a tv if you want to watch your favorite shows or movies. The kitchen has full-size fridge, microwave, and stove. Inside the refrigerator are eggs, meat products, and milk. There are cup noodles inside the cabinets and they are complimentary for my guests. \r\n\r\nThe kitchen has a bar counter where you can enjoy your meals. It has four high chairs where you can comfortably sit. Bedroom has one queen sized bed that can sleep two people. I have two extra mattresses that can be prepared for you. \r\n\r\nBathroom has a bath tub, hot and cold shower, a large mirror and complimentary toiletries.\r\n\r\nYou\'ll feel spoiled with other amenities like toilet paper, Wi-Fi, cable TV, towels, hangers, iron and hair dryer.', 0, 0, 0, 0, 1, 0, '$74', 'No charge', '7%', '19%', NULL, NULL),
(10, 'Cozy, Modern & Private Suite w/ Rooftop Pools', '100, Taiwan, Taipei City, Zhongzheng District, Section 1, Shimin Boulevard, 100', 'Luxurious suite just a walking distance from some of the best restaurants, sky trains, shopping street, and supermarket. It features hotel-like amenities with warmest welcome for your stay. \r\n\r\nThere are rooftop pools where you can see the beautiful views from above. My home is located on the 20th floor. At night, watch the sky using a telescope at the living room.\r\n \r\nAccessing the unit is through a private entrance with electric keypad. I am providing my guests their own codes for them to enter. I live next door so I am available if needed at any time. \r\n\r\nSecurity and safety is guaranteed in the area. A police station is a few blocks away from my apartment. Many people, residence or tourists alike, enjoy walking during the night here. There is a pharmacy on the ground floor. \r\n\r\nThe best thing here is the view. Enjoy the wonderful sight from your bedroom, living room, and rooftop swimming pools.', 0, 1, 1, 1, 0, 0, '$108', '$6', '10%', '20%', NULL, NULL),
(11, 'Beach Front House', 'Nowy Swiat 62, 00-357 Warszawa, Poland', 'The best thing about my house is the view. Watch the beautiful sea view and relax in the balcony while drinking your morning coffee. \r\n\r\nMy place is good for solo adventurers, business travelers, and couples. \r\n\r\nThis is a shared place. I live downstairs with my dog and cats. If you need anything, I am available if you have any trouble. Guests stay on the second floor. Toilet and bathroom with tub is not shared. The bathroom and kitchen floors are heated. The house has air-conditioning. If you want to cook, you are free to do so. Living room is a common space. It has a flat screen tv, DVD player, and a collection of movies you can watch. The shelves have books in different genre. \r\n\r\nAside from its beautiful nature, the area is quiet. You have total privacy.', 0, 0, 1, 0, 1, 1, '$69', '$8', '15%', '19%', NULL, NULL),
(12, 'House by the Mountains w/ Billiards!', 'plac Trzech Krzy?y 16A, 00-499 Warszawa, Poland', 'Are you looking for a place that is quiet and has that homey feeling? Stay where you could rest and enjoy a bit of the mountains. My house is overlooking the valleys. Your bedroom is on the second floor facing the beautiful mountains. You have a separate bathroom and toilet. \r\n\r\nIf you want to hike, there are hiking trails around. You can also rent my bicycles for a small fee. Explore the wonderful area near us in a relaxing and fun way. Be close to nature!\r\n\r\nThe nearest big city is approximately 10 kilometers. The nearest store is about 3 kilometers from my house. \r\n\r\nLiving room has billiards and a bar where you can have your drinks. It is very spacious! \r\n\r\nMake your stay in Poland unforgettable!', 0, 0, 1, 0, 0, 1, '$111', 'No charge', '9%', '26%', NULL, NULL),
(13, 'Log House In Front of the Lake', '00-175, Aleja Jana Paw?a II 82, Warszawa, Poland', 'These are two small houses. The one house features a bedroom where you can sleep comfortably. The second house is quite larger as it has the bathroom with bath tub, sink, and toiletries. There are two chairs placed outside the house where you can watch the stunning views of the lake. \r\n\r\nEngulf in nature. Experience silence and calmness. The wooden house is comfortable for our guests. A short walk to the lake and forest. \r\n\r\nHear the birds singing every morning as you sip your cup of coffee provided by us. I live a mile away so whenever you need assistance, I can go and help you as quickly as I can. \r\n\r\nI would love to be your host! Contact me now and stay in my wonderful and humble abode. This is also pet-friendly.', 1, 0, 1, 1, 1, 0, '$112', '$18', '10%', '25%', NULL, NULL),
(14, 'Feel at Home \' Quiet Neighborhood', 'Woloska 12, 02-675 Warszawa, Poland', 'There is a fireplace in the bedroom. Bed is a queen-sized which can accommodate two people. There is also a comfortable couch beside the fireplace. Perfect for reading!\r\n\r\nBathroom is yours to enjoy. It features a bath tub. I provide towels, bath robe, soaps, and toiletries. There is even a chair where you can sit while preparing for a night out. \r\n\r\nMy home is accessible by car, taxi and public transport. There are plenty of extras that you will appreciate \'such as tea, iron, wi-fi, maps, coffee, and umbrella. The neighborhood is quiet and private. \r\n\r\nYou will find a welcome letter on the table. I have also included the details of your stay and also suggestions for your trip. There are maps and some brochures for my guests. I am also a text away.', 0, 0, 0, 1, 0, 0, '$103', '$25', '11%', '18%', NULL, NULL),
(15, 'Log House in Wooded Area!', 'Gladka 31, 02-172 Warszawa, Poland', 'Bathroom has a large mirror, sink, toilet, closet, hanger, towel rack, and toiletries. The dining area has a large window. The table can accommodate four people. There is also a mini-bar you can enjoy your drinks. Bedroom is small but very comfortable. It has two single beds. Bed sheets and linens are always fresh and changed. \r\n\r\nFully equipped with iron, wi-fi, and appliances. You get free coffee and juice; free of charge. Check-in is 1pm. Check-out is 11am. \r\n\r\nWe price cheaper than a hotel. Just read the reviews and you will get an idea what our guests think of us. \r\n\r\nWe welcome everyone and would be happy to assist in English, Polish, and Russian. My house is animal-friendly. You can bring your pets!', 0, 0, 1, 0, 0, 1, '$80', 'No charge', '6%', '26%', NULL, NULL),
(16, 'Cozy Cabin w/ Privacy', 'Mysliwiecka 2, 00-459 Warszawa, Poland', 'My cabin is located in a quiet and remote area. Not to worry though, it is accessible via any vehicle. This is perfect for guests who want solitude and privacy. I live a mile from the cabin so you can contact me whenever you need anything.\r\n \r\nThe kitchen is equipped with a microwave, fridge, kettle, cutlery, dishes and pots. There is a wine bar and has a flower decoration above. \r\n\r\nThe bedroom has a large bed, bed sheets, a chair, and some books you can read. A closet where you can place your clothes. Feel free to use the hanger. \r\n\r\nRelax in the living room that has comfortable chairs and a fireplace. You can also find some books.', 1, 0, 0, 0, 0, 1, '$73', '$19', '13%', '31%', NULL, NULL),
(17, 'Romantic House by the Lake', 'Kawalerii 12, 00-468 Warszawa, Poland', 'Stay in a house so close to the lake. A range of activities such as kayaking, swimming, fishing, and hiking. This is also close to the mountains. There are walking and hiking trails around. Outdoor and nature lovers are going to love this area!\r\n\r\nThis place is not completely isolated. Though behind the cabin there is nothing but nature, several houses are not too far away. \r\n\r\nCafes and supermarkets are a short drive away. A small store can be reached just minutes by foot. \r\n\r\nThe house offers views of the lake. So calming and relaxing! My guests can use the kayak for free. A small boat is also at your disposal. \r\n\r\nBedroom has two beds. Each bed can sleep two people. There is tv and table. Enjoy the bath tub. I provide wi-fi and cable. The kitchen is stocked and ready for you to cook - just provide the salmon!', 1, 1, 0, 0, 1, 1, '$103', '$18', '7%', '9%', NULL, NULL),
(18, 'Your Home in Warsaw', 'Al. Rzeczypospolitej 5, 02-972 Warszawa, Poland', 'I invite you to my lovely abode a short drive from the downtown, shopping, restaurants, and museums. Set on 2 private acres, my home offers solitude and privacy. Fruit-bearing trees are around. \r\n\r\nThe house sleeps four people. There are two bedrooms with queen sized bed each. A portable crib is provided upon request. I can also provide you futons. \r\n\r\nNo parties. No smoking inside. You can bring your pets so you need not worry leaving them behind when you travel. \r\n\r\nThere is wi-fi inside. This also comes with parking. The garage can fit up to two cars. The entrance is through a private courtyard.', 0, 0, 0, 1, 0, 1, '$83', 'No charge', '10%', '30%', NULL, NULL),
(19, 'Victorian House in Convenient Location', 'Wyki 11A, 00-365 Warszawa, Poland', 'Convenience is what you get with this place. The location is in very close proximity to shopping centers, supermarkets, night life, parks, and public transportation. \r\n\r\nTwo-storey house. The lower level is occupied by the host. The upper level is for the guest. Private bath, bedroom, living room, and kitchen. Upon entrance, there is a stairs leading to the second floor that you have to access. Enjoy total privacy.\r\n \r\nIt has a touch of Victorian design. Sleep like royalty in the comfortable and soft bed. It has drapes for design. There is a queen sized air mattress that can be provided with your request.\r\n\r\nThe kitchen has a refrigerator, oven, dishwasher, and a dining table that can accommodate six people. \r\n\r\nFor guests who have vehicles, use the street parking.', 0, 0, 0, 0, 1, 1, '$66', '$25', '9%', '23%', NULL, NULL),
(20, 'Two Bedroom Unit w/ Parking', 'Krakowskie Przedmie?cie 42/44, 00-325 Warszawa, Poland', 'A home you can stay located on the fifth floor. Two bedroom unit. One bedroom is connected to the living room that features a working space such as desk and chair. Wi-fi is provided. Living room has a flat screen television and cable. There is a DVD and a selection of movies. The couch is very comfortable. \r\n\r\nThe second bedroom is near the bathroom. It can sleep up to four people. Kitchen is quite small but equipped with appliances you can use for cooking your meals. \r\n\r\nI will guide you in the right direction anywhere you might want to go or see may it be the galleries, dining, nightlife or shopping. \r\nParking is provided. There is also street parking.', 0, 1, 1, 1, 0, 1, '$55', 'No charge', '15%', '31%', NULL, NULL),
(21, 'Lovely Lake Views in Cottages', 'y O, Vedado, Postal Code: 10400, Cuba, Calle 21, La Habana, Cuba', 'Cottages available for you. Near the lake and comes with free parking. You can dock your boat, go swimming, and kayaking. \r\n\r\nOne cottage features a small bedroom with bed, chairs, and table. The other cottages features bedroom that can sleep two people, a living room, bathroom, and a kitchen. Soap, shampoo, detergent, hair dryer, and bottled water are all provided.\r\n\r\nOur priority is for you to feel comfortable. As someone who travels a lot, I understand the importance of privacy. We make sure not to impose on your space but are also available if you need any assistance or recommendations. Never hesitate to ask through message on Airbnb or text, whatever is convenient for you.', 0, 0, 0, 1, 1, 1, '$54', '$9', '12%', '22%', NULL, NULL),
(22, 'Apartment w/ Balcony in Convenient Area', '416 Paseo de Mart\', La Habana, Cuba', 'My apartment has a small balcony with wonderful flowers. Bedroom has a bedroom that can sleep two people. The closet has a large mirror that you can slide whenever you open the closet. Plenty of space to put on your clothes. \r\n\r\nThe kitchen and living room is painted in white. The flooring is parquet. Bathroom has a bath tub, sink and a toilet. \r\n\r\nThis is in a perfect location. Designed to be lived in on long term, this apartment is suitable for long and short stays. Ocean view. Walking distance to the market, shopping, and other towns. \r\n\r\nMy goal is to make sure your stay is unforgettable so you can always contact me via phone or email. Because I do not live on the area year round, a friend of mine can assist you if you have any problems that need tending to.', 1, 1, 1, 0, 0, 1, '$66', '$15', '13%', '18%', NULL, NULL),
(23, 'Lovely House in Safe Neighborhood', 'Calzada, La Habana, Cuba', 'Guests enjoy your stay at my house, the one at the left side and painted in white. The second house, the one in red paint is where my family and I lives. The yard is huge. You can even camp out or have a picnic outside. \r\n\r\nTwo bedroom. One bedroom has a king size bed. The skylight naturally lets the light come in. In the other bedroom has two beds. One is single bed while the other is queen sized. Air mattress on request.\r\n\r\nThere is telephone, wi-fi, television, cable, and toiletries. The kitchen is all yours to cook and dine. There are also baking equipment.\r\n\r\nVery quiet, peaceful and safe neighborhood, but only 2 miles from downtown! Free parking up to three cars.', 1, 0, 1, 1, 0, 1, '$104', 'No charge', '11%', '16%', NULL, NULL),
(24, 'Colorful apartment with Balcony', 'Avenida Paseo entre Calles y 3ra, Vedado, 1ra, La Habana, Cuba', 'Delightful colorful apartment with private bathroom in a convenient location. A keyless door code on your entry door lets you self-check in late without worrying about disturbing us.\r\n 	\r\nThe guest apartment has its own thermostat, so feel free to adjust the temperature to your convenience. It has a small balcony where you can relax.\r\n\r\nThis setup is perfect for longer stays. The kitchen is nicely stocked with dishes, cups, utensils, pots and pans. The bedroom has a pocket door and brand new queen size bed and single bed with a super comfortable brand new mattress. We made sure to install plenty of outlets by the night stands for your electronics. \r\n\r\nThere is absolutely no sharing of any spaces, every picture you see is specifically for our guests, and this apartment is yours and yours alone! We live next door so we will be available if you need anything.', 1, 0, 0, 1, 1, 1, '$108', '$22', '7%', '19%', NULL, NULL),
(25, 'Beach Front House with Parking!', '1 Del Malec\'n, La Habana, Cuba', 'Beach front property! The patio is large with sun bathing chairs and umbrella. The views are stunning! Sip your refreshing drinks while you watch as the sun sets. The shoreline is a short walk away. \r\n\r\nIt has one bedroom that can sleep two people. I have two single futons that will be prepared upon your request. There is a fan inside and air conditioner. \r\n\r\nThe kitchen has an oven, stove, refrigerator, and other appliances. Cooking is made easy!\r\n\r\nBathroom has a toilet, sink, a small tub, towel rack, and mirror. There is also a first aid kit just in case.\r\n\r\nEasy 20-minute drive downtown, to airport & most hot areas. Private off-street parking.', 1, 1, 1, 1, 1, 1, '$88', 'No charge', '6%', '13%', NULL, NULL),
(26, 'Mountains, tub, and patio!', 'Calle 19 Esq. A M. Vedado, Calle 25, La Habana 10400, Cuba', 'Mountain views! There is a patio outside where you can watch the beautiful scenery and relax. The living room is connected to the patio. \r\n\r\nOne bedroom has a queen sized bed with bed sheets, linens and an extra sitting area. The couch is comfortable to sit on. There is a single mattress for the other guests. \r\n\r\nThere is a bath tub in the bathroom. Towels, soaps, shampoo, conditioner are all provided. There is also a hair dryer. \r\n\r\nPrivacy, wi-fi, cable TV, alarm system, log fireplace, and hot tub. 30 minutes from everything in a quiet, yet convenient neighborhood.\r\nThe grounds around the home are beautiful, sitting on almost an acre of well-maintained landscaping.\r\n\r\nThis is the perfect destination if you\'re truly looking to escape the stresses of everyday life. No matter what season you plan to visit, breathtaking natural scenery, fresh mountain air, and a plethora of outdoor activities await you!', 0, 0, 1, 0, 0, 0, '$78', '$18', '13%', '31%', NULL, NULL),
(27, 'Ocean Front House w/ Free Parking', 'Ave. Lazaro e/ 18 y 20, Pya, La, C\'rdenas, La Habana, Cuba', 'We would be honored to have your vacation in our home and feel the peace and quiet that we love to enjoy. Everything was designed around nature to give you a wonderful island experience. The pristine sandy white beach is right in front. There is a balcony where you can sit and enjoy the views. The beach is ideal for swimming and snorkeling. \r\n\r\nListen to the waves from the kitchen and living room. The bedroom is completely enclosed with a queen size bed, nice size closet, and an air conditioner unit. \r\n\r\nThe modern and updated kitchenette has a small refrigerator, stove, dish washer, microwave, coffee maker, blender, toaster oven, dishes/silverware, and cooking utensils.\r\n\r\nParking is inside a gated property right beside your unit with its own private entrances. I live in a separate house next door.', 0, 1, 0, 1, 0, 1, '$84', '$19', '12%', '20%', NULL, NULL),
(28, 'House by the Lake!', 'Aldabo, La Habana, Cuba', 'This house sits directly in front of the lake. The living room has the views of the lake. It has a piano, couch, chair, and books. This is a great place to relax, read the paper, drink your morning coffee, or listen to music. \r\n\r\nMy place sleeps comfortably two to four people. Private bath right next to your room. \r\n\r\nFive minute walk to restaurants, shopping, shops, markets, and museums. \r\n\r\nWe have coffee and tea available for you evening or morning. \r\nGuests are welcome to use the lake to swim, kayak, canoe, or paddle boat. Feel free to walk the property, sit on the dock, and enjoy the beauty of nature.', 0, 0, 0, 0, 1, 0, '$58', '$19', '10%', '28%', NULL, NULL),
(29, 'Lake and Mountain Views with Pool', 'Calle 8, La Habana, Cuba', 'Full lake front property offering breathtaking mountain sunrises and romantic moonlit evenings.\r\n\r\nThe patio has a large couch, table, and plenty of chairs. It features the best view! Relax and enjoy watching the mountains and lake. Dip into the infinity pool. It is just beyond beautiful!\r\n\r\nMy place is completely furnished with full kitchen, washer, dryer, flat screen TV, cable, complimentary high speed internet service with wifi, breakfast bar, queen bed & queen sleeper sofa. Truly a home away from home. Tropical breezes provide natural air conditioning. \r\n\r\nBedroom has a queen size bed. Air mattress can be provided upon request. Outside is another patio!\r\n\r\nBathroom has a tub and shower. The drinking water, shower and sink water are all super filtered. No need for bottled water here.\r\n\r\nThere is also off street parking. A great and safe neighborhood. Book your place in paradise stay with us early to guarantee a most memorable trip.', 0, 1, 0, 0, 0, 1, '$69', '$13', '14%', '22%', NULL, NULL),
(30, 'House Surrounded by Nature', 'Paseo de Mart\', La Habana, Cuba', 'Very spacious house! A wonderful and huge lawn to camp or enjoy a picnic. Trees around. Guests are welcome to explore the garden and find a quiet spot to sit and enjoy tropical beauty.\r\nBedroom has a king size bed, desk work place, closets, books and couch. Bathroom is huge. It features a bath tub, chair for you to sit on while preparing to go out, sink, toilet, and toilet essentials. Living room has a nice couch. The glass floor to ceiling windows get you a view of the outside. \r\nYou have your own parking space right outside the unit. I take pride in the house and keep it exceptionally clean and well-appointed.\r\nI live across the street if you need anything, and I have my phone with me all the time.', 0, 0, 0, 1, 0, 0, '$52', '$13', '11%', '25%', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_22_111948_create_listings_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
