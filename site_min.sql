-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 01:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site_min`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `biz_number` varchar(255) DEFAULT NULL,
  `vat_code` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `category` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `business_type` int(11) DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `is_primary` int(11) DEFAULT NULL,
  `is_autoload_amount` int(11) NOT NULL,
  `enable_stock` int(11) DEFAULT 0,
  `template_style` int(11) NOT NULL DEFAULT 1,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '#546af1',
  `footer_note` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `uid`, `user_id`, `name`, `slug`, `type`, `title`, `biz_number`, `vat_code`, `country`, `address`, `category`, `business_type`, `logo`, `status`, `is_primary`, `is_autoload_amount`, `enable_stock`, `template_style`, `color`, `footer_note`, `created_at`) VALUES
(1, '54903', 2, 'Home', 'home', 1, NULL, NULL, NULL, 49, NULL, '4', NULL, NULL, 0, 0, 0, 0, 1, '#546af1', NULL, '2020-11-09 22:01:05'),
(2, '04178', 2, 'New', NULL, 1, 'New', '11', '', 4, '', '3', NULL, NULL, 1, 0, 0, 0, 1, '#546af1', NULL, '2020-11-14 22:32:39'),
(3, '93405', 2, 'new american business', NULL, 1, '', '', '', 49, '', '3', NULL, NULL, 1, 0, 0, 0, 1, '#546af1', NULL, '2021-01-22 00:52:42'),
(4, '24305', 2, 'american ', NULL, 1, 'ameriican', '', '', 178, '', '2', NULL, NULL, 1, 1, 0, 1, 1, '#546af1', NULL, '2021-01-22 01:45:31'),
(5, '03279', 3, '44', '44', 1, NULL, NULL, NULL, 1, NULL, '3', NULL, NULL, 0, 1, 0, 0, 1, '#546af1', NULL, '2021-03-28 16:45:23'),
(6, '12965', 4, 'rrrr', 'rrrr', 1, NULL, NULL, NULL, 4, NULL, '4', NULL, NULL, 0, 1, 0, 0, 1, '#546af1', NULL, '2021-03-28 17:43:14'),
(7, '24305', 5, 'New', NULL, 1, 'New', '11', '', 4, '', '3', NULL, NULL, 1, 1, 0, 0, 1, '#546af1', NULL, '2020-11-14 22:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `business_category`
--

CREATE TABLE `business_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `business_category`
--

INSERT INTO `business_category` (`id`, `name`) VALUES
(1, 'Arts, crafts, and collectible'),
(2, 'Baby'),
(3, 'Beauty and fragrances'),
(4, 'Books and magazines'),
(5, 'Business to business'),
(6, 'Clothing, accessories, and shoes'),
(7, 'Web, Computers, accessories, and services'),
(8, 'Education'),
(9, 'Electronics and telecom'),
(10, 'Entertainment and media'),
(11, 'Financial services and products'),
(12, 'Food retail and service'),
(13, 'Gifts and flowers'),
(14, 'Government'),
(15, 'Health and personal care'),
(16, 'Home and garden'),
(17, 'Nonprofit'),
(18, 'Pets and animals'),
(19, 'Religion and spirituality (for profit)'),
(20, 'Retail (not elsewhere classified)'),
(21, 'Services - other'),
(22, 'Sports and outdoors'),
(23, 'Toys and hobbies'),
(24, 'Travel'),
(25, 'Vehicle sales'),
(26, 'Vehicle service and accessories');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` int(11) DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `business_id`, `name`, `slug`, `type`, `parent_id`) VALUES
(1, 2, 54903, 'Expense New', 'expense-new', 2, 0),
(2, 2, 24305, 'rrrr', 'rrrr', 1, 0),
(3, 2, 24305, 'expense cat', 'expense-cat', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cost_centers`
--

CREATE TABLE `cost_centers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `name` varchar(455) DEFAULT NULL,
  `slug` varchar(455) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cost_centers`
--

INSERT INTO `cost_centers` (`id`, `user_id`, `business_id`, `name`, `slug`) VALUES
(2, 2, 54903, 'New Center', 'new-center');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `code` varchar(2) NOT NULL,
  `dial_code` varchar(5) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `currency_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES
(1, 'Andorra', 'AD', '+376', 'Euro', '€', 'EUR'),
(2, 'United Arab Emirates', 'AE', '+971', 'United Arab Emirates', 'د.إ', 'AED'),
(3, 'Afghanistan', 'AF', '+93', 'Afghan afghani', '؋', 'AFN'),
(4, 'Antigua and Barbuda', 'AG', '+1268', 'East Caribbean dolla', '$', 'XCD'),
(5, 'Anguilla', 'AI', '+1264', 'East Caribbean dolla', '$', 'XCD'),
(6, 'Albania', 'AL', '+355', 'Albanian lek', 'L', 'ALL'),
(7, 'Armenia', 'AM', '+374', 'Armenian dram', '', 'AMD'),
(8, 'Angola', 'AO', '+244', 'Angolan kwanza', 'Kz', 'AOA'),
(9, 'Argentina', 'AR', '+54', 'Argentine peso', '$', 'ARS'),
(10, 'Austria', 'AT', '+43', 'Euro', '€', 'EUR'),
(11, 'Australia', 'AU', '+61', 'Australian dollar', '$', 'AUD'),
(12, 'Aruba', 'AW', '+297', 'Aruban florin', 'ƒ', 'AWG'),
(13, 'Azerbaijan', 'AZ', '+994', 'Azerbaijani manat', '', 'AZN'),
(14, 'Barbados', 'BB', '+1246', 'Barbadian dollar', '$', 'BBD'),
(15, 'Bangladesh', 'BD', '+880', 'Bangladeshi taka', '৳', 'BDT'),
(16, 'Belgium', 'BE', '+32', 'Euro', '€', 'EUR'),
(17, 'Burkina Faso', 'BF', '+226', 'West African CFA fra', 'Fr', 'XOF'),
(18, 'Bulgaria', 'BG', '+359', 'Bulgarian lev', 'лв', 'BGN'),
(19, 'Bahrain', 'BH', '+973', 'Bahraini dinar', '.د.ب', 'BHD'),
(20, 'Burundi', 'BI', '+257', 'Burundian franc', 'Fr', 'BIF'),
(21, 'Benin', 'BJ', '+229', 'West African CFA fra', 'Fr', 'XOF'),
(22, 'Bermuda', 'BM', '+1441', 'Bermudian dollar', '$', 'BMD'),
(23, 'Brazil', 'BR', '+55', 'Brazilian real', 'R$', 'BRL'),
(24, 'Bhutan', 'BT', '+975', 'Bhutanese ngultrum', 'Nu.', 'BTN'),
(25, 'Botswana', 'BW', '+267', 'Botswana pula', 'P', 'BWP'),
(26, 'Belarus', 'BY', '+375', 'Belarusian ruble', 'Br', 'BYR'),
(27, 'Belize', 'BZ', '+501', 'Belize dollar', '$', 'BZD'),
(28, 'Canada', 'CA', '+1', 'Canadian dollar', '$', 'CAD'),
(29, 'Switzerland', 'CH', '+41', 'Swiss franc', 'Fr', 'CHF'),
(30, 'Cote d\'Ivoire', 'CI', '+225', 'West African CFA fra', 'Fr', 'XOF'),
(31, 'Cook Islands', 'CK', '+682', 'New Zealand dollar', '$', 'NZD'),
(32, 'Chile', 'CL', '+56', 'Chilean peso', '$', 'CLP'),
(33, 'Cameroon', 'CM', '+237', 'Central African CFA ', 'Fr', 'XAF'),
(34, 'China', 'CN', '+86', 'Chinese yuan', '¥ or 元', 'CNY'),
(35, 'Colombia', 'CO', '+57', 'Colombian peso', '$', 'COP'),
(36, 'Costa Rica', 'CR', '+506', 'Costa Rican colón', '₡', 'CRC'),
(37, 'Cuba', 'CU', '+53', 'Cuban convertible pe', '$', 'CUC'),
(38, 'Cape Verde', 'CV', '+238', 'Cape Verdean escudo', 'Esc or $', 'CVE'),
(39, 'Cyprus', 'CY', '+357', 'Euro', '€', 'EUR'),
(40, 'Czech Republic', 'CZ', '+420', 'Czech koruna', 'Kč', 'CZK'),
(41, 'Germany', 'DE', '+49', 'Euro', '€', 'EUR'),
(42, 'Djibouti', 'DJ', '+253', 'Djiboutian franc', 'Fr', 'DJF'),
(43, 'Denmark', 'DK', '+45', 'Danish krone', 'kr', 'DKK'),
(44, 'Dominica', 'DM', '+1767', 'East Caribbean dolla', '$', 'XCD'),
(45, 'Dominican Republic', 'DO', '+1849', 'Dominican peso', '$', 'DOP'),
(46, 'Algeria', 'DZ', '+213', 'Algerian dinar', 'د.ج', 'DZD'),
(47, 'Ecuador', 'EC', '+593', 'United States dollar', '$', 'USD'),
(48, 'Estonia', 'EE', '+372', 'Euro', '€', 'EUR'),
(49, 'Egypt', 'EG', '+20', 'Egyptian pound', '£ or ج.م', 'EGP'),
(50, 'Eritrea', 'ER', '+291', 'Eritrean nakfa', 'Nfk', 'ERN'),
(51, 'Spain', 'ES', '+34', 'Euro', '€', 'EUR'),
(52, 'Ethiopia', 'ET', '+251', 'Ethiopian birr', 'Br', 'ETB'),
(53, 'Finland', 'FI', '+358', 'Euro', '€', 'EUR'),
(54, 'Fiji', 'FJ', '+679', 'Fijian dollar', '$', 'FJD'),
(55, 'Faroe Islands', 'FO', '+298', 'Danish krone', 'kr', 'DKK'),
(56, 'France', 'FR', '+33', 'Euro', '€', 'EUR'),
(57, 'Gabon', 'GA', '+241', 'Central African CFA ', 'Fr', 'XAF'),
(58, 'United Kingdom', 'GB', '+44', 'British pound', '£', 'GBP'),
(59, 'Grenada', 'GD', '+1473', 'East Caribbean dolla', '$', 'XCD'),
(60, 'Georgia', 'GE', '+995', 'Georgian lari', 'ლ', 'GEL'),
(61, 'Guernsey', 'GG', '+44', 'British pound', '£', 'GBP'),
(62, 'Ghana', 'GH', '+233', 'Ghana cedi', '₵', 'GHS'),
(63, 'Gibraltar', 'GI', '+350', 'Gibraltar pound', '£', 'GIP'),
(64, 'Guinea', 'GN', '+224', 'Guinean franc', 'Fr', 'GNF'),
(65, 'Equatorial Guinea', 'GQ', '+240', 'Central African CFA ', 'Fr', 'XAF'),
(66, 'Greece', 'GR', '+30', 'Euro', '€', 'EUR'),
(67, 'Guatemala', 'GT', '+502', 'Guatemalan quetzal', 'Q', 'GTQ'),
(68, 'Guinea-Bissau', 'GW', '+245', 'West African CFA fra', 'Fr', 'XOF'),
(69, 'Guyana', 'GY', '+595', 'Guyanese dollar', '$', 'GYD'),
(70, 'Hong Kong', 'HK', '+852', 'Hong Kong dollar', '$', 'HKD'),
(71, 'Honduras', 'HN', '+504', 'Honduran lempira', 'L', 'HNL'),
(72, 'Croatia', 'HR', '+385', 'Croatian kuna', 'kn', 'HRK'),
(73, 'Haiti', 'HT', '+509', 'Haitian gourde', 'G', 'HTG'),
(74, 'Hungary', 'HU', '+36', 'Hungarian forint', 'Ft', 'HUF'),
(75, 'Indonesia', 'ID', '+62', 'Indonesian rupiah', 'Rp', 'IDR'),
(76, 'Ireland', 'IE', '+353', 'Euro', '€', 'EUR'),
(77, 'Israel', 'IL', '+972', 'Israeli new shekel', '₪', 'ILS'),
(78, 'Isle of Man', 'IM', '+44', 'British pound', '£', 'GBP'),
(79, 'India', 'IN', '+91', 'Indian rupee', '₹', 'INR'),
(80, 'Iraq', 'IQ', '+964', 'Iraqi dinar', 'ع.د', 'IQD'),
(81, 'Iceland', 'IS', '+354', 'Icelandic króna', 'kr', 'ISK'),
(82, 'Italy', 'IT', '+39', 'Euro', '€', 'EUR'),
(83, 'Jersey', 'JE', '+44', 'British pound', '£', 'GBP'),
(84, 'Jamaica', 'JM', '+1876', 'Jamaican dollar', '$', 'JMD'),
(85, 'Jordan', 'JO', '+962', 'Jordanian dinar', 'د.ا', 'JOD'),
(86, 'Japan', 'JP', '+81', 'Japanese yen', '¥', 'JPY'),
(87, 'Kenya', 'KE', '+254', 'Kenyan shilling', 'Sh', 'KES'),
(88, 'Kyrgyzstan', 'KG', '+996', 'Kyrgyzstani som', 'лв', 'KGS'),
(89, 'Cambodia', 'KH', '+855', 'Cambodian riel', '៛', 'KHR'),
(90, 'Kiribati', 'KI', '+686', 'Australian dollar', '$', 'AUD'),
(91, 'Comoros', 'KM', '+269', 'Comorian franc', 'Fr', 'KMF'),
(92, 'Kuwait', 'KW', '+965', 'Kuwaiti dinar', 'د.ك', 'KWD'),
(93, 'Cayman Islands', 'KY', '+ 345', 'Cayman Islands dolla', '$', 'KYD'),
(94, 'Kazakhstan', 'KZ', '+7 7', 'Kazakhstani tenge', '', 'KZT'),
(95, 'Laos', 'LA', '+856', 'Lao kip', '₭', 'LAK'),
(96, 'Lebanon', 'LB', '+961', 'Lebanese pound', 'ل.ل', 'LBP'),
(97, 'Saint Lucia', 'LC', '+1758', 'East Caribbean dolla', '$', 'XCD'),
(98, 'Liechtenstein', 'LI', '+423', 'Swiss franc', 'Fr', 'CHF'),
(99, 'Sri Lanka', 'LK', '+94', 'Sri Lankan rupee', 'Rs or රු', 'LKR'),
(100, 'Liberia', 'LR', '+231', 'Liberian dollar', '$', 'LRD'),
(101, 'Lesotho', 'LS', '+266', 'Lesotho loti', 'L', 'LSL'),
(102, 'Lithuania', 'LT', '+370', 'Euro', '€', 'EUR'),
(103, 'Luxembourg', 'LU', '+352', 'Euro', '€', 'EUR'),
(104, 'Latvia', 'LV', '+371', 'Euro', '€', 'EUR'),
(105, 'Morocco', 'MA', '+212', 'Moroccan dirham', 'د.م.', 'MAD'),
(106, 'Monaco', 'MC', '+377', 'Euro', '€', 'EUR'),
(107, 'Moldova', 'MD', '+373', 'Moldovan leu', 'L', 'MDL'),
(108, 'Montenegro', 'ME', '+382', 'Euro', '€', 'EUR'),
(109, 'Madagascar', 'MG', '+261', 'Malagasy ariary', 'Ar', 'MGA'),
(110, 'Marshall Islands', 'MH', '+692', 'United States dollar', '$', 'USD'),
(111, 'Mali', 'ML', '+223', 'West African CFA fra', 'Fr', 'XOF'),
(112, 'Myanmar', 'MM', '+95', 'Burmese kyat', 'Ks', 'MMK'),
(113, 'Mongolia', 'MN', '+976', 'Mongolian tögrög', '₮', 'MNT'),
(114, 'Mauritania', 'MR', '+222', 'Mauritanian ouguiya', 'UM', 'MRO'),
(115, 'Montserrat', 'MS', '+1664', 'East Caribbean dolla', '$', 'XCD'),
(116, 'Malta', 'MT', '+356', 'Euro', '€', 'EUR'),
(117, 'Mauritius', 'MU', '+230', 'Mauritian rupee', '₨', 'MUR'),
(118, 'Maldives', 'MV', '+960', 'Maldivian rufiyaa', '.ރ', 'MVR'),
(119, 'Malawi', 'MW', '+265', 'Malawian kwacha', 'MK', 'MWK'),
(120, 'Mexico', 'MX', '+52', 'Mexican peso', '$', 'MXN'),
(121, 'Malaysia', 'MY', '+60', 'Malaysian ringgit', 'RM', 'MYR'),
(122, 'Mozambique', 'MZ', '+258', 'Mozambican metical', 'MT', 'MZN'),
(123, 'Namibia', 'NA', '+264', 'Namibian dollar', '$', 'NAD'),
(124, 'New Caledonia', 'NC', '+687', 'CFP franc', 'Fr', 'XPF'),
(125, 'Niger', 'NE', '+227', 'West African CFA fra', 'Fr', 'XOF'),
(126, 'Nigeria', 'NG', '+234', 'Nigerian naira', '₦', 'NGN'),
(127, 'Nicaragua', 'NI', '+505', 'Nicaraguan córdoba', 'C$', 'NIO'),
(128, 'Netherlands', 'NL', '+31', 'Euro', '€', 'EUR'),
(129, 'Norway', 'NO', '+47', 'Norwegian krone', 'kr', 'NOK'),
(130, 'Nepal', 'NP', '+977', 'Nepalese rupee', '₨', 'NPR'),
(131, 'Nauru', 'NR', '+674', 'Australian dollar', '$', 'AUD'),
(132, 'Niue', 'NU', '+683', 'New Zealand dollar', '$', 'NZD'),
(133, 'New Zealand', 'NZ', '+64', 'New Zealand dollar', '$', 'NZD'),
(134, 'Oman', 'OM', '+968', 'Omani rial', 'ر.ع.', 'OMR'),
(135, 'Panama', 'PA', '+507', 'Panamanian balboa', 'B/.', 'PAB'),
(136, 'Peru', 'PE', '+51', 'Peruvian nuevo sol', 'S/.', 'PEN'),
(137, 'French Polynesia', 'PF', '+689', 'CFP franc', 'Fr', 'XPF'),
(138, 'Papua New Guinea', 'PG', '+675', 'Papua New Guinean ki', 'K', 'PGK'),
(139, 'Philippines', 'PH', '+63', 'Philippine peso', '₱', 'PHP'),
(140, 'Pakistan', 'PK', '+92', 'Pakistani rupee', '₨', 'PKR'),
(141, 'Poland', 'PL', '+48', 'Polish z?oty', 'zł', 'PLN'),
(142, 'Portugal', 'PT', '+351', 'Euro', '€', 'EUR'),
(143, 'Palau', 'PW', '+680', 'Palauan dollar', '$', ''),
(144, 'Paraguay', 'PY', '+595', 'Paraguayan guaraní', '₲', 'PYG'),
(145, 'Qatar', 'QA', '+974', 'Qatari riyal', 'ر.ق', 'QAR'),
(146, 'Romania', 'RO', '+40', 'Romanian leu', 'lei', 'RON'),
(147, 'Serbia', 'RS', '+381', 'Serbian dinar', 'дин. or din.', 'RSD'),
(148, 'Russia', 'RU', '+7', 'Russian ruble', '', 'RUB'),
(149, 'Rwanda', 'RW', '+250', 'Rwandan franc', 'Fr', 'RWF'),
(150, 'Saudi Arabia', 'SA', '+966', 'Saudi riyal', 'ر.س', 'SAR'),
(151, 'Solomon Islands', 'SB', '+677', 'Solomon Islands doll', '$', 'SBD'),
(152, 'Seychelles', 'SC', '+248', 'Seychellois rupee', '₨', 'SCR'),
(153, 'Sudan', 'SD', '+249', 'Sudanese pound', 'ج.س.', 'SDG'),
(154, 'Sweden', 'SE', '+46', 'Swedish krona', 'kr', 'SEK'),
(155, 'Singapore', 'SG', '+65', 'Brunei dollar', '$', 'BND'),
(156, 'Slovenia', 'SI', '+386', 'Euro', '€', 'EUR'),
(157, 'Slovakia', 'SK', '+421', 'Euro', '€', 'EUR'),
(158, 'Sierra Leone', 'SL', '+232', 'Sierra Leonean leone', 'Le', 'SLL'),
(159, 'San Marino', 'SM', '+378', 'Euro', '€', 'EUR'),
(160, 'Senegal', 'SN', '+221', 'West African CFA fra', 'Fr', 'XOF'),
(161, 'Somalia', 'SO', '+252', 'Somali shilling', 'Sh', 'SOS'),
(162, 'Suriname', 'SR', '+597', 'Surinamese dollar', '$', 'SRD'),
(163, 'El Salvador', 'SV', '+503', 'United States dollar', '$', 'USD'),
(164, 'Swaziland', 'SZ', '+268', 'Swazi lilangeni', 'L', 'SZL'),
(165, 'Chad', 'TD', '+235', 'Central African CFA ', 'Fr', 'XAF'),
(166, 'Togo', 'TG', '+228', 'West African CFA fra', 'Fr', 'XOF'),
(167, 'Thailand', 'TH', '+66', 'Thai baht', '฿', 'THB'),
(168, 'Tajikistan', 'TJ', '+992', 'Tajikistani somoni', 'ЅМ', 'TJS'),
(169, 'Turkmenistan', 'TM', '+993', 'Turkmenistan manat', 'm', 'TMT'),
(170, 'Tunisia', 'TN', '+216', 'Tunisian dinar', 'د.ت', 'TND'),
(171, 'Tonga', 'TO', '+676', 'Tongan pa?anga', 'T$', 'TOP'),
(172, 'Turkey', 'TR', '+90', 'Turkish lira', '', 'TRY'),
(173, 'Trinidad and Tobago', 'TT', '+1868', 'Trinidad and Tobago ', '$', 'TTD'),
(174, 'Tuvalu', 'TV', '+688', 'Australian dollar', '$', 'AUD'),
(175, 'Taiwan', 'TW', '+886', 'New Taiwan dollar', '$', 'TWD'),
(176, 'Ukraine', 'UA', '+380', 'Ukrainian hryvnia', '₴', 'UAH'),
(177, 'Uganda', 'UG', '+256', 'Ugandan shilling', 'Sh', 'UGX'),
(178, 'United States', 'US', '+1', 'United States dollar', '$', 'USD'),
(179, 'Uruguay', 'UY', '+598', 'Uruguayan peso', '$', 'UYU'),
(180, 'Uzbekistan', 'UZ', '+998', 'Uzbekistani som', '', 'UZS'),
(181, 'Vietnam', 'VN', '+84', 'Vietnamese ??ng', '₫', 'VND'),
(182, 'Vanuatu', 'VU', '+678', 'Vanuatu vatu', 'Vt', 'VUV'),
(183, 'Wallis and Futuna', 'WF', '+681', 'CFP franc', 'Fr', 'XPF'),
(184, 'Samoa', 'WS', '+685', 'Samoan t?l?', 'T', 'WST'),
(185, 'Yemen', 'YE', '+967', 'Yemeni rial', '﷼', 'YER'),
(186, 'South Africa', 'ZA', '+27', 'South African rand', 'R', 'ZAR'),
(187, 'Zambia', 'ZM', '+260', 'Zambian kwacha', 'ZK', 'ZMW'),
(188, 'Zimbabwe', 'ZW', '+263', 'Botswana pula', 'P', 'BWP');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `cus_number` varchar(255) DEFAULT NULL,
  `vat_code` varchar(255) DEFAULT NULL,
  `city` varchar(11) DEFAULT NULL,
  `postal_code` varchar(11) DEFAULT NULL,
  `address1` mediumtext DEFAULT NULL,
  `address2` mediumtext DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `business_id`, `name`, `email`, `phone`, `thumb`, `address`, `country`, `currency`, `cus_number`, `vat_code`, `city`, `postal_code`, `address1`, `address2`, `status`, `created_at`) VALUES
(1, 2, 93405, 'ssss', NULL, NULL, NULL, NULL, 49, 'EGP', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-01-22 01:12:07'),
(10, 2, 54903, 'محمد', 'mmm@mmm.mmm', '123456789', NULL, 'عنوان ', 178, 'USD', '12345677777', '12345', '111', '1234', 'عنوان1', 'عنوان1', 0, '2021-01-31 02:33:19'),
(11, 2, 54903, 'محمد', 'mmm@mmm.mmm', '123456789', NULL, 'عنوان ', 178, 'USD', '', '', '111', '', '', '', 0, '2021-01-31 02:33:19'),
(12, 2, 54903, 'محمد', 'mmm@mmm.mmm', '123456789', NULL, 'عنوان ', 178, 'USD', '', '', '111', '', '', '', 0, '2021-01-31 02:33:19'),
(13, 2, 54903, 'محمد', 'mmm@mmm.mmm', '123456789', NULL, 'عنوان ', 178, 'USD', '', '', '111', '', '', '', 0, '2021-01-31 02:33:19'),
(14, 2, 54903, 'محمد', 'mmm@mmm.mmm', '123456789', NULL, 'عنوان ', 178, 'USD', '12345677777', '12345', '111', '1234', '', '', 0, '2021-01-31 02:33:19'),
(15, 2, 54903, 'محمد', 'mmm@mmm.mmm', '123456789', NULL, 'عنوان ', 178, 'USD', '12345677777', '12345', '111', '1234', '', '', 0, '2021-01-31 02:33:19'),
(46, 2, 24305, 'mmm', '', '', NULL, '', 3, 'AFN', '', '', '', '', '', '', 0, '2021-01-31 15:09:12'),
(47, 2, 24305, 'mmm', '', '', NULL, '', 178, 'USD', '', '', '', '', '', '', 0, '2021-01-31 15:09:12'),
(48, 2, 24305, 'mmm', '', '', NULL, '', 3, 'AFN', '', '', '', '', '', '', 0, '2021-01-31 15:09:12'),
(49, 2, 24305, 'mmm', '', '', NULL, '', 178, 'USD', '', '', '', '', '', '', 0, '2021-01-31 15:09:12'),
(50, 2, 24305, 'mmm', '', '', NULL, '', 3, 'AFN', '', '', '', '', '', '', 0, '2021-01-31 15:09:12'),
(51, 2, 24305, 'mmm', '', '', NULL, '', 178, 'USD', '', '', '', '', '', '', 0, '2021-01-31 15:09:12'),
(52, 2, 24305, 'mmm', '', '', NULL, '', 3, 'AFN', '', '', '', '', '', '', 0, '2021-01-31 15:09:12'),
(53, 2, 24305, 'mmm', '', '', NULL, '', 178, 'USD', '', '', '', '', '', '', 0, '2021-01-31 15:09:12'),
(54, 2, 24305, 'mmm', '', '', NULL, '', 3, 'AFN', '', '', '', '', '', '', 0, '2021-02-01 00:55:13'),
(55, 2, 24305, 'mmm', '', '', NULL, '', 178, 'USD', '', '', '', '', '', '', 0, '2021-02-01 00:55:13'),
(56, 2, 24305, 'mmm', '', '', NULL, '', 3, 'AFN', '', '', '', '', '', '', 0, '2021-02-01 00:55:13'),
(57, 2, 24305, 'mmm', '', '', NULL, '', 178, 'USD', '', '', '', '', '', '', 0, '2021-02-01 00:55:13'),
(58, 2, 24305, 'mmm', '', '', NULL, '', 3, 'AFN', '', '', '', '', '', '', 0, '2021-02-01 00:55:13'),
(59, 2, 24305, 'mmm', '', '', NULL, '', 178, 'USD', '', '', '', '', '', '', 0, '2021-02-01 00:55:13'),
(60, 2, 24305, 'mmm', '', '', NULL, '', 3, 'AFN', '', '', '', '', '', '', 0, '2021-02-01 00:55:14'),
(61, 2, 24305, 'mmm', '', '', NULL, '', 178, 'USD', '', '', '', '', '', '', 0, '2021-02-01 00:55:14'),
(62, 2, 24305, 'محمد', NULL, NULL, NULL, NULL, 2, 'AED', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-01 16:27:03'),
(63, 2, 24305, 'محمد على', NULL, NULL, NULL, NULL, 2, 'AED', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-02 01:53:27'),
(64, 2, 4178, 'محمد على', NULL, NULL, NULL, NULL, 2, 'AED', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-02 01:53:27'),
(65, 2, 24305, 'محمد حسن ابو علي', 'aboAli@gmail.com', '01011201555', NULL, 'safdas asdasd', 1, 'EUR', '76579', '2150123', '', '', '', '', 1, '2023-05-06 13:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `net_amount` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `notes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `user_id`, `business_id`, `category`, `vendor`, `amount`, `net_amount`, `date`, `notes`, `tax`, `file`, `created_at`) VALUES
(1, 2, 54903, 1, 0, 10, 11, '2020-11-10', '', 10, 'expense_9358.', '2020-11-10 22:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `google_fonts`
--

CREATE TABLE `google_fonts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `type` int(11) DEFAULT 1 COMMENT 'invoice = 1 & estimates = 2',
  `recurring` int(11) DEFAULT 0,
  `summary` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `poso_number` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `payment_due` date DEFAULT NULL,
  `expire_on` date DEFAULT NULL,
  `due_limit` int(11) DEFAULT NULL,
  `footer_note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `convert_total` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `reject_reason` text DEFAULT NULL,
  `client_action_date` date DEFAULT NULL,
  `is_sent` int(11) DEFAULT 0,
  `is_completed` int(11) NOT NULL DEFAULT 0,
  `sent_date` datetime DEFAULT NULL,
  `recurring_start` date DEFAULT NULL,
  `recurring_end` date DEFAULT NULL,
  `frequency` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `next_payment` date DEFAULT NULL,
  `frequency_count` int(11) NOT NULL DEFAULT 0,
  `auto_send` int(11) DEFAULT 0,
  `send_myself` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `user_id`, `business_id`, `title`, `type`, `recurring`, `summary`, `number`, `poso_number`, `customer`, `date`, `discount`, `payment_due`, `expire_on`, `due_limit`, `footer_note`, `sub_total`, `grand_total`, `convert_total`, `status`, `reject_reason`, `client_action_date`, `is_sent`, `is_completed`, `sent_date`, `recurring_start`, `recurring_end`, `frequency`, `next_payment`, `frequency_count`, `auto_send`, `send_myself`, `created_at`) VALUES
