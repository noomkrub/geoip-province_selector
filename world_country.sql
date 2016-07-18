-- phpMyAdmin SQL Dump
-- version 4.4.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2015 at 01:58 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `greenpeace`
--

-- --------------------------------------------------------

--
-- Table structure for table `world_country`
--

CREATE TABLE IF NOT EXISTS `world_country` (
  `country_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `world_country`
--

INSERT INTO `world_country` (`country_name`, `country_code`, `id`) VALUES
('Thailand', 'TH', 1),
('Indonesia', 'ID', 2),
('Philippines', 'PH', 3),
('Andorra', 'AD', 4),
('United Arab Emirates', 'AE', 5),
('Afghanistan', 'AF', 6),
('Antigua and Barbuda', 'AG', 7),
('Anguilla', 'AI', 8),
('Albania', 'AL', 9),
('Armenia', 'AM', 10),
('Netherlands Antilles', 'AN', 11),
('Angola', 'AO', 12),
('Argentina', 'AR', 13),
('American Samoa', 'AS', 14),
('Austria', 'AT', 15),
('Australia', 'AU', 16),
('Aruba', 'AW', 17),
('Azerbaijan', 'AZ', 18),
('Herzegovina', 'BA', 19),
('Barbados', 'BB', 20),
('Bangladesh', 'BD', 21),
('Belgium', 'BE', 22),
('Burkina Faso', 'BF', 23),
('Bulgaria', 'BG', 24),
('Bahrain', 'BH', 25),
('Burundi', 'BI', 26),
('Benin', 'BJ', 27),
('Bermuda', 'BM', 28),
('Brunei Darussalam', 'BN', 29),
('Bolivia', 'BO', 30),
('Brazil', 'BR', 31),
('Bahamas', 'BS', 32),
('Bhutan', 'BT', 33),
('Bouvet Island', 'BV', 34),
('Botswana', 'BW', 35),
('Belarus', 'BY', 36),
('Belize', 'BZ', 37),
('Canada', 'CA', 38),
('Cocos Keeling Islands', 'CC', 39),
('DR Congo', 'CD', 40),
('Central African Republic', 'CF', 41),
('Congo', 'CG', 42),
('Switzerland', 'CH', 43),
('CÃ´te d''Ivoire', 'CI', 44),
('Cook Islands', 'CK', 45),
('Chile', 'CL', 46),
('Cameroon', 'CM', 47),
('China', 'CN', 48),
('Colombia', 'CO', 49),
('Costa Rica', 'CR', 50),
('Cuba', 'CU', 51),
('Cape Verde', 'CV', 52),
('Christmas Island', 'CX', 53),
('Cyprus', 'CY', 54),
('Czech Republic', 'CZ', 55),
('Germany', 'DE', 56),
('Djibouti', 'DJ', 57),
('Denmark', 'DK', 58),
('Dominica', 'DM', 59),
('Dominican Republic', 'DO', 60),
('Algeria', 'DZ', 61),
('Ecuador', 'EC', 62),
('Estonia', 'EE', 63),
('Egypt', 'EG', 64),
('Western Sahara', 'EH', 65),
('Eritrea', 'ER', 66),
('Spain', 'ES', 67),
('Ethiopia', 'ET', 68),
('Finland', 'FI', 69),
('Fiji', 'FJ', 70),
('Falkland Island - Malvinas', 'FK', 71),
('Micronesia', 'FM', 72),
('Faroe Islands', 'FO', 73),
('France', 'FR', 74),
('Gabon', 'GA', 75),
('United Kingdom', 'GB', 76),
('Grenada', 'GD', 77),
('Georgia', 'GE', 78),
('French Guiana', 'GF', 79),
('Ghana', 'GH', 80),
('Gibraltar', 'GI', 81),
('Greenland', 'GL', 82),
('Gambia', 'GM', 83),
('Guinea', 'GN', 84),
('Guadeloupe', 'GP', 85),
('Equatorial Guinea', 'GQ', 86),
('Greece', 'GR', 87),
('S.Georgia & S.Sandwich Islands', 'GS', 88),
('Guatemala', 'GT', 89),
('Guam', 'GU', 90),
('Guinea-Bissau', 'GW', 91),
('Guyana', 'GY', 92),
('Hong Kong', 'HK', 93),
('Heard & McDonald Islands', 'HM', 94),
('Honduras', 'HN', 95),
('Croatia', 'HR', 96),
('Haiti', 'HT', 97),
('Hungary', 'HU', 98),
('Ireland', 'IE', 99),
('Israel', 'IL', 100),
('India', 'IN', 101),
('British Indian Ocean Territory', 'IO', 102),
('Iraq', 'IQ', 103),
('Iran', 'IR', 104),
('Iceland', 'IS', 105),
('Italy', 'IT', 106),
('Jamaica', 'JM', 107),
('Jordan', 'JO', 108),
('Japan', 'JP', 109),
('Kenya', 'KE', 110),
('Kyrgyzstan', 'KG', 111),
('Cambodia', 'KH', 112),
('Kiribati', 'KI', 113),
('Comoros', 'KM', 114),
('North Korea', 'KP', 115),
('South Korea', 'KR', 116),
('Kuwait', 'KW', 117),
('Cayman Islands', 'KY', 118),
('Kazakhstan', 'KZ', 119),
('Laos', 'LA', 120),
('Lebanon', 'LB', 121),
('Saint Lucia', 'LC', 122),
('Liechtenstein', 'LI', 123),
('Sri Lanka', 'LK', 124),
('Liberia', 'LR', 125),
('Lesotho', 'LS', 126),
('Lithuania', 'LTP', 127),
('Luxembourg', 'LU', 128),
('Latvia', 'LV', 129),
('Libya', 'LY', 130),
('Morocco', 'MA', 131),
('Monaco', 'MC', 132),
('Moldova', 'MD', 133),
('Madagascar', 'MG', 134),
('Marshall Islands', 'MH', 135),
('Macedonia', 'MK', 136),
('Mali', 'ML', 137),
('Myanmar', 'MM', 138),
('Mongolia', 'MN', 139),
('Macau', 'MO', 140),
('Northern Mariana Islands', 'MP', 141),
('Martinique', 'MQ', 142),
('Mauritania', 'MR', 143),
('Montserrat', 'MS', 144),
('Malta', 'MT', 145),
('Mauritius', 'MU', 146),
('Maldives', 'MV', 147),
('Malawi', 'MW', 148),
('Mexico', 'MX', 149),
('Malaysia', 'MY', 150),
('Mozambique', 'MZ', 151),
('Namibia', 'NA', 152),
('New Caledonia', 'NC', 153),
('Niger', 'NE', 154),
('Norfolk Island', 'NF', 155),
('Nigeria', 'NG', 156),
('Nicaragua', 'NI', 157),
('Netherlands', 'NL', 158),
('Norway', 'NO', 159),
('Nepal', 'NP', 160),
('Nauru', 'NR', 161),
('Niue', 'NU', 162),
('New Zealand', 'NZ', 163),
('Oman', 'OM', 164),
('Panama', 'PA', 165),
('Peru', 'PE', 166),
('French Polynesia', 'PF', 167),
('Papua New Guinea', 'PG', 168),
('Pakistan', 'PK', 169),
('Poland', 'PL', 170),
('St. Pierre & Miquelon', 'PM', 171),
('Pitcairn', 'PN', 172),
('Puerto Rico', 'PR', 173),
('Portugal', 'PT', 174),
('Palau', 'PW', 175),
('Paraguay', 'PY', 176),
('Qatar', 'QA', 177),
('Reunion', 'RE', 178),
('Romania', 'RO', 179),
('Russian Federation', 'RU', 180),
('Rwanda', 'RW', 181),
('Saudi Arabia', 'SA', 182),
('Solomon Islands', 'SB', 183),
('Seychelles', 'SC', 184),
('Sudan', 'SD', 185),
('Sweden', 'SE', 186),
('Singapore', 'SG', 187),
('Saint Helena, Ascension and Tristan da Cunha', 'SH', 188),
('Slovenia', 'SI', 189),
('Svalbard & Jan Mayen Islands', 'SJ', 190),
('Slovakia', 'SK', 191),
('Sierra Leone', 'SL', 192),
('San Marino', 'SM', 193),
('Senegal', 'SN', 194),
('Somalia', 'SO', 195),
('Suriname', 'SR', 196),
('Sao Tome and Principe', 'ST', 197),
('El Salvador', 'SV', 198),
('Syria', 'SY', 199),
('Swaziland', 'SZ', 200),
('Turks & Caicos Islands', 'TC', 201),
('Chad', 'TD', 202),
('French Southern Territories', 'TF', 203),
('Togo', 'TG', 204),
('Tajikistan', 'TJ', 205),
('Tokelau', 'TK', 206),
('Turkmenistan', 'TM', 207),
('Tunisia', 'TN', 208),
('Tonga', 'TO', 209),
('East Timor', 'TP', 210),
('Turkey', 'TR', 211),
('Tobago', 'TT', 212),
('Tuvalu', 'TV', 213),
('Taiwan', 'TW', 214),
('Tanzania', 'TZ', 215),
('Ukraine', 'UA', 216),
('Uganda', 'UG', 217),
('United States', 'US', 218),
('Uruguay', 'UY', 219),
('Uzbekistan', 'UZ', 220),
('Vatican City', 'VA', 221),
('St. Vincent & the Grenadines', 'VC', 222),
('Venezuela', 'VE', 223),
('British Virgin Islands', 'VG', 224),
('US Virgin Islands', 'VI', 225),
('Viet Nam', 'VN', 226),
('Vanuatu', 'VU', 227),
('Wallis & Futuna Islands', 'WF', 228),
('Samoa', 'WS', 229),
('Yemen', 'YE', 230),
('Mayotte', 'YT', 231),
('Yugoslavia', 'YU', 232),
('South Africa', 'ZA', 233),
('Zambia', 'ZM', 234),
('Zimbabwe', 'ZW', 235);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `world_country`
--
ALTER TABLE `world_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_code` (`country_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `world_country`
--
ALTER TABLE `world_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=236;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
