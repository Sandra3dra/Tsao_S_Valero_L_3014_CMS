-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 05, 2020 at 11:23 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_3014_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`) VALUES
(1, 'running'),
(2, 'training'),
(3, 'boots'),
(4, 'sandals'),
(5, 'soccer'),
(6, 'skate'),
(7, 'basketball');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `p_id` int(11) NOT NULL,
  `p_img` varchar(120) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_brand` varchar(20) NOT NULL,
  `p_price` varchar(6) NOT NULL,
  `p_review` varchar(5) NOT NULL,
  `p_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`p_id`, `p_img`, `p_name`, `p_brand`, `p_price`, `p_review`, `p_des`) VALUES
(1, 'nike_women\'s_revolution_5_running_shoes.jpg', 'Nike Women\'s Revolution 5 Running Shoes', 'Nike', '65.99', '3.8', 'The Nike Women’s Revolution 5 Running Shoe cushions your stride with soft foam to keep you running in comfort. Lightweight knit material wraps your foot in breathable support, while a minimalist design fits in anywhere your day takes you.'),
(2, 'asics_women\'s_gel_kayano_26_running_shoes.jpg', 'ASICS Women\'s GEL Kayano 26 Running Shoes', 'ASICS', '219.99', '2.7', 'Boost your performance in bold style with the GEL-KAYANO™ 26 Platinum running shoe from ASICS. This special edition take on our classic stability running shoe features the same performance-enhancing technologies in an eye-catching, futuristic design. The GEL-KAYANO™ 26 shoe allows you to tackle long distances in comfort, thanks to the rearfoot GEL™ technology that’s been redesigned for improved shock absorption upon impact. You’ll also benefit from a bouncy feel that stems from the FLYTEFOAM™ Propel midsole technology. The DUOMAX™ technology in the midsole offers better support and helps resist excessive overpronation while I.G.S™ technology promotes smoother propulsion. Additionally, this style is accented with reflective detailing to improve your visibility when running in low light settings. Take your running to the next level and keep turning heads in the special edition GEL-KAYANO™ 26 Platinum running shoe from ASICS.'),
(3, 'new_balance_women\'s_fuelcell_echolucent_running_shoes.jpg', 'New Balance Women\'s FuelCell Echolucent Running Shoes', 'New Balance', '119.99', '5', 'Lead the pack in New Balance Women’s FuelCell Echolucent Running Shoes. This sneaker sits atop a new and improved responsive FuelCell midsole cushioning to help offer superior comfort. It features an upper made of translucent textile and mesh fabric, delivering a look that helps you stand out as the leading tastemaker in your crew.'),
(4, 'under_armour_women\'s_micro_g_pursuit_running_shoes.jpg', 'Under Armour Women\'s Micro G Pursuit Running Shoes', 'Under Armour', '84.99', '4.5', 'A lightweight and simple design, the Under Armour Women’s Micro G Pursuit Running Shoes combine a one-piece Micro G® foam midsole with a mesh upper to deliver complete breathability and cushioning. Foam padded ankle and tongue offer an incredibly comfortable fit & feel.'),
(5, 'adidas_women\'s_ultra_boost_running_shoes.jpg', 'Adidas Women\'s Ultra Boost Running Shoes', 'Adidas', '186.97', '4.7', 'Get that best-ever feeling on every run. The adidas Women\'s Ultra Boost Running Shoes have a stretchy knit upper with ventilation in key sweat zones to help you stay cool. Energy-returning cushioning and a flexible outsole work together to give you a smooth ride from touch-down to toe-off.'),
(6, 'nike_women\'s_tr_9_training_shoes.jpg', 'Nike Women\'s TR 9 Training Shoes', 'Nike', '74.99', '4.4', 'The Nike Women’s TR 9 Training Shoe is light, stable and features deep, comfortable footbed for superior impact absorption and energy return throughout your entire workout.'),
(7, 'under_armour_women\'s_assert_8_training_shoes.jpg', 'Under Armour Women\'s Assert 8 Training Shoes', 'Under Armour', '69.98', '4.3', 'The Under Armour Women’s Assert 8 Training Shoes are built with a lightweight mesh upper with 3-color digital print to deliver complete breathability. It features durable leather overlays for stability combined with EVA sockliner for soft, step-in comfort. '),
(8, 'reebok_women\'s_hiit_tr_training_shoes.jpg', 'Reebok Women\'s HIIT TR Training Shoes', 'Reebok', '119.99', '4.7', 'Keep up the pace during jump squats and burpees. The Reebok Women’s HIIT TR Training Shoes are designed to support the varied movements of high-intensity interval training. The mesh upper features a pillow around the collar for a locked-in fit. The flexible outsole provides dependable grip on slippery gym floors.'),
(9, 'new_balance_women\'s_minimus_20_v7_training_shoes.jpg', 'New Balance Women\'s Minimus 20 v7 Training Shoes', 'New Balance', '129.99', '4', 'Meet the new all-new New Balance Women’s Minimus 20 v7 Training Shoes. The seamless upper is constructed with nylon-infused yarn that forms a barrier around the foot for superior protection and lateral support as you complete your workout, while mono mesh windows help increase ventilation. Meanwhile, an Asym shaped collar helps offer a more natural fit, and the one-piece Vibram outsole delivers reliable traction and ground feel ideal for strength training.'),
(10, 'asics_women\'s_gel_craze_tr_4_training_shoes.jpg', 'ASICS Women\'s Gel Craze TR 4 Training Shoes', 'ACICS', '59.97', '3.9', 'The ASICS GEL-Craze TR 4 shoe combines the perfect blend of protection and responsiveness for ultimate performance. The addition of Rearfoot GEL® Cushioning provides protection against harsh impact - ideal for those who train on a variety of hard surfaces and mixed fitness routines, while the Solyte® Midsole material creates a lightweight and responsive bounce back experience, creating an easy transition between lateral movements.'),
(11, 'koolaburra_by _ugg_women\'s_koola_short_boots.jpg', 'Koolaburra by Ugg Women\'s Koola Short Boots', 'Ugg', '100', '3.5', 'A wear-everywhere wardrobe essential, the Koola Short is a must-have in any girl’s shoe arsenal. The timeless icon sports a soft suede upper, a combination sheepskin and faux fur interior, cushioning sockliner, and durable EVA sole that’ll take you from weekday to weekend in a snap.'),
(12, 'ugg_women\'s_adirondack_iii_winter_boot.jpg', 'Ugg Women\'s Adirondack III Winter Boot', 'Ugg', '295', '5', 'For all your winter needs, Ugg has updated their best seller to perform in even harsher conditions, with a range of high-tech benefits and a new fit created specifically for movement. The waterproof Adirondack III features an outsole designed to stay flexible in freezing temps, extra warming insulation, a cushioning insole, and a higher cold-weather rating from -20˚C to -32˚C (that\'s -4˚F to -25.6˚F). Ideal for the mountains, the city, or anywhere in between – this boot will last you years and years.'),
(13, 'roxy_women\'s_bruna_boots.jpg', 'Roxy Women\'s Bruna Boots', 'Roxy', '109.99', 'N/A', 'Women’s ROXY lace-up boot made from an upper in synthetic leather, designed with a convertible fold-down shaft with snap closure, and finished with a toe cap with stitch detail.'),
(14, 'hunter_women\'s_original_tall_wide_rain_boots.jpg', 'Hunter Women\'s Original Tall Wide Rain Boots', 'Hunter', '179.99', '3.7', 'Because not one size fits all, the Original Tall Wide Leg boot is the newest addition to the core collection. Allowing for a more comfortable fit, the boot measures 16 mm wider on the calf than the Original Tall. Handcrafted from 28 parts these iconic rain boots lie at the heart of the Hunter Original brand.'),
(15, 'hunter_women\'s_original_chelsea_gloss_rain_boots.jpg', 'Hunter Women\'s Original Chelsea Gloss Rain Boots', 'Hunter', '159.99', '4.3', 'The Hunter Original Chelsea Boot is a rework of the classic ankle boot. Ready for rain, each boot is handcrafted from natural rubber and vulcanized for superior protection. Retaining the iconic features of the traditional Chelsea, elasticated gussets and a nylon pull tab make for easy wear. With a bold red glossy finish, these waterproof ankle boots are a wet weather wardrobe essential.'),
(16, 'nike_women\'s_benassi_jdi_sandals.jpg', 'Nike Women\'s Benassi JDI Sandals', 'Nike', '22.49', '4.3', 'The women’s Nike Benassi \"Just Do It.\" Sandal features a lined upper with a bold logo for plush comfort and an athletic look. A foam-infused midsole and outsole provide lightweight impact protection.'),
(17, 'reef_women\'s_zen_love_sandals.jpg', 'Reef Women\'s Zen Love Sandals', 'Reef', '24.98', '5', 'The Reef Zen Love Women’s Sandals has a buttery soft PU foam footbed and padded jersey lining for instant comfort.'),
(18, 'under_armour_women\'s_ignite_viii_sl_sandals.jpg', 'Under Armour Women\'s Ignite VIII SL Sandals', 'Under Armour', '34.99', '4.7', 'The Under Armour Ignite VIII SL Women’s Sandals has a re-engineered EVA outsole with durable traction pods for lightweight cushioning & comfort.'),
(19, 'adidas_women\'s_adilette_cloudfoam_plus_sandals.jpg', 'Adidas Women\'s Adilette CloudFoam Plus Sandals', 'Adidas', '44.99', '4.7', 'Pamper your feet in these women’s slides. The easy-to-wear slides have a contoured footbed built with CloudFoam Plus for super-soft, super smooth cushioning. They feature a bandage-style upper and a lightweight outsole.'),
(20, 'sanuk_women\'s_chakra_flip_flop_sandals.jpg', 'Sanuk Women\'s Chakra Flip Flop Sandals', 'Sanuk', '51.99', '4.6', 'The world’s first women’s flip flop made outta real yoga mat is now next-level. Starring all-new arch supports and comfy contoured footbeds, sleek and stretchy straps, and super-flexible outsoles - You will fall in love with the Yoga Chakra flip flop from Sanuk that blesses your every step with that dreamy, enlightened feeling!'),
(21, 'nike_unisex_phantom_venom_academy_firm_ground_shoes.jpg', 'Nike Unisex Phantom Venom Academy Firm Ground Shoes', 'Nike', '78.74', '2.4', 'The Men\'s Phantom Venom Academy Firm Ground Shoes are engineered for powerful, precise strikes that win games. Ridges on the instep create spin to control the flight of the ball, while the firm-ground plate provides the traction needed to unleash at any moment.'),
(22, 'diadora_women\'s_juve_ii_firm_ground_cleats.jpg', 'Diadora Women\'s Juve II Firm Ground Cleats', 'Diadora', '74.99', 'N/A', 'Go for gold in the Diadora Women’s Juve II Firm Ground Cleats; featuring an upgraded design TPU plate for quick, sharp movement along with a full synthetic upper and  reinforced heel for stability.'),
(23, 'adidas_women\'s_predator_19.3_firm_ground_cleats.jpg', 'Adidas Women\'s Predator 19.3 Firm Ground Cleats', 'Adidas', '96.97', '4.4', 'If your command of the field leaves your rivals’ tactics in tatters, you’re ready to own the adidas Women’s Predator 19.3 Firm Ground Cleats. Built for precision on firm ground, these soccer cleats have a supportive mesh upper that wraps around your foot, locking you in for total control. Embossing on the surface adds confidence to every touch.'),
(24, 'adidas_women\'s_x_15.1_wc_fg_outdoor_soccer_cleats.jpg', 'Adidas Women\'s X 15.1 WC FG Outdoor Soccer Cleats', 'Adidas', '114.88', 'N/A', 'Create mayhem on the pitch and opportunity will emerge. Unpredictability and instinct are rewarded when fans chant your name. The player who shatters expectations needs a boot that is comfortable in the spotlight.'),
(25, 'under_armour_women\'s_clutchfit_force_3.0_fg_cleats.jpg', 'Under Armour Women\'s ClutchFit Force 3.0 FG Cleats', 'Under Armour', '53.88', 'N/A', 'The Under Armour ClutchFit Force 3.0 FG Women’s Outdoor Soccer Cleats has a die-cut sockliner that provides additional cushioning for comfort that doesn’t end at halftime.'),
(26, 'vans_women\'s_sk8_hi_shoes.jpg', 'Vans Women\'s SK8 Hi Shoes', 'Vans', '66.97', 'N/A', 'The Sk8-Hi, the legendary lace-up high top, features sturdy canvas and suede uppers, re-enforced toecaps to withstand repeated wear, padded collars for support and flexibility, and signature rubber waffle outsoles.'),
(27, 'dc_women\'s_trase_platform_tx_se_skate_shoes.jpg', 'DC Women\'s Trase Platform TX SE Skate Shoes', 'DC', '39.88', 'N/A', 'The DC Women’s Trase Platform TX SE Skate Shoes has a vulcanized construction for great board-feel and sole flex for added comfort.'),
(28, 'adidas_women\'s_nizza_trefoil_running_shoes.jpg', 'adidas Women\'s Nizza Trefoil Running Shoes', 'Adidas', '89.99', '4.5', 'You’re a lover at heart, and these adidas Nizza Trefoil Shoes announce it to the world. The classic styling makes them lovable every day, but they’re especially swoon-worthy on date nights.'),
(29, 'nike_sb_women\'s_check_solar_canvas_skate_shoes.jpg', 'Nike SB Women\'s Check Solar Canvas Skate Shoes', 'Nike', '51.97', '3.8', 'Nike SB Check Solarsoft Canvas Women’s Skateboarding Shoe has a lightweight canvas upper and a Solarsoft sockliner that delivers impact cushioning without sacrificing flexibility and boardfeel.'),
(30, 'vans_women\'s_sk8_hi_suede_shoes.jpg', 'Vans Women\'s SK8-Hi Suede Shoes', 'Vans', '74.97', 'N/A', 'The Pig Suede Sk8-Hi combines the legendary lace-up high top with sturdy suede uppers, re-enforced toecaps to withstand repeated wear, padded collars for support and flexibility, and signature rubber waffle outsoles.'),
(31, 'nike_unisex_precision_iii_basketball_shoes.jpg', 'Nike Unisex Precision III Basketball Shoes', 'Nike', '71.24', '4.4', 'Make every move count in the Nike Precision III. This all-purpose mid-top delivers a game-ready combination of cushioning and containment, with a lightweight midsole and circular traction pattern for support and control on the court.'),
(32, 'adidas_women\'s_dame_6_hecklers_basketball_shoes.jpg', 'Adidas Women\'s Dame 6 Hecklers Basketball Shoes', 'Adidas', '159.99', '4.5', 'Drawing inspiration from Damian Lillard’s signature game, these basketball shoes are designed for precision and control. Featuring a sock-like construction, they’re built with Lightstrike cushioning for lightweight comfort. The herringbone outsole adds extra grip to support quick cuts.'),
(33, 'under_armour_women\'s_clutchfit_drive_iii_shoes.jpg', 'Under Armour Women\'s ClutchFit Drive III Shoes', 'Under Armour', '66.97', 'N/A', 'The Under Armour ClutchFit Drive III Women’s Basketball Shoes has updated ClutchFit® technology breathes, stretches and supports the foot better than ever before.'),
(34, 'nike_unisex_air_precision_ii_basketball_shoes.jpg', 'Nike Unisex Air Precision II Basketball Shoes', 'Nike', '70.97', '4.5', 'A shoe for all players, all positions, the Nike Air Precision II Unisex Basketball Shoe delivers fundamental performance for the game\'s grass roots. Sleek, modern, and wearable off court, this mid top locks you in while providing a cushioned, responsive platform that\'s made to hustle.'),
(35, 'nike_women\'s_zoom_live_basketball_shoes.jpg', 'Nike Women\'s Zoom Live Basketball Shoes', 'Nike', '69.88', 'N/A', 'Women’s Nike Zoom Live Basketball Shoe delivers responsive cushioning from a forefoot Zoom Air unit with a low-to-the-court feel. Its lightweight mesh upper provides breathable support, while a midfoot strap wraps around the foot for a stable, locked-in feel.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_p_category`
--

