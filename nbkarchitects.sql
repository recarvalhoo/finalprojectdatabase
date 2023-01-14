-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jan-2023 às 02:22
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `nbkarchitects`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `booking`
--

CREATE TABLE `booking` (
  `id` int(11) UNSIGNED NOT NULL,
  `accepted` tinyint(1) DEFAULT NULL,
  `date` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories_jobs`
--

CREATE TABLE `categories_jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uri` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'post' COMMENT 'post, page, etc',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `categories_jobs`
--

INSERT INTO `categories_jobs` (`id`, `title`, `uri`, `description`, `cover`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Office', 'office', 'Commercial > Office', 'images/2022/12/jobsoffice.jpg', 'post', '2018-10-22 18:24:12', '2022-12-16 14:49:44'),
(4, 'Hospitality', 'hospitality', 'Commercial > Hospitality', 'images/2022/12/jobshospitality.jpg', 'post', '2022-12-15 19:05:08', '2022-12-16 14:49:30'),
(5, 'Residential', 'residential', 'Residential', NULL, 'post', '2022-12-27 13:22:11', '2022-12-30 09:27:41'),
(6, 'Commercial', 'commercial', 'Commercial', NULL, 'post', '2022-12-27 13:22:56', '2022-12-27 13:22:56'),
(7, 'Interior Design', 'interior-design', 'Interior Design', NULL, 'post', '2022-12-27 13:24:10', '2022-12-27 13:24:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `author` int(11) UNSIGNED DEFAULT NULL,
  `category` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uri` varchar(255) NOT NULL,
  `subtitle` text NOT NULL,
  `content` text NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `slider` tinyint(4) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'draft' COMMENT 'post, draft, trash ',
  `post_at` timestamp NULL DEFAULT current_timestamp(),
  `client` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `project_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `jobs`
--

INSERT INTO `jobs` (`id`, `author`, `category`, `title`, `uri`, `subtitle`, `content`, `cover`, `images`, `video`, `slider`, `views`, `status`, `post_at`, `client`, `project_name`, `project_number`, `address`, `project_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(39, 8, 5, 'Dublin House Extension', 'dublin-house-extension', 'A modern Garden Room adds a contrast to a period House.', '<p>A modern Garden Room adds a contrast to a period House.</p>', 'images/2022/12/dublin-house-extension.jpg', 'dublin-house-extension-1672147765/', '', NULL, 0, 'post', '2022-12-27 17:26:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 13:29:25', '2022-12-27 13:29:25', NULL),
(40, 8, 5, 'Dublin House', 'dublin-house', 'A contemporary German timber frame kit solution with Hybrid heating and air recovery system for a new build in Dublin.', '<p>A contemporary German timber frame kit solution with Hybrid heating and air recovery system for a new build in Dublin.</p>', 'images/projects/dublin-house-1672147992/12af9e0c884a2b955976c74d5e5fa53f.jpg', 'dublin-house-1672147992/', '', 1, 0, 'post', '2022-12-27 17:30:00', '', '', '', '', NULL, '2022-12-27 13:33:12', '2022-12-30 12:30:31', NULL),
(41, 8, 5, 'Dublin House', 'dublin-house-41', 'A restoration of a period house in Dublin with new Kitchen and Dining extension to the rear. A retro-Classical approach was taken to the interior design as the house had a substantial number of existing period features. The new interiors while slightly contemporary, have seamlessly matched in with the existing Architecture. Built by Contractor John Ryan of Buildxjr.', '<p>A restoration of a period house in Dublin with new Kitchen and Dining extension to the rear. A retro-Classical approach was taken to the interior design as the house had a substantial number of existing period features. The new interiors while slightly contemporary, have seamlessly matched in with the existing Architecture. Built by Contractor John Ryan of Buildxjr.</p>', 'images/2022/12/dublin-house-1672148091.jpg', 'dublin-house-1672148091/', '', NULL, 0, 'post', '2022-12-27 17:33:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 13:34:51', '2022-12-27 13:34:51', NULL),
(42, 8, 5, 'Galway', 'galway', 'New Build in the west of Ireland.', '<p>New Build in the west of Ireland.</p>', 'images/2022/12/galway.jpg', 'galway-1672148312/', '', NULL, 0, 'post', '2022-12-27 17:35:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 13:38:32', '2022-12-27 13:38:32', NULL),
(43, 8, 5, 'House in Monkstown', 'house-in-monkstown', 'Monkstown ', '<p>Monkstown</p>', 'images/2022/12/house-in-monkstown.jpg', 'house-in-monkstown-1672148490/', '', NULL, 0, 'post', '2022-12-27 17:38:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 13:41:30', '2022-12-27 13:41:30', NULL),
(44, 8, 5, 'House in Sandycove', 'house-in-sandycove', 'Sandycove', '<p>Sandycove</p>', 'images/2022/12/house-in-sandycove.jpg', 'house-in-sandycove-1672148741/', '', NULL, 0, 'post', '2022-12-27 17:43:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 13:45:41', '2022-12-27 13:45:41', NULL),
(45, 8, 5, 'House In South County Dublin', 'house-in-south-county-dublin', 'A modern extension to a period house in Dublin.', '<p>A modern extension to a period house in Dublin.</p>', 'images/2022/12/house-in-south-county-dublin.jpg', 'house-in-south-county-dublin-1672148801/', '', NULL, 0, 'post', '2022-12-27 17:45:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 13:46:41', '2022-12-27 13:46:41', NULL),
(46, 8, 5, 'House In St Tropez', 'house-in-st-tropez', 'A full restoration of this Villa in St.Tropez village was completed in 2014 by Dublin based Contractors Buildxjr ( John Ryan ) who specialise in restoration and interiors.', '<p>A full restoration of this Villa in St.Tropez village was completed in 2014 by Dublin based Contractors Buildxjr ( John Ryan ) who specialise in restoration and interiors.</p>\n<div id=\"acfifjfajpekbmhmjppnmmjgmhjkildl\" class=\"acfifjfajpekbmhmjppnmmjgmhjkildl\"> </div>', 'images/2022/12/house-in-st-tropez.jpg', 'house-in-st-tropez-1672149399/', '', 0, 0, 'post', '2022-12-27 17:55:00', '', '', '', '', NULL, '2022-12-27 13:56:39', '2022-12-30 12:32:36', NULL),
(47, 8, 5, 'House in West of Ireland', 'house-in-west-of-ireland', 'This house in Co.Galway is designed as an extension to an existing structure, on the beach front. The new structure is designed using a more contemporary palatt, and while it differs in every detail from the existing 120 year old house, the linking together of both buildings works well, and adds an interesting contrast to the composition for the site. Built by local Contractor Martin Acton.', '<p>This house in Co.Galway is designed as an extension to an existing structure, on the beach front. The new structure is designed using a more contemporary palatt, and while it differs in every detail from the existing 120 year old house, the linking together of both buildings works well, and adds an interesting contrast to the composition for the site. Built by local Contractor Martin Acton.</p>', 'images/2022/12/house-in-west-of-ireland.jpg', 'house-in-west-of-ireland-1672149523/', '', NULL, 0, 'post', '2022-12-27 17:56:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 13:58:43', '2022-12-27 13:58:43', NULL),
(48, 8, 5, 'House in Westmeath', 'house-in-westmeath', 'A new build on a extraordinary site over looking a lake. Commended at Plan Expo Opus Building Awards 2003.', '<p>A new build on a extraordinary site over looking a lake. Commended at Plan Expo Opus Building Awards 2003.</p>', 'images/2022/12/house-in-westmeath.jpg', 'house-in-westmeath-1672149578/', '', NULL, 0, 'post', '2022-12-27 17:58:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 13:59:38', '2022-12-27 13:59:38', NULL),
(49, 8, 5, 'House in Kiliney South Dublin', 'house-in-kiliney-south-dublin', 'House in Kiliney South Dublin', '<p>House in Kiliney South Dublin</p>', 'images/2022/12/house-in-kiliney-south-dublin.jpg', 'house-in-kiliney-south-dublin-1672149882/', '', NULL, 0, 'post', '2022-12-27 18:00:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:04:42', '2022-12-27 14:04:42', NULL),
(50, 8, 5, 'Auto Atelier', 'auto-atelier', 'Auto Atelier', '<p>Auto Atelier</p>', 'images/2022/12/auto-atelier.jpg', 'auto-atelier-1672149961/', '', NULL, 0, 'post', '2022-12-27 18:05:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:06:01', '2022-12-27 14:06:01', NULL),
(51, 8, 5, 'House In Bundoran', 'house-in-bundoran', 'A sea side family home designed over three floors to form a series of interconnecting levels, over looking the beach in Bundoran, Co.Donegal', '<p>A sea side family home designed over three floors to form a series of interconnecting levels, over looking the beach in Bundoran, Co.Donegal</p>', 'images/2022/12/house-in-bundoran.jpg', 'house-in-bundoran-1672150030/', '', NULL, 0, 'post', '2022-12-27 18:06:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:07:10', '2022-12-27 14:07:10', NULL),
(52, 8, 6, 'Princes Street Commercial Offices', 'princes-street-commercial-offices', 'A complete interior refit of this historic Mill. Private Developer.', '<p>A complete interior refit of this historic Mill. Private Developer.</p>', 'images/2022/12/princes-street-commercial-offices.jpg', 'princes-street-commercial-offices-1672150173/', '', NULL, 0, 'post', '2022-12-27 18:08:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:09:33', '2022-12-27 14:09:33', NULL),
(53, 8, 6, '26-27 South Mall Cork', '26-27-south-mall-cork', '26-27 South Mall Cork. The recreation of this1980s redbrick into 2020 was achieved with the full refit of the interiors, new Glazing, mechanical and Electrical systems over the six floors.', '<p>26-27 South Mall Cork. The recreation of this1980s redbrick into 2020 was achieved with the full refit of the interiors, new Glazing, mechanical and Electrical systems over the six floors.</p>', 'images/projects/26-27-south-mall-cork-1672150372/e4ada5a7a8f852f4da8a221a5a845952.jpg', '26-27-south-mall-cork-1672150372/', '', 1, 0, 'post', '2022-12-27 18:12:00', '', '', '', '', NULL, '2022-12-27 14:12:52', '2022-12-30 12:33:53', NULL),
(54, 8, 6, 'No.61 Merrion Square Restoration Project', 'no-61-merrion-square-restoration-project', 'Restoration Project', '<p>Restoration Project</p>', 'images/2022/12/no-61-merrion-square-restoration-project.jpg', 'no-61-merrion-square-restoration-project-1672150547/', '', 0, 0, 'post', '2022-12-27 18:14:00', '', '', '', '', NULL, '2022-12-27 14:15:47', '2022-12-30 12:28:48', NULL),
(55, 8, 6, 'Ballast House Offices', 'ballast-house-offices', 'The Complete restoration and refit of Ballast was undertaken for Property Developer Jerry O\'Reilly of O\'Reilly Associates. nbkArchitects would continue work with Thomas Lenihan and Bob Manson of Pembrook Hall business Centre on the fit-out of the five floors for over 400 workstations, cafes and social spaces including roof gardens overlooking O\'Connell Street Bridge. Additional information and interior images can be seen; https://www.pembrokehall.ie/ballast-house.', '<p>The Complete restoration and refit of Ballast was undertaken for Property Developer Jerry O\'Reilly of O\'Reilly Associates. nbkArchitects would continue work with Thomas Lenihan and Bob Manson of Pembrook Hall business Centre on the fit-out of the five floors for over 400 workstations, cafes and social spaces including roof gardens overlooking O\'Connell Street Bridge. Additional information and interior images can be seen; https://www.pembrokehall.ie/ballast-house.</p>', 'images/2022/12/ballast-house-offices-1672150652.jpg', 'ballast-house-offices-1672150652/', '', NULL, 0, 'post', '2022-12-27 18:15:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:17:32', '2022-12-27 14:17:32', NULL),
(56, 8, 6, 'Bray Business Park', 'bray-business-park', 'A Bray Business Park Commercial Office and warehouse development for two Dublin based computer manufacturing Companies.', '<p>A Bray Business Park Commercial Office and warehouse development for two Dublin based computer manufacturing Companies.</p>\n<div id=\"acfifjfajpekbmhmjppnmmjgmhjkildl\" class=\"acfifjfajpekbmhmjppnmmjgmhjkildl\"> </div>', 'images/2022/12/bray-business-park.jpg', 'bray-business-park-1672150709/', '', 0, 0, 'post', '2022-12-27 18:17:00', '', '', '', '', NULL, '2022-12-27 14:18:29', '2022-12-30 12:31:53', NULL),
(57, 8, 6, 'Carluccios Cafe', 'carluccios-cafe', 'Carluccios Cafe on Dawson Street in Dublin was the complete refurbishment of three buildings. The buildings were purchased with the concept of combining all three into a single restaurant, over two floors, served by a basement kitchen run by more than 65 staff. The commercial kitchens extend over two of the original houses, and serve the Cafe and retail spaces above on Dawson Street. Have a look ,and the food is great!', '<p>Carluccios Cafe on Dawson Street in Dublin was the complete refurbishment of three buildings. The buildings were purchased with the concept of combining all three into a single restaurant, over two floors, served by a basement kitchen run by more than 65 staff. The commercial kitchens extend over two of the original houses, and serve the Cafe and retail spaces above on Dawson Street. Have a look ,and the food is great!</p>', 'images/2022/12/carluccios-cafe.jpg', 'carluccios-cafe-1672150752/', '', NULL, 0, 'post', '2022-12-27 18:18:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:19:12', '2022-12-27 14:19:12', NULL),
(58, 8, 6, 'Dockmill Commercial Offices', 'dockmill-commercial-offices', 'The DockMill was one of the last Warehouses on the inner Dock to be developed on the water front. The building was refurbished from very poor condition.The challenge presented to us on first viewing Dockmill were varied. Take a protected structure with an industrial history and a barely started residential conversion and provide a vibrant modern work environment suitable for the needs and wants of discerning contemporary businesses. A light touch was required to maintain the integrity of a building which retained many of its original features. Shortlisted for the CONSERVATION AWARD in the Irish Independent Property Excellence Awards 2015. Restored steel framed windows and a renovated cast iron internal structure in conjunction with the use of natural breathable internal renders over varying generations of brickwork and masonry write an ongoing story of the structure. Adaptable reuse as a concept led to the incorporation of original floorboards into floors capable of servicing hi-tech industry while also heating the entire structure. The modern additions are fully readable and removable, encompassing highly efficient ceiling mounted mechanical services designed to remain exposed and to complement the rhythmic formality of the aged cast iron, glowing glazed pods housing the sanitary provision required in a commercial building of its size, internal feature stairs and voids linking floors and providing vertical visual linkage. The expressed external elements serve to act as a counterbalance to the Victorian mass of the original building allowing even the casual observer to read the evolving history of reuse of the structure. The decision was made to avoid convention when providing a fire escape. This was going to be a highly visible element on what was a tight site. The constraints of the site prompted the use of a highly engineered approach to the provision of the feature, flights cantilevered from a perilously slim yet thoroughly robust central spine which has been emblazoned in vibrant orange, a theme carried through the entire project.', '<p>The DockMill was one of the last Warehouses on the inner Dock to be developed on the water front. The building was refurbished from very poor condition.The challenge presented to us on first viewing Dockmill were varied. Take a protected structure with an industrial history and a barely started residential conversion and provide a vibrant modern work environment suitable for the needs and wants of discerning contemporary businesses. A light touch was required to maintain the integrity of a building which retained many of its original features. Shortlisted for the CONSERVATION AWARD in the Irish Independent Property Excellence Awards 2015. Restored steel framed windows and a renovated cast iron internal structure in conjunction with the use of natural breathable internal renders over varying generations of brickwork and masonry write an ongoing story of the structure. Adaptable reuse as a concept led to the incorporation of original floorboards into floors capable of servicing hi-tech industry while also heating the entire structure. The modern additions are fully readable and removable, encompassing highly efficient ceiling mounted mechanical services designed to remain exposed and to complement the rhythmic formality of the aged cast iron, glowing glazed pods housing the sanitary provision required in a commercial building of its size, internal feature stairs and voids linking floors and providing vertical visual linkage. The expressed external elements serve to act as a counterbalance to the Victorian mass of the original building allowing even the casual observer to read the evolving history of reuse of the structure. The decision was made to avoid convention when providing a fire escape. This was going to be a highly visible element on what was a tight site. The constraints of the site prompted the use of a highly engineered approach to the provision of the feature, flights cantilevered from a perilously slim yet thoroughly robust central spine which has been emblazoned in vibrant orange, a theme carried through the entire project.</p>', 'images/2022/12/dockmill-commercial-offices.jpg', 'dockmill-commercial-offices-1672151067/', '', 1, 0, 'post', '2022-12-27 18:19:00', '', '', '', '', NULL, '2022-12-27 14:24:27', '2022-12-30 12:27:52', NULL),
(59, 8, 6, 'Green Street', 'green-street', 'Green Street', '<p>Green Street</p>', 'images/2022/12/green-street.jpg', 'green-street-1672151316/', '', NULL, 0, 'post', '2022-12-27 18:27:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:28:36', '2022-12-27 14:28:36', NULL),
(60, 8, 6, 'Hotel Clarion Airport', 'hotel-clarion-airport', 'Hotel Clarion Airport', '<p>Hotel Clarion Airport</p>', 'images/2022/12/hotel-clarion-airport.jpg', 'hotel-clarion-airport-1672151363/', '', NULL, 0, 'post', '2022-12-27 18:28:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:29:23', '2022-12-27 14:29:23', NULL),
(61, 8, 6, 'Meridian Point Shopping Center', 'meridian-point-shopping-center', 'A Shopping Center at Greystones Main Street for Cosgrave Property Developments Ltd. A complex piece of urban planning comprising of Housing, Parking and Shopping Center, in the center of Greystones village. Selected for Exhibition at RIAI Irish Architecture Awards 2005.', '<p>A Shopping Center at Greystones Main Street for Cosgrave Property Developments Ltd. A complex piece of urban planning comprising of Housing, Parking and Shopping Center, in the center of Greystones village. Selected for Exhibition at RIAI Irish Architecture Awards 2005.</p>', 'images/2022/12/meridian-point-shopping-center.jpg', 'meridian-point-shopping-center-1672151432/', '', NULL, 0, 'post', '2022-12-27 18:29:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:30:32', '2022-12-27 14:30:32', NULL),
(62, 8, 6, 'Ocean Bar', 'ocean-bar', 'One of the first Bars in the new Dublin Docklands in 2002. The interior design was reflective of a new emerging Dublin Docklands Architecture. This design would become the backdrop for many TV interviews, news items and rte shows, most notably the Dave Fanning Show,. Many of these RTE shows are still available on line.', '<p>One of the first Bars in the new Dublin Docklands in 2002. The interior design was reflective of a new emerging Dublin Docklands Architecture. This design would become the backdrop for many TV interviews, news items and rte shows, most notably the Dave Fanning Show,. Many of these RTE shows are still available on line.</p>', 'images/2022/12/ocean-bar.jpg', 'ocean-bar-1672151504/', '', NULL, 0, 'post', '2022-12-27 18:30:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:31:44', '2022-12-27 14:31:44', NULL),
(63, 8, 6, 'One Building Dublin', 'one-building-dublin', 'One Building Dublin', '<p>One Building Dublin</p>', 'images/2022/12/one-building-dublin.jpg', 'one-building-dublin-1672151573/', '', 1, 0, 'post', '2022-12-27 18:32:00', '', '', '', '', NULL, '2022-12-27 14:32:53', '2022-12-30 12:16:12', NULL),
(64, 8, 6, 'Sligo Park Hotel', 'sligo-park-hotel', 'Sligo Park Hotel. Since the 1980s We have worked with the hotel on many additions and refurbishments, including restaurants ,bars and function rooms. The Early 1990 modern bedroom interiors were seen as unique in the west of Ireland at the time. The leisure center was one of the first Hotel pool and gym facilities at the time.', '<p>Sligo Park Hotel. Since the 1980s We have worked with the hotel on many additions and refurbishments, including restaurants ,bars and function rooms. The Early 1990 modern bedroom interiors were seen as unique in the west of Ireland at the time. The leisure center was one of the first Hotel pool and gym facilities at the time.</p>', 'images/projects/sligo-park-hotel-1672151630/52c4c2e0e9394c1a4dcdf5a1fde0fe39.jpg', 'sligo-park-hotel-1672151630/', '', NULL, 0, 'post', '2022-12-27 18:33:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:33:50', '2022-12-30 09:50:20', NULL),
(65, 8, 6, 'Terminus Mills Commercial Offices', 'terminus-mills-commercial-offices', 'A restoration and fit-out of the old Tramyard buildings at Terminus Mills in Clonskeagh for Chris Jones of Jones Investments, 33 Mespil Road, Ballsbridge D04X027.', '<p>A restoration and fit-out of the old Tramyard buildings at Terminus Mills in Clonskeagh for Chris Jones of Jones Investments, 33 Mespil Road, Ballsbridge D04X027.</p>', 'images/2022/12/terminus-mills-commercial-offices.jpg', NULL, '', NULL, 0, 'post', '2022-12-27 18:33:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:35:11', '2022-12-27 14:35:11', NULL),
(66, 8, 6, 'Fit Out For Dentsu Ageis Network', 'fit-out-for-dentsu-ageis-network', 'Fit Out For Dentsu Ageis Network', '<p>Fit Out For Dentsu Ageis Network</p>', 'images/2022/12/fit-out-for-dentsu-ageis-network.jpg', 'fit-out-for-dentsu-ageis-network-1672151773/', '', NULL, 0, 'post', '2022-12-27 18:35:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:36:13', '2022-12-27 14:36:13', NULL),
(67, 8, 6, 'The Gables', 'the-gables', 'It was the First of its kind, a wine shop and Restaurant combined. Foxrock Village.', '<p>It was the First of its kind, a wine shop and Restaurant combined. Foxrock Village.</p>', 'images/2022/12/the-gables.jpg', 'the-gables-1672151828/', '', NULL, 0, 'post', '2022-12-27 18:36:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:37:08', '2022-12-27 14:37:08', NULL),
(68, 8, 6, 'The Vaults', 'the-vaults', 'Once said to be the largest bar on the north side of Dublin, this was a complex restoration of the 150 year old Vaults under Dublin\'s Connolly Train and Dart Station. The bonded warehouse was converted into a Bar, Restaurant and function rooms. Four bars and a wine cellar bar serve a substantial footprint of dining and function space. Commended at Plan Expo Opus Building awards 2002, in Conservation and Restoration Catagory.', '<p>Once said to be the largest bar on the north side of Dublin, this was a complex restoration of the 150 year old Vaults under Dublin\'s Connolly Train and Dart Station. The bonded warehouse was converted into a Bar, Restaurant and function rooms. Four bars and a wine cellar bar serve a substantial footprint of dining and function space. Commended at Plan Expo Opus Building awards 2002, in Conservation and Restoration Catagory.</p>', 'images/projects/the-vaults-1672151876/a0f293c22873f748d1b762b0a4b6cefa.jpg', 'the-vaults-1672151876/', '', NULL, 0, 'post', '2022-12-27 18:37:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:37:56', '2022-12-30 00:13:32', NULL),
(69, 8, 6, 'Trinity Biotech', 'trinity-biotech', 'Trinity Biotech', '<p>Trinity Biotech</p>', 'images/2022/12/trinity-biotech.jpg', 'trinity-biotech-1672151946/', '', NULL, 0, 'post', '2022-12-27 18:38:00', NULL, NULL, NULL, NULL, NULL, '2022-12-27 14:39:06', '2022-12-27 14:39:06', NULL),
(70, 8, 6, 'UCD', 'ucd', 'Administration offices at UCD Campus Dublin.', '<p>Administration offices at UCD Campus Dublin.</p>\n<div id=\"acfifjfajpekbmhmjppnmmjgmhjkildl\" class=\"acfifjfajpekbmhmjppnmmjgmhjkildl\"> </div>', 'images/projects/ucd-1672152047/e102eb46d7e27a95834f7d422c0cb480.jpg', 'ucd-1672152047/', '', 0, 0, 'post', '2022-12-27 18:39:00', '', '', '', '', NULL, '2022-12-27 14:40:47', '2022-12-30 12:31:27', NULL),
(71, 8, 6, 'Workmans', 'workmans', 'The Workmans Club Dunlaoghaire Co.Dublin plays a significant part in local town history.The building was not listed at the time, but a decision to keep the front section for retail use, now Fired Earth and use the derelict sheds behind for a new four story retail development gave us an interesting composition,. Now home to a selection of retail outlets and a Day Spa. The result is a tiered glazed and terracotta structure, forming a contrasting contemporary backdrop to this period piece.', '<p>The Workmans Club Dunlaoghaire Co.Dublin plays a significant part in local town history.The building was not listed at the time, but a decision to keep the front section for retail use, now Fired Earth and use the derelict sheds behind for a new four story retail development gave us an interesting composition,. Now home to a selection of retail outlets and a Day Spa. The result is a tiered glazed and terracotta structure, forming a contrasting contemporary backdrop to this period piece.</p>\n<div id=\"acfifjfajpekbmhmjppnmmjgmhjkildl\" class=\"acfifjfajpekbmhmjppnmmjgmhjkildl\"> </div>', 'images/projects/workmans-1672152102/4597b02133652c6ccd1e542f8e8327fd.jpg', 'workmans-1672152102/', '', 0, 0, 'post', '2022-12-27 18:40:00', '', '', '', '', 'files/2023/01/workmans.pdf', '2022-12-27 14:41:42', '2023-01-13 22:21:58', NULL),
(72, 8, 5, 'Dublin', 'dublin', 'Testing', '<p>TEXT</p>', 'images/projects/dublin-1673302485/4a0db90e12549563a42e27116f3d06c7.jpg', 'dublin-1673302485/', '', 0, 0, 'draft', '2023-01-10 02:12:00', '', '', '', '', NULL, '2023-01-09 22:14:45', '2023-01-09 22:14:45', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `notifications`
--

INSERT INTO `notifications` (`id`, `view`, `email`, `content`, `uri`, `created_at`, `updated_at`) VALUES
(1, 1, 'renatacarvalho__@hotmail.com', '<h1>Consultation Request</h1><br>Name: RENATA CARVALHO<br>E-mail: renatacarvalho__@hotmail.com<br>Phone: +353833609936<br>Type of Project: Commercial<br>Budget: 20000 euros<BR>Message: <p>hfhgfgdfdhgdgd</p><br>Date and Time: <strong>2023-01-18 14:00</strong>', 'admin/booking/home', '2023-01-04 01:10:24', '2023-01-08 21:22:04'),
(2, 1, 'renatacarvalho__@hotmail.com', '<h1>Consultation Request</h1><br>Name: RENATA CARVALHO<br>E-mail: renatacarvalho__@hotmail.com<br>Phone: +353833609936<br>Type of Project: Residential<br>Budget: 20000 euros<BR>Message: <p>hahaha</p><br>Date and Time: <strong>2023-01-06 14:00</strong>', 'admin/booking/home', '2023-01-04 01:13:08', '2023-01-08 21:22:04'),
(3, 1, 'Vieira', '<h1>Consultation Request</h1><br>Name: Valéria<br>E-mail: Vieira<br>Phone: +353833609936<br>Type of Project: Residential<br>Budget: 100.000 EUROS<BR>Message: <p>I would like to renovate the house that I just bought.</p><br>Date and Time: <strong>2023-01-25 14:00</strong>', 'admin/booking/home', '2023-01-08 22:50:43', '2023-01-08 22:52:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `report_access`
--

CREATE TABLE `report_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `users` int(11) NOT NULL DEFAULT 1,
  `views` int(11) NOT NULL DEFAULT 1,
  `pages` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `report_access`
--

INSERT INTO `report_access` (`id`, `users`, `views`, `pages`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 757, '2022-12-15 14:11:14', '2022-12-15 21:10:31'),
(2, 2, 3, 109, '2022-12-16 11:58:35', '2022-12-16 19:51:14'),
(3, 1, 1, 84, '2022-12-17 23:20:36', '2022-12-18 00:49:16'),
(4, 2, 4, 284, '2022-12-19 13:28:38', '2022-12-19 22:22:21'),
(5, 1, 1, 322, '2022-12-27 12:49:44', '2022-12-27 21:10:29'),
(6, 1, 2, 146, '2022-12-29 17:21:16', '2022-12-30 01:13:38'),
(7, 2, 1, 208, '2022-12-30 09:13:32', '2022-12-30 12:49:30'),
(8, 1, 1, 11, '2023-01-02 13:42:44', '2023-01-03 01:43:17'),
(9, 2, 2, 84, '2023-01-03 12:40:18', '2023-01-04 01:29:55'),
(10, 1, 1, 4, '2023-01-04 12:23:00', '2023-01-04 12:31:19'),
(11, 1, 1, 22, '2023-01-08 21:19:51', '2023-01-08 23:23:50'),
(12, 1, 1, 26, '2023-01-09 22:09:05', '2023-01-09 22:49:40'),
(13, 1, 1, 4, '2023-01-10 13:39:50', '2023-01-10 13:40:03'),
(14, 1, 1, 7, '2023-01-12 22:04:14', '2023-01-12 23:37:09'),
(15, 1, 1, 5, '2023-01-13 21:17:37', '2023-01-14 00:23:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `report_log`
--

CREATE TABLE `report_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `report_online`
--

CREATE TABLE `report_online` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `pages` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `report_online`
--

INSERT INTO `report_online` (`id`, `user`, `ip`, `url`, `agent`, `pages`, `created_at`, `updated_at`) VALUES
(4029, 8, '::1', '/ops/404', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 2, '2023-01-14 00:23:56', '2023-01-14 00:23:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `level` int(11) DEFAULT 1,
  `code` varchar(255) DEFAULT NULL,
  `genre` varchar(10) DEFAULT NULL,
  `datebirth` date DEFAULT NULL,
  `document` varchar(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'registered' COMMENT 'registered, confirmed',
  `role` varchar(255) DEFAULT NULL,
  `experts` tinyint(4) DEFAULT NULL,
  `boss` tinyint(4) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `ingress` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `level`, `code`, `genre`, `datebirth`, `document`, `phone`, `photo`, `status`, `role`, `experts`, `boss`, `bio`, `linkedin`, `facebook`, `twitter`, `instagram`, `youtube`, `ingress`, `created_at`, `updated_at`) VALUES
(7, 'Mark', 'Whelan', 'marknbkarchitects@gmail.com', '$2y$10$7cLbZwbPXFZ0R5yFq45WUulfAAeCUznd5BOigvNl7wYm10i7Qu0Sq', 5, NULL, 'male', '2022-12-19', '', NULL, 'images/2022/12/mark-whelan.jpg', 'confirmed', 'DIP. ARCH, B. ARCH. SC., MRIAI', 1, 1, 'BEFORE JOINING NBK ARCHITECTS IN 2009, MARK GAINED CONSIDERABLE EXPERIENCE IN LARGE SCALE PROJECTS RANGING FROM CBD FITOUTS TO MAJOR RETAIL CENTRES. SINCE JOINING NBK ARCHITECTS, THIS EXPERIENCE BASE HAS BROADENED, WITH THE LARGE SCALE INTERMIXED WITH SMALLER BESPOKE PROJECTS.\n\nTHIS EXPERIENCE FEEDS INTO ALL ASPECTS OF THE VARIED OUTPUT OF NBK WITH A FOCUS ON DESIGN, IMPLEMENTATION AND QUALITY CONTROL.', '', '', '', '', '', 0, '2022-12-19 14:20:50', '2022-12-30 12:20:58'),
(8, 'Renata', 'Carvalho', 'renatanbkarchitects@gmail.com', '$2y$10$8Kcezkd8RASeVH1g7m7HFeJOp76.cKEwyjo2tsVATbTtDdWKZji/2', 5, NULL, 'female', '1991-07-23', '', NULL, 'images/2023/01/renata-carvalho.jpg', 'confirmed', 'Architect', 1, 0, '', '', '', '', '', '', 0, '2022-12-19 20:23:14', '2023-01-09 23:35:13'),
(9, 'Neil', 'Burke Kennedy', 'neilburkekennedy@gmail.com', '$2y$10$iCDkzRvCTOHfLTu3jnIZe.nPGYQ1Cv8/zgliC5xZL0VyjvXidjy8C', 5, NULL, 'male', '2022-12-29', '', NULL, 'images/2022/12/neil-burke-kennedy.jpg', 'registered', 'DIP. ARCH, DIP. PROJ. MAN., MRIAI', 1, 1, 'NEIL SPENT SIX YEARS WITH BURKE-KENNEDY DOYLE & PARTNERS, ONE OF IRELAND\'S LEADING ARCHITECTURAL FIRMS, SPENDING TIME AT THE HELM OF MAJOR COMMERCIAL AND PRESTIGIOUS PROJECTS INCLUDING THE EARLSFORT CENTRE, THE RECONSTRUCTION OF LOWER LEESON STREET AND THE SQUARE IN TALLAGHT (THE LARGEST SHOPPING CENTRE IN EUROPE AT THE TIME).\n\nTHE MOTIVATION TO SET UP HIS OWN PRACTICE WAS BASED UPON NEILS DESIRE TO PUSH THE BOUNDARIES OF ARCHITECTURE, CONSIDERING LANDSCAPING, INTERIORS AND ENVIRONMENTAL ASPECTS AT THE EARLY STAGES OF HIS DESIGN PROCESS. HE BELIEVES THAT SUCCESSFUL ARCHITECTURE DOES NOT END WITH THE BUILDING ENVELOPE, BUT THAT OFTEN IT IS THE ATTENTION TO DETAILING, MANNER OF DELIVERY AND CONTEXT THAT MERITS PROFESSIONAL RECOGNITION, AND ULTIMATELY PUBLIC ENJOYMENT.\n\nTHIS COMMITMENT TO THE \'ARCHITECTURE\' MEANS THAT THE FOCUS HAS NEVER SOLELY BEEN ON LARGER, MORE PRESTIGIOUS COMMISSIONS; THE SMALLER NICHE PROJECTS WILL ALWAYS BE KEPT AS AN ASPECT OF THE PORTFOLIO.', '', '', '', '', '', 0, '2022-12-19 22:21:30', '2023-01-12 21:01:49'),
(12, 'Marilene', 'Carvalho', 'marilenercarvalho@hotmail.com', '$2y$10$gs3ZwTqFH77/rfadYWxH9uezhE4jhvB/hbFAWMQeN6dWAitWCauNi', 1, NULL, 'female', '2023-01-08', '', NULL, 'images/2023/01/marilene-carvalho-1673214493.jpg', 'registered', 'Architect', 1, 0, '', '', '', '', '', '', 0, '2023-01-08 21:46:09', '2023-01-08 22:32:50'),
(13, 'Rivaldo', 'Carvalho', 'rivaldo@gmail.com', '$2y$10$m14KhKrE0ooPkt2VV1qWx.4E.kBV6ucSPSYeaHJw4ttiSi/53Cfci', 1, NULL, 'male', '2023-01-08', '', NULL, 'images/2023/01/rivaldo-carvalho.jpg', 'registered', 'Architect', 1, 0, '', '', '', '', '', '', 0, '2023-01-08 21:47:51', NULL),
(14, 'Gustavo', 'Carvalho', 'renatacarvalho__@hotmail.com', '$2y$10$7l0zbXMXmJCy1BlgmB1MXOckJa.ups352YKq1MyXm3HILHcPOnzm.', 1, NULL, 'male', '2023-01-10', '', NULL, 'images/2023/01/gustavo-carvalho.jpg', 'registered', '', 1, 0, '', '', '', '', '', '', 0, '2023-01-09 23:10:51', '2023-01-12 22:13:26');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories_jobs`
--
ALTER TABLE `categories_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category`),
  ADD KEY `user_id` (`author`);
ALTER TABLE `jobs` ADD FULLTEXT KEY `full_text` (`title`,`subtitle`);

--
-- Índices para tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `report_access`
--
ALTER TABLE `report_access`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `report_log`
--
ALTER TABLE `report_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `report_online`
--
ALTER TABLE `report_online`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `users` ADD FULLTEXT KEY `first_name` (`first_name`,`last_name`,`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `categories_jobs`
--
ALTER TABLE `categories_jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de tabela `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `report_access`
--
ALTER TABLE `report_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `report_log`
--
ALTER TABLE `report_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `report_online`
--
ALTER TABLE `report_online`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4030;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories_jobs` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