(1, 2, 24305, 'Invoice title 1', 1, 0, '', '2021-01', '', 63, '2021-02-01', 0, '2021-01-22', NULL, 1, '', '44.00', '44.00', '0.00', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2021-01-22 03:19:38'),
(2, 2, 24305, 'Invoice title 2', 1, 0, '', '2021-02', '222', 63, '2021-02-07', 4, '2021-02-07', NULL, 1, '', '44.00', '42.24', '0.00', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2021-02-07 17:42:19'),
(3, 2, 24305, 'Invoice title 3', 1, 0, '', '2021-03', '', 62, '2021-03-30', 0, '2021-03-30', NULL, 1, '', '44.00', '44.00', '0.00', 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2021-03-30 14:30:38'),
(5, 2, 24305, 'Invoice title 4', 1, 0, '', '2021-04', '', 61, '2021-03-30', 0, '2021-03-30', NULL, 1, '', '44.00', '44.00', '0.00', 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2021-03-30 14:35:37'),
(6, 2, 24305, 'Invoice title 5', 1, 0, '', '2023-05', '', 63, '2023-05-07', 0, '2023-05-07', NULL, 1, '', '440.00', '440.00', '0.00', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2023-05-07 09:31:03'),
(7, 2, 24305, 'Invoice title 6', 1, 0, '', '2023-06', '', 63, '2023-05-07', 0, '2023-05-08', NULL, 1, '', '220.00', '220.00', '0.00', 2, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2023-05-07 11:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `item`, `qty`, `price`, `total`, `type`) VALUES
(3, 1, 2, 1, '44.00', '44.00', NULL),
(4, 2, 22, 1, '44.00', '44.00', NULL),
(5, 3, 21, 1, '44.00', '44.00', NULL),
(6, 4, 18, 1, '44.00', '44.00', NULL),
(7, 5, 21, 1, '44.00', '44.00', NULL),
(8, 6, 18, 10, '44.00', '440.00', NULL),
(9, 7, 22, 1, '44.00', '44.00', NULL),
(10, 7, 21, 2, '44.00', '88.00', NULL),
(11, 7, 22, 1, '44.00', '44.00', NULL),
(12, 7, 22, 1, '44.00', '44.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payment_record`
--

CREATE TABLE `invoice_payment_record` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_taxes`
--

CREATE TABLE `invoice_taxes` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `text_direction` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `slug`, `short_name`, `code`, `text_direction`, `status`) VALUES
(1, 'English', 'english', 'en', '', 'ltr', 1),
(2, 'Arabic', 'arabic', 'ar', NULL, 'ltr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lang_values`
--

CREATE TABLE `lang_values` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `english` text DEFAULT NULL,
  `arabic` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lang_values`
--

INSERT INTO `lang_values` (`id`, `type`, `label`, `keyword`, `english`, `arabic`) VALUES
(1, 'user', 'Dashboard', 'dashboard', 'Dashboard', 'لوحة القيادة/ لوحة التحكم \r\n'),
(2, 'user', 'Settings', 'settings', 'Settings', 'الاعدادات'),
(3, 'user', 'Customers', 'customers', 'Customers', 'العملاء / الزبائن'),
(4, 'user', 'Categories', 'categories', 'Categories', 'التصنيفات '),
(5, 'user', 'Tax', 'tax', 'Tax', 'الضرائب'),
(6, 'user', 'Products', 'products', 'Products', 'المنتجات '),
(7, 'user', 'Estimates', 'estimates', 'Estimates', 'عروض السعر'),
(8, 'user', 'Invoices', 'invoices', 'Invoices', 'الفواتير'),
(9, 'user', 'Recurring Invoice', 'recurring-invoice', 'Recurring Invoice', 'الفاتورة المتكررة'),
(10, 'user', 'Vendors', 'vendors', 'Vendors', 'الموردين'),
(11, 'user', 'Expense', 'expense', 'Expense', 'المصروفات'),
(12, 'user', 'Subscription', 'subscription', 'Subscription', 'الاشتراكات'),
(13, 'user', 'Reports', 'reports', 'Reports', 'التقارير'),
(14, 'user', 'Change Password', 'change-password', 'Change Password', 'تغيير كلمة المرور'),
(15, 'user', 'logout', 'logout', 'logout', 'تسجيل الخروج'),
(16, 'user', 'Upgrade', 'upgrade', 'Upgrade', 'التطوير / التحديث'),
(17, 'user', 'Income & Expenses ', 'income-expenses', 'Income & Expenses ', 'الدخل والمصروفات'),
(18, 'user', 'Net Income', 'net-income', 'Net Income', 'صافي الدخل'),
(19, 'user', 'Fiscal year ', 'fiscal-year', 'Fiscal year ', 'العام المالي/ السنة المالية '),
(20, 'user', 'Overdue Invoices', 'overdue-invoices', 'Overdue Invoices', 'الفواتير المتأخرة'),
(21, 'user', ' Customer', 'customer', ' Customer', 'الزبون/ العميل'),
(22, 'user', 'Amount', 'amount', 'Amount', 'الكمية'),
(23, 'user', 'All Customer', 'all-customer', 'All Customer', 'كل العملاء/ كل الزبائن'),
(24, 'user', 'All status', 'all-status', 'All status', 'كل الحالات'),
(25, 'user', 'From ', 'from', 'From ', 'من '),
(26, 'user', 'To ', 'to', 'To ', 'إلى '),
(27, 'user', 'Status', 'status', 'Status', 'الحالة / الوضع '),
(28, 'user', 'Date', 'date', 'Date', 'التاريخ'),
(29, 'user', 'Number', 'number', 'Number', 'الرقم'),
(30, 'user', 'Total', 'total', 'Total', 'الإجمالي'),
(31, 'user', 'Amount Due', 'amount-due', 'Amount Due', 'المبلغ المستحق'),
(32, 'user', 'Actions', 'actions', 'Actions', 'الإجراءات/ الأعمال'),
(33, 'user', 'Record a payment', 'record-a-payment', 'Record a payment', 'تسجيل سداد'),
(34, 'user', 'More', 'more', 'More', 'أكثر'),
(35, 'user', 'Record a payment for this invoice', 'record-a-payment-for-this-invoice', 'Record a payment for this invoice', 'تسجيل سداد لهذه الفاتورة'),
(36, 'user', 'Record a payment you’ve already received, such as cash, cheque, or bank payment.', 'record-payment-info', 'Record a payment you’ve already received, such as cash, cheque, or bank payment.', 'القيام بتسجيل دفعة قمت باستلامها بالفعل؛ على سبيل المثال السداد النقدي، السداد عبر شيك أو من خلال السداد المصرفي'),
(37, 'user', 'Payment date', 'payment-date', 'Payment date', 'تاريخ السداد'),
(38, 'user', 'Payment due date', 'payment-due-date', 'Payment due date', 'تاريخ استحقاق السداد'),
(39, 'user', 'Payment method', 'payment-method', 'Payment method', 'طريقة السداد'),
(40, 'user', 'Memo / Notes', 'memo-notes', 'Memo / Notes', 'ملاحظة / مذكرة'),
(41, 'user', 'Add Payment', 'add-payment', 'Add Payment', 'إضافة عملية سداد'),
(42, 'user', 'Create New Invoices', 'create-new-invoices', 'Create New Invoices', 'إنشاء فاتورة جديدة'),
(43, 'user', 'Add Vendor', 'add-vendor', 'Add Vendor', 'إضافة مورد'),
(44, 'user', 'Add Product', 'add-product', 'Add Product', 'إضافة منتج'),
(45, 'user', 'Add Customer ', 'add-customer', 'Add Customer ', 'إضافة عميل'),
(46, 'user', 'Create new Bill', 'create-new-bill', 'Create new Bill', 'إنشاء فاتورة جديدة'),
(47, 'user', 'Create new Estimate', 'create-new-estimate', 'Create new Estimate', 'إنشاء عرض جديد'),
(48, 'user', 'Create new Invoice', 'create-new-invoice', 'Create new Invoice', 'إنشاء فاتورة جديدة'),
(49, 'user', 'Recurring', 'recurring', 'Recurring', 'متكرر/ دوري'),
(50, 'user', 'Draft', 'draft', 'Draft', 'مسودة/ حوالة'),
(51, 'user', 'Invoice', 'invoice', 'Invoice', 'فاتورة'),
(52, 'user', 'Edit', 'edit', 'Edit', 'تعديل/ تحرير'),
(53, 'user', 'More Actions', 'more-actions', 'More Actions', 'المزيد من الإجراءات'),
(54, 'user', 'Created', 'created', 'Created', 'تم إنشاؤه'),
(55, 'user', 'Send invoice', 'send-invoice', 'Send invoice', 'إرسال الفاتورة'),
(56, 'user', 'Invoice To', 'invoice-to', 'Invoice To', 'فاتورة إلى '),
(57, 'user', 'Subject', 'subject', 'Subject', 'موضوع '),
(58, 'user', 'Message', 'message', 'Message', 'رسالة'),
(59, 'user', 'Close', 'close', 'Close', 'أغلق'),
(60, 'user', 'Send', 'send', 'Send', 'أرسل'),
(61, 'user', 'Items', 'items', 'Items', 'الأصناف'),
(62, 'user', 'Price', 'price', 'Price', 'السعر'),
(63, 'user', 'Quantity', 'quantity', 'Quantity', 'الكمية / المقدار'),
(64, 'user', 'New Invoice', 'new-invoice', 'New Invoice', 'فاتورة جديدة'),
(65, 'user', 'Last sent', 'last-sent', 'Last sent', 'الارسال الأخير'),
(66, 'user', 'General Settings', 'general-settings', 'General Settings', 'الإعدادات العامة '),
(67, 'user', 'Business', 'business', 'Business', 'العمل'),
(68, 'user', 'Invoice Customization', 'invoice-customization', 'Invoice Customization', 'تخصيص الفاتورة'),
(69, 'user', 'Choose invoice templates', 'choose-invoice-templates', 'Choose invoice templates', 'اختيار نماذج /قوالب الفاتورة '),
(70, 'user', 'Accent color', 'accent-color', 'Accent color', 'لون التمييز '),
(71, 'user', 'Personal Information', 'personal-information', 'Personal Information', 'المعلومات الشخصية'),
(72, 'user', 'Name', 'name', 'Name', 'الاسم '),
(73, 'user', 'Country', 'country', 'Country', 'البلد'),
(74, 'user', 'City', 'city', 'City', 'المدينة '),
(75, 'user', 'State', 'state', 'State', 'الولاية'),
(76, 'user', 'Postcode', 'postcode', 'Postcode', 'الرمز البريدي'),
(77, 'user', 'Adderss', 'adderss', 'Adderss', 'العنوان'),
(78, 'user', 'Old Password', 'old-password', 'Old Password', 'كلمة المرور القديمة'),
(79, 'user', 'New Password', 'new-password', 'New Password', 'كلمة المرور الجديدة'),
(80, 'user', 'Confirm New Password', 'confirm-new-password', 'Confirm New Password', 'تأكيد كلمة المرور الجديدة'),
(81, 'user', 'Change', 'change', 'Change', 'تغيير/ تبديل'),
(82, 'user', 'Logo', 'logo', 'Logo', 'لوغو/ شعار'),
(83, 'user', 'Information', 'information', 'Information', 'المعلومات '),
(84, 'user', 'Action', 'action', 'Action', 'إجراء'),
(85, 'user', 'Add New business', 'add-new-business', 'Add New business', 'أضف عملاً جديداً'),
(86, 'user', 'Back', 'back', 'Back', 'العودة'),
(87, 'user', 'Name *', 'name-', 'Name *', '* الاسم'),
(88, 'user', 'Title', 'title', 'Title', 'العنوان'),
(89, 'user', 'Address', 'address', 'Address', 'العنوان'),
(90, 'user', 'This is your reporting currency and cannot be changed. You can still send invoices, track expenses and enter transactions in any currency and an exchange rate is applied for you.', 'currency-notice', 'This is your reporting currency and cannot be changed. You can still send invoices, track expenses and enter transactions in any currency and an exchange rate is applied for you.', 'إن هذه هي العملة الخاصة بالتقارير المتعلقة بك والتي لا يمكن تغييرها، هذا ولايزال بالإمكان إرسال الفواتير وتتبع المصروفات وإدخال أي معاملات مالية ترغب بها بأي عملة و سيتم حسابها لك تبعاً لسعر الصرف.'),
(91, 'user', 'Save business', 'save-business', 'Save business', 'حفظ العمل '),
(92, 'user', 'Upload Business logo', 'upload-business-logo', 'Upload Business logo', 'تحميل شعار الشركة'),
(93, 'user', 'Default', 'default', 'Default', 'إفتراضي'),
(94, 'user', 'Sat Default', 'sat-default', 'Sat Default', 'تعيين كـ افتراضي'),
(95, 'user', 'All customers', 'all-customers', 'All customers', 'كل العملاء/ كل الزبائن'),
(96, 'user', 'Show entries', 'show-entries', 'Show entries', 'أظهر المدخلات '),
(97, 'user', 'Email', 'email', 'Email', 'البريد الالكتروني'),
(98, 'user', 'Info', 'info', 'Info', 'المعلومات'),
(99, 'user', 'Phone', 'phone', 'Phone', 'الهاتف'),
(100, 'user', 'Added', 'added', 'Added', 'تم اضافته'),
(101, 'user', 'Edit customer', 'edit-customer', 'Edit customer', 'إضافة عميل/ زبون '),
(102, 'user', 'Customer Name', 'customer-name', 'Customer Name', 'اسم العميل'),
(103, 'user', 'Billing Information', 'billing-information', 'Billing Information', 'معلومات الفوترة'),
(104, 'user', 'Currency', 'currency', 'Currency', 'العملة'),
(105, 'user', 'Postal / Zip code', 'postal-zip-code', 'Postal / Zip code', 'الرقم البريدي'),
(106, 'user', 'Address 1', 'address-1', 'Address 1', 'العنوان الأول'),
(107, 'user', 'Address 2', 'address-2', 'Address 2', 'العنوان الثاني'),
(108, 'user', 'Previous', 'previous', 'Previous', 'السابق'),
(109, 'user', 'Next', 'next', 'Next', 'التالي'),
(110, 'user', 'Search', 'search', 'Search', 'البحث'),
(111, 'user', 'Showing ', 'showing', 'Showing ', 'إظهار / العرض'),
(112, 'user', 'entries', 'entries', 'entries', 'الادخالات'),
(113, 'user', 'Type', 'type', 'Type', 'النوع '),
(114, 'user', 'Edit Category', 'edit-category', 'Edit Category', 'تعديل التصنيف'),
(115, 'user', 'Category Name', 'category-name', 'Category Name', 'اسم التصنيف'),
(116, 'user', 'Add new category', 'add-new-category', 'Add new category', 'إضافة تصنيف جديد'),
(117, 'user', 'All tax', 'all-tax', 'All tax', 'كل الضرائب / كل الضرائب'),
(118, 'user', 'Rate', 'rate', 'Rate', 'المعدل'),
(119, 'user', 'Add new tax', 'add-new-tax', 'Add new tax', 'إضافة رسم / ضريبة جديدة'),
(120, 'user', 'Tax Name', 'tax-name', 'Tax Name', 'اسم الرسم/ الضريبة '),
(121, 'user', 'Tax Rate ', 'tax-rate', 'Tax Rate ', 'معدل الضرائب / الضريبة'),
(122, 'user', 'Tax rate should be a number only, without a percent sign', 'tax-rate-info', 'Tax rate should be a number only, without a percent sign', 'معدل الضرائب / الضريبة يجب أن يكون رقماً فقط، بدون إشارة المئوية (%)'),
(123, 'user', 'Tax Number / ID', 'tax-number-id', 'Tax Number / ID', 'الرقم للضريبة / المعرف'),
(124, 'user', 'Details', 'details', 'Details', 'التفاصيل '),
(125, 'user', 'Save tax ', 'save-tax', 'Save tax ', 'احفظ الضريبة'),
(126, 'user', 'Show the tax Number on invoices', 'show-the-tax-number-on-invoices', 'Show the tax name on invoices', 'اظهر اسم الضرائب / الضريبة ضمن الفاتورة'),
(127, 'user', 'Products & Services', 'products-services', 'Products & Services', 'المنتجات والخدمات '),
(128, 'user', 'New Estimates', 'new-estimates', 'New Estimate', 'عرض سعر جديد'),
(129, 'user', 'All Estimate', 'all-estimate', 'All Estimate', 'جميع عروض السعر'),
(130, 'user', ' Iconic', 'iconic', ' Iconic', 'ايقونة'),
(131, 'user', ' United States', 'united-states', ' United States', 'الولايات المتحدة الامريكية '),
(132, 'user', 'Estimate to', 'estimate-to', 'Estimate to', 'عرض سعر لـ'),
(133, 'user', 'Estimate number', 'estimate-number', 'Estimate number', 'رقم العرض'),
(134, 'user', 'P.O./S.O. number', 'p.o.s.o.-number', 'P.O./S.O. number', 'رقم طلب الشراء/ رقم الطلب الخاص'),
(135, 'user', 'Estimate date', 'estimate-date', 'Estimate date', 'تاريخ العرض'),
(136, 'user', 'Expires on', 'expires-on', 'Expires on', 'وقت الانتهاء/ ينتهي في'),
(137, 'user', 'Item', 'item', 'Item', 'الصنف'),
(138, 'user', 'Add am customers', 'add-am-customers', 'Add am customers', 'إضافة عملاء'),
(139, 'user', 'Add an item', 'add-an-item', 'Add an item', 'إضافة صنف'),
(140, 'user', 'Sub Total', 'sub-total', 'Sub Total', 'المجموع الكلي'),
(141, 'user', 'Discount', 'discount', 'Discount', 'التخفيض / الخصم'),
(142, 'user', 'Grand Total', 'grand-total', 'Grand Total', 'المجموع الكلي'),
(143, 'user', 'Footer', 'footer', 'Footer', 'التذييل / النص النهائي'),
(144, 'user', 'Save Estimate', 'save-estimate', 'Save Estimate', 'حفظ التقييم / التقدير'),
(145, 'user', 'More Action ', 'more-action', 'More Action ', 'المزيد من الإجراءات '),
(146, 'user', 'Your subscription', 'your-subscription', 'Your subscription', 'اشتراكك'),
(147, 'user', 'Premium Plan', 'premium-plan', 'Premium Plan', 'الخطة المميزة'),
(148, 'user', 'Billing Frequency', 'billing-frequency', 'Billing Frequency', 'تكرار الفواتير'),
(149, 'user', 'Last Billing', 'last-billing', 'Last Billing', 'أخر فاتورة '),
(150, 'user', 'Next Billing', 'next-billing', 'Next Billing', 'الفاتورة القادمة '),
(151, 'user', 'Upgrade Plan', 'upgrade-plan', 'Upgrade Plan', 'تطوير / تحديث الخطة'),
(152, 'user', 'Basic', 'basic', 'Basic', 'الأساسية '),
(153, 'user', 'Standard', 'standard', 'Standard', 'القياسية '),
(154, 'user', 'Premium', 'premium', 'Premium', 'المميزة'),
(155, 'user', 'Downgrade', 'downgrade', 'Downgrade', 'تخفيض'),
(156, 'user', 'Add new vendor', 'add-new-vendor', 'Add new vendor', 'أإضافة مورد جديد'),
(157, 'user', 'Vendor Name', 'vendor-name', 'Vendor Name', 'اسم المورد'),
(158, 'user', 'Save vendor', 'save-vendor', 'Save vendor', 'حفظ مورد'),
(159, 'user', 'Add New Expenses', 'add-new-expenses', 'Add New Expenses', 'إضافة مصاريف جديدة '),
(160, 'user', 'Category', 'category', 'Category', 'التصنيف'),
(161, 'user', 'Client', 'client', 'Client', 'العميل'),
(162, 'user', 'Notes', 'notes', 'Notes', 'الملاحظات '),
(163, 'user', 'Yearly', 'yearly', 'Yearly', 'سنوي'),
(164, 'user', 'Monthly ', 'monthly', 'Monthly ', 'شهري'),
(165, 'user', 'Sign in', 'sign-in', 'Sign in', 'تسجيل الدخول'),
(166, 'admin', 'Packages by Users', 'packages-by-users', 'Packages by Users', 'الباقات طبقاً للمستخدمين'),
(167, 'admin', 'Basic Package', 'basic-package', 'Basic Package', 'الباقة الأساسية '),
(168, 'admin', 'Standard Package', 'standard-package', 'Standard Package', 'الباقة القياسية'),
(169, 'admin', 'Premium Package', 'premium-package', 'Premium Package', 'الباقة المميزة'),
(170, 'admin', 'Recently joined Users', 'recently-joined-users', 'Recently joined Users', 'المستخدمين المنضمين مؤخراً'),
(171, 'admin', 'Last 12 months Income', 'last-12-months-income', 'Last 12 months Income', 'الدخل / الوارد خلال 12 شهر'),
(172, 'admin', 'Avatar', 'avatar', 'Avatar', 'الصورة الرمزية'),
(173, 'admin', 'All Users', 'all-users', 'All Users', 'كل المستخدمين '),
(174, 'admin', 'Package', 'package', 'Package', 'الباقة'),
(175, 'admin', 'Payment status', 'payment-status', 'Payment status', 'حالة السدادات '),
(176, 'admin', 'Join', 'join', 'Join', 'الانضمام '),
(177, 'admin', 'Expire', 'expire', 'Expire', 'منتهي'),
(178, 'admin', '-1 days left', '-1-days-left', '-1 days left', 'يوم واحد متبقي'),
(179, 'admin', 'pending', 'pending', 'pending', 'قيد الانتظار'),
(180, 'admin', '2 weeks ago', '2-weeks-ago', '2 weeks ago', 'منذ أسبوعين '),
(181, 'admin', 'Email Settings  ', 'email-settings', 'Email Settings  ', 'اعدادات البريد الالكتروني'),
(182, 'admin', 'Social Settings', 'social-settings', 'Social Settings', 'اعدادات التواصل الاجتماعي'),
(183, 'admin', ' Payment Settings', 'payment-settings', ' Payment Settings', 'اعدادات السداد'),
(184, 'admin', 'Recapture Settings ', 'recaptcha-settings', 'reCaptcha Settings', 'اعدادات الكابتشا'),
(185, 'admin', 'Update Settings', 'update-settings', 'Update Settings', 'اعدادات التحديث/ التطوير'),
(186, 'admin', 'Captcha Site key', 'captcha-site-key', 'Captcha Site key', 'كابتشا مفتاح الموقع '),
(187, 'admin', 'Captcha Secret key', 'captcha-secret-key', 'Captcha Secret key', 'كابتشا مفتاح الأمان '),
(188, 'admin', 'Preferences', 'preferences', 'Preferences', 'التفضيلات '),
(189, 'admin', 'Google reCaptcha', 'google-recaptcha', 'Google reCaptcha', 'كابتشا غوغل'),
(190, 'admin', 'Registration System', 'registration-system', 'Registration System', 'نظام التسجيل '),
(191, 'admin', 'Email Verification', 'email-verification', 'Email Verification', 'تأكيد البريد الالكتروني'),
(192, 'admin', 'Paypal payment', 'paypal-payment', 'Paypal payment', 'الدرفع عبر باي بال '),
(193, 'admin', 'Disable', 'disable', 'Disable', 'غير ممكن/ معطل '),
(194, 'admin', 'Enable', 'enable', 'Enable', 'ممكن / مسموح '),
(195, 'admin', 'Application Name', 'application-name', 'Application Name', 'اسم الطلب'),
(196, 'admin', 'Application Title', 'application-title', 'Application Title', 'عنوان طلب'),
(197, 'admin', 'Keywords', 'keywords', 'Keywords', 'الكلملت الدلالية / الكلمات المفتاحية '),
(198, 'admin', 'Description', 'description', 'Description', 'الوصف'),
(199, 'admin', 'Footer About', 'footer-about', 'Footer About', 'حول التذييل/ حول المعلومات في نهاية الصفحة '),
(200, 'admin', 'Admin Email', 'admin-email', 'Admin Email', 'البريد الالكتروني للمسؤول'),
(201, 'admin', 'Copyright', 'copyright', 'Copyright', 'حقوق الملكية'),
(202, 'admin', 'Update Faction ', 'update-faction', 'Update Faction ', 'وظيفة التحديث'),
(203, 'admin', 'Update Logo', 'update-logo', 'Update Logo', 'شعار/ لوغو التحديث'),
(204, 'admin', ' Gmail Smtp', 'gmail-smtp', ' Gmail Smtp', 'برتوكول ارسال البريد الالكتروني واستقباله عبر حساب جي ميل'),
(205, 'admin', 'Gmail host', 'gmail-host', 'Gmail host', 'مضيف جي ميل'),
(206, 'admin', 'Gmail port', 'gmail-port', 'Gmail port', 'منفذ/ مأخذ جي ميل'),
(207, 'admin', 'Mail Protocol', 'mail-protocol', 'Mail Protocol', 'برتوكول البريد'),
(208, 'admin', 'Mail title', 'mail-title', 'Mail title', 'عنوان البريد '),
(209, 'admin', 'Mail host', 'mail-host', 'Mail host', 'مضيف البريد '),
(210, 'admin', 'Mail port', 'mail-port', 'Mail port', 'منفذ البريد '),
(211, 'admin', 'Mail username', 'mail-username', 'Mail username', 'اسم المستخدم للبريد '),
(212, 'admin', 'Mail password', 'mail-password', 'Mail password', 'كلمة المرور للبريد'),
(213, 'admin', 'Paypal Mode', 'paypal-mode', 'Paypal Mode', 'حالة الباي بال'),
(214, 'admin', 'Paypal Merchant Account', 'paypal-merchant-account', 'Paypal Merchant Account', 'حساب باي بال التجاري'),
(215, 'admin', 'Facebook', 'facebook', 'Facebook', 'فيس بوك'),
(216, 'admin', 'Twitter', 'twitter', 'Twitter', 'تويتر'),
(217, 'admin', 'Instagram', 'instagram', 'Instagram', 'انستغرام '),
(218, 'admin', 'Linkedin', 'linkedin', 'Linkedin', 'لينكد إن'),
(219, 'admin', 'Google Analytics', 'google-analytics', 'Google Analytics', 'محلل بيانات غوغل'),
(220, 'admin', 'Manage Packages', 'manage-packages', 'Manage Packages', 'إدارة الباقات '),
(221, 'admin', 'Update Package - Basic', 'update-package-basic', 'Update Package - Basic', 'تحديث الباقة - أساسي'),
(222, 'admin', 'Monthly Price', 'monthly-price', 'Monthly Price', 'السعر الشهري'),
(223, 'admin', 'Yearly Price', 'yearly-price', 'Yearly Price', 'السعر السنوي'),
(224, 'admin', 'Update Package - Standard', 'update-package-standard', 'Update Package - Standard', 'تحديث الباقة - قياسي '),
(225, 'admin', 'Update Package - Premium', 'update-package-premium', 'Update Package - Premium', 'تحديث الباقة - مميز'),
(226, 'admin', 'Is popular Packages', 'is-popular-packages', 'Is popular Packages', 'الباقات الأكثر تداولاً'),
(227, 'admin', 'Features', 'features', 'Features', 'مميزات'),
(228, 'admin', 'Thumb', 'thumb', 'Thumb', 'تصفح'),
(229, 'admin', 'Edit Feature', 'edit-feature', 'Edit Feature', 'تعديل ميزة'),
(230, 'admin', 'Every invoice paid is positive incoming revenue for your business. Accufy enables you to easily create and send professional invoices, with advanced features like recurring billing. asd', 'every-invoice-paid-is-positive-incoming-revenue-for-your-business.-accufy-enables-you-to-easily-create-and-send-professional-invoices-with-advanced-features-like-recurring-billing.-asd', 'Every invoice paid is positive incoming revenue for your business. Accufy enables you to easily create and send professional invoices, with advanced features like recurring billing. asd', 'إن كل فاتورة يتم سدادها تعتبر إيرادات إيجابية لعملك، وإن برنامج SahelBooks (الخاص بالمحاسبة والاعمال) يمكنك من إنشاء فواتير احترافية والقيام بارساها بطريقة سلسة وسهلة وخاصة مع المميزات المتقدمة فيه مثل تقديم الفواتير المتكررة '),
(231, 'admin', 'Upload Image ', 'upload-image', 'Upload Image ', 'تحميل صورة'),
(232, 'admin', 'Add New Feature', 'add-new-feature', 'Add New Feature', 'إضافة ميزة جديدة'),
(233, 'admin', 'Save ', 'save', 'Save ', 'حفظ'),
(234, 'admin', 'Size ', 'size', 'Size ', 'الحجم'),
(235, 'admin', 'Foment ', 'foment', 'Foment ', 'اثارة/ اشعال'),
(236, 'admin', 'Font ', 'font', 'Font ', 'الخط '),
(237, 'admin', 'Styles', 'styles', 'Styles', 'الأنماط'),
(238, 'admin', 'Edit Package ', 'edit-package', 'Edit Package ', 'تعديل الباقة'),
(239, 'admin', 'Edit Features', 'edit-features', 'Edit Features', 'تعديل المميزات'),
(240, 'admin', 'Add New Page', 'add-new-page', 'Add New Page', 'إضافة صفحة جديدة'),
(241, 'admin', 'Pages', 'pages', 'Pages', 'الصفحات'),
(242, 'admin', 'Edit page', 'edit-page', 'Edit page', 'تحرير/ تعديل الصفحة'),
(243, 'admin', 'Page title', 'page-title', 'Page title', 'عنوان الصفحة'),
(244, 'admin', 'Page slug', 'page-slug', 'Page slug', 'رابط الصفحة'),
(245, 'admin', 'Page description', 'page-description', 'Page description', 'وصف الصفحة '),
(246, 'admin', 'erfref', 'erfref', 'erfref', 'دالة خاطئة '),
(247, 'admin', ' Aloha', 'aloha', ' Aloha', 'مرحبا'),
(248, 'admin', 'Faqs', 'faqs', 'Faqs', 'الأسئلة الشائعة '),
(249, 'admin', 'All Faqs', 'all-faqs', 'All Faqs', 'كل الأسئلة الشائعة'),
(250, 'admin', 'Add New testimonial', 'add-new-testimonial', 'Add New testimonial', 'إضافة دليل / توصية جديدة'),
(251, 'admin', 'Client Name', 'client-name', 'Client Name', 'اسم العميل'),
(252, 'admin', 'Designation', 'designation', 'Designation', 'التعيين '),
(253, 'admin', 'Feedback ', 'feedback', 'Feedback ', 'الإفادة'),
(254, 'admin', 'Upload Client Avatar ', 'upload-client-avatar', 'Upload Client Avatar ', 'تحميل الصورة التعبيرية للعميل'),
(255, 'admin', 'Blog', 'blog', 'Blog', 'مدونة'),
(256, 'admin', 'Add category', 'add-category', 'Add category', 'إضافة تصنيف'),
(257, 'admin', 'Bolg posts ', 'bolg-posts', 'Bolg posts ', 'منشورات (بوستات) المدونة'),
(258, 'admin', 'All Blog posts', 'all-blog-posts', 'All Blog posts', 'كل منشورات المدونة'),
(259, 'admin', 'Add New Blog Post', 'addblog-post', 'Add New Blog Post', 'إضافة منشور جديد للمدونة'),
(260, 'admin', 'Add Blog Post', 'add-blog-post', 'Add Blog Post', 'إضافة منشور للمدونة'),
(261, 'admin', 'Add New Blog Post', 'add-new-blog-post', 'Add New Blog Post', 'إضافة منشور جديد للمدونة'),
(262, 'admin', 'Slug', 'slug', 'Slug', 'الرابط الخاص بالمنشور في المدونة '),
(263, 'admin', 'Tags', 'tags', 'Tags', 'الوسوم (لتاغات) '),
(264, 'admin', 'Post description', 'post-description', 'Post description', 'وصف المنشور'),
(265, 'admin', 'Save Post ', 'save-post', 'Save Post ', 'حفظ المنشور'),
(266, 'admin', 'Active', 'active', 'Active', 'فعّال/ نشيط'),
(267, 'admin', 'inactive', 'inactive', 'inactive', 'غير فعّال / غير نشيط'),
(268, 'admin', 'Users', 'users', 'Users', 'المستخدمين'),
(269, 'user', 'Pricing Package', 'pricing-package', 'Pricing Package', 'تسعير الباقة'),
(270, 'admin', 'Testimonial', 'testimonial', 'Testimonial', 'الشهادة'),
(271, 'admin', 'Language', 'language', 'Language', 'اللغة'),
(272, 'admin', 'No data founds', 'no-data-founds', 'No data founds', 'لا يوجد بيانات'),
(273, 'user', 'See all overdue invoices', 'see-all-overdue-invoices', 'See all overdue invoices', 'مراجعة كل الفوايتر المتأخرة'),
(274, 'user', 'Recently Paid Invoices', 'recently-paid-invoices', 'Recently Paid Invoices', 'الفواتير المدفوعة مؤخراً'),
(275, 'user', 'See all paid invoices', 'see-all-paid-invoices', 'See all paid invoices', 'مشاهدة / رؤية كل الفواتير المدفوعة'),
(276, 'user', 'Select', 'select', 'Select', 'تحديد'),
(277, 'admin', 'Save Changes', 'save-changes', 'Save Changes', 'حفظ التغيرات '),
(278, 'user', 'Edit business', 'edit-business', 'Edit business', 'تعديل العمل'),
(279, 'user', 'Informations', 'informations', 'Informations', 'معلومات   '),
(280, 'user', 'Select country', 'select-country', 'Select country', 'تحديد بلد'),
(281, 'user', 'Select business category', 'select-business-category', 'Select business category', 'تحديد فئة الأعمال'),
(282, 'user', 'Update', 'update', 'Update', 'تحديث'),
(283, 'user', 'Template', 'template', 'Template', 'نموذج/ قالب'),
(284, 'user', 'Add New Customer', 'add-new-customer', 'Add New Customer', 'إضافة زبون/ عميل جديد'),
(285, 'user', 'Edit tax', 'edit-tax', 'Edit tax', 'تعديل الضريبة'),
(286, 'user', 'Edit product', 'edit-product', 'Edit product', 'تعديل منتج'),
(287, 'user', 'Product Name', 'product-name', 'Product Name', 'اسم المنتج'),
(288, 'user', 'Sell this', 'sell-this', 'Sell this', 'بع هذا'),
(289, 'user', 'Allow this product or service to be added to Invoices', 'allow-this-product', 'Allow this product or service to be added to Invoices', 'تمكين هذا المنتج / الخدمة من الإضافة لفواتير المبيعات'),
(290, 'user', 'Income Category', 'income-category', 'Income Category', 'فئة الواردات / فئة الدخل'),
(291, 'user', 'Buy this', 'buy-this', 'Buy this', 'اشتري هذا '),
(292, 'user', 'Allow this product or service to be added to Bills.', 'allow-this-product-to-bills', 'Allow this product or service to be added to Bills.', 'تمكين هذا المنتج / الخدمة من الإضافة لفواتير المصروفات'),
(293, 'user', 'Product Details', 'product-details', 'Product Details', 'معلومات / تفاصيل المنتج'),
(294, 'user', 'Expense Category', 'expense-category', 'Expense Category', 'فئة المصاريف'),
(295, 'user', 'Preview as a customer', 'preview-as-a-customer', 'Preview as a customer', 'العرض كـ عميل / زبون'),
(296, 'user', 'Export as PDF', 'export-as-pdf', 'Export as PDF', 'تصدير بصيغة بي دي إف'),
(297, 'user', 'Send estimate', 'send-estimate', 'Send estimate', 'إرسال عرض سعر'),
(298, 'user', 'Send a copy to myself at', 'send-a-copy-to-myself-at', 'Send a copy to myself at', 'إرسال نسخة لي إلى '),
(299, 'user', 'Finish Setup', 'finish-setup', 'Finish Setup', 'إنهاء التنصيب'),
(300, 'user', 'You haven\'t finished your setup yet. We recommend you to finish your setup before send your invoice.', 'setup-alert-msg', 'You haven\'t finished your setup yet. We recommend you to finish your setup before send your invoice.', 'أنت لم تقم بانهاء التنصيب (تحميل / الاعداد)  بعد، ننصحك بان تقوم باكمال التحميل / التنصيب قبل أن نرسل فاتورتك'),
(301, 'user', 'Finish Setup Now', 'finish-setup-now', 'Finish Setup Now', 'انهي الاعداد / التحميل / التنصيب الآن'),
(302, 'user', 'You have reached your limit', 'reached-limit', 'You have reached your limit', 'لقد وصلت إلى حد السعة المقررة'),
(303, 'user', 'You already created', 'you-already-created', 'You already created', 'تم إنشاؤه مسبقاً'),
(304, 'user', 'Please upgrade your package to unlock the features.', 'package-limit-msg', 'Please upgrade your package to unlock the features.', 'رجاءاً قم بتطوير حزمتك (باقتك) لتتمكن من فك القفل عن هذه الميزات'),
(305, 'user', 'Upgrade your plan', 'upgrade-your-plan', 'Upgrade your plan', 'قم بتحديث خطة اشتراكك (باقتك) حزمتك.'),
(306, 'user', 'All Estimates', 'all-estimates', 'All Estimates', 'جميع عروض السعر'),
(307, 'user', 'Oops! There was an issue with your Estimate. Please try again', 'invoice-create-error', 'Oops! There was an issue with your Estimate. Please try again', 'عذراً، هناك مشكلة في عرض السعر، أعد المحاولة'),
(308, 'user', 'Business address and contact details, title, summary, and logo', 'invoice-heading-title', 'Business address and contact details, title, summary, and logo', 'عنوان الأعمال وتفاصيل التواصل، العنوان، الملخص والشعار'),
(309, 'user', 'Summary example: project name, description of estimate', 'summery-placeholder', 'Summary example: project name, description of estimate', 'مثال على الملخص؛ اسم المشروع، وصف التقييم / التقدير'),
(310, 'user', 'Add a customer', 'add-a-customer', 'Add a customer', 'إضافة زبون/ إضافة عميل'),
(311, 'user', 'Select tax', 'select-tax', 'Select tax', 'اختيار الضريبة'),
(312, 'user', 'Enter a footer for this invoice (e.g. tax information, thank you note)', 'invoice-footer-placeholder', 'Enter a footer for this invoice (e.g. tax information, thank you note)', 'إضافة تذييل إلى هذه الفاتورة (كمثال: معلومات الضرائب، وملاحظة شكر) '),
(313, 'user', 'Preview mode', 'preview-mode', 'Preview mode', 'وضع المعاينة'),
(314, 'user', 'You are previewing how your customer will see the web version of your estimate', 'preview-mode-msg', 'You are previewing how your customer will see the web version of your', 'أنت تقوم بمعاينة عرض السعر كما سيراه عميلك '),
(315, 'user', 'Print', 'print', 'Print', 'طباعة'),
(316, 'user', 'Download Pdf', 'download-pdf', 'Download Pdf', 'تحميل بصيغة بي دي اف (PDF)'),
(317, 'user', 'Convert to invoice', 'convert-to-invoice', 'Convert to invoice', 'تحويل إلى فاتورة'),
(318, 'user', 'Select payment method', 'select-payment-method', 'Select payment method', 'اختيار آلية السداد'),
(319, 'user', 'Unpaid', 'unpaid', 'Unpaid', 'غير مدفوع'),
(320, 'user', 'Paid', 'paid', 'Paid', 'مدفوع'),
(321, 'user', 'Sent', 'sent', 'Sent', 'ارسال '),
(322, 'user', 'All Invoices', 'all-invoices', 'All Invoices', 'كل الفواتير'),
(323, 'user', 'Add new product', 'add-new-product', 'Add new product', 'إضافة منتج جديد'),
(324, 'user', 'This is a preview of your invoice. Switch back to Edit if you need to make changes.', 'preview-invoice-info', 'This is a preview of your invoice. Switch back to Edit if you need to make changes.', 'هذه مراجعة / استعراض لفاتورتك، يمكنك التبديل لتعديلها في حال وجدت أنها تحتاج للتعديل '),
(325, 'user', 'Due on', 'due-on', 'Due on', 'تاريخ الاستحقاق'),
(326, 'user', 'You created this invoice, but you have not approved it', 'approve-info', 'You created this invoice, but you have not approved it', 'قمت بانشاء هذه الفاتورة ولكن لم تقم بالموافقة عليها'),
(327, 'user', 'Your customer has paid this invoice in full.', 'paid-info', 'Your customer has paid this invoice in full.', 'العميل قام بسداد كامل الفاتورة '),
(328, 'user', 'Your customer has not paid the full invoice amount on time.', 'unpaid-info', 'Your customer has not paid the full invoice amount on time.', 'عميلك لم يقم بسداد كامل المبلغ في الوقت المحدد'),
(329, 'user', 'Draft Invoice', 'draft-invoice', 'Draft Invoice', '  مسودة فاتورة  '),
(330, 'user', 'This is a DRAFT invoice. You can take further actions once you approve it', 'draft-inv-info', 'This is a DRAFT invoice. You can take further actions once you approve it', 'هذه مسودة الفاتورة، تتاح الإجراءات الإضافية عند اعتماد الفاتورة '),
(331, 'user', 'Your invoice is awaiting payment', 'awaiting-payment', 'Your invoice is awaiting payment', 'إن فاتورتك تنتظر السداد '),
(332, 'user', 'Your invoice is paid in full', 'paid-in-full', 'Your invoice is paid in full', 'لقد تم سداد فاتورتك بالكامل'),
(333, 'user', 'Payments received', 'payments-received', 'Payments received', 'تم استلام الدفعة'),
(334, 'user', ' A payment for', 'a-payment-for', ' A payment for', 'دفعة لـ'),
(335, 'user', 'Send Again', 'send-again', 'Send Again', 'إعادة ارسال '),
(336, 'user', 'Payment terms', 'payment-terms', 'Payment terms', 'شروط السداد '),
(337, 'user', 'On Receipt', 'on-receipt', 'On Receipt', 'عند الاستلام '),
(338, 'user', 'Within', 'within', 'Within', 'خلال '),
(339, 'user', 'Days', 'days', 'Days', 'أيام '),
(340, 'user', 'Invoice Schedule', 'invoice-schedule', 'Invoice Schedule', 'جدول الفاتورة '),
(341, 'user', 'Recurring start', 'recurring-start', 'Recurring start', 'بداية التكرار الدوري'),
(342, 'user', 'Recurring end', 'recurring-end', 'Recurring end', 'نهاية التكرار الدوري'),
(343, 'user', 'Repeat invoice', 'repeat-invoice', 'Repeat invoice', 'تكرار / إعادة الفاتورة '),
(344, 'user', 'Set schedule', 'set-schedule', 'Set schedule', 'تحديد الجدول الزمني'),
(345, 'user', 'Start date', 'start-date', 'Start date', 'تاريخ البداية'),
(346, 'user', 'Repeat this invoice', 'repeat-this-invoice', 'Repeat this invoice', 'تكرار هذه الفاتورة '),
(347, 'user', 'Weekly', 'weekly', 'Weekly', 'أسبوعيا'),
(348, 'user', 'Weeks', 'weeks', 'Weeks', 'أسابيع'),
(349, 'user', 'Months', 'months', 'Months', 'الأشهر'),
(350, 'user', 'Years', 'years', 'Years', 'سنوات '),
(351, 'user', 'End date', 'end-date', 'End date', 'تاريخ الانتهاء'),
(352, 'user', 'Auto send invoice by e-mail', 'auto-send-invoice-by-e-mail', 'Auto send invoice by e-mail', 'ارسال الفاتورة تلقائياً عبر البريد الالكتروني'),
(353, 'user', 'Email a copy of each invoice to myself', 'email-a-copy', 'Email a copy of each invoice to myself', 'ارسال نسخة من كل فاتورة لي (لبريدي الالكتروني)'),
(354, 'user', 'Bill to', 'bill-to', 'Bill to', 'فاتورة لـ'),
(355, 'user', 'You have not added a customer', 'empty-customer', 'You have not added a customer', 'لم تقم بإضافة أي زبون / عميل'),
(356, 'user', 'Invoice number', 'invoice-number', 'Invoice number', 'رقم الفاتورة '),
(357, 'user', 'Invoice date', 'invoice-date', 'Invoice date', 'تاريخ الفاتورة '),
(358, 'user', 'Due date', 'due-date', 'Due date', 'تاريخ الاستحقاق'),
(359, 'user', 'You have not added any items', 'empty-items', 'You have not added any items', 'لم تقم بإضافة إلى عناصر'),
(360, 'user', 'Package Plan', 'package-plan', 'Package Plan', 'خطة الباقة'),
(361, 'user', 'PAY NOW', 'pay-now', 'PAY NOW', 'ادفع الآن'),
(362, 'user', 'Your payment has be completed successfully !', 'payment-success-msg', 'Your payment has be completed successfully !', 'تمت عملية السداد بنجاح'),
(363, 'user', 'Your payment has be failed ! Please try again', 'payment-error-msg', 'Your payment has be failed ! Please try again', 'فشلت عملية السداد الخاصة بك، رجاءاً حاول مجدداً'),
(364, 'user', 'Continue', 'continue', 'Continue', 'تابع'),
(365, 'user', 'Failed', 'failed', 'Failed', 'فشل   '),
(366, 'user', 'Try again', 'try-again', 'Try again', 'حاول مجدداً'),
(367, 'user', 'Show Report', 'show-report', 'Show Report', 'أظهر التقرير'),
(368, 'user', 'Plan', 'plan', 'Plan', 'الخطة'),
(369, 'user', 'Days left', 'days-left', 'Days left', 'الأيام المتبقية '),
(370, 'user', 'per year', 'per-year', 'per year', 'سنوياً'),
(371, 'user', 'per month', 'per-month', 'per month', 'شهرياً'),
(372, 'user', 'Unlimited', 'unlimited', 'Unlimited', 'غير محدود'),
(373, 'user', 'Edit vendor', 'edit-vendor', 'Edit vendor', 'تعديل مورد'),
(374, 'user', 'Edit Expense', 'edit-expense', 'Edit Expense', 'تعديل مصروفات'),
(375, 'user', 'Expenses', 'expenses', 'Expenses', 'المصروفات'),
(376, 'user', 'Expense Amount', 'expense-amount', 'Expense Amount', 'مبلغ المصروفات'),
(377, 'user', 'Save and continue', 'save-and-continue', 'Save and continue', 'الحفظ والمتابعة'),
(378, 'user', 'Preview', 'preview', 'Preview', 'استعراض/ عرض'),
(379, 'user', 'Manage business', 'manage-business', 'Manage business', 'إدارة الأعمال '),
(380, 'user', 'Manage profile', 'manage-profile', 'Manage profile', 'إدارة / التحكم بالملف الشخصي'),
(381, 'user', 'Sign out', 'sign-out', 'Sign out', 'تسجيل الخروج'),
(382, 'user', 'accounts', 'accounts', 'accounts', 'الحسابات '),
(383, 'user', 'No users found', 'no-users-found', 'No users found', 'لم يتم إيجاد أي مستخدم'),
(384, 'user', 'Edit Faq', 'edit-faq', 'Edit Faq', 'إضافة / تعديل الأسئلة الشائعة'),
(385, 'user', 'Add New Faq', 'add-new-faq', 'Add New Faq', 'إضافة سؤال جديد'),
(386, 'user', 'Upload favicon', 'upload-favicon', 'Upload favicon', 'تحميل الايقونة المفضلة / تحميل رمز الموقع المفضل'),
(387, 'user', 'Upload logo', 'upload-logo', 'Upload logo', 'تحميل / رفع الشعار '),
(388, 'user', 'Not found', 'not-found', 'Not found', 'لم يتم العثور عليه'),
(389, 'user', 'Update Package features for', 'update-package-features-for', 'Update Package features for', 'تحديث ميزات الباقة لـ'),
(390, 'user', 'Basic Limit', 'basic-limit', 'Basic Limit', 'الحد الأقصى الأساسي'),
(391, 'user', 'Standared Limit', 'standared-limit', 'Standared Limit', 'الحد الأقصى القياسي '),
(392, 'user', 'Premium Limit', 'premium-limit', 'Premium Limit', 'الحد الأقصى المميز'),
(393, 'user', 'Update Package', 'update-package', 'Update Package', 'تحديث الباقة'),
(394, 'user', 'Yes', 'yes', 'Yes', 'نعم '),
(395, 'user', 'No', 'no', 'No', 'لا '),
(396, 'user', 'Edit testimonial', 'edit-testimonial', 'Edit testimonial', 'إضافة / تحديث الشهادة  '),
(397, 'user', 'Edit Blog Post', 'edit-blog-post', 'Edit Blog Post', 'تحرير منشور المدونة'),
(398, 'front', 'Pricing', 'pricing', 'Pricing', 'التسعير'),
(399, 'front', 'Home', 'home', 'Home', 'الصفحة الرئيسية '),
(400, 'front', 'Blogs', 'blogs', 'Blogs', 'المدونات'),
(401, 'front', 'Contact', 'contact', 'Contact', 'جهات الاتصال'),
(402, 'front', 'Create Account', 'create-account', 'Create Account', 'انشاء حساب'),
(403, 'front', 'Get Started', 'get-started', 'Get Started', 'ابدأ'),
(404, 'front', 'The better way to make, move and manage your money', 'home-feature-title', 'The better way to keep track & manage your money', 'أفضل طريقة حتى تبقى تتبع وتدير أموالك '),
(405, 'front', 'Workflow', 'workflow', 'Workflow', 'مخطط العمل'),
(406, 'front', 'Look at a glance how our app works', 'how-app-works', 'Look at a glance how our app works', 'القي نظرة عن قرب على كيفية عمل تطبيقنا'),
(407, 'front', 'Choose Plan', 'choose-plan', 'Choose Plan', 'اختر خطة'),
(408, 'front', 'Choose your comfortable plan', 'choose-your-comfortable-plan', 'Choose your comfortable plan', 'اختر الخطة الملائمة '),
(409, 'front', 'Get Paid', 'get-paid', 'Get Paid', 'استلم مدفوعاتك'),
(410, 'front', 'Paid via paypal payment method', 'paid-via-paypal-payment-method', 'Paid via paypal payment method', 'تم السداد عن طريق باي بال'),
(411, 'front', 'Start Working', 'start-working', 'Start Working', 'ابدأ العمل'),
(412, 'front', 'Start Using and explore the featuers', 'start-using-and-explore-the-featuers', 'Start Using and explore the features', 'إبدأ باستعمال واستكشاف هذه الميزات'),
(413, 'front', 'Clients Say', 'clients-say', 'Clients Say', 'يقول العملاء'),
(414, 'front', 'Learn more, Build skills & Empower yourself', 'learn-more-build-skills-empower-yourself', 'Learn more, Build skills & Empower yourself', 'تعلم أكثر، ابني المهارات وقم بتمكين نفسك '),
(415, 'front', 'Get in touch', 'get-in-touch', 'Get in touch', 'ابقى على تواصل '),
(416, 'front', '404 Not Found', '404-not-found', '404 Not Found', 'خطأ 404 غير موجود '),
(417, 'front', 'The resource requested could not be found on this site!', '404-msg', 'The resource requested could not be found on this site!', 'لم نتمكن من العثور على الموارد المطلوبة ضمن هذا الموقع'),
(418, 'front', 'Back to Home', 'back-to-home', 'Back to Home', 'عد إلى صفحة البداية'),
(419, 'front', 'Full name', 'full-name', 'Full name', 'الاسم الكامل'),
(420, 'front', 'Write your Message', 'write-your-message', 'Write your Message', 'اكتب رسالتك'),
(421, 'front', 'Forgot password?', 'forgot-password', 'Forgot password?', 'هل نسيت كلمة المرور'),
(422, 'front', 'Recover password', 'recover-password', 'Recover password', 'استعد كلمة المرور'),
(423, 'front', 'SUBMIT', 'submit', 'SUBMIT', 'إدخال'),
(424, 'front', 'Login', 'login', 'Login', 'تسجيل دخول'),
(425, 'front', 'Enter your email', 'enter-your-email', 'Enter your email', 'ادخل بريدك الالكتروني'),
(426, 'front', 'Small Business—friendly Pricing', 'price-title', 'Small Business—friendly Pricing', 'أسعار ملائمة للأعمال الناشئة والمتوسطة'),
(427, 'front', 'We\'re offering a generous Free Plan and affordable premium pricing plans that grow with your business', 'price-desc', 'We\'re offering a generous Free Plan and affordable premium pricing plans that grow with your business', 'نحن نقدم خطة مجانية كريمة ومتعاونة كما أننا نقدم خطة مميزو بسعر جيد تساعدك على توسيع اعمالك'),
(428, 'front', 'Done', 'done', 'Done', 'تم'),
(429, 'front', 'Error', 'error', 'Error', 'خطاً'),
(430, 'front', 'Please complete your payment by clicking the PAY NOW button', 'complete-your-payment', 'Please complete your payment by clicking the PAY NOW button', 'الرجاء إتمام عملية السداد عبر الضغط على زر (ادفع الان /pay now) '),
(431, 'front', 'Registration system is disabled', 'registration-system-is-disabled', 'Registration system is disabled', 'نظام التسجيل غير متاح / نظام التسجيل معطل'),
(432, 'front', 'helps Entrepreneurs to manage their business & finances', 'register-info', 'helps Entrepreneurs to manage their business & finances', 'ساعد رواد الاعمال في إدارة كل من أعمالهم وأموالهم'),
(433, 'front', 'Sign Up', 'sign-up', 'Sign Up', 'تسجيل (انشاء حساب)'),
(434, 'front', 'I agree with Terms of Services', 'agree-info', 'I agree with Terms of Services', 'أوافق على شروط الخدمة'),
(435, 'front', 'Setup your first Business', 'setup-your-first-business', 'Setup your first Business', 'قم بتجهيز / تحضير أول اعمالك '),
(436, 'front', 'Select Business Type', 'select-business-type', 'Select Business Type', 'اختر نوع الأعمال '),
(437, 'front', 'You are almost done', 'you-are-almost-done', 'You are almost done', 'أنت على وشك الانتهاء'),
(438, 'front', 'Post comment', 'post-comment', 'Post comment', 'نشر التعليق'),
(439, 'front', 'Related Posts', 'related-posts', 'Related Posts', 'المنشورات ذات الصلة (الشبيهة) '),
(440, 'front', 'Comments', 'comments', 'Comments', 'التعليقات '),
(441, 'front', 'Verify Account', 'verify-account', 'Verify Account', 'تفعيل / تأكيد الحساب'),
(442, 'front', 'We have sent a link to your registered email address, please click this link to verify your account', 'verify-acc-msg', 'We have sent a link to your registered email address, please click this link to verify your account', 'لقد قمنا بإرسال رابط إلى عنوان بريدك الالكتروني لتفعيل التسجيل، رجاءاً قم بالنقر على الرابط حتى يتم تفعيل الحساب'),
(443, 'front', 'Email verification failed!', 'verify-failed', 'Email verification failed!', 'فشل في التحقق من البريد الالكتروني للتفعيل  '),
(444, 'front', 'Congratulation\'s', 'congratulations', 'Congratulation\'s', 'تهانينا '),
(445, 'front', 'Your account successfully verified', 'verify-success', 'Your account successfully verified', 'لقد تم التأكد من حسابك وتفعيله بنجاح'),
(446, 'admin', 'Inserted Successfully', 'msg-inserted', 'Inserted Successfully', 'تم نجاح الادخال / الادراج'),
(447, 'admin\n', 'Updated Successfully', 'msg-updated', 'Updated Successfully', 'تم التحديث  التطوير بنجاح'),
(448, 'front', 'Activate Successfully', 'msg-activated', 'Activate Successfully', 'تم التنشيط بنجاح '),
(449, 'front', 'Deactivate Successfully', 'msg-deactivated', 'Deactivate Successfully', 'تم إلغاء التفعيل بنجاح '),
(450, 'front', 'Recaptcha is required', 'recaptcha-is-required', 'Recaptcha is required', 'الكاباتشا (مفتاح التحق من أنك لست روبوت) مطلوب'),
(451, 'front', 'Message send Successfully', 'message-send-successfully', 'Message send Successfully', 'تم ارسال الرسالة بنجاح'),
(452, 'front', 'Create', 'create', 'Create', 'إنشاء/ ابتكار'),
(453, 'user', 'Approve', 'approve', 'Approve', 'موافق'),
(454, 'admin', 'Contacts', 'contacts', 'Contacts', 'جهات الاتصال'),
(455, 'admin', 'Select User', 'select-user', 'Select User', 'اختر مستخدم'),
(456, 'admin', 'Select Package', 'select-package', 'Select Package', 'اختر باقة'),
(457, 'admin', 'Offline Payment', 'offline-payment', 'Offline Payment', 'السداد دون اتصال'),
(458, 'admin', 'Add Offline Payment', 'add-offline-payment', 'Add Offline Payment', 'إضافة سداد بدون اتصال'),
(459, 'admin', 'Subscription Type', 'subscription-type', 'Subscription Type', 'نوع الاشتراك'),
(460, 'admin', 'Payment added successfully', 'payment-added-successfully', 'Payment added successfully', 'تم إضافة آلية السداد بنجاح'),
(461, 'admin', 'Enter your tags', 'enter-your-tags', 'Enter your tags', 'ادخل وسومك الخاصة'),
(462, 'user', 'Created on', 'created-on', 'Created on', 'تم الإنشاء في'),
(463, 'user', 'View', 'view', 'View', 'معاينة'),
(464, 'user', 'Approved', 'approved', 'Approved', 'معتمد'),
(465, 'front', 'Free trial of', 'free-trial-of', 'Free trial of', 'عينة مجانية لـ '),
(466, 'admin', 'Edit frontend values', 'edit-frontend-values', 'Frontend values', 'تعديل قيم المقدمة (الواجهة ) '),
(467, 'admin', 'Edit admin values', 'edit-admin-values', 'Admin values', 'تعديل قيم المسؤول'),
(468, 'admin', 'Edit user values', 'edit-user-values', 'User values', 'تعديل قيم المستخدم'),
(469, 'admin', 'Update language for', 'update-language-for', 'Update language for', 'تحديث اللغة لاجل'),
(470, 'admin', 'Frontend', 'frontend', 'Frontend', 'الواجهة'),
(471, 'admin', 'Admin', 'admin', 'Admin', 'المسؤول'),
(472, 'admin', 'User', 'user', 'User', 'المستخدمين  '),
(473, 'admin', 'Add New Language ', 'add-new-language', 'Add New Language ', 'إضافة لغة جديدة'),
(474, 'admin', 'Manage Language', 'manage-language', 'Manage Language', 'إدارة اللغات '),
(475, 'admin', 'Update values', 'update-values', 'Update values', 'تحديث القيم'),
(476, 'admin', 'Your Password has been changed Successfully', 'password-reset-success-msg', 'Your Password has been changed Successfully', 'بقد تم تغيير كلمة مرورك بنجاح'),
(477, 'admin', 'Oops', 'oops', 'Oops', 'عذراً'),
(478, 'admin', 'Your Confirm Password doesn\'t Match', 'confirm-pass-not-match-msg', 'Your Confirm Password doesn\'t Match', 'كلمة المرور المؤكدة لا تتوافق مع كلمة المرور المدخلة سابقاً'),
(479, 'admin', 'Your Old Password doesn\'t Match', 'old-password-doesnt-match', 'Your Old Password doesn\'t Match', 'كلمة سرك القديمة لا تتوافق '),
(480, 'admin', 'Sorry', 'sorry', 'Sorry!', 'اسف'),
(481, 'admin', 'Something wrong', 'something-wrong', 'Something wrong', 'شيء ما حدث بطريقة خاطئة'),
(482, 'admin', 'Success', 'success', 'Success!', 'نجح'),
(483, 'admin', 'Setup successfully', 'setup-successfully', 'Setup successfully', 'تم التعداد / التحميل / التنصيب بنجاح'),
(484, 'admin', 'Send successfully', 'send-successfully', 'Send successfully', 'تم الارسال بنجاح'),
(485, 'admin', 'Are you sure', 'are-you-sure', 'Are you sure?', 'هل أنت متأكد؟'),
(486, 'admin', 'Convert this estimate to a draft invoice?', 'convert-estimate-to-draft-invoice', 'Convert this estimate to a draft invoice?', 'تحويل عرض السعر إلى مسودة فاتورة ؟'),
(487, 'admin', 'Convert', 'convert', 'Convert', 'تحويل'),
(488, 'admin', 'Converted successfully', 'converted-successfully', 'Converted successfully', 'تم التحويل بنجاح'),
(489, 'admin', 'Data limit has been over', 'data-limit-over', 'Data limit has been over', 'تم تخطي الحد الأعلى للبيانات'),
(490, 'admin', 'Sending failed', 'sending-failed', 'Sending failed', 'فشل الإرسال '),
(491, 'admin', 'Approved Successfully', 'approved-successfully', 'Approved Successfully', 'تمت الموافقة بنجاح'),
(492, 'admin', 'You will not be able to recover this file', 'not-recover-file', 'You will not be able to recover this file', 'لن تتمكن من القيام باستعادة هذا الملف'),
(493, 'admin', 'Deleted successfully', 'deleted-successfully', 'Deleted successfully', 'تم الحذف بنجاح'),
(494, 'admin', 'Approve this invoice', 'approve-this-invoice', 'Approve this invoice', 'وافق على هذه الفاتورة '),
(495, 'admin', 'Set as your primary business', 'set-as-your-primary-business', 'Set as your primary business', 'حدد / اختر / عينه كعملك الخاص'),
(496, 'admin', 'Want to set', 'want-to-set', 'Want to set', 'هل ترغب في تحديده وتعيينه'),
(497, 'admin', 'as your default business?', 'as-your-default-business', 'as your default business?', 'على أنه عملك الافتراضي؟ '),
(498, 'admin', 'You have made some changes and it\'s not saved?', 'made-changes-not-saved', 'You have made some changes and it\'s not saved?', 'لقد قمت بمجموعة من التغييرات التي لم تتم حفظها؟'),
(499, 'admin', 'Your account has been suspended', 'account-suspend-msg', 'Your account has been suspended!', 'تم إيقاف حسابك'),
(500, 'front', 'This email already exist, try another one', 'email-exist', 'This email already exist, try another one', 'هذا البريد الالكتروني موجود مسبقاً، حاول استعمال بريد أخر'),
(501, 'front', 'Your account is not active', 'account-not-active', 'Your account is not active', 'حسابك لم يتم تفعيله بعد'),
(502, 'front', 'Sorry your username or password is not correct!', 'wrong-username-password', 'Sorry your username or password is not correct!', 'نعتذر، اسم المستخدم خاصتك أو كلمة المرور المدخلة ليست صحيحة'),
(503, 'front', 'Your email is not verified, Please verify your email', 'email-not-verified', 'Your email is not verified, Please verify your email', 'لم يتم تأكيد / تفعيل بريدك الإلكتروني، رجاءاً قم بتأكيده'),
(504, 'front', 'We\'ve sent a password to your email address. Please check your inbox', 'password-sent-to-email', 'We\'ve sent a password to your email address. Please check your inbox', 'قمنا بارسال كلمة مرور إلى عنوان بريدك الالكتروني. رجاءاً تحقق من صندوق البريد خاصتك'),
(505, 'front', 'Password Reset Successfully !', 'password-reset-successfully', 'Password Reset Successfully !', 'تم إعادة تعيين كلمة السر بنجاح'),
(506, 'front', 'You are not a valid user', 'not-a-valid-user', 'You are not a valid user', 'أنت لست مستخدم ملائم/ مناسباً'),
(507, 'admin', 'Set default language', 'set-default-language', 'Set default language', 'تحديد الغة افتراضية'),
(508, 'admin', 'Short Form', 'short-form', 'Short Form', 'نموذج قصير'),
(509, 'admin', 'Text direction', 'text-direction', 'Text direction', 'اتجاه النص'),
(510, 'admin', 'Oops! There was an issue with your invoice. Please try again', 'invoice-error-create', 'Oops! There was an issue with your invoice. Please try again', 'للأسف، يوجد هناك إشكالية مع فاتورتك، الرجاء قم بالمحاولة مجدداً'),
(511, 'user', 'Business address and contact details, title, summary, and logo', 'invoice-title', 'Business address and contact details, title, summary, and logo', 'عنوان الاعمال وتفاصيل الاتصال، العنوان، الملخص والشعار'),
(512, 'user', 'Add new item', 'add-new-item', 'Add new item', 'إضافة عنصر جديد'),
(513, 'user', 'Summary example: project name, description of invoice', 'invoice-title-placeholder', 'Summary example: project name, description of invoice', 'مقال على الملخص: اسم المشروع، وصف الفاتورة '),
(514, 'user', 'Select Customer', 'select-customer', 'Select Customer', 'حدد عميل / زبون'),
(515, 'admin', 'Set Trial Days', 'set-trial-days', 'Set trial days', 'حدد أيام التجربة'),
(516, 'front', 'Start', 'start', 'Start', 'ابدء'),
(517, 'front', 'days trial', 'days-trial', 'days trial', 'أيام العرض/ التجربة'),
(518, 'admin', 'Delete', 'delete', 'Delete', 'حذف'),
(519, 'admin', 'Activate', 'activate', 'Activate', 'تفعيل'),
(520, 'admin', 'Deactivate', 'deactivate', 'Deactivate', 'إلغاء التفعيل'),
(521, 'admin', 'Verified', 'verified', 'Verified', 'تم التحقق منه'),
(522, 'user', 'Estimate', 'estimate', 'Estimate', 'عرض السعر'),
(523, 'front', 'Explore our features', 'explore-our-features', 'Explore our features', 'استكشف / تعرف على ميزاتنا'),
(524, 'front', 'Frequently Asked Questions', 'frequently-asked-questions', 'Frequently Asked Questions', 'الأسئلة المتكررة بانتظام '),
(525, 'admin', 'Income', 'income', 'Income', 'الدخل / الوارد  '),
(526, 'front', 'Password', 'password', 'Password', 'كلمة المرور / كلمة السر'),
(527, 'front', 'Username or email', 'username-or-email', 'Username or email', 'اسم المستخدم أو البريد الالكتروني'),
(528, 'user', 'Currency conversion', 'currency-conversion', 'Currency conversion', 'تحويل العملات'),
(529, 'user', 'Add a customer to this invoice', 'add-customer-error-msg', 'Add a customer to this invoice', 'أضف عميل / زبون إلى هذه الفاتورة'),
(530, 'user', 'Set default footer note for invoice', 'set-default-footer-note', 'Set default footer note for invoice', 'هيئ / أنشئ ملاحظة تذييل افتراضية للفاتورة'),
(531, 'admin', 'Multilingual System', 'enable-multilingual', 'Multilingual System', 'نظام متعدد اللغات'),
(532, 'user', 'Completed', 'completed', 'Completed', 'مكتمل'),
(533, 'user', 'Stop Recurring', 'stop-recurring', 'Stop Recurring', 'إيقاف التكرار الدوري'),
(534, 'user', 'Stop this recurring invoice', 'stop-this-recurring-invoice', 'Stop this recurring invoice', 'إيقاف تكرار هذه الفاتورة'),
(535, 'user', 'Applied Successfully', 'applied-successfully', 'Applied Successfully', 'تم التقديم بنجاح'),
(536, 'user', 'Cancel', 'cancel', 'Cancel', 'إلغاء');
INSERT INTO `lang_values` (`id`, `type`, `label`, `keyword`, `english`, `arabic`) VALUES
(537, 'front', 'This website uses cookies. By using this website you consent to our use of these cookies.', 'accept-cookies', 'This website uses cookies. By using this website you consent to our use of these cookies.', 'هذا الموقع يستخدم ملفات تعريف الارتباط (الكوكيز) وعندما تقوم باستعمال هذا الموقع فأنت تسمح لنا باستخدام ملفات تعريف الارتباط هذه.'),
(538, 'front', 'Accept', 'accept', 'Accept', 'موافق'),
(539, 'user', 'You created this invoice, but you have not approved it.', 'draft-tooltip', 'You created this invoice, but you have not approved it.', 'قمت بانشاء هذه الفاتورة ولكن لم تقم بالموافقة علهيا'),
(540, 'user', 'Your customer has paid this invoice in full.', 'paid-tooltip', 'Your customer has paid this invoice in full.', 'عميلك قام بسداد كامل هذه الفاتورة '),
(541, 'user', 'Your customer has not paid the full invoice amount on time.', 'unpaid-tooltip', 'Your customer has not paid the full invoice amount on time.', 'عميلك لم يقم بسداد كامل مبلغ هذه الفاتورة في الوقت المحدد'),
(542, 'user', 'This recurring invoice has been completed', 'complete-tooltip', 'This recurring invoice has been completed', 'هذه الفاتورة المتكررة اكتملت '),
(543, 'user', 'Your customer has paid this invoice in full.', 'active-tooltip', 'Your customer has paid this invoice in full.', 'عميلك قام بسداد هذه الفاتورة بالكامل'),
(544, 'user', 'Your estimate is expire now', 'expire-estimate', 'Your estimate is expire now', 'تنتهي الآن صلاحية عرض السعر الخاص بك'),
(545, 'user', 'our estimate is saved', 'saved-estimate', 'our estimate is saved', 'تم حفظ عرض السعر'),
(546, 'user', 'Reset Filter', 'reset-filter', 'Reset Filter', 'إعادة تعيين الفلتر'),
(547, 'user', 'Report Types', 'report-types', 'Report Types', 'أنواع التقرير'),
(548, 'user', 'Tax Info', 'tax-info', 'Tax Info', 'معلومات الضرائب/ الضرائب'),
(549, 'user', 'Including Tax', 'with-tax', 'Including Tax', 'تتضمن الرسوم/ الضرائب'),
(550, 'user', 'Excluding Tax', 'without-tax', 'Excluding Tax', 'لا تشمل الرسوم / الضرائب'),
(551, 'user', 'All', 'all', 'All', 'الكل'),
(552, 'user', 'Net Amount', 'net-amount', 'Net Amount', 'صافي المبلغ'),
(553, 'user', 'Version', 'version', 'Version', 'النسخة / الإصدار'),
(554, 'user', 'Your customer has paid partial payment of this invoice.', 'paid-partial', 'Your customer has paid partial payment of this invoice.', 'قام عميلك بسداد دفعة جزئية لهذه الفاتورة'),
(555, 'user', 'Next Payment', 'next-payment', 'Next Payment', 'السداد التالي'),
(556, 'user', 'Upcomming', 'upcomming', 'Upcomming', 'القادم'),
(557, 'user', 'Upcomming Recurring Payments', 'upcomming-recurring-payments', 'Upcomming Recurring Payments', 'السدادات الدورية القادمة '),
(558, 'admin', 'Coupons', 'coupons', 'Coupons', 'كوبونات / قسائم'),
(559, 'admin', 'Coupon', 'coupon', 'Coupon', 'كوبون / قسيمة'),
(560, 'admin', 'Edit Coupon', 'edit-coupon', 'Edit Coupon', 'إضافة / تحرير الكوبون / القسيمة'),
(561, 'admin', 'Add New Coupon', 'add-new-coupon', 'Add New Coupon', 'إضافة كوبون جديد '),
(562, 'admin', 'Usages limit', 'usages-limit', 'Usages limit', 'الحد الأقصى للاستخدام '),
(563, 'admin', 'Usages Count', 'usages-count', 'Usages Count', 'عدد الاستخدامات '),
(564, 'admin', 'Auto generate coupon code', 'auto-generate-code', 'Auto generate coupon code', 'مولد كود كوبون / قسيمة آلي'),
(565, 'admin', 'Ccoupon Code', 'coupon-code', 'Ccoupon Code', 'كود الكوبون / رمز القسيمة '),
(566, 'admin', 'Expire Date', 'expire-date', 'Expire Date', 'تاريخ انتهاء الصلاحية '),
(567, 'admin', 'Billing Type', 'bill-type', 'Billing Type', 'نوع الفوترة'),
(568, 'front', 'Off', 'off', 'Off', 'مغلق'),
(569, 'front', 'Terms of service', 'terms-of-service', 'Terms of service', 'شروط الخدمة'),
(570, 'front', 'I agree with', 'agree-with', 'I agree with', 'أنا اتفق مع '),
(571, 'front', 'Save up to', 'save-upto', 'Save up to', 'التوفير / الادخار / الحفظ لأجل'),
(572, 'admin', 'Enable Payment', 'enable-payment', 'Enable Payment', 'تمكين السداد'),
(573, 'admin', 'Stripe Payment', 'stripe-payment', 'Stripe Payment', 'السداد ب Stripe'),
(574, 'admin', 'Publish Key', 'publish-key', 'Publish Key', 'مفتاح النشر'),
(575, 'admin', 'Secret Key', 'secret-key', 'Secret Key', 'مفتاح الخصوصية / السرية'),
(576, 'user', 'Name on Card', 'name-on-card', 'Name on Card', 'الاسم على البطاقة'),
(577, 'user', 'Card Number', 'card-number', 'Card Number', 'رقم البطاقة '),
(578, 'user', 'Expiration', 'expiration', 'Expiration', 'انتهاء الفعالية / الصلاحية '),
(579, 'user', 'Payment', 'payment', 'Payment', 'سداد'),
(580, 'user', 'If you leave this field, your invoice end date will be set unlimited', 'recurring-end-info', 'If you leave this field, your invoice end date will be set unlimited', 'سيكون تاريخ انتهاء الفاتورة غير محدد إذا ما تركت هذه الخانة فارغة'),
(581, 'user', 'Add new GST', 'add-new-gst', 'Add new GST', 'قم بإضافة ضريبة / رسم خاص'),
(582, 'user', 'Edit GST', 'edit-gst', 'Edit GST', 'إضافة / تحرير الضريبة '),
(583, 'admin', 'Order', 'order', 'Order', 'طلب'),
(584, 'user', 'Convert to Recurring Invoice', 'convert-recurring', 'Convert to Recurring', 'تحويل إلى فاتورة متكررة'),
(585, 'user', 'Start date must be lower then the current date', 'recurring-date-msg', 'Start date must be lower then the current date', 'تاريخ البداية يجب أن يكون سابق (اقدم ) من التاريخ الحالي'),
(586, 'user', 'Convert this to a recurring invoice', 'convert-recurring-msg', 'Convert this to a recurring invoice', 'حول هذا إلى فاتورة متكررة'),
(587, 'user', 'Pay Online', 'pay-online', 'Pay Online', 'ادفع أون لاين '),
(588, 'user', 'Receive payment currency', 'payment-currency', 'Receive payment currency', 'عملة المدفوعات المستلمة'),
(589, 'user', 'Get shareable link', 'share-link', 'Get shareable link', 'احصل على رابط قابل للمشاركة '),
(590, 'user', 'Rejected', 'rejected', 'Rejected', 'مرفوض'),
(591, 'user', 'Reject Reason', 'reject-reason', 'Reject Reason', 'سبب الرفض'),
(592, 'user', 'Describe reject reason', 'describe-reject-reason', 'Describe reject reason', 'استعراض / وصف سبب الرفض'),
(593, 'user', 'Product Stock Quantity', 'stock-quantity', 'Product Stock Quantity', 'كمية المنتج المخزن'),
(594, 'user', 'Enable product stock', 'enable-stock', 'Enable product stock', 'تفعيل /قبول مخزون المنتج '),
(595, 'user', 'Enable this feature you will be able to manage your products stock in invoices. ', 'enable-sotck-help', 'Enable this feature you will be able to manage your products stock in invoices. ', 'فعل / اقبل هذه الميزة لتصبح قادراً على إدارة مخزون منتجاتك في الفوايتر '),
(596, 'user', 'Accent color', 'accent-color', 'Accent color', 'لون تمييزك '),
(597, 'admin', 'Send Test Mail', 'test-mail', 'Send Test Mail', 'أرسل رسالة اختبار إلى البريد الإلكتروني '),
(598, 'admin', 'Mail Encryption', 'mail-encryption', 'Mail Encryption', 'تشفير البريد الالكتروني'),
(599, 'admin', 'If you are using gmail smtp please make sure you have set below settings before sending mail', 'mail-help-info', 'If you are using gmail smtp please make sure you have set below settings before sending mail', 'في حال كنت تستعمل برتوكول غوغل لارسال وتوجيه الرسائل الرقمية (gmail smtp) فعليك أن تكون متأكداً من أنك قد ضبطت الاعدادات قبل ارسال البريد الالكتروني'),
(600, 'admin', '\'SSL\' is used for port 465/25, \'TLS\' is used for port 587', 'mail-help-info-2', '\'SSL\' is used for port 465/25, \'TLS\' is used for port 587', 'بروتوكول \"ssl\" يعتمد لأجل المأخذ 465/25 ، بينما يعتمد البرتوكول \"TLS\" لاد المأخذ 587'),
(601, 'admin', 'Set 0 days to hide trial option in website', 'trial-disable', 'Set 0 days to hide trial option in website', 'اضبط عدد الأيام على (الصفر 0) لقتوم باخفاء الخيار التجريبي ضمن موقعك '),
(602, 'user', 'Chart of accounts', 'chart-of-accounts', 'Chart of accounts', 'شجرة الحسابات'),
(603, 'user', 'Modify', 'modify', 'Modify', 'تعديل'),
(604, 'user', 'Account Name', 'account-name', 'Account Name', 'اسم الحساب'),
(605, 'user', 'Account ID', 'account-id', 'Account ID', 'هوية الحساب (رقم الحساب الخاص) '),
(606, 'user', 'Edit Cost Center', 'edit-cosetcenter', 'Edit Cost Center', 'إضافة مركز التكلفة '),
(607, 'user', 'Cost Centers', 'costcenters', 'Cost Centers', 'مراكز التكلفة '),
(608, 'user', 'Add Cost Center', 'add-new-costcenter', 'Add Cost Center', 'إضافة / تعديل إضافة التكلفة '),
(609, 'user', 'Edit Journal', 'edit-journal', 'Edit Journal', 'تعديل قيد'),
(610, 'user', 'New Journal', 'add-new-journal', 'New Journal', 'قيد جديد'),
(611, 'user', 'Journal Entry', 'journal-entry', 'Journal Entry', 'قيد يومية'),
(612, 'user', 'Journal No', 'journal-no', 'Journal No', 'رقم القيد'),
(613, 'user', 'Total Debits', 'total-debits', 'Total Debits', 'اجمالي المدين'),
(614, 'user', 'Total Credits', 'total-credits', 'Total Credits', 'اجمالي الدائن'),
(615, 'user', 'Trial Balance', 'trial-balance', 'Trial Balance', 'ميزان المراجعة'),
(616, 'user', 'Debit', 'debit', 'Debit', 'المدين'),
(617, 'user', 'Credit', 'credit', 'Credit', 'الدائن'),
(618, 'user', 'Bills', 'bills', 'Bills', 'فواتير'),
(619, 'user', 'Create New Bill', 'create-new-bill', 'Create New Bill', 'انشاء فاتورة جديدة'),
(620, 'user', 'Edit Bill', 'edit-bill', 'Edit Bill', 'تعديل فاتورة'),
(621, 'user', 'Save Bill', 'save-bill', 'Save Bill', 'حفظ الفاتورة'),
(622, 'user', 'Bill', 'bill', 'Bill', 'فاتورة'),
(623, 'user', 'Record a payment for this bill', 'record-payment-bill', 'Record a payment for this bill', 'تسجيل دفعة للفاتورة'),
(624, 'user', 'Sales', 'sales', 'Sales', 'مبيعات'),
(625, 'user', 'Purchases', 'purchases', 'Purchases', 'مشتريات'),
(626, 'user', 'Partial', 'partial', 'Partial', 'جزئي'),
(627, 'user', 'Income by Customer', 'income-by-customer', 'Income by Customer', 'الدخل حسب العميل'),
(628, 'user', 'Purchases by Vendor', 'purchases-by-Vendor', 'Purchases by Vendor', 'المشتريات حسب المورد'),
(629, 'user', 'Purchase', 'purchase', 'Purchase', 'المشتريات'),
(630, 'user', 'Profit & Loss', 'profit-loss', 'Profit & Loss', 'أرباح وخسائر'),
(631, 'user', 'Paid & Unpaid', 'paid-unpaid', 'Paid & Unpaid', 'مسدد وغير مسدد'),
(632, 'user', 'Including paid & unpaid invoices and bills', 'paid-unpaid-inv-bill', 'Including paid & unpaid invoices and bills', 'تضمين الفواتير المدفوعة وغير المدفوعت'),
(633, 'user', 'Including only paid invoices and bills', 'paid-inv-bill', 'Including only paid invoices and bills', 'تضمين الفواتير المدفوعة فقط'),
(634, 'user', 'Net Profit', 'net-profit', 'Net Profit', 'صافي الربح'),
(635, 'user', 'Sales Tax Report', 'sales-tax-report', 'Sales Tax Report', 'تقرير ضريبة المبيعات'),
(636, 'user', 'Sales Product to tax', 'sales-product-tax', 'Sales Product to tax', 'مبيعات المنتج للضريبة'),
(637, 'user', 'Tax Amount on Sales', 'tax-amount-sale', 'Tax Amount on Sales', 'ضريبة مبلغ المبيعات'),
(638, 'user', 'Purchases Subject to Tax', 'purchase-subject', 'Purchases Subject to Tax', 'مشتريات خاضعة للضريبة'),
(639, 'user', 'Tax Amount on Purchases', 'tax-amount-purchase', 'Tax Amount on Purchases', 'مبلغ الضريبة على المشتريات'),
(640, 'user', 'Net Tax Owing', 'tax-owing', 'Net Tax Owing', 'صافي الضريبة'),
(641, 'front', 'Signing in ...', 'signing-in', 'Signing in ...', 'جاري تسجيل الدخول'),
(642, 'user', 'Select Vendor', 'select-Vendor', 'Select Vendor', 'اختيار المورد'),
(643, 'user', 'General', 'general', 'General', 'عام'),
(644, 'user', 'Purchase from', 'purchase-from', 'Purchase from', 'مشترى من'),
(645, 'user', 'Bill Number', 'bill-number', 'Bill Number', 'رقم الفاتورة'),
(646, 'front', 'Frontend Website', 'enable-frontend', 'Frontend Website', 'واجهة الموقع'),
(647, 'admin', 'Search by name or email', 'search-by-name-email', 'Search by name or email', 'البحث بالاسم او البريد'),
(648, 'admin', 'All Packages', 'all-package', 'All Packages', 'كل الباقات'),
(649, 'admin', 'Website Settings', 'website-settings', 'Website Settings', 'اعدادات الموقع'),
(650, 'user', 'Your customer has paid some partial payment for this invoice.', 'partial-payment', 'Your customer has paid some partial payment for this invoice.', 'العميل قام بسداد جزء من الفاتورة'),
(651, 'admin', 'Set -2 for Unlimited, -1 for Yes & 0 for No', 'limit-suggestions', 'Set -2 for Unlimited, -1 for Yes & 0 for No', 'اختر -2 لا محدود ، اختر -1 ل نعم ، اختر 0 ل لا '),
(652, 'admin', 'Enable access to show your frontend website.', 'enable-frontend-info', 'Enable access to show your frontend website.', 'قم بتفعيل الخيار لاظهار واجهة الموقع'),
(653, 'admin', 'Enable access to active multilingual system.', 'enable-multilingual-info', 'Enable access to active multilingual system.', 'قم بتفعيل خيار اللغة المتعددة'),
(654, 'admin', 'Enable to active reCaptcha for all public forms (Sign up, contacts).', 'enable-captcha-info', 'Enable to active reCaptcha for all public forms (Sign up, contacts).', 'قم بتفعيل كابتشا'),
(655, 'admin', 'Enable to allow sign up users to your site.', 'registration-system-info', 'Enable to allow sign up users to your site.', 'قم بتمكين التسجيل على الموقع'),
(656, 'admin', 'Enable to allow email verification for registered users.', 'email-verification-info', 'Enable to allow email verification for registered users.', 'قم بتمكين تفعيل التسجيل في الموقع'),
(657, 'admin', 'Enable Payment = Your users need to complete their payment for access all features <br> Disable Payment = Your users will access all features without completing payments.', 'enable-payment-info', 'Enable Payment = Your users need to complete their payment for access all features <br> Disable Payment = Your users will access all features without completing payments.', 'تفعيل السداد الالكتروني = المستخدم يحتاج ان يقوم بالسداد ليستطيع الدخول على المميزات كاملة ، تعطيل السداد الالكتروني = يستطيع المستخدمين استخدام كافة المميزات بدون السداد.'),
(658, 'admin', 'Enable to allow delete invoice in user business.', 'delete-invoice-info', 'Enable to allow delete invoice in user business.', 'تمكين المستخدم من حذف الفواتير'),
(659, 'admin', 'Enable to active discount system', 'discount-info', 'Enable to active discount system', 'تمكين المستخدم من استخدام الخصم على الفواتير'),
(660, 'admin', 'Enable to show blogs option in frontend', 'blogs-info', 'Enable to show blogs option in frontend', 'تمكين ظهور المدونة على الصفحة الرئيسية'),
(661, 'admin', 'Enable to show FAQs option in frontend', 'faqs-info', 'Enable to show FAQs option in frontend', 'تمكين ظهور الأسئلة والأجوبة على الصفحة الرئيسية'),
(662, 'user', 'Accounting', 'accounting', 'Accounting', 'المحاسبة'),
(663, 'user', 'You cann\'t delete , There are transactions ', 'msg-del-entries-error', 'You cann\'t delete , There are transactions', 'لا يمكنك الحذف لوجود عمليات'),
(664, 'user', 'Open Debit', 'prev-debit', 'Open Debit', 'رصيد افتتاحي مدين'),
(665, 'user', 'Open Credit', 'prev-credit', 'Open Credit', 'رصيد افتتاحي دائن'),
(666, 'user', 'Close Debit', 'last-debit', 'Close Debit', 'رصيد نهائي مدين'),
(667, 'user', 'Close Credit', 'last-credit', 'Close Credit', 'رصيد نهائي دائن'),
(668, 'user', 'Import', 'import', 'Import', 'إستراد'),
(669, 'user', 'Export', 'export', 'Export', 'تصدير');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `monthly_price` decimal(10,2) DEFAULT NULL,
  `bill_type` varchar(255) DEFAULT NULL,
  `dis_month` int(11) NOT NULL DEFAULT 0,
  `dis_year` int(11) NOT NULL DEFAULT 0,
  `is_special` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `slug`, `price`, `monthly_price`, `bill_type`, `dis_month`, `dis_year`, `is_special`) VALUES
(1, 'Starter', 'basic', '20.00', '0.00', 'year', 10, 0, 0),
(2, 'Standard', 'standared', '35.00', '15.00', 'year', 20, 0, 1),
(3, 'Premium', 'premium', '1000.00', '30.00', 'year', 50, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `package_features`
--

CREATE TABLE `package_features` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `basic` varchar(255) DEFAULT NULL,
  `standared` varchar(255) DEFAULT NULL,
  `premium` varchar(255) DEFAULT NULL,
  `year_basic` int(11) DEFAULT NULL,
  `year_standared` int(11) DEFAULT NULL,
  `year_premium` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `package_features`
--

INSERT INTO `package_features` (`id`, `name`, `slug`, `basic`, `standared`, `premium`, `year_basic`, `year_standared`, `year_premium`, `type`, `text`) VALUES
(1, 'Invoices', 'invoice', '0', '30', '60', 2, 300, 2, '', NULL),
(2, 'Estimates', 'estimate', '5', '40', '100', 100, 200, 2, '', NULL),
(3, 'Customers', 'customer', '5', '20', '50', 20, 70, 2, '', NULL),
(4, 'Business', 'business', '3', '5', '10', 10, 25, 50, '', ''),
(5, 'Invoice templates', 'invoice_template', '5', '6', '7', 6, 6, 7, '', 'Select max value 7'),
(6, 'Get Invoice Payment via Paypal/stripe', 'invoice-payments', '-1', '-1', '-1', -1, -1, -1, '', 'Set -1 for Yes & 0 for No');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `puid` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `package` varchar(255) DEFAULT NULL,
  `billing_type` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `expire_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `puid`, `user_id`, `package`, `billing_type`, `payment_type`, `txn_id`, `amount`, `status`, `created_at`, `expire_on`) VALUES
(1, '24538', 2, '2', 'yearly', NULL, NULL, '35.00', 'expired', '2020-11-10', '2021-11-09'),
(2, '42890', 2, '3', 'yearly', NULL, NULL, '1000.00', 'expired', '2021-01-22', '2022-01-22'),
(3, '14367', 2, '2', 'yearly', NULL, NULL, '35.00', 'expired', '2021-01-22', '2022-01-22'),
(4, '02469', 2, '3', 'yearly', NULL, NULL, '1000.00', 'expired', '2021-01-22', '2022-01-22'),
(5, '74390', 2, '3', 'yearly', NULL, NULL, '1000.00', 'expired', '2021-01-22', '2022-01-22'),
(6, '27590', 2, '3', 'yearly', NULL, NULL, '1000.00', 'expired', '2021-01-22', '2022-01-22'),
(7, '34082', 2, '3', 'yearly', NULL, NULL, '1000.00', 'expired', '2021-01-25', '2022-01-24'),
(8, '94023', 2, '3', 'yearly', NULL, NULL, '1000.00', 'expired', '2021-01-25', '2022-01-24'),
(9, '72158', 3, '1', 'monthly', NULL, NULL, '0.00', 'verified', '2021-03-28', '2021-04-28'),
(10, '54276', 2, '2', 'yearly', NULL, NULL, '35.00', 'expired', '2021-03-28', '2022-03-28'),
(11, '28614', 2, '3', 'yearly', NULL, NULL, '1000.00', 'expired', '2021-03-28', '2022-03-28'),
(12, '09724', 2, '3', 'yearly', NULL, NULL, '1000.00', 'expired', '2021-03-28', '2022-03-28'),
(13, '87493', 4, '2', 'yearly', NULL, NULL, '35.00', 'verified', '2023-05-06', '2024-05-06'),
(14, '87493', 4, '2', 'yearly', NULL, NULL, '35.00', 'verified', '2023-05-06', '2024-05-06'),
(15, '87493', 4, '2', 'yearly', NULL, NULL, '35.00', 'verified', '2023-05-06', '2024-05-06'),
(16, '58197', 2, '1', 'yearly', NULL, NULL, '20.00', 'expired', '2021-03-30', '2022-03-29'),
(17, '90854', 2, '3', 'yearly', NULL, NULL, '1000.00', 'expired', '2021-03-30', '2022-03-29'),
(18, '12695', 2, '3', 'yearly', NULL, NULL, '1000.00', 'expired', '2021-03-30', '2022-03-29'),
(19, '87651', 2, '1', 'yearly', NULL, NULL, '20.00', 'expired', '2021-03-30', '2022-03-30'),
(20, '63475', 2, '1', 'yearly', NULL, NULL, '20.00', 'expired', '2021-03-30', '2022-03-30'),
(21, '02496', 2, '1', 'yearly', NULL, NULL, '20.00', 'expired', '2021-03-30', '2022-03-30'),
(22, '89127', 2, '3', 'yearly', NULL, NULL, '1000.00', 'expired', '2021-03-30', '2022-03-30'),
(23, '46920', 2, '3', 'yearly', NULL, NULL, '1000.00', 'pending', '2021-03-30', '2022-03-30'),
(24, '56103', 2, '3', 'yearly', NULL, NULL, '1000.00', 'verified', '2021-03-30', '2022-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `payment_advance`
--

CREATE TABLE `payment_advance` (
  `id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `payment_records`
--

CREATE TABLE `payment_records` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `business_id` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `convert_amount` decimal(10,2) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `payment_method` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `type` varchar(255) DEFAULT 'income',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payment_records`
--

INSERT INTO `payment_records` (`id`, `invoice_id`, `business_id`, `customer_id`, `amount`, `convert_amount`, `payment_date`, `payment_method`, `note`, `type`, `created_at`) VALUES
(1, 6, '24305', 63, '220.00', '59.89', '2023-05-07', 0, '', 'income', '2023-05-07 09:31:52'),
(2, 7, '24305', 63, '110.00', '29.95', '2023-05-07', 2, '', 'income', '2023-05-07 11:35:52'),
(3, 7, '24305', 63, '110.00', '29.95', '2023-05-07', 2, '', 'income', '2023-05-07 11:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `details` text DEFAULT NULL,
  `is_sell` int(11) DEFAULT NULL,
  `is_buy` int(11) DEFAULT NULL,
  `income_category` int(11) DEFAULT NULL,
  `expense_category` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `business_id`, `quantity`, `name`, `slug`, `price`, `details`, `is_sell`, `is_buy`, `income_category`, `expense_category`, `created_at`) VALUES
(1, 2, 93405, 0, 'item', NULL, '55.00', ' ', 1, 0, 0, 0, '2021-01-22 01:12:27'),
(13, 2, 54903, 0, 'جديد', '', '55.00', '', 1, 0, 0, 0, '2021-01-30 22:59:46'),
(14, 2, 54903, 0, 'جديد', '', '55.00', '', 1, NULL, NULL, NULL, '2021-01-31 00:26:07'),
(16, 2, 24305, 55, 'rrr', 'rrr', '44.00', ' ', 1, NULL, 2, NULL, '2021-01-31 14:13:20'),
(18, 2, 24305, 44, 'rrr', 'rrr', '44.00', ' ', 1, NULL, 2, NULL, '2021-01-31 14:16:28'),
(21, 2, 24305, 51, 'rrr', 'rrr', '44.00', ' ', 1, NULL, 2, NULL, '2021-01-31 14:18:24'),
(22, 2, 24305, 51, 'rrr', 'rrr', '44.00', ' ', 1, NULL, 2, NULL, '2021-01-31 14:18:24'),
(23, 2, 24305, 44, 'new one', 'new-one', '55.00', 'sss', NULL, 1, NULL, 3, '2021-01-31 14:18:53'),
(24, 2, 24305, 44, 'new one', 'new-one', '55.00', 'sss', NULL, 1, NULL, 3, '2021-01-31 14:18:53'),
(25, 2, 24305, 44, 'new one', 'new-one', '55.00', 'sss', NULL, 1, NULL, 3, '2021-01-31 14:18:53'),
(26, 2, 24305, 44, 'new one', 'new-one', '55.00', 'sss', NULL, 1, NULL, 3, '2021-01-31 14:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_services`
--

CREATE TABLE `product_services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_tax`
--

CREATE TABLE `product_tax` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `code`, `rate`, `date`) VALUES
(1, 'AED', '3.6732', '2020-06-14'),
(2, 'AFN', '77.59138', '2020-06-14'),
(3, 'ALL', '110.8155', '2020-06-14'),
(4, 'AMD', '481.814', '2020-06-14'),
(5, 'AOA', '600.099', '2020-06-14'),
(6, 'ARS', '69.38714', '2020-06-14'),
(7, 'AUD', '1.45934', '2020-06-14'),
(8, 'AWG', '1.8', '2020-06-14'),
(9, 'AZN', '1.7', '2020-06-14'),
(10, 'BBD', '2.01949', '2020-06-14'),
(11, 'BDT', '84.95716', '2020-06-14'),
(12, 'BGN', '1.73798', '2020-06-14'),
(13, 'BHD', '0.37708', '2020-06-14'),
(14, 'BIF', '1910.1', '2020-06-14'),
(15, 'BMD', '1', '2020-06-14'),
(16, 'BND', '1.39063', '2020-06-14'),
(17, 'BRL', '5.04955', '2020-06-14'),
(18, 'BTN', '', '2020-06-14'),
(19, 'BWP', '11.6776', '2020-06-14'),
(20, 'BYR', '', '2020-06-14'),
(21, 'BZD', '2.01612', '2020-06-14'),
(22, 'CAD', '1.3587', '2020-06-14'),
(23, 'CHF', '0.95193', '2020-06-14'),
(24, 'CLP', '791.83', '2020-06-14'),
(25, 'CNY', '7.0733', '2020-06-14'),
(26, 'COP', '3776.69', '2020-06-14'),
(27, 'CRC', '579.11026', '2020-06-14'),
(28, 'CUC', '1', '2020-06-14'),
(29, 'CVE', '98.405', '2020-06-14'),
(30, 'CZK', '23.75794', '2020-06-14'),
(31, 'DJF', '177.729', '2020-06-14'),
(32, 'DKK', '6.6203', '2020-06-14'),
(33, 'DOP', '58.405', '2020-06-14'),
(34, 'DZD', '128.51363', '2020-06-14'),
(35, 'EGP', '16.18149', '2020-06-14'),
(36, 'ERN', '', '2020-06-14'),
(37, 'ETB', '34.4', '2020-06-14'),
(38, 'EUR', '0.88851', '2020-06-14'),
(39, 'FJD', '2.1951', '2020-06-14'),
(40, 'GBP', '0.7972', '2020-06-14'),
(41, 'GEL', '3.05', '2020-06-14'),
(42, 'GHS', '5.7805', '2020-06-14'),
(43, 'GIP', '0.7972', '2020-06-14'),
(44, 'GNF', '9460.45', '2020-06-14'),
(45, 'GTQ', '7.69408', '2020-06-14'),
(46, 'GYD', '209.43027', '2020-06-14'),
(47, 'HKD', '7.7498', '2020-06-14'),
(48, 'HNL', '24.941', '2020-06-14'),
(49, 'HRK', '6.72254', '2020-06-14'),
(50, 'HTG', '107.76859', '2020-06-14'),
(51, 'HUF', '307.54', '2020-06-14'),
(52, 'IDR', '14217.361', '2020-06-14'),
(53, 'ILS', '3.4619', '2020-06-14'),
(54, 'INR', '75.9608', '2020-06-14'),
(55, 'IQD', '1190.05', '2020-06-14'),
(56, 'ISK', '135.127', '2020-06-14'),
(57, 'JMD', '140.52593', '2020-06-14'),
(58, 'JOD', '0.70905', '2020-06-14'),
(59, 'JPY', '107.349', '2020-06-14'),
(60, 'KES', '106.46093', '2020-06-14'),
(61, 'KGS', '74.78584', '2020-06-14'),
(62, 'KHR', '4091.2', '2020-06-14'),
(63, 'KMF', '437.872', '2020-06-14'),
(64, 'KWD', '0.30797', '2020-06-14'),
(65, 'KYD', '0.83348', '2020-06-14'),
(66, 'KZT', '404.31862', '2020-06-14'),
(67, 'LAK', '9010.45', '2020-06-14'),
(68, 'LBP', '1511.43755', '2020-06-14'),
(69, 'LKR', '185.37567', '2020-06-14'),
(70, 'LRD', '199.26', '2020-06-14'),
(71, 'LSL', '17.1', '2020-06-14'),
(72, 'MAD', '9.6755', '2020-06-14'),
(73, 'MDL', '17.17804', '2020-06-14'),
(74, 'MGA', '', '2020-06-14'),
(75, 'MMK', '1400.194', '2020-06-14'),
(76, 'MNT', '', '2020-06-14'),
(77, 'MRO', '', '2020-06-14'),
(78, 'MUR', '39.70737', '2020-06-14'),
(79, 'MVR', '15.5', '2020-06-14'),
(80, 'MWK', '740.05', '2020-06-14'),
(81, 'MXN', '22.2003', '2020-06-14'),
(82, 'MYR', '4.27072', '2020-06-14'),
(83, 'MZN', '69.6835', '2020-06-14'),
(84, 'NAD', '17.121', '2020-06-14'),
(85, 'NGN', '387.52', '2020-06-14'),
(86, 'NIO', '34.3', '2020-06-14'),
(87, 'NOK', '9.6223', '2020-06-14'),
(88, 'NPR', '121.40247', '2020-06-14'),
(89, 'NZD', '1.55107', '2020-06-14'),
(90, 'OMR', '0.38503', '2020-06-14'),
(91, 'PAB', '1.00019', '2020-06-14'),
(92, 'PEN', '3.46515', '2020-06-14'),
(93, 'PGK', '3.45', '2020-06-14'),
(94, 'PHP', '50.2806', '2020-06-14'),
(95, 'PKR', '164.51', '2020-06-14'),
(96, 'PLN', '3.9426', '2020-06-14'),
(97, 'PYG', '6691.42155', '2020-06-14'),
(98, 'QAR', '3.64143', '2020-06-14'),
(99, 'RON', '4.29532', '2020-06-14'),
(100, 'RSD', '104.4402', '2020-06-14'),
(101, 'RUB', '69.8931', '2020-06-14'),
(102, 'RWF', '950.05', '2020-06-14'),
(103, 'SAR', '3.75399', '2020-06-14'),
(104, 'SBD', '8.32912', '2020-06-14'),
(105, 'SCR', '17.59155', '2020-06-14'),
(106, 'SDG', '55.305', '2020-06-14'),
(107, 'SEK', '9.3155', '2020-06-14'),
(108, 'SLL', '9755.5', '2020-06-14'),
(109, 'SOS', '583.05', '2020-06-14'),
(110, 'SRD', '7.45835', '2020-06-14'),
(111, 'SZL', '17.121', '2020-06-14'),
(112, 'THB', '30.9815', '2020-06-14'),
(113, 'TJS', '10.28185', '2020-06-14'),
(114, 'TMT', '3.5', '2020-06-14'),
(115, 'TND', '2.85065', '2020-06-14'),
(116, 'TOP', '2.2711', '2020-06-14'),
(117, 'TRY', '6.8106', '2020-06-14'),
(118, 'TTD', '6.75027', '2020-06-14'),
(119, 'TWD', '29.64478', '2020-06-14'),
(120, 'UAH', '26.73694', '2020-06-14'),
(121, 'UGX', '3720.74805', '2020-06-14'),
(122, 'USD', '1', '2020-06-14'),
(123, 'UYU', '42.84096', '2020-06-14'),
(124, 'UZS', '10160.5', '2020-06-14'),
(125, 'VND', '23266.665', '2020-06-14'),
(126, 'VUV', '', '2020-06-14'),
(127, 'WST', '', '2020-06-14'),
(128, 'XAF', '580.42432', '2020-06-14'),
(129, 'XCD', '2.70269', '2020-06-14'),
(130, 'XOF', '580.53', '2020-06-14'),
(131, 'XPF', '', '2020-06-14'),
(132, 'YER', '250.3625', '2020-06-14'),
(133, 'ZAR', '17.0361', '2020-06-14'),
(134, 'ZMW', '18.33854', '2020-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `hero_img` varchar(255) DEFAULT 'assets/front/img/hside.jpg',
  `keywords` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `terms_service` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `footer_about` text DEFAULT NULL,
  `admin_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `copyright` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `pagination_limit` int(11) DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_analytics` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `site_color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `site_font` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `layout` int(11) DEFAULT NULL,
  `site_info` int(11) NOT NULL DEFAULT 1,
  `about_info` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ind_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `purchase_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `enable_captcha` int(11) DEFAULT 0,
  `enable_registration` int(11) DEFAULT 1,
  `enable_email_verify` int(11) DEFAULT 0,
  `enable_paypal` int(11) NOT NULL DEFAULT 0,
  `enable_delete_invoice` int(11) NOT NULL DEFAULT 1,
  `enable_multilingual` int(11) NOT NULL DEFAULT 1,
  `enable_discount` int(11) DEFAULT 0,
  `enable_blog` int(11) NOT NULL DEFAULT 0,
  `enable_faq` int(11) NOT NULL DEFAULT 0,
  `enable_frontend` int(11) DEFAULT 1,
  `captcha_site_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `captcha_secret_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `paypal_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `paypal_mode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'sandbox',
  `paypal_payment` int(11) NOT NULL DEFAULT 0,
  `stripe_payment` int(11) NOT NULL DEFAULT 0,
  `publish_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `secret_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mail_protocol` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mail_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mail_host` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mail_port` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT 'ssl',
  `mail_username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mail_password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'USD',
  `country` int(11) DEFAULT 178,
  `trial_days` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '15',
  `lang` int(11) DEFAULT 1,
  `time_zone` int(11) DEFAULT 51,
  `version` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'v1.0',
  `enable_paytabs` int(11) DEFAULT 0,
  `paytabs_merchant_email` varchar(255) DEFAULT NULL,
  `paytabs_secret_key` varchar(255) DEFAULT NULL,
  `paytabs_merchant_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_title`, `favicon`, `logo`, `hero_img`, `keywords`, `description`, `terms_service`, `footer_about`, `admin_email`, `mobile`, `copyright`, `pagination_limit`, `facebook`, `instagram`, `twitter`, `linkedin`, `google_analytics`, `site_color`, `site_font`, `layout`, `site_info`, `about_info`, `ind_code`, `purchase_code`, `enable_captcha`, `enable_registration`, `enable_email_verify`, `enable_paypal`, `enable_delete_invoice`, `enable_multilingual`, `enable_discount`, `enable_blog`, `enable_faq`, `enable_frontend`, `captcha_site_key`, `captcha_secret_key`, `paypal_email`, `paypal_mode`, `paypal_payment`, `stripe_payment`, `publish_key`, `secret_key`, `mail_protocol`, `mail_title`, `mail_host`, `mail_port`, `mail_encryption`, `mail_username`, `mail_password`, `currency`, `country`, `trial_days`, `lang`, `time_zone`, `version`, `enable_paytabs`, `paytabs_merchant_email`, `paytabs_secret_key`, `paytabs_merchant_id`) VALUES
(1, 'System', 'System', 'uploads/thumbnail/logo_thumb-100x74.png', 'uploads/medium/logo_medium-259x194.png', 'uploads/big/logo_big-259x194.png', '', 'Simplifies invoices and expense tracking, helping you save time and money. Create your first invoice in less than 60 seconds.', '<h2><strong>Terms of service and the law</strong></h2>\r\n\r\n<p>A business organization needs a terms of service agreement on its site while making sure it is also included within customer contracts. It\'s important to make this link and show it to customers so that they understand everything clearly.</p>\r\n\r\n<p>It is also very important to include an additional step where customers can confirm that they\'ve read and that they agree with your terms of service.</p>\r\n\r\n<p>Additionally, for all organizations that offer services or products online, no matter where they are located, it\'s important that their terms of service are compliant with E-commerce Regulations and Consumer Information Regulations.</p>\r\n\r\n<p>On top of that, you should make sure to check the Sale of Goods and Supply of Services Act of 1980 to avoid any legal difficulties and ensure the safety of your business.</p>\r\n\r\n<p>When it comes to Australia, for example, websites are not allowed to misrepresent themselves. The information located on a site should not be deceptive or misleading in any way when talking about services or products. This is how a website can comply with consumer law in Australia.</p>\r\n\r\n<p>There have been a few cases where the law sided with the customers because the terms of service page was simply too large and the court decided that it was very unlikely that anyone would have the time or patience to read the whole thing.</p>\r\n\r\n<p>A different case where terms of service were questioned is where a major retailer didn\'t put them in a visible spot. This is also very important to keep in mind when placing a terms of service section.</p>\r\n', 'Simplifies invoices and expense tracking, helping you save time and money. Create your first invoice in less than 60 seconds.', 'admin@admin.com', '', '© 2019 All rights reserved.', 0, 'facebook.com', 'facebook.com', '', 'linkedin', '', '', '', 0, 1, 'SW52YWxpZCBMaWNlbnNlIEtleQ==', '504ead1c736a95448cf890356e84b3ddce838a17', '635dea49-1bcd-4db5-a48a-defe9e0eaac4', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, '6Ld0SpcUAAAAAFpKkQaTwbENLukNG_hMpPpykHt9', '', 'BG8QDGXFFA8S2', 'sandbox', 1, 1, 'pk_test_QoDPEv63VwMGjGhc05rtTFNk', 'sk_test_COdidxnmv0IrocJAOvWLdJyq', 'smtp', '', 'smtp.gmail.com', '465', 'ssl', '', '', 'USD', 178, '10', 1, 51, 'v1.8', 1, 'momtaz.hussein@gmail.com', 'S6JN9BWMH9-JBBJGBRLZG-DWZW9RLW9H	', '8362');

-- --------------------------------------------------------

--
-- Table structure for table `site_contacts`
--

CREATE TABLE `site_contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tag_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `post_id`, `tag`, `tag_slug`, `created_at`) VALUES
(1, 1, '', '', '2020-11-26 11:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rate` decimal(10,1) DEFAULT 0.0,
  `number` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `details` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `is_invoices` int(11) DEFAULT NULL,
  `is_recoverable` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`id`, `user_id`, `business_id`, `type`, `name`, `rate`, `number`, `details`, `is_invoices`, `is_recoverable`) VALUES
(1, 2, 24305, 1, 'vvvv', '5.0', '123456', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_type`
--

CREATE TABLE `tax_type` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tax_type`
--

INSERT INTO `tax_type` (`id`, `user_id`, `business_id`, `name`) VALUES
(1, 2, 24305, 'tax');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `time_zone`
--

CREATE TABLE `time_zone` (
  `id` int(10) NOT NULL,
  `name` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `time_zone`
--

INSERT INTO `time_zone` (`id`, `name`) VALUES
(1, 'Europe/Andorra'),
(2, 'Asia/Dubai'),
(3, 'Asia/Kabul'),
(4, 'America/Antigua'),
(5, 'America/Anguilla'),
(6, 'Europe/Tirane'),
(7, 'Asia/Yerevan'),
(8, 'Africa/Luanda'),
(9, 'Antarctica/McMurdo'),
(10, 'Antarctica/Casey'),
(11, 'Antarctica/Davis'),
(12, 'Antarctica/DumontDUrville'),
(13, 'Antarctica/Mawson'),
(14, 'Antarctica/Palmer'),
(15, 'Antarctica/Rothera'),
(16, 'Antarctica/Syowa'),
(17, 'Antarctica/Troll'),
(18, 'Antarctica/Vostok'),
(19, 'America/Argentina/Buenos_Aires'),
(20, 'America/Argentina/Cordoba'),
(21, 'America/Argentina/Salta'),
(22, 'America/Argentina/Jujuy'),
(23, 'America/Argentina/Tucuman'),
(24, 'America/Argentina/Catamarca'),
(25, 'America/Argentina/La_Rioja'),
(26, 'America/Argentina/San_Juan'),
(27, 'America/Argentina/Mendoza'),
(28, 'America/Argentina/San_Luis'),
(29, 'America/Argentina/Rio_Gallegos'),
(30, 'America/Argentina/Ushuaia'),
(31, 'Pacific/Pago_Pago'),
(32, 'Europe/Vienna'),
(33, 'Australia/Lord_Howe'),
(34, 'Antarctica/Macquarie'),
(35, 'Australia/Hobart'),
(36, 'Australia/Currie'),
(37, 'Australia/Melbourne'),
(38, 'Australia/Sydney'),
(39, 'Australia/Broken_Hill'),
(40, 'Australia/Brisbane'),
(41, 'Australia/Lindeman'),
(42, 'Australia/Adelaide'),
(43, 'Australia/Darwin'),
(44, 'Australia/Perth'),
(45, 'Australia/Eucla'),
(46, 'America/Aruba'),
(47, 'Europe/Mariehamn'),
(48, 'Asia/Baku'),
(49, 'Europe/Sarajevo'),
(50, 'America/Barbados'),
(51, 'Asia/Dhaka'),
(52, 'Europe/Brussels'),
(53, 'Africa/Ouagadougou'),
(54, 'Europe/Sofia'),
(55, 'Asia/Bahrain'),
(56, 'Africa/Bujumbura'),
(57, 'Africa/Porto-Novo'),
(58, 'America/St_Barthelemy'),
(59, 'Atlantic/Bermuda'),
(60, 'Asia/Brunei'),
(61, 'America/La_Paz'),
(62, 'America/Kralendijk'),
(63, 'America/Noronha'),
(64, 'America/Belem'),
(65, 'America/Fortaleza'),
(66, 'America/Recife'),
(67, 'America/Araguaina'),
(68, 'America/Maceio'),
(69, 'America/Bahia'),
(70, 'America/Sao_Paulo'),
(71, 'America/Campo_Grande'),
(72, 'America/Cuiaba'),
(73, 'America/Santarem'),
(74, 'America/Porto_Velho'),
(75, 'America/Boa_Vista'),
(76, 'America/Manaus'),
(77, 'America/Eirunepe'),
(78, 'America/Rio_Branco'),
(79, 'America/Nassau'),
(80, 'Asia/Thimphu'),
(81, 'Africa/Gaborone'),
(82, 'Europe/Minsk'),
(83, 'America/Belize'),
(84, 'America/St_Johns'),
(85, 'America/Halifax'),
(86, 'America/Glace_Bay'),
(87, 'America/Moncton'),
(88, 'America/Goose_Bay'),
(89, 'America/Blanc-Sablon'),
(90, 'America/Toronto'),
(91, 'America/Nipigon'),
(92, 'America/Thunder_Bay'),
(93, 'America/Iqaluit'),
(94, 'America/Pangnirtung'),
(95, 'America/Atikokan'),
(96, 'America/Winnipeg'),
(97, 'America/Rainy_River'),
(98, 'America/Resolute'),
(99, 'America/Rankin_Inlet'),
(100, 'America/Regina'),
(101, 'America/Swift_Current'),
(102, 'America/Edmonton'),
(103, 'America/Cambridge_Bay'),
(104, 'America/Yellowknife'),
(105, 'America/Inuvik'),
(106, 'America/Creston'),
(107, 'America/Dawson_Creek'),
(108, 'America/Fort_Nelson'),
(109, 'America/Vancouver'),
(110, 'America/Whitehorse'),
(111, 'America/Dawson'),
(112, 'Indian/Cocos'),
(113, 'Africa/Kinshasa'),
(114, 'Africa/Lubumbashi'),
(115, 'Africa/Bangui'),
(116, 'Africa/Brazzaville'),
(117, 'Europe/Zurich'),
(118, 'Africa/Abidjan'),
(119, 'Pacific/Rarotonga'),
(120, 'America/Santiago'),
(121, 'America/Punta_Arenas'),
(122, 'Pacific/Easter'),
(123, 'Africa/Douala'),
(124, 'Asia/Shanghai'),
(125, 'Asia/Urumqi'),
(126, 'America/Bogota'),
(127, 'America/Costa_Rica'),
(128, 'America/Havana'),
(129, 'Atlantic/Cape_Verde'),
(130, 'America/Curacao'),
(131, 'Indian/Christmas'),
(132, 'Asia/Nicosia'),
(133, 'Asia/Famagusta'),
(134, 'Europe/Prague'),
(135, 'Europe/Berlin'),
(136, 'Europe/Busingen'),
(137, 'Africa/Djibouti'),
(138, 'Europe/Copenhagen'),
(139, 'America/Dominica'),
(140, 'America/Santo_Domingo'),
(141, 'Africa/Algiers'),
(142, 'America/Guayaquil'),
(143, 'Pacific/Galapagos'),
(144, 'Europe/Tallinn'),
(145, 'Africa/Cairo'),
(146, 'Africa/El_Aaiun'),
(147, 'Africa/Asmara'),
(148, 'Europe/Madrid'),
(149, 'Africa/Ceuta'),
(150, 'Atlantic/Canary'),
(151, 'Africa/Addis_Ababa'),
(152, 'Europe/Helsinki'),
(153, 'Pacific/Fiji'),
(154, 'Atlantic/Stanley'),
(155, 'Pacific/Chuuk'),
(156, 'Pacific/Pohnpei'),
(157, 'Pacific/Kosrae'),
(158, 'Atlantic/Faroe'),
(159, 'Europe/Paris'),
(160, 'Africa/Libreville'),
(161, 'Europe/London'),
(162, 'America/Grenada'),
(163, 'Asia/Tbilisi'),
(164, 'America/Cayenne'),
(165, 'Europe/Guernsey'),
(166, 'Africa/Accra'),
(167, 'Europe/Gibraltar'),
(168, 'America/Nuuk'),
(169, 'America/Danmarkshavn'),
(170, 'America/Scoresbysund'),
(171, 'America/Thule'),
(172, 'Africa/Banjul'),
(173, 'Africa/Conakry'),
(174, 'America/Guadeloupe'),
(175, 'Africa/Malabo'),
(176, 'Europe/Athens'),
(177, 'Atlantic/South_Georgia'),
(178, 'America/Guatemala'),
(179, 'Pacific/Guam'),
(180, 'Africa/Bissau'),
(181, 'America/Guyana'),
(182, 'Asia/Hong_Kong'),
(183, 'America/Tegucigalpa'),
(184, 'Europe/Zagreb'),
(185, 'America/Port-au-Prince'),
(186, 'Europe/Budapest'),
(187, 'Asia/Jakarta'),
(188, 'Asia/Pontianak'),
(189, 'Asia/Makassar'),
(190, 'Asia/Jayapura'),
(191, 'Europe/Dublin'),
(192, 'Asia/Jerusalem'),
(193, 'Europe/Isle_of_Man'),
(194, 'Asia/Kolkata'),
(195, 'Indian/Chagos'),
(196, 'Asia/Baghdad'),
(197, 'Asia/Tehran'),
(198, 'Atlantic/Reykjavik'),
(199, 'Europe/Rome'),
(200, 'Europe/Jersey'),
(201, 'America/Jamaica'),
(202, 'Asia/Amman'),
(203, 'Asia/Tokyo'),
(204, 'Africa/Nairobi'),
(205, 'Asia/Bishkek'),
(206, 'Asia/Phnom_Penh'),
(207, 'Pacific/Tarawa'),
(208, 'Pacific/Enderbury'),
(209, 'Pacific/Kiritimati'),
(210, 'Indian/Comoro'),
(211, 'America/St_Kitts'),
(212, 'Asia/Pyongyang'),
(213, 'Asia/Seoul'),
(214, 'Asia/Kuwait'),
(215, 'America/Cayman'),
(216, 'Asia/Almaty'),
(217, 'Asia/Qyzylorda'),
(218, 'Asia/Qostanay'),
(219, 'Asia/Aqtobe'),
(220, 'Asia/Aqtau'),
(221, 'Asia/Atyrau'),
(222, 'Asia/Oral'),
(223, 'Asia/Vientiane'),
(224, 'Asia/Beirut'),
(225, 'America/St_Lucia'),
(226, 'Europe/Vaduz'),
(227, 'Asia/Colombo'),
(228, 'Africa/Monrovia'),
(229, 'Africa/Maseru'),
(230, 'Europe/Vilnius'),
(231, 'Europe/Luxembourg'),
(232, 'Europe/Riga'),
(233, 'Africa/Tripoli'),
(234, 'Africa/Casablanca'),
(235, 'Europe/Monaco'),
(236, 'Europe/Chisinau'),
(237, 'Europe/Podgorica'),
(238, 'America/Marigot'),
(239, 'Indian/Antananarivo'),
(240, 'Pacific/Majuro'),
(241, 'Pacific/Kwajalein'),
(242, 'Europe/Skopje'),
(243, 'Africa/Bamako'),
(244, 'Asia/Yangon'),
(245, 'Asia/Ulaanbaatar'),
(246, 'Asia/Hovd'),
(247, 'Asia/Choibalsan'),
(248, 'Asia/Macau'),
(249, 'Pacific/Saipan'),
(250, 'America/Martinique'),
(251, 'Africa/Nouakchott'),
(252, 'America/Montserrat'),
(253, 'Europe/Malta'),
(254, 'Indian/Mauritius'),
(255, 'Indian/Maldives'),
(256, 'Africa/Blantyre'),
(257, 'America/Mexico_City'),
(258, 'America/Cancun'),
(259, 'America/Merida'),
(260, 'America/Monterrey'),
(261, 'America/Matamoros'),
(262, 'America/Mazatlan'),
(263, 'America/Chihuahua'),
(264, 'America/Ojinaga'),
(265, 'America/Hermosillo'),
(266, 'America/Tijuana'),
(267, 'America/Bahia_Banderas'),
(268, 'Asia/Kuala_Lumpur'),
(269, 'Asia/Kuching'),
(270, 'Africa/Maputo'),
(271, 'Africa/Windhoek'),
(272, 'Pacific/Noumea'),
(273, 'Africa/Niamey'),
(274, 'Pacific/Norfolk'),
(275, 'Africa/Lagos'),
(276, 'America/Managua'),
(277, 'Europe/Amsterdam'),
(278, 'Europe/Oslo'),
(279, 'Asia/Kathmandu'),
(280, 'Pacific/Nauru'),
(281, 'Pacific/Niue'),
(282, 'Pacific/Auckland'),
(283, 'Pacific/Chatham'),
(284, 'Asia/Muscat'),
(285, 'America/Panama'),
(286, 'America/Lima'),
(287, 'Pacific/Tahiti'),
(288, 'Pacific/Marquesas'),
(289, 'Pacific/Gambier'),
(290, 'Pacific/Port_Moresby'),
(291, 'Pacific/Bougainville'),
(292, 'Asia/Manila'),
(293, 'Asia/Karachi'),
(294, 'Europe/Warsaw'),
(295, 'America/Miquelon'),
(296, 'Pacific/Pitcairn'),
(297, 'America/Puerto_Rico'),
(298, 'Asia/Gaza'),
(299, 'Asia/Hebron'),
(300, 'Europe/Lisbon'),
(301, 'Atlantic/Madeira'),
(302, 'Atlantic/Azores'),
(303, 'Pacific/Palau'),
(304, 'America/Asuncion'),
(305, 'Asia/Qatar'),
(306, 'Indian/Reunion'),
(307, 'Europe/Bucharest'),
(308, 'Europe/Belgrade'),
(309, 'Europe/Kaliningrad'),
(310, 'Europe/Moscow'),
(311, 'Europe/Simferopol'),
(312, 'Europe/Kirov'),
(313, 'Europe/Astrakhan'),
(314, 'Europe/Volgograd'),
(315, 'Europe/Saratov'),
(316, 'Europe/Ulyanovsk'),
(317, 'Europe/Samara'),
(318, 'Asia/Yekaterinburg'),
(319, 'Asia/Omsk'),
(320, 'Asia/Novosibirsk'),
(321, 'Asia/Barnaul'),
(322, 'Asia/Tomsk'),
(323, 'Asia/Novokuznetsk'),
(324, 'Asia/Krasnoyarsk'),
(325, 'Asia/Irkutsk'),
(326, 'Asia/Chita'),
(327, 'Asia/Yakutsk'),
(328, 'Asia/Khandyga'),
(329, 'Asia/Vladivostok'),
(330, 'Asia/Ust-Nera'),
(331, 'Asia/Magadan'),
(332, 'Asia/Sakhalin'),
(333, 'Asia/Srednekolymsk'),
(334, 'Asia/Kamchatka'),
(335, 'Asia/Anadyr'),
(336, 'Africa/Kigali'),
(337, 'Asia/Riyadh'),
(338, 'Pacific/Guadalcanal'),
(339, 'Indian/Mahe'),
(340, 'Africa/Khartoum'),
(341, 'Europe/Stockholm'),
(342, 'Asia/Singapore'),
(343, 'Atlantic/St_Helena'),
(344, 'Europe/Ljubljana'),
(345, 'Arctic/Longyearbyen'),
(346, 'Europe/Bratislava'),
(347, 'Africa/Freetown'),
(348, 'Europe/San_Marino'),
(349, 'Africa/Dakar'),
(350, 'Africa/Mogadishu'),
(351, 'America/Paramaribo'),
(352, 'Africa/Juba'),
(353, 'Africa/Sao_Tome'),
(354, 'America/El_Salvador'),
(355, 'America/Lower_Princes'),
(356, 'Asia/Damascus'),
(357, 'Africa/Mbabane'),
(358, 'America/Grand_Turk'),
(359, 'Africa/Ndjamena'),
(360, 'Indian/Kerguelen'),
(361, 'Africa/Lome'),
(362, 'Asia/Bangkok'),
(363, 'Asia/Dushanbe'),
(364, 'Pacific/Fakaofo'),
(365, 'Asia/Dili'),
(366, 'Asia/Ashgabat'),
(367, 'Africa/Tunis'),
(368, 'Pacific/Tongatapu'),
(369, 'Europe/Istanbul'),
(370, 'America/Port_of_Spain'),
(371, 'Pacific/Funafuti'),
(372, 'Asia/Taipei'),
(373, 'Africa/Dar_es_Salaam'),
(374, 'Europe/Kiev'),
(375, 'Europe/Uzhgorod'),
(376, 'Europe/Zaporozhye'),
(377, 'Africa/Kampala'),
(378, 'Pacific/Midway'),
(379, 'Pacific/Wake'),
(380, 'America/New_York'),
(381, 'America/Detroit'),
(382, 'America/Kentucky/Louisville'),
(383, 'America/Kentucky/Monticello'),
(384, 'America/Indiana/Indianapolis'),
(385, 'America/Indiana/Vincennes'),
(386, 'America/Indiana/Winamac'),
(387, 'America/Indiana/Marengo'),
(388, 'America/Indiana/Petersburg'),
(389, 'America/Indiana/Vevay'),
(390, 'America/Chicago'),
(391, 'America/Indiana/Tell_City'),
(392, 'America/Indiana/Knox'),
(393, 'America/Menominee'),
(394, 'America/North_Dakota/Center'),
(395, 'America/North_Dakota/New_Salem'),
(396, 'America/North_Dakota/Beulah'),
(397, 'America/Denver'),
(398, 'America/Boise'),
(399, 'America/Phoenix'),
(400, 'America/Los_Angeles'),
(401, 'America/Anchorage'),
(402, 'America/Juneau'),
(403, 'America/Sitka'),
(404, 'America/Metlakatla'),
(405, 'America/Yakutat'),
(406, 'America/Nome'),
(407, 'America/Adak'),
(408, 'Pacific/Honolulu'),
(409, 'America/Montevideo'),
(410, 'Asia/Samarkand'),
(411, 'Asia/Tashkent'),
(412, 'Europe/Vatican'),
(413, 'America/St_Vincent'),
(414, 'America/Caracas'),
(415, 'America/Tortola'),
(416, 'America/St_Thomas'),
(417, 'Asia/Ho_Chi_Minh'),
(418, 'Pacific/Efate'),
(419, 'Pacific/Wallis'),
(420, 'Pacific/Apia'),
(421, 'Asia/Aden'),
(422, 'Indian/Mayotte'),
(423, 'Africa/Johannesburg'),
(424, 'Africa/Lusaka'),
(425, 'Africa/Harare');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(100) DEFAULT 'user',
  `parent_id` int(11) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'registered',
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `layouts` varchar(255) NOT NULL DEFAULT 'style1',
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `paypal_payment` int(11) DEFAULT 1,
  `stripe_payment` int(11) DEFAULT 1,
  `paypal_email` varchar(255) DEFAULT NULL,
  `publish_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `email_verified` int(11) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `verify_code` varchar(255) DEFAULT NULL,
  `hit` int(11) DEFAULT 0,
  `trial_expire` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `title`, `slug`, `email`, `user_name`, `password`, `role`, `parent_id`, `account_type`, `user_type`, `phone`, `address`, `country`, `city`, `state`, `postcode`, `layouts`, `image`, `thumb`, `paypal_payment`, `stripe_payment`, `paypal_email`, `publish_key`, `secret_key`, `status`, `email_verified`, `remember_token`, `verify_code`, `hit`, `trial_expire`, `created_at`) VALUES
(1, NULL, NULL, 'admin', 'admin@admin.com', 'admin', '$2y$10$N1v3u1eVkplSzquXUocssuUHPCVBOx8J3EiWIZEZKZLD4z5DDcMRq', 'admin', NULL, NULL, 'registered', NULL, NULL, NULL, NULL, NULL, NULL, 'style1', NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, '2020-11-09 19:56:52'),
(2, 'momtaz', NULL, 'momtaz', 'mmm@mmm.mmm', 'momtaz', '$2y$10$N1v3u1eVkplSzquXUocssuUHPCVBOx8J3EiWIZEZKZLD4z5DDcMRq', 'user', NULL, 'pro', 'registered', '', '', 186, '', '', '', 'style1', NULL, 'assets/front/img/avatar.png', 1, 1, NULL, NULL, NULL, 1, NULL, NULL, 'c3992e9a68c5ae12bd18488bc579b30d', 0, '2020-11-09', '2020-11-09 23:59:27'),
(3, 'mez', NULL, 'mez', 'momtaz.hussein@gmail.com', 'mez', '$2y$10$N1v3u1eVkplSzquXUocssuUHPCVBOx8J3EiWIZEZKZLD4z5DDcMRq', 'user', NULL, 'pro', 'registered', NULL, NULL, NULL, NULL, NULL, NULL, 'style1', NULL, 'assets/front/img/avatar.png', 1, 1, NULL, NULL, NULL, 1, NULL, NULL, '68d30a9594728bc39aa24be94b319d21', 0, '2021-03-28', '2021-03-28 18:45:17'),
(4, 'rrrr', NULL, 'rrrr', 'rrrr@rrr.rrrr', 'rrrr', '$2y$10$N1v3u1eVkplSzquXUocssuUHPCVBOx8J3EiWIZEZKZLD4z5DDcMRq', 'user', NULL, 'pro', 'registered', NULL, NULL, NULL, NULL, NULL, NULL, 'style1', NULL, 'assets/front/img/avatar.png', 1, 1, NULL, NULL, NULL, 1, NULL, NULL, '06997f04a7db92466a2baa6ebc8b872d', 0, '2021-03-28', '2021-03-28 19:43:07'),
(5, 'staff', NULL, 'staff', 'staff.staff@gmail.com', 'staff', '$2y$10$N1v3u1eVkplSzquXUocssuUHPCVBOx8J3EiWIZEZKZLD4z5DDcMRq', 'sub_user', 2, 'pro', 'registered', NULL, NULL, NULL, NULL, NULL, NULL, 'style1', NULL, 'assets/front/img/avatar.png', 1, 1, NULL, NULL, NULL, 1, NULL, NULL, '68d30a9594728bc39aa24be94b319d21', 0, '2021-03-28', '2021-03-28 18:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `business_id` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `is_send_invoice` varchar(255) DEFAULT NULL,
  `approve` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `invitation_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`id`, `parent_id`, `business_id`, `name`, `country`, `city`, `address`, `image`, `thumb`, `email`, `password`, `position`, `role`, `is_send_invoice`, `approve`, `status`, `created_at`, `invitation_status`, `slug`) VALUES
(2, 39, '31278', 'mmm', 186, '', '', NULL, NULL, 'mmmmm.mmm@gmail.com', '$2y$10$wJiGuzlfK7V4.X53q5x2sOpkbpFSNO5GjzaGYm7ltCVfNKB9d8jO6', '1', 'editor', NULL, 1, 1, '2021-08-03 05:10:58', NULL, NULL),
(3, 41, '29317', 'sdfsdfsdf', NULL, NULL, NULL, NULL, NULL, 'wreewrw@wqeqwe.jjk', '$2y$10$hpGk.VsRljhgsp4JkGh8VO.gv.fvS77AVthFkEglHdz.3hHIsVamy', '1', 'subadmin', NULL, 0, 1, '2021-08-08 03:42:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_role_feature`
--

CREATE TABLE `users_role_feature` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_role_feature`
--

INSERT INTO `users_role_feature` (`id`, `name`, `slug`) VALUES
(1, 'Customers', 'customers'),
(2, 'Products', 'products'),
(3, 'Estimates', 'estimates'),
(4, 'Invoices', 'invoices'),
(5, 'Expenses', 'expenses'),
(6, 'Bills', 'bills'),
(7, 'Reports', 'reports'),
(8, 'Vendors', 'vendors');

-- --------------------------------------------------------

--
-- Table structure for table `users_role_feature_assign`
--

CREATE TABLE `users_role_feature_assign` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `business_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `feature_slug` varchar(255) DEFAULT NULL,
  `view_only` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_role_feature_assign`
--

INSERT INTO `users_role_feature_assign` (`id`, `role`, `business_id`, `feature_id`, `feature_slug`, `view_only`) VALUES
(6, 'subadmin', 31278, 2, 'products', 0),
(7, 'editor', 31278, 2, 'products', 0),
(8, 'editor', 31278, 3, 'estimates', 0),
(9, 'editor', 31278, 4, 'invoices', 0),
(10, 'subadmin', 75326, 1, 'customers', 0),
(11, 'subadmin', 75326, 2, 'products', 0),
(12, 'subadmin', 75326, 3, 'estimates', 0),
(13, 'subadmin', 75326, 4, 'invoices', 0),
(14, 'subadmin', 75326, 5, 'expenses', 0),
(15, 'subadmin', 75326, 6, 'bills', 0),
(16, 'subadmin', 75326, 7, 'reports', 0),
(17, 'subadmin', 75326, 8, 'vendors', 0),
(18, 'subadmin', 36925, 1, 'customers', 0),
(19, 'subadmin', 36925, 2, 'products', 0),
(20, 'subadmin', 36925, 3, 'estimates', 0),
(21, 'subadmin', 36925, 4, 'invoices', 0),
(22, 'subadmin', 36925, 5, 'expenses', 0),
(23, 'subadmin', 36925, 6, 'bills', 0),
(24, 'subadmin', 36925, 7, 'reports', 0),
(25, 'subadmin', 36925, 8, 'vendors', 0),
(26, 'subadmin', 14630, 1, 'customers', 0),
(27, 'subadmin', 28109, 1, 'customers', 0),
(28, 'subadmin', 28109, 2, 'products', 0),
(29, 'subadmin', 28109, 3, 'estimates', 0),
(30, 'subadmin', 28109, 4, 'invoices', 0),
(31, 'subadmin', 28109, 5, 'expenses', 0),
(32, 'subadmin', 28109, 6, 'bills', 0),
(33, 'subadmin', 28109, 7, 'reports', 0),
(34, 'subadmin', 28109, 8, 'vendors', 0),
(43, 'subadmin', 65934, 1, 'customers', 0),
(44, 'subadmin', 65934, 2, 'products', 0),
(45, 'subadmin', 65934, 3, 'estimates', 0),
(46, 'subadmin', 65934, 4, 'invoices', 0),
(47, 'subadmin', 65934, 5, 'expenses', 0),
(48, 'subadmin', 65934, 6, 'bills', 0),
(49, 'subadmin', 65934, 7, 'reports', 0),
(50, 'subadmin', 65934, 8, 'vendors', 0),
(51, 'editor', 65934, 1, 'customers', 0),
(52, 'editor', 65934, 2, 'products', 0),
(53, 'editor', 65934, 3, 'estimates', 0),
(54, 'editor', 65934, 4, 'invoices', 0),
(55, 'editor', 65934, 5, 'expenses', 0),
(56, 'editor', 65934, 6, 'bills', 0),
(57, 'editor', 65934, 7, 'reports', 0),
(58, 'editor', 65934, 8, 'vendors', 0),
(59, 'subadmin', 4178, 1, 'customers', 0),
(60, 'subadmin', 4178, 2, 'products', 0),
(61, 'subadmin', 4178, 3, 'estimates', 0),
(62, 'subadmin', 4178, 4, 'invoices', 0),
(63, 'subadmin', 4178, 5, 'expenses', 0),
(64, 'subadmin', 4178, 6, 'bills', 0),
(65, 'subadmin', 4178, 7, 'reports', 0),
(66, 'subadmin', 4178, 8, 'vendors', 0),
(67, 'editor', 4178, 1, 'customers', 0),
(68, 'editor', 4178, 2, 'products', 0),
(69, 'editor', 4178, 3, 'estimates', 0),
(70, 'editor', 4178, 4, 'invoices', 0),
(71, 'editor', 4178, 5, 'expenses', 0),
(72, 'editor', 4178, 6, 'bills', 0),
(73, 'editor', 4178, 7, 'reports', 0),
(74, 'editor', 4178, 8, 'vendors', 0),
(75, 'viewer', 4178, 1, 'customers', 1),
(76, 'viewer', 4178, 2, 'products', 1),
(77, 'viewer', 4178, 3, 'estimates', 1),
(78, 'viewer', 4178, 4, 'invoices', 1),
(79, 'viewer', 4178, 5, 'expenses', 1),
(80, 'viewer', 4178, 6, 'bills', 1),
(81, 'viewer', 4178, 7, 'reports', 1),
(82, 'viewer', 4178, 8, 'vendors', 1),
(83, 'cashier', 4178, 1, 'customers', 0),
(84, 'cashier', 4178, 2, 'products', 0),
(85, 'cashier', 4178, 4, 'invoices', 0),
(86, 'subadmin', 4178, 1, 'customers', 0),
(87, 'subadmin', 4178, 2, 'products', 0),
(88, 'subadmin', 4178, 3, 'estimates', 0),
(89, 'subadmin', 4178, 4, 'invoices', 0),
(90, 'subadmin', 4178, 5, 'expenses', 0),
(91, 'subadmin', 4178, 6, 'bills', 0),
(92, 'subadmin', 4178, 7, 'reports', 0),
(93, 'subadmin', 4178, 8, 'vendors', 0),
(94, 'editor', 4178, 1, 'customers', 0),
(95, 'editor', 4178, 2, 'products', 0),
(96, 'editor', 4178, 3, 'estimates', 0),
(97, 'editor', 4178, 4, 'invoices', 0),
(98, 'editor', 4178, 5, 'expenses', 0),
(99, 'editor', 4178, 6, 'bills', 0),
(100, 'editor', 4178, 7, 'reports', 0),
(101, 'editor', 4178, 8, 'vendors', 0),
(102, 'viewer', 4178, 1, 'customers', 1),
(103, 'viewer', 4178, 2, 'products', 1),
(104, 'viewer', 4178, 3, 'estimates', 1),
(105, 'viewer', 4178, 4, 'invoices', 1),
(106, 'viewer', 4178, 5, 'expenses', 1),
(107, 'viewer', 4178, 6, 'bills', 1),
(108, 'viewer', 4178, 7, 'reports', 1),
(109, 'viewer', 4178, 8, 'vendors', 1),
(110, 'cashier', 4178, 1, 'customers', 0),
(111, 'cashier', 4178, 2, 'products', 0),
(112, 'cashier', 4178, 4, 'invoices', 0),
(113, 'subadmin', 4178, 1, 'customers', 0),
(114, 'subadmin', 4178, 2, 'products', 0),
(115, 'subadmin', 4178, 3, 'estimates', 0),
(116, 'subadmin', 4178, 4, 'invoices', 0),
(117, 'subadmin', 4178, 5, 'expenses', 0),
(118, 'subadmin', 4178, 6, 'bills', 0),
(119, 'subadmin', 4178, 7, 'reports', 0),
(120, 'subadmin', 4178, 8, 'vendors', 0),
(121, 'editor', 4178, 1, 'customers', 0),
(122, 'editor', 4178, 2, 'products', 0),
(123, 'editor', 4178, 3, 'estimates', 0),
(124, 'editor', 4178, 4, 'invoices', 0),
(125, 'editor', 4178, 5, 'expenses', 0),
(126, 'editor', 4178, 6, 'bills', 0),
(127, 'editor', 4178, 7, 'reports', 0),
(128, 'editor', 4178, 8, 'vendors', 0),
(129, 'viewer', 4178, 1, 'customers', 1),
(130, 'viewer', 4178, 2, 'products', 1),
(131, 'viewer', 4178, 3, 'estimates', 1),
(132, 'viewer', 4178, 4, 'invoices', 1),
(133, 'viewer', 4178, 5, 'expenses', 1),
(134, 'viewer', 4178, 6, 'bills', 1),
(135, 'viewer', 4178, 7, 'reports', 1),
(136, 'viewer', 4178, 8, 'vendors', 1),
(137, 'cashier', 4178, 1, 'customers', 0),
(138, 'cashier', 4178, 2, 'products', 0),
(139, 'cashier', 4178, 4, 'invoices', 0),
(140, 'subadmin', 4178, 1, 'customers', 0),
(141, 'subadmin', 4178, 2, 'products', 0),
(142, 'subadmin', 4178, 3, 'estimates', 0),
(143, 'subadmin', 4178, 4, 'invoices', 0),
(144, 'subadmin', 4178, 5, 'expenses', 0),
(145, 'subadmin', 4178, 6, 'bills', 0),
(146, 'subadmin', 4178, 7, 'reports', 0),
(147, 'subadmin', 4178, 8, 'vendors', 0),
(148, 'editor', 4178, 1, 'customers', 0),
(149, 'editor', 4178, 2, 'products', 0),
(150, 'editor', 4178, 3, 'estimates', 0),
(151, 'editor', 4178, 4, 'invoices', 0),
(152, 'editor', 4178, 5, 'expenses', 0),
(153, 'editor', 4178, 6, 'bills', 0),
(154, 'editor', 4178, 7, 'reports', 0),
(155, 'editor', 4178, 8, 'vendors', 0),
(156, 'viewer', 4178, 1, 'customers', 1),
(157, 'viewer', 4178, 2, 'products', 1),
(158, 'viewer', 4178, 3, 'estimates', 1),
(159, 'viewer', 4178, 4, 'invoices', 1),
(160, 'viewer', 4178, 5, 'expenses', 1),
(161, 'viewer', 4178, 6, 'bills', 1),
(162, 'viewer', 4178, 7, 'reports', 1),
(163, 'viewer', 4178, 8, 'vendors', 1),
(164, 'cashier', 4178, 1, 'customers', 0),
(165, 'cashier', 4178, 2, 'products', 0),
(166, 'cashier', 4178, 4, 'invoices', 0),
(167, 'subadmin', 54193, 1, 'customers', 0),
(168, 'subadmin', 54193, 2, 'products', 0),
(169, 'subadmin', 54193, 3, 'estimates', 0),
(170, 'subadmin', 54193, 4, 'invoices', 0),
(171, 'subadmin', 54193, 5, 'expenses', 0),
(172, 'subadmin', 54193, 6, 'bills', 0),
(173, 'subadmin', 54193, 7, 'reports', 0),
(174, 'subadmin', 54193, 8, 'vendors', 0),
(175, 'editor', 54193, 1, 'customers', 0),
(176, 'editor', 54193, 2, 'products', 0),
(177, 'editor', 54193, 3, 'estimates', 0),
(178, 'editor', 54193, 4, 'invoices', 0),
(179, 'editor', 54193, 5, 'expenses', 0),
(180, 'editor', 54193, 6, 'bills', 0),
(181, 'editor', 54193, 7, 'reports', 0),
(182, 'editor', 54193, 8, 'vendors', 0),
(183, 'viewer', 54193, 1, 'customers', 1),
(184, 'viewer', 54193, 2, 'products', 1),
(185, 'viewer', 54193, 3, 'estimates', 1),
(186, 'viewer', 54193, 4, 'invoices', 1),
(187, 'viewer', 54193, 5, 'expenses', 1),
(188, 'viewer', 54193, 6, 'bills', 1),
(189, 'viewer', 54193, 7, 'reports', 1),
(190, 'viewer', 54193, 8, 'vendors', 1),
(191, 'cashier', 54193, 1, 'customers', 0),
(192, 'cashier', 54193, 2, 'products', 0),
(193, 'cashier', 54193, 4, 'invoices', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `business_category`
--
ALTER TABLE `business_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cost_centers`
--
ALTER TABLE `cost_centers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `code` (`code`) USING BTREE;

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `google_fonts`
--
ALTER TABLE `google_fonts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `invoice_payment_record`
--
ALTER TABLE `invoice_payment_record`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `invoice_taxes`
--
ALTER TABLE `invoice_taxes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `lang_values`
--
ALTER TABLE `lang_values`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `package_features`
--
ALTER TABLE `package_features`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payment_advance`
--
ALTER TABLE `payment_advance`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `product_services`
--
ALTER TABLE `product_services`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `product_tax`
--
ALTER TABLE `product_tax`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `site_contacts`
--
ALTER TABLE `site_contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tax_type`
--
ALTER TABLE `tax_type`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `time_zone`
--
ALTER TABLE `time_zone`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx_zone_name` (`name`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_role_feature`
--
ALTER TABLE `users_role_feature`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_role_feature_assign`
--
ALTER TABLE `users_role_feature_assign`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `business_category`
--
ALTER TABLE `business_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cost_centers`
--
ALTER TABLE `cost_centers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `google_fonts`
--
ALTER TABLE `google_fonts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `invoice_payment_record`
--
ALTER TABLE `invoice_payment_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_taxes`
--
ALTER TABLE `invoice_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lang_values`
--
ALTER TABLE `lang_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package_features`
--
ALTER TABLE `package_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `payment_advance`
--
ALTER TABLE `payment_advance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_records`
--
ALTER TABLE `payment_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_services`
--
ALTER TABLE `product_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tax`
--
ALTER TABLE `product_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_contacts`
--
ALTER TABLE `site_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_type`
--
ALTER TABLE `tax_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_zone`
--
ALTER TABLE `time_zone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_role_feature`
--
ALTER TABLE `users_role_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_role_feature_assign`
--
ALTER TABLE `users_role_feature_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