CREATE TABLE `tbl_p_category` (
  `p_cat_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_p_category`
--

INSERT INTO `tbl_p_category` (`p_cat_id`, `p_id`, `cat_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 6),
(27, 27, 6),
(28, 28, 6),
(29, 29, 6),
(30, 30, 6),
(31, 31, 7),
(32, 32, 7),
(33, 33, 7),
(34, 34, 7),
(35, 35, 7),
(36, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(60) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pass` varchar(60) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `user_lastlogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_currentlogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(30) NOT NULL,
  `user_locked` varchar(3) NOT NULL,
  `user_attempts` varchar(2) NOT NULL,
  `user_fail_start` timestamp NULL DEFAULT NULL,
  `user_new` varchar(5) NOT NULL,
  `user_newstart` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_sus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_lastlogin`, `user_currentlogin`, `user_ip`, `user_locked`, `user_attempts`, `user_fail_start`, `user_new`, `user_newstart`, `user_sus`) VALUES
(1, 'Sandra', 'sandra', 'sandy', 'SandraTsao0405@gmail.com', '2020-03-08 03:57:09', '2020-03-11 19:06:05', '::1', 'NO', '0', '2020-03-11 19:06:05', 'O', '2020-03-07 23:02:14', 'NO'),
(2, 'tester', 'test', '$2y$10$0nApKJp791jaED67N.GgxOloqO0G429mxL4t29KF6xfiJp/RSAtLq', 'SandraTsao0405@gmail.com', '2020-03-08 02:45:08', '2020-03-08 03:43:10', '::1', 'NO', '0', '2020-03-08 03:43:10', 'O', '2020-03-08 02:45:08', 'NO'),
(3, 'tester2', 'test2', '$2y$10$tb17GejYMA27.4eGM9HKRehACqoxJM0SasRVzqvzzpXcyly9iante', 'SandraTsao0405@gmail.com', '2020-03-08 02:54:55', '2020-03-08 02:54:55', '::1', 'NO', '0', NULL, 'N', '2020-03-02 02:54:55', 'SUSPENDED'),
(4, 'tester3', 'test3', '$2y$10$S/1dGaAcwDnuuNKqNePXdebIr66YaLzrbLu8zf7jpKBB1d/KFqOmm', 'SandraTsao0405@gmail.com', '2020-03-08 03:05:02', '2020-03-08 03:44:54', '::1', 'NO', '0', '2020-03-08 03:44:54', 'O', '2020-03-08 03:05:02', 'NO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_p_category`
--
ALTER TABLE `tbl_p_category`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_p_category`
--
ALTER TABLE `tbl_p_category`
  MODIFY `p_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
