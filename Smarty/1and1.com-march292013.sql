-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Host: db376.perfora.net
-- Generation Time: Mar 29, 2013 at 08:25 PM
-- Server version: 4.0.27
-- PHP Version: 5.3.3-7+squeeze15
-- 
-- Database: `db168435631`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `address`
-- 

CREATE TABLE `address` (
  `id` int(11) NOT NULL auto_increment,
  `street` varchar(255) NOT NULL default '',
  `floor` varchar(12) default NULL,
  `city` varchar(50) NOT NULL default '',
  `state` char(2) NOT NULL default '',
  `zip` varchar(5) NOT NULL default '',
  `country` varchar(20) NOT NULL default 'USA',
  `user_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='This table holds the addresses ' AUTO_INCREMENT=518 ;

-- 
-- Dumping data for table `address`
-- 

INSERT INTO `address` VALUES (1, '2902 Emmons Ave.', '', 'Brooklyn', 'NY', '11235', 'USA', 2);
INSERT INTO `address` VALUES (2, '19 Old Fulton St.', '', 'Brooklyn', 'NY', '11201', 'USA', 2);
INSERT INTO `address` VALUES (3, '101 E. 2nd St.', '2nd Fl', 'Brooklyn', 'NY', '11218', 'USA', 2);
INSERT INTO `address` VALUES (4, '145 Norman Ave.', '3R', 'Brooklyn', 'NY', '11201', 'USA', 2);
INSERT INTO `address` VALUES (5, '1 Charles Lindbergh Blvd.', '', 'Uniondale', 'NY', '11553', 'USA', 2);
INSERT INTO `address` VALUES (6, '124 Prospect Park West', '', 'Brooklyn', 'NY', '11215', 'USA', 2);
INSERT INTO `address` VALUES (7, '453 4th St.', '', 'Brooklyn', 'NY', '11215', 'USA', 2);
INSERT INTO `address` VALUES (8, '133 5th Avenue', '', 'Brooklyn', 'NY', '11217', 'USA', 2);
INSERT INTO `address` VALUES (9, '4176 Bedford Ave.', '', 'Brooklyn', 'NY', '11229', 'USA', 2);
INSERT INTO `address` VALUES (10, '60-62 E. 97th St.', '', 'New York', 'NY', '10029', 'USA', 2);
INSERT INTO `address` VALUES (11, '143-20 91st Ave', '1 Flr', 'Jamaica', 'NY', '11435', 'USA', 2);
INSERT INTO `address` VALUES (12, '98 Morningside Ave. ( 123rd St. )', '31 Apt.', 'Manhattan', 'NY', '10027', 'USA', 2);
INSERT INTO `address` VALUES (13, '145 W. 88th St.', '', 'New York', 'NY', '10024', 'USA', 2);
INSERT INTO `address` VALUES (14, '606 Columbus Ave.', '2nd Fl.', 'New York', 'NY', '10024', 'USA', 2);
INSERT INTO `address` VALUES (15, '160 St. Clair', 'Apt. 352', 'Reno', 'NV', '89501', '', 1);
INSERT INTO `address` VALUES (16, '116th St & Broadway Ave.', '', 'New York', 'NY', '10027', 'USA', 2);
INSERT INTO `address` VALUES (17, '145 Norman Ave.', '3R', 'Brooklyn', 'NY', '11122', 'USA', 2);
INSERT INTO `address` VALUES (19, '1019 Waverly St', '#2', 'Philladephia', 'PA', '19107', '', 1);
INSERT INTO `address` VALUES (20, '1307 3rd ave (75th St)', '', 'NY', 'NY', '11217', '', 1);
INSERT INTO `address` VALUES (21, '1400 Broadway', '33', 'NY', 'NY', '10016', '', 1);
INSERT INTO `address` VALUES (22, '9 Valley Road', '', 'Hillsborough', 'NJ', '08844', 'USA', 1);
INSERT INTO `address` VALUES (23, '4501 N Charles St.    MS 655', '', 'Baltimore', 'MD', '21210', '', 1);
INSERT INTO `address` VALUES (24, '3465 Balboa Dr.', '', 'Reno', 'NV', '89503', '', 1);
INSERT INTO `address` VALUES (25, '10801 Northern Blvd', '', 'Queens', 'NY', '11368', 'USA', 2);
INSERT INTO `address` VALUES (26, '434 2nd Ave.', '', 'NY', 'NY', '10010', 'USA', 2);
INSERT INTO `address` VALUES (27, '178 Broadway', '', 'Brooklyn', 'NY', '11211', 'USA', 2);
INSERT INTO `address` VALUES (28, '1440 9th Ave.', '', 'Manhattan', 'NY', '10001', 'USA', 2);
INSERT INTO `address` VALUES (29, '3410 East Nighthawk Way', '', 'Pheonix', 'AZ', '85048', 'USA', 1);
INSERT INTO `address` VALUES (30, '4411 E Chandler Blvd', '2077', 'Phoenix', 'AZ', '85048', '', 1);
INSERT INTO `address` VALUES (31, '1 Charles Lindbergh Blvd.', '', 'Uniondale', 'NY', '11553', 'USA', 2);
INSERT INTO `address` VALUES (32, 'PO Box B', '', 'Manville', 'NJ', '08835', 'USA', 1);
INSERT INTO `address` VALUES (33, '101 E. 2nd St.', '2nd Fl', 'Brookly', 'NY', '11218', 'USA', 2);
INSERT INTO `address` VALUES (34, '1413 3rd Ave', '', 'Manhattan', 'NY', '10028', 'USA', 1);
INSERT INTO `address` VALUES (35, '334 60th St.', '1st Fl.', 'Brooklyn', 'NY', '11220', 'USA', 2);
INSERT INTO `address` VALUES (36, '2171 Nathanial Rochester Hall', 'RIT', 'Rochester', 'NY', '14623', '', 1);
INSERT INTO `address` VALUES (37, '100 Glennwood Pl NE', '', 'Renton', 'WA', '98056', 'USA', 2);
INSERT INTO `address` VALUES (38, '606 Columbus Ave.', '2nd Fl.', 'New York', 'NY', '10024', 'USA', 2);
INSERT INTO `address` VALUES (39, '1188 East 40th', '', 'Brooklyn', 'NY', '11210', '', 1);
INSERT INTO `address` VALUES (40, '247 21st St.', '2L', 'Brooklyn', 'NY', '11215', 'USA', 2);
INSERT INTO `address` VALUES (41, '444 NE Brazee Street', '', 'Portland', 'OR', '97212', 'USA', 2);
INSERT INTO `address` VALUES (42, 'Kent and Manhattan Ave.', '', 'Brooklyn', 'NY', '11222', 'USA', 2);
INSERT INTO `address` VALUES (43, 'MS655  4501 North Charles Street', '', 'Baltimore', 'MD', '21210', '', 1);
INSERT INTO `address` VALUES (44, '275 Exeter St.', '', 'Brooklyn', 'NY', '11235', '', 2);
INSERT INTO `address` VALUES (45, '4501 North Charles Street', 'MS655', 'Baltimore', 'MD', '21210', '', 1);
INSERT INTO `address` VALUES (46, '755 S. Dexter St.', '822', 'Denver', 'CO', '80246', '', 1);
INSERT INTO `address` VALUES (47, '145 Norman Ave', '3L', 'Brooklyn', 'NY', '11222', '', 1);
INSERT INTO `address` VALUES (48, '12-20 34th Ave.', '1G', 'Astoria', 'NY', '11106', 'USA', 2);
INSERT INTO `address` VALUES (49, '17 Barrow St.', '', 'Manhattan', 'NY', '10014', 'USA', 2);
INSERT INTO `address` VALUES (50, '145 Norman Ave', '1L', 'Bkly', 'NY', '11222', '', 1);
INSERT INTO `address` VALUES (145, '79 Orchard St', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (144, '180 Grand St.', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (143, '2nd ave and E 71st st', '', 'NY', ' N', '', '', 1);
INSERT INTO `address` VALUES (142, '200 Rector Place', '24 H', 'NY', 'NY', '10280', '', 1);
INSERT INTO `address` VALUES (148, '91 Greenpoint Ave', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (147, '415 Un ion st (and Hoyt)', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (146, '76 Orchard St', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (140, 'Manhattan Ave.', '', 'Brooklyn', 'NY', '11222', 'USA', 2);
INSERT INTO `address` VALUES (195, '79 Orchard St', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (196, '', '', 'LIC', 'NY', '', '', 2);
INSERT INTO `address` VALUES (197, '', '', 'Brooklyn', 'NY', '', '', 2);
INSERT INTO `address` VALUES (198, '', '', 'Brooklyn', '', '', '', 2);
INSERT INTO `address` VALUES (201, 'Bishop Loughlin Memorial High School', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (202, '268 Mulberry St.', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (203, '112 N 6th St. Bet Berry and Wythe', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (204, '92 Greenpoint Ave', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (233, '3201 Quentin Road', '', 'Brooklyn', 'NY', '11234', '', 1);
INSERT INTO `address` VALUES (235, '82 Berry St', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (236, '230 Fifth Ave', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (237, '33 West 8th', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (238, '68 Washington Ave', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (310, '93 Chadwick Place', '', 'Glenrock', 'NJ', '07452', 'USA', 2);
INSERT INTO `address` VALUES (455, '71-26 Main St.', '', 'Flushing, Queen', 'NY', '', '', 1);
INSERT INTO `address` VALUES (454, '105  29 Netropolitan Ave', '', 'Queens', 'NY', '', '', 1);
INSERT INTO `address` VALUES (380, '126 E 28th St (bet park and lex)', '', 'NY', 'NY', '10016', '', 1);
INSERT INTO `address` VALUES (381, '20 Cornelia St.', '', 'New York', 'NY', '10014', '', 1);
INSERT INTO `address` VALUES (382, '52 Irving Pl', '', 'NY', 'NY', '10003', '', 1);
INSERT INTO `address` VALUES (383, '120 Hudson St.', '', 'NY', 'NY', '10013', '', 1);
INSERT INTO `address` VALUES (384, '113 W. 116th St', '', 'NY', 'NY', '10026', '', 1);
INSERT INTO `address` VALUES (385, '86 Fifth Ave', '', 'Brooklyn', 'NY', '11217', '', 1);
INSERT INTO `address` VALUES (386, '87 Lafayette Ave', '', 'Brooklyn', 'NY', '11217', '', 1);
INSERT INTO `address` VALUES (387, '191 Smith St.', '', 'Broooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (388, '345 E. 12th St.', '', 'NY', 'NY', '10003', '', 1);
INSERT INTO `address` VALUES (389, '171 Lafayette Ave.', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (390, '64 W. 10th St.', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (391, '253 Conover St', '', 'Brooklyn', 'NY', '11231', '', 1);
INSERT INTO `address` VALUES (392, '18 Van Brunt St', '', 'Brooklyn', 'NY', '11231', '', 1);
INSERT INTO `address` VALUES (393, '320 Van Brunt St', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (394, '110 Waverly Pl', '', 'NY', 'NY', '10011', '', 1);
INSERT INTO `address` VALUES (395, '246 Dekalb Ave', '', 'Brooklyn', 'NY', '11226', '', 1);
INSERT INTO `address` VALUES (396, '73-07 37th Road', '', 'Jackson Heights', 'NY', '', '', 1);
INSERT INTO `address` VALUES (397, '237 W 42nd St', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (398, '98 Third Ave ( bet 12th 13th)', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (399, '109 Macdougal St', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (400, '123 First Ave (btwn 7st. & St.Marks Place)', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (401, ' 125 E 17th St,', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (402, '149 2nd Ave (bet 9th and 10th)', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (403, '25 Jay St. at John Street', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (404, '191 Smith St', '', 'Brooklyn', 'ny', '', '', 1);
INSERT INTO `address` VALUES (405, '19 S 27th St', '', 'Pittsburgh', 'PA', '15203', '', 2);
INSERT INTO `address` VALUES (406, '19 S 27th St', '', 'Pittsburgh', 'PA', '15203', '', 2);
INSERT INTO `address` VALUES (407, '251 Grand St.', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (408, '451 Graham Ave.', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (409, '176 Perry St', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (410, '113 St. Marks Pl.', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (412, '1235 Kings Highway', 'E202', 'Dallas', 'TX', '75208', '', 1);
INSERT INTO `address` VALUES (413, '34 Greenough St.', '', 'Brookline', 'MA', '02445', '', 1);
INSERT INTO `address` VALUES (414, '34 Greenough St.', '', 'Brookline', 'MA', '02445', '', 1);
INSERT INTO `address` VALUES (415, '5715 Elmer St.', 'Apt 6', 'Pittsburgh', 'PA', '15232', '', 1);
INSERT INTO `address` VALUES (416, '104 Bedford Ave', 'Apt 3 R', 'Bklyn', 'NY', '11211', '', 1);
INSERT INTO `address` VALUES (453, '304 East 6th St.', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (418, '365 Atlantic Ave', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (419, 'Orchard St.', '', '', '', '', '', 1);
INSERT INTO `address` VALUES (420, '45 Mercer St bet Broome and Grand', '', 'New York', '', '', '', 1);
INSERT INTO `address` VALUES (421, '689 6th ave', '', 'Bklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (422, '627 5th Ave', '', 'Bklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (423, '1167 Madison Avenue bet 85th and 86th', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (424, '85 10th Ave', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (425, '34 Greenough St.', '', 'Brookline', 'MA', '02444', '', 1);
INSERT INTO `address` VALUES (426, '355 Greenwich St.', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (427, '205 Hudson Street', '1104', 'Hoboken', 'NJ', '07030', '', 1);
INSERT INTO `address` VALUES (428, '171 E. Broadway', '', 'NY', 'Ny', '', '', 1);
INSERT INTO `address` VALUES (429, '140 Havermeyera dn south 1st', '', '', '', '', '', 1);
INSERT INTO `address` VALUES (430, '20 Seventh Ave. South at Leroy St', '', 'NY', 'NY', '10011', '', 1);
INSERT INTO `address` VALUES (431, '7311 3rd AVE', '', 'BROOKLYN', 'ny', '', '', 1);
INSERT INTO `address` VALUES (432, '70 Grand St.', '', 'Brooklyn', '', '', '', 1);
INSERT INTO `address` VALUES (433, '167 Grand St', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (434, '342 Maujer St', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (435, '228 Manhattan Ave', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (436, '195 Morgan Ave', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (437, '1 west 67th St', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (438, '228 West 4th St.', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (439, '1032 Lexington Ave  ber 73&    74', '', 'New York', '', '', '', 1);
INSERT INTO `address` VALUES (440, '112 First St', '', '', '', '', '', 1);
INSERT INTO `address` VALUES (441, '50 Clinton St. bet. Rivington L Stanton', '', 'New York', '', '', '', 1);
INSERT INTO `address` VALUES (442, '525 Broome St. bet. Sullivan  &  Thompson', '', 'New York', '', '', '', 1);
INSERT INTO `address` VALUES (443, '259 Adams St, Pearl building', '2nd Fl', 'Blilyn', '', '', '', 1);
INSERT INTO `address` VALUES (444, '16 east 16th  Street', '', 'New York', '', '', '', 1);
INSERT INTO `address` VALUES (445, '11 South St&  Beckman', '', '', '', '', '', 1);
INSERT INTO `address` VALUES (446, ' 22 E 14th  bet 5th Aver University', '', '', '', '', '', 1);
INSERT INTO `address` VALUES (447, '809 Classon Ave', '', 'Brooklyn', '', '', '', 1);
INSERT INTO `address` VALUES (448, '411 Atlantic Ave.', '', '', '', '', '', 1);
INSERT INTO `address` VALUES (449, '205 Hudson Street', 'Apt 1104', 'Hoboken', 'NJ', '07030', '', 1);
INSERT INTO `address` VALUES (450, '15 East 18th St.', '', 'NY', 'NY', '10003', '', 1);
INSERT INTO `address` VALUES (451, '284 Va Brunt St.', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (452, '240 Prospect Park West', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (456, '171 East Broadway', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (457, '200 Schemerhorn St.', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (458, '253 Grand St.', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (459, '200 Avenue A', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (460, '1926 67th St.', 'Apt 1', 'Brooklyn', 'NY', '11204', '', 1);
INSERT INTO `address` VALUES (461, '117 Perry St.', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (462, '19 Commerce St', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (463, '238 W 10th St', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (464, '124 Ludlow St', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (465, '44 east 12th st', '8C', 'NY', 'NY', '10003', '', 1);
INSERT INTO `address` VALUES (466, '522 Hudson St.', '', 'NY', 'NY', '10014', '', 1);
INSERT INTO `address` VALUES (467, 'Manhattan Ave practice', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (468, '1643 Cambridge St.', 'Apt 43', 'Cambridge', 'MA', '02138', '', 1);
INSERT INTO `address` VALUES (469, '355 Greenwich St.', '', 'NY', '', '', '', 1);
INSERT INTO `address` VALUES (470, '126 Union St.', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (471, '525 Broome St.', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (472, '15 7th Ave South', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (473, '1481 First Ave (Near 77th St)', '', '', 'NY', 'NY', '', 1);
INSERT INTO `address` VALUES (474, '279 Grand St.', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (475, '1167 Madison Avenue bet 85th and 86th', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (476, '30 Broadway', '4', 'Jersey City', 'NJ', '07306', '', 2);
INSERT INTO `address` VALUES (477, '143-20 91st Ave', '1 Flr', 'Jamaica', 'NY', '11435', '', 2);
INSERT INTO `address` VALUES (478, '393 Linwood St', '', 'Brooklyn', 'NY', '11208', '', 2);
INSERT INTO `address` VALUES (479, '53 Sixth Ave', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (480, '', '', '', '', '', '', 2);
INSERT INTO `address` VALUES (481, '', '', '', '', '', '', 2);
INSERT INTO `address` VALUES (482, '53 6th Ave', '', 'Brooklyn', '', '', '', 1);
INSERT INTO `address` VALUES (483, '263 N 6th St.', '', 'Brooklyn', 'ny', '', '', 1);
INSERT INTO `address` VALUES (484, '989 Broome Center Rd', '', 'Preston Hollow', 'NY', '', '', 1);
INSERT INTO `address` VALUES (485, '247 Broome St.', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (486, '235 East 4th St', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (487, '354 Bowery', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (488, '13632 72nd Ave', '', 'Flushing', 'NY', '11367', '', 2);
INSERT INTO `address` VALUES (489, '318 Grand St', '', '', 'NY', '', '', 1);
INSERT INTO `address` VALUES (490, '84 N 3rd St.', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (491, '', '', '', '', '', '', 1);
INSERT INTO `address` VALUES (492, '259 w 19th st', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (493, '196 Smith St.', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (494, '4 Bleeker Street', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (495, '42 East 1st Street', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (496, '202 Centre St', '', 'New Yrok', 'NY', '', '', 1);
INSERT INTO `address` VALUES (497, '210 Smith Street', '', 'Brooklyn', 'Ny', '', '', 1);
INSERT INTO `address` VALUES (498, '150 B West 10th St', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (499, '755 Fulton Street', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (500, '519 6th ave', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (501, '46 3rd avenue', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (502, '149 Seventh Avenue', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (503, '110 Bedford Avenue', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (504, '45 West 81st Street', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (505, '3534 Broadway', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (506, '125 Chambers Street nr Broadway', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (507, '351 Kent Ave - s 5th', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (508, 'end of Freeman Alley, near Rivington', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (509, '173 Ludlow St', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (510, '155 West 51st St', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (511, '263 North 6th St', '', 'Brooklyn', 'NY', '', '', 1);
INSERT INTO `address` VALUES (512, '10 River Terrace', '', 'New York', 'NY', '', '', 1);
INSERT INTO `address` VALUES (513, '225 Vesey St, nr North End Ave.', '', 'NY', 'NY', '', '', 1);
INSERT INTO `address` VALUES (514, '131 Sullivan St', '', 'NY', 'ny', '', '', 1);
INSERT INTO `address` VALUES (515, '5`3 Henry Street', '', '', '', '', '', 1);
INSERT INTO `address` VALUES (516, '439 Third Avenue', '', 'Manhattan', '', '', '', 1);
INSERT INTO `address` VALUES (517, '73 Murrray Street', '', '', '', '', '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `birthday`
-- 

CREATE TABLE `birthday` (
  `id` int(11) NOT NULL auto_increment,
  `month` int(2) NOT NULL default '0',
  `day` int(2) NOT NULL default '0',
  `year` varchar(4) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the birthdays' AUTO_INCREMENT=67 ;

-- 
-- Dumping data for table `birthday`
-- 

INSERT INTO `birthday` VALUES (1, 6, 16, '1985', 2);
INSERT INTO `birthday` VALUES (2, 7, 28, '1980', 2);
INSERT INTO `birthday` VALUES (3, 2, 14, '1963', 2);
INSERT INTO `birthday` VALUES (4, 10, 1, '1978', 2);
INSERT INTO `birthday` VALUES (5, 8, 1, '1981', 2);
INSERT INTO `birthday` VALUES (6, 1, 18, '1976', 2);
INSERT INTO `birthday` VALUES (7, 10, 10, '1978', 2);
INSERT INTO `birthday` VALUES (8, 11, 1, '1978', 2);
INSERT INTO `birthday` VALUES (9, 10, 1, 'YYYY', 1);
INSERT INTO `birthday` VALUES (10, 7, 27, 'YYYY', 1);
INSERT INTO `birthday` VALUES (11, 9, 15, '1974', 2);
INSERT INTO `birthday` VALUES (12, 7, 23, '1983', 2);
INSERT INTO `birthday` VALUES (13, 8, 27, '2005', 2);
INSERT INTO `birthday` VALUES (14, 9, 7, '2003', 2);
INSERT INTO `birthday` VALUES (15, 1, 6, '1980', 2);
INSERT INTO `birthday` VALUES (16, 6, 13, '1981', 1);
INSERT INTO `birthday` VALUES (17, 7, 9, '1971', 2);
INSERT INTO `birthday` VALUES (18, 2, 4, '1960', 2);
INSERT INTO `birthday` VALUES (19, 10, 2, '1990', 1);
INSERT INTO `birthday` VALUES (20, 10, 12, '1981', 1);
INSERT INTO `birthday` VALUES (21, 10, 5, '1983', 1);
INSERT INTO `birthday` VALUES (22, 8, 27, '2005', 7);
INSERT INTO `birthday` VALUES (23, 5, 4, '1987', 7);
INSERT INTO `birthday` VALUES (24, 2, 14, '1963', 7);
INSERT INTO `birthday` VALUES (25, 5, 29, 'YYYY', 7);
INSERT INTO `birthday` VALUES (26, 6, 26, '1979', 7);
INSERT INTO `birthday` VALUES (27, 7, 23, '1983', 7);
INSERT INTO `birthday` VALUES (28, 8, 1, '1981', 7);
INSERT INTO `birthday` VALUES (29, 8, 6, '1945', 7);
INSERT INTO `birthday` VALUES (30, 9, 7, 'YYYY', 7);
INSERT INTO `birthday` VALUES (31, 7, 27, '2007', 7);
INSERT INTO `birthday` VALUES (32, 11, 13, '1982', 4);
INSERT INTO `birthday` VALUES (33, 11, 29, '', 2);
INSERT INTO `birthday` VALUES (34, 6, 6, 'YYYY', 1);
INSERT INTO `birthday` VALUES (35, 1, 5, '', 2);
INSERT INTO `birthday` VALUES (36, 12, 28, '', 2);
INSERT INTO `birthday` VALUES (37, 12, 6, '', 2);
INSERT INTO `birthday` VALUES (38, 12, 14, '', 2);
INSERT INTO `birthday` VALUES (39, 1, 9, '', 2);
INSERT INTO `birthday` VALUES (40, 1, 16, 'YYYY', 1);
INSERT INTO `birthday` VALUES (41, 1, 16, '', 2);
INSERT INTO `birthday` VALUES (42, 2, 6, 'YYYY', 1);
INSERT INTO `birthday` VALUES (43, 2, 6, '1980', 1);
INSERT INTO `birthday` VALUES (44, 4, 5, '1993', 1);
INSERT INTO `birthday` VALUES (45, 6, 14, 'YYYY', 1);
INSERT INTO `birthday` VALUES (46, 6, 14, '', 1);
INSERT INTO `birthday` VALUES (47, 6, 7, '', 2);
INSERT INTO `birthday` VALUES (48, 6, 22, '', 2);
INSERT INTO `birthday` VALUES (49, 1, 16, '', 2);
INSERT INTO `birthday` VALUES (50, 12, 1, 'YYYY', 1);
INSERT INTO `birthday` VALUES (51, 6, 19, 'YYYY', 1);
INSERT INTO `birthday` VALUES (52, 7, 4, '', 2);
INSERT INTO `birthday` VALUES (53, 10, 17, 'YYYY', 1);
INSERT INTO `birthday` VALUES (54, 10, 26, '1990', 2);
INSERT INTO `birthday` VALUES (55, 11, 8, '1978', 2);
INSERT INTO `birthday` VALUES (56, 4, 24, '1979', 1);
INSERT INTO `birthday` VALUES (57, 5, 3, '', 1);
INSERT INTO `birthday` VALUES (58, 6, 26, 'YYYY', 1);
INSERT INTO `birthday` VALUES (59, 6, 3, 'YYYY', 1);
INSERT INTO `birthday` VALUES (60, 8, 3, '2007', 1);
INSERT INTO `birthday` VALUES (61, 5, 17, 'YYYY', 1);
INSERT INTO `birthday` VALUES (62, 6, 12, '1980', 1);
INSERT INTO `birthday` VALUES (63, 10, 26, '1990', 2);
INSERT INTO `birthday` VALUES (64, 4, 26, 'YYYY', 1);
INSERT INTO `birthday` VALUES (65, 9, 7, 'YYYY', 1);
INSERT INTO `birthday` VALUES (66, 2, 21, '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `categories`
-- 

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `budget` double default NULL,
  `description` mediumtext,
  `mc_id` bigint(20) NOT NULL default '0',
  `user_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the categories for finances' AUTO_INCREMENT=34 ;

-- 
-- Dumping data for table `categories`
-- 

INSERT INTO `categories` VALUES (1, 'House Bills', 1200, NULL, 0, 2);
INSERT INTO `categories` VALUES (2, 'Transportation', 81, NULL, 0, 2);
INSERT INTO `categories` VALUES (3, 'Work Food', 375, NULL, 0, 2);
INSERT INTO `categories` VALUES (4, 'Groceries', 2400, NULL, 1, 1);
INSERT INTO `categories` VALUES (5, 'Meals Out', 425, NULL, 2, 1);
INSERT INTO `categories` VALUES (6, 'Transportation', 130, NULL, 2, 1);
INSERT INTO `categories` VALUES (7, 'Soccer', 100, NULL, 0, 2);
INSERT INTO `categories` VALUES (8, 'Futbol', 0, NULL, 0, 7);
INSERT INTO `categories` VALUES (9, 'Going Out', 100, NULL, 0, 2);
INSERT INTO `categories` VALUES (10, 'Travel', 400, NULL, 2, 1);
INSERT INTO `categories` VALUES (11, 'Gifts', 150, NULL, 2, 1);
INSERT INTO `categories` VALUES (12, 'Gifts', 600, NULL, 0, 2);
INSERT INTO `categories` VALUES (13, 'Health', 200, NULL, 0, 2);
INSERT INTO `categories` VALUES (14, 'Lawyers', 0, NULL, 0, 2);
INSERT INTO `categories` VALUES (15, 'Rent', 1500, NULL, 0, 0);
INSERT INTO `categories` VALUES (16, 'Groceries', 0, NULL, 0, 0);
INSERT INTO `categories` VALUES (17, 'DishNetwork', 50, NULL, 0, 0);
INSERT INTO `categories` VALUES (18, 'Gas', 50, NULL, 0, 0);
INSERT INTO `categories` VALUES (19, 'Electricity', 50, NULL, 0, 0);
INSERT INTO `categories` VALUES (20, 'House', 2400, NULL, 0, 9);
INSERT INTO `categories` VALUES (21, 'Rent', 300, NULL, 0, 4);
INSERT INTO `categories` VALUES (22, 'My Mother''s House', 300, NULL, 0, 2);
INSERT INTO `categories` VALUES (23, 'Loans', 125, NULL, 2, 1);
INSERT INTO `categories` VALUES (24, 'Health', 560, NULL, 2, 1);
INSERT INTO `categories` VALUES (25, 'Apartment', 1200, NULL, 2, 1);
INSERT INTO `categories` VALUES (26, 'Coaching', 200, NULL, 0, 2);
INSERT INTO `categories` VALUES (27, 'Meals In or Snacks', 50, NULL, 0, 1);
INSERT INTO `categories` VALUES (28, 'Hygiene', 50, NULL, 0, 1);
INSERT INTO `categories` VALUES (29, 'Cleaning and Repair', 40, NULL, 0, 1);
INSERT INTO `categories` VALUES (30, 'Play', 400, NULL, 2, 1);
INSERT INTO `categories` VALUES (31, 'Wedding', 0, NULL, 3, 1);
INSERT INTO `categories` VALUES (32, 'Venue', 0, NULL, 0, 1);
INSERT INTO `categories` VALUES (33, 'Venue', 3000, NULL, 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `category`
-- 

CREATE TABLE `category` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `type` varchar(30) NOT NULL default '',
  `user_id` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the categories' AUTO_INCREMENT=65 ;

-- 
-- Dumping data for table `category`
-- 

INSERT INTO `category` VALUES (1, 'Play Soccer', 'todo', '2');
INSERT INTO `category` VALUES (9, 'Soccer', 'project', '2');
INSERT INTO `category` VALUES (10, 'HealthTalks', 'project', '2');
INSERT INTO `category` VALUES (12, 'Visit Nicky', 'todo', '2');
INSERT INTO `category` VALUES (13, 'Buy', 'todo', '2');
INSERT INTO `category` VALUES (14, 'Cleaning', 'todo', '1');
INSERT INTO `category` VALUES (15, 'Coach', 'todo', '2');
INSERT INTO `category` VALUES (16, 'Misc', 'todo', '1');
INSERT INTO `category` VALUES (17, 'Writing', 'project', '1');
INSERT INTO `category` VALUES (18, 'Environment', 'project', '1');
INSERT INTO `category` VALUES (19, 'Finance', 'project', '1');
INSERT INTO `category` VALUES (20, 'Nicki', 'project', '2');
INSERT INTO `category` VALUES (21, 'Work', 'todo', '2');
INSERT INTO `category` VALUES (22, 'Political involvement', 'project', '1');
INSERT INTO `category` VALUES (23, 'Apartment funtioning', 'todo', '1');
INSERT INTO `category` VALUES (24, 'Upkeep', 'todo', '1');
INSERT INTO `category` VALUES (25, 'Sports', 'todo', '1');
INSERT INTO `category` VALUES (26, 'Sentimental Items', 'project', '1');
INSERT INTO `category` VALUES (27, 'Pol Involvement', 'todo', '1');
INSERT INTO `category` VALUES (28, 'Russia', 'project', '1');
INSERT INTO `category` VALUES (29, 'Family History', 'project', '1');
INSERT INTO `category` VALUES (30, 'Research', 'todo', '1');
INSERT INTO `category` VALUES (31, 'Food', 'todo', '1');
INSERT INTO `category` VALUES (32, 'Secondary calendar', 'project', '1');
INSERT INTO `category` VALUES (33, 'Events', 'todo', '1');
INSERT INTO `category` VALUES (35, 'Website and Videos', 'project', '1');
INSERT INTO `category` VALUES (36, 'Super Kicker', 'project', '2');
INSERT INTO `category` VALUES (37, 'Classes to take', 'project', '1');
INSERT INTO `category` VALUES (38, 'Health Care', 'project', '1');
INSERT INTO `category` VALUES (39, 'Organizing', 'project', '1');
INSERT INTO `category` VALUES (40, 'Web Developing', 'todo', '2');
INSERT INTO `category` VALUES (41, 'Health', 'todo', '2');
INSERT INTO `category` VALUES (42, 'MAry Eileen coverage', 'todo', '3');
INSERT INTO `category` VALUES (43, 'BIS', 'todo', '3');
INSERT INTO `category` VALUES (44, 'Restaurant', 'spences', '2');
INSERT INTO `category` VALUES (45, 'Movies', 'spences', '2');
INSERT INTO `category` VALUES (46, 'Soccer', 'spences', '2');
INSERT INTO `category` VALUES (47, 'Computer', 'spences', '2');
INSERT INTO `category` VALUES (48, 'Other', 'spences', '2');
INSERT INTO `category` VALUES (49, 'Savings', 'spences', '2');
INSERT INTO `category` VALUES (50, 'Junk Food', 'spences', '2');
INSERT INTO `category` VALUES (51, 'Play Soccer', 'todo', '6');
INSERT INTO `category` VALUES (52, 'Papers', 'todo', '2');
INSERT INTO `category` VALUES (53, 'Cook', 'todo', '2');
INSERT INTO `category` VALUES (54, 'Market', 'spences', '4');
INSERT INTO `category` VALUES (55, 'Healthtalks.net', 'project', '8');
INSERT INTO `category` VALUES (56, 'Gym Classes', 'todo', '6');
INSERT INTO `category` VALUES (57, 'Spinning', 'todo', '6');
INSERT INTO `category` VALUES (58, 'Wedding', 'todo', '2');
INSERT INTO `category` VALUES (59, 'Rent', '', '2');
INSERT INTO `category` VALUES (60, 'Inter Mini Groups', 'project', '11');
INSERT INTO `category` VALUES (61, 'Inter Mini Groups', 'todo', '11');
INSERT INTO `category` VALUES (62, 'Inter Mini Groups', 'todo', '11');
INSERT INTO `category` VALUES (63, 'Personal trainer course', 'todo', '6');
INSERT INTO `category` VALUES (64, 'Friends', 'todo', '2');

-- --------------------------------------------------------

-- 
-- Table structure for table `change_events`
-- 

CREATE TABLE `change_events` (
  `id` int(11) NOT NULL auto_increment,
  `adate` date NOT NULL default '0000-00-00',
  `cdate` date NOT NULL default '0000-00-00',
  `e_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the date change for a recurring event  in a specific d' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `change_events`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `contact`
-- 

CREATE TABLE `contact` (
  `id` int(11) NOT NULL auto_increment,
  `h_a_id` int(11) default '0',
  `w_a_id` int(11) default '0',
  `b_a_id` int(11) default '0',
  `b_id` int(11) default '0',
  `first` varchar(30) NOT NULL default '',
  `last` varchar(40) NOT NULL default '',
  `spouse` varchar(50) default NULL,
  `children` varchar(255) default NULL,
  `cell` varchar(18) default NULL,
  `w_phone` varchar(18) default NULL,
  `h_phone` varchar(18) default NULL,
  `email` varchar(60) default NULL,
  `a_email` varchar(60) default NULL,
  `website` varchar(80) default NULL,
  `job_title` varchar(50) default NULL,
  `company` varchar(60) default NULL,
  `user_id` int(11) NOT NULL default '0',
  `type` char(1) default NULL,
  `notes` tinytext,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the contact information' AUTO_INCREMENT=120 ;

-- 
-- Dumping data for table `contact`
-- 

INSERT INTO `contact` VALUES (2, 12, 0, 0, 4, 'Candace', 'Bribiesca', '', '', '316.650.8596', '', '', '', 'candacebribiesca@hotmail.com', '', 'Teacher', 'B.E.', 2, 'F', 'One of the SSS coaches but now she teaches in a school in Chinatown.');
INSERT INTO `contact` VALUES (3, 0, 13, 0, 0, 'Orlando', 'Osorio', '', '', '718.610.9643', '212.877.7171', '', 'orlando@supersoccerstars.com', '', '', 'Coach Director', 'Super Soccer Stars', 2, 'W', 'He is the Coach director, I think.  ');
INSERT INTO `contact` VALUES (4, 0, 0, 0, 20, 'Tait', 'Ecklund', '', '', '702-425-0552', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (5, 17, 0, 0, 2, 'Nicole', 'Minichiello', '', '', '917.945.4720', '212.297.3051', '', 'vincenzamarie@gmail.com', 'vinni8888@hotmail.com', 'healthtalks.net', 'Analyst', 'NYPH', 2, 'R', 'My girlfriend.');
INSERT INTO `contact` VALUES (6, 11, 0, 0, 3, 'Lettie', 'Salgado', 'Andres', 'Darwin,Kattia,Edwin,Michael', '347.296.5445', '', '', 'velasquez_leticia@yahoo.com', 'mibeba11215@yahoo.com', 'www.geocities.com/velasquez_leticia', '', '', 2, 'R', 'My mother.');
INSERT INTO `contact` VALUES (7, 40, 0, 0, 5, 'Kattia', 'Salgado', '', 'Mathew Galan', '646.645.5058', '', '', 'puny07@aol.com', '', '', 'Nany', '', 2, 'R', 'My sister.');
INSERT INTO `contact` VALUES (8, 48, 0, 0, 1, 'Michael', 'Velasquez', 'Emma Colindres', 'Kathy Velasquez', '347.280.8509', '', '', 'velasquez_michael@yahoo.es', '', '', '', '', 2, 'R', 'My youngest brother.');
INSERT INTO `contact` VALUES (9, 11, 0, 0, 6, 'Linda', 'Salgado', '', 'Olvin Amaya', '718.808.2872', '', '', '', '', '', '', '', 2, 'R', 'My aunt.');
INSERT INTO `contact` VALUES (10, 19, 0, 0, 0, 'Marie', 'Marks', '', '', '716-471-8555', '', '', 'mariemarks@gmail.com', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (11, 23, 0, 45, 0, 'Jill55', 'Martino', '', '', '', '', '', 'jmmartino@loyola.edu', '', '', '', '', 1, '', 'Luara''s email - demartix@jmu.edu\r\n');
INSERT INTO `contact` VALUES (12, 32, 0, 0, 46, 'Nicole', 'Pruss', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (13, 0, 0, 0, 0, 'Juan de Dios', 'Salgado', '', '', '504.349.8339', '504.349.8352', '', '', '', '', 'Lawyer', '', 2, 'F', 'My mother''s friend: a lawyer in Honduras. ');
INSERT INTO `contact` VALUES (14, 0, 0, 0, 0, 'Bricho', 'Velasquez', '', 'Cindy,Richard,Checho,Brian', '', '', '', '', '', '', '', '', 2, 'R', 'Mi tio Bricho en Honduras');
INSERT INTO `contact` VALUES (15, 0, 0, 0, 7, 'Karla', 'Izaguirrez', 'Miguel Salgado', 'Jocelyn Salgado', '201. 284.1446', '', '', '', '', '', '', '', 2, 'F', 'Miguel''s Wife.');
INSERT INTO `contact` VALUES (16, 476, 0, 0, 8, 'Miguel', 'Salgado', 'Karla Izaguirrez', 'Jocelyn Salgado', '201. 344.4151', '', '', '', '', '', '', '', 2, 'R', 'My mother''s cousin that lives in NJ.');
INSERT INTO `contact` VALUES (17, 29, 0, 0, 16, 'Sabrina', 'Lea', '', '', '', '', '', '', '', '', '', '', 1, 'F', '');
INSERT INTO `contact` VALUES (18, 417, 0, 233, 0, 'Mark', 'Manning', '', '', '347-512-0719', '718-627-1127', '', '', '', '', 'Chiropracter', '', 1, 'P', 'Chiropractor');
INSERT INTO `contact` VALUES (19, 0, 0, 0, 0, 'Susan', 'Hein', '', '', '', '', '212-799-5207', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (20, 0, 0, 0, 9, 'Alyson', 'Rose Wood', '', '', '571-260(2)-9093', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (21, 0, 0, 0, 10, 'Brian', 'Kurz', '', '', '516-318-8772', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (22, 0, 0, 0, 0, 'John', 'Calandra', '', '', '718-926-5367', '', '', 'jmc12345@yahoo.com', 'jmc12345@gmail.com', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (23, 0, 0, 0, 0, 'Garrick', 'Leonard', '', '', '', '212-821-0864', '', '', '', '', 'Gynocologist', '', 1, 'P', '');
INSERT INTO `contact` VALUES (24, 477, 0, 0, 11, 'Xiomara', 'Salgado', '', 'Christian', '', '', '', '', '', '', '', '', 2, 'R', 'Mi Tia');
INSERT INTO `contact` VALUES (25, 0, 0, 0, 12, 'Edwin', 'Salgado', '', '', '', '', '', '', '', '', '', '', 2, 'R', 'My middle brother.  He leaves in Honduras.');
INSERT INTO `contact` VALUES (26, 0, 0, 0, 13, 'Katty', 'Velasquez', '', '', '', '', '', '', '', '', '', '', 2, 'R', 'Michael''s daughter.  She is still in Honduras with her mom, Emma.');
INSERT INTO `contact` VALUES (27, 0, 0, 0, 14, 'Mathew', 'Galan', '', '', '', '', '', '', '', '', '', '', 2, 'R', 'Kattia''s son.  My nephew.');
INSERT INTO `contact` VALUES (28, 0, 0, 0, 15, 'Hector', 'Salgado', '', '', '', '', '', '', '', '', '', '', 2, 'R', 'My uncle. He lives in New Orleans.');
INSERT INTO `contact` VALUES (29, 0, 0, 0, 0, 'Chris', 'Shiflett', 'Christina Shiflett', '', '917.334.3061', '', '', 'chris@shiflett.org', '', 'shiflett.org', 'PHP Security', 'Omni TI', 2, 'F', 'A friend I met in the park.');
INSERT INTO `contact` VALUES (30, 0, 0, 0, 0, 'Michael', 'Salgado', '', '', '347-707-5923', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (31, 0, 0, 0, 17, 'Dina', 'Levy', '', '', '646.256.9587', '', '', '', '', '', 'Lawyer', '', 2, 'F', 'One of my good friends.');
INSERT INTO `contact` VALUES (32, 0, 0, 0, 55, 'Jason', 'Karageorge', '', '', '917.282.9230', '', '', 'jpk2105@columbia.edu', '', '', 'Dr.', 'SSS', 2, 'F', 'A friend that I met in SSS and play soccer together for SSS.');
INSERT INTO `contact` VALUES (33, 33, 0, 0, 18, 'Andres', 'Bustillos', '', 'Karen, Kerly', '917.595.8922', '', '', 'bustillos_andres@yahoo.com', '', '', 'Bookeeper', 'FDC', 2, 'F', 'My Mother''s boyfriend.');
INSERT INTO `contact` VALUES (34, 0, 0, 35, 0, 'Oscar', 'Amaya', '', '', '', '718.492.5199', '718.748.0581', '', '', '', 'Paralegal', 'Amaya''s Inc.', 2, 'B', 'Oscar Amaya is following my case to get the papers.');
INSERT INTO `contact` VALUES (35, 36, 0, 0, 19, 'Mil', 'Hotz', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (36, 37, 0, 0, 0, 'Marie', 'Maurer', '', '', '503.939.4593', '', '', '', '', '', 'C. Eng.', 'Parsons', 2, 'F', '');
INSERT INTO `contact` VALUES (37, 0, 0, 0, 21, 'Mary', 'Zarob', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (38, 0, 0, 0, 22, 'Kattia', 'Velasquez', '', '', '', '', '', '', '', '', '', '', 7, '', 'Mi hija.');
INSERT INTO `contact` VALUES (39, 0, 0, 0, 23, 'emma', 'colimdres', 'michael', 'velasquz', '', '', '', '', '', '', '', '', 7, 'R', '');
INSERT INTO `contact` VALUES (40, 0, 0, 0, 24, 'mami', 'salgado', 'michael', 'velasquez', '', '', '', '', '', '', '', '', 7, 'R', '');
INSERT INTO `contact` VALUES (41, 0, 0, 0, 25, 'papa', 'salgado', 'michael', 'velasquez', '', '', '', '', '', '', '', '', 7, 'R', '');
INSERT INTO `contact` VALUES (42, 0, 0, 0, 26, 'darwin', 'salgado', 'michael', 'velasquez', '', '', '', '', '', '', '', '', 7, 'R', '');
INSERT INTO `contact` VALUES (43, 0, 0, 0, 27, 'edwin', 'salgado', 'michael', 'velasquez', '', '', '', '', '', '', '', '', 7, 'R', '');
INSERT INTO `contact` VALUES (44, 0, 0, 0, 28, 'kattia', 'salgado', 'michael', 'velasquez', '', '', '', '', '', '', '', '', 7, 'R', '');
INSERT INTO `contact` VALUES (45, 0, 0, 0, 29, 'mama  chon', 'salgado', 'michael', 'velasquez', '', '', '', '', '', '', '', '', 7, 'R', '');
INSERT INTO `contact` VALUES (46, 0, 0, 0, 30, 'mathew', 'salgado', 'michael', 'velasquez', '', '', '', '', '', '', '', '', 7, 'R', '');
INSERT INTO `contact` VALUES (47, 0, 0, 0, 31, 'mi papa  murio', 'salgado', 'michael', 'velasquez', '', '', '', '', '', '', '', '', 7, 'R', 'mi papa  murio  en julio  el  27');
INSERT INTO `contact` VALUES (48, 0, 0, 0, 32, 'Kerly', 'Bustillos', '', '', '', '', '', '', '', '', '', '', 4, 'R', 'Flowers and Chocolate');
INSERT INTO `contact` VALUES (49, 0, 0, 0, 0, 'Samuel', 'Salvodon', 'Gisele', 'Xavier', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (50, 0, 0, 0, 33, 'Adriana', 'Ponce', '', '', '718.909.6826', '', '', 'adriana_ny2001@hotmail.com', '', '', 'Coach', 'SSS', 2, 'F', 'One of the coaches that works in super soccer stars.');
INSERT INTO `contact` VALUES (51, 41, 0, 0, 0, 'Jen', 'Stumpf', '', '', '718.768.1171', '', '', 'stumpfer@gmail.com', '', '', 'Physical Therapist', '', 2, 'F', 'A friend a met playing soccer in Team X.');
INSERT INTO `contact` VALUES (52, 481, 0, 0, 0, 'Susan', 'Esterhay', '', '', '212.354.5103', '212.354.5133', '', 'esterhaylaw@yahoo.com', '', '', 'Lawyer', '', 2, 'B', 'My Lawyer.');
INSERT INTO `contact` VALUES (53, 43, 0, 0, 34, 'Jill', 'Martino', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (54, 44, 0, 0, 35, 'George', 'Minichiello', 'Linda', 'Nicole;Jackie', '', '', '', '', '', '', '', 'MRE', 2, 'R', 'Nicole''s Father.');
INSERT INTO `contact` VALUES (55, 0, 0, 0, 36, 'Sabino', 'Camporeale', 'Jayne', 'Joe;Jen', '', '', '', '', '', '', '', '', 2, 'R', 'Nicole''s mother cousin.');
INSERT INTO `contact` VALUES (56, 0, 0, 0, 0, 'Adrienne', 'Johnson', '', '', '512-423-4059', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (57, 0, 0, 0, 0, 'Adrienne', 'Paolillo', '', '', '908-334-0242', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (58, 0, 0, 0, 0, 'Alex', 'Avellini', '', '', '646-220-5194', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (59, 414, 0, 0, 0, 'Alyson', 'Rosewood', '', '', '571-262-9093', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (60, 0, 0, 0, 43, 'Amanda', 'Pekoe', '', '', '917-692-8409', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (61, 0, 0, 0, 0, 'Angelo', 'Turturro', 'Carolyn', '', '501-765-8520', '', '501-664-4081', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (62, 0, 0, 0, 0, 'Amy', 'Albenda', '', '', '917-327-2852', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (63, 0, 0, 0, 0, 'Amy', 'Ward', '', '', '', '', '516-633-0055', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (64, 0, 0, 0, 37, 'Nella', 'Camporeale', 'Charlie Klimkowski', '', '', '', '', '', '', '', '', '', 2, 'F', 'Nicole''s aunt in her mother''s side.');
INSERT INTO `contact` VALUES (65, 0, 0, 0, 38, 'Fran', 'Minichiello', '', '', '', '', '', '', '', '', '', '', 2, 'F', 'Nicole''s Aunt.');
INSERT INTO `contact` VALUES (66, 0, 0, 0, 39, 'Jayne', 'Camporeale', 'Sabino Camporeale', 'Erin;Patrick', '', '', '', '', '', '', '', '', 2, 'F', 'Nicole''s Uncle Sabino''s wife.');
INSERT INTO `contact` VALUES (67, 0, 0, 0, 40, 'Ann', 'Martino', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (68, 0, 0, 0, 41, 'Joe', 'Camporeale', '', '', '', '', '', '', '', '', '', '', 2, '', '');
INSERT INTO `contact` VALUES (69, 46, 0, 0, 0, 'Laura', 'Doss/Hook', 'Hunter', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (70, 0, 0, 0, 0, 'Luke', 'H', '', '', '423.432.8253', '', '', 'lukedavidh@gmail.com', '', '', 'Coach', 'SSS', 2, 'F', 'A friend. We play soccer together on Mondays.');
INSERT INTO `contact` VALUES (71, 0, 0, 0, 0, 'Jose', 'Veliz', '', '', '646.704.2377', '', '', 'jveliz37@msn.com', '', '', 'Coach', 'SSS', 2, 'F', 'A friend. We play together on Thursdays and Mondays.');
INSERT INTO `contact` VALUES (72, 0, 0, 0, 0, 'Peter', 'G', '', '', '', '', '', 'glenmullen@gmail.com', '', '', 'Coach', 'SSS', 2, 'F', 'A friend we play soccer together     on Mondays and Thursdays.');
INSERT INTO `contact` VALUES (73, 0, 0, 0, 0, 'Peter', 'Watson', '', '', '646.596.6549', '', '', 'petenatwatson@yahoo.com', '', '', 'E.C.', 'SSS', 2, 'F', 'A friend that I play soccer with on Mondays and Thursdays.');
INSERT INTO `contact` VALUES (74, 0, 0, 0, 0, 'Jason', 'Racin', '', '', '', '', '', 'raison31@hotmail.com', '', '', 'Coach', 'Asphalt Green', 2, 'F', 'A friend that use to work in SSS but now works in Asphalt Green. We play soccer in McCarren Park on the weekends and we play on Mondays.');
INSERT INTO `contact` VALUES (75, 0, 0, 0, 52, 'Evan', 'Tasch', '', '', '347.262.3110', '', '', 'evtasch@aol.com', '', '', 'Coach', 'SSS', 2, 'F', 'A friend from super soccer stars. We play soccer together on Thursdays.');
INSERT INTO `contact` VALUES (76, 449, 0, 0, 0, 'Joanna', '(Martino) Laub', 'Adam', '', '201-615-5764', '', '201-8501875', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (77, 47, 0, 0, 0, 'Deborah (debbie)', 'Everett', '', '', '', '212-836-8689', '', 'deverett@kayescholer.com', 'phoebecats@hotmail.com', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (78, 0, 0, 0, 0, 'Joey', 'Camporeale', '', '', '732-476-7680', '', '', '', '', '', '', '', 1, '', 'New Jersey Joe');
INSERT INTO `contact` VALUES (79, 0, 0, 0, 0, 'Jennifer', 'Camporeale', '', '', '732-331-5561', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (80, 0, 0, 0, 0, 'Selma', 'Solow', 'Semour', '', '718-934-4592', '', '718-646-1865', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (81, 0, 0, 0, 0, 'John', 'Gomes', '', '', '', '516-222-8883', '', '', '', '', 'Gynocologist', '', 1, 'P', 'Recommended by Dr. Manning.\r\n He can do an infrared scan for breast cancer. ');
INSERT INTO `contact` VALUES (82, 0, 0, 0, 0, 'Jena', 'Jamal', '', '', '914-420-8979', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (83, 0, 0, 0, 0, 'Dave', 'Bohr', '', '', '516-603-7631', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (84, 50, 0, 0, 0, 'Victor', 'Wigslaw', '', '', '', '', '718383-1181', '', '', '', 'old landlord in GP', '', 1, '', '');
INSERT INTO `contact` VALUES (85, 0, 0, 0, 0, 'Katie', 'Riordan', '', '', '', '', '', 'katie.e.riordan@gmail.com', '', '', 'Coordinator', 'SSS', 2, 'W', 'The SSS ex- schedule coordinator.');
INSERT INTO `contact` VALUES (86, 0, 0, 0, 0, 'Nathaniel', 'Morgan', '', '', '', '', '', 'nathaniel@nathanielmorgan.com', '', '', 'Coach', 'SSS', 2, 'F', 'A friend that works at sss as a coach.');
INSERT INTO `contact` VALUES (87, 0, 0, 0, 0, 'Debbie', 'Everett', 'Jay', '', '718-389-7903', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (88, 0, 0, 0, 44, 'Julia', 'Hotz', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (89, 0, 0, 0, 0, 'David', 'Liss', '', '', '917-842-1916', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (90, 142, 0, 0, 0, 'Mike', 'Zaccagnino', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (91, 0, 0, 0, 47, 'Jill', 'Martino', '', '', '', '', '', '', '', '', '', '', 2, '', 'Nicole''s cousin in NJ.');
INSERT INTO `contact` VALUES (92, 491, 0, 0, 0, 'Stephen', 'Levin', '', '', '908-380-7626', '718--963-7029', '646-467-1144', '', '', '', '', '', 1, '', 'Works for Vito Lopez; running for city council.');
INSERT INTO `contact` VALUES (93, 478, 0, 0, 48, 'Mario', 'Maldonado', '', '', '', '', '', '', '', '', '', '', 2, '', 'A friend that I play soccer with  and I met in Urban Soccer.');
INSERT INTO `contact` VALUES (94, 310, 0, 0, 49, 'Ann', 'Martino', 'Mike Martino', 'Joana; Jill; Daniel', '', '', '', '', '', '', '', '', 2, 'F', 'Nicole''s aunt.');
INSERT INTO `contact` VALUES (95, 0, 0, 0, 50, 'Jenne', 'Turner', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (96, 0, 0, 0, 51, 'Sam', 'Salvodon', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (97, 0, 0, 0, 53, 'Nina', 'Davila', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (98, 0, 0, 0, 0, 'LaKesha', 'Jimmerson', '', '', '', '', '(601) 883-6939', 'LaKesha.Jimmerson@riverregion.com', '', '', '', '', 1, '', 'Assistant Administrator\r\nRiver Region Health System\r\n2100 Highway 61 North\r\nVicksburg, MS 39183 ');
INSERT INTO `contact` VALUES (99, 480, 0, 0, 63, 'Richard', 'Velasquez', '', '', '917.284.7331', '', '', '', '', '', 'N/A', 'School', 2, 'R', 'My Cousin.');
INSERT INTO `contact` VALUES (100, 0, 0, 0, 56, 'Felicia', 'Leo', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (101, 411, 0, 0, 0, 'John', 'Saenz', '', '', '', '210-342-1424', '', '', '', '', '', 'Edward Jones', 1, '', '');
INSERT INTO `contact` VALUES (102, 412, 0, 0, 0, 'Melissa', 'Rabinowitz', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (103, 415, 0, 0, 0, 'Sarah', 'Yost', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (104, 416, 0, 0, 0, 'Libby', 'Vanderploeg', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (105, 0, 0, 0, 57, 'Marie', 'Hotz', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (106, 425, 0, 0, 0, 'Alyson', 'Rose-Wood', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (107, 0, 0, 0, 60, 'Xavier', 'Salvodon', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (108, 0, 0, 0, 0, 'Mark', 'Vogel', '', '', '', '212-253-6000', '', '', '', '', 'Doctor', '', 1, '', '');
INSERT INTO `contact` VALUES (109, 460, 0, 0, 0, 'Nancy', 'Chan', 'Ethan', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (110, 465, 0, 0, 0, 'Jena', 'Jamal -Waterman', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (111, 467, 0, 0, 0, 'Douglas', 'Freeley', '', '', '', '718-389-8585', '', '', '', '', 'MD', '', 1, 'P', 'Opthamologist');
INSERT INTO `contact` VALUES (112, 468, 0, 0, 0, 'Jacqueline', 'Minichiello', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (113, 0, 0, 0, 0, 'Barry', 'Cohen', '', '', '', '718-934-1222', '', '', '', '', 'Doctor', '', 1, '', '');
INSERT INTO `contact` VALUES (114, 0, 0, 0, 61, 'Marilyn', 'Thompson', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (115, 0, 0, 0, 62, 'Cate', 'Corey', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (116, 488, 0, 0, 0, 'Gregory', 'Landess', '', 'Jaz Ramos', '', '', '', 'gregorylandess@hotmail.com', '', 'gregorylandess.com', 'Pvt Trainer', '', 2, 'F', 'A friend a met in sss and I am working on his website.');
INSERT INTO `contact` VALUES (117, 0, 0, 0, 64, 'Ruth', 'Alcantara', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (118, 0, 0, 0, 65, 'Mathew', 'Galan', '', '', '', '', '', '', '', '', '', '', 1, '', '');
INSERT INTO `contact` VALUES (119, 0, 0, 0, 66, 'Nicole', 'Chee', '', '', '', '', '', '', '', '', '', '', 1, 'F', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `email`
-- 

CREATE TABLE `email` (
  `id` bigint(20) NOT NULL auto_increment,
  `from` varchar(50) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `message` mediumtext NOT NULL,
  `subject` varchar(150) NOT NULL default '',
  `user_id` bigint(20) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `day` tinyint(4) NOT NULL default '0',
  `year` int(11) NOT NULL default '0',
  `hour` tinyint(4) NOT NULL default '0',
  `minute` tinyint(4) NOT NULL default '0',
  `ampm` char(2) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds emails for a specific problem from a specific user' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `email`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `errors`
-- 

CREATE TABLE `errors` (
  `id` bigint(20) NOT NULL auto_increment,
  `user` varchar(12) NOT NULL default '',
  `month` tinyint(4) NOT NULL default '0',
  `day` tinyint(4) NOT NULL default '0',
  `year` int(11) NOT NULL default '0',
  `hour` tinyint(4) NOT NULL default '0',
  `minute` tinyint(4) NOT NULL default '0',
  `ampm` char(2) NOT NULL default '',
  `sql_output` tinytext NOT NULL,
  `etype` varchar(20) NOT NULL default '',
  `action` varchar(15) NOT NULL default '',
  `area` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds all the errors occurred database related except connec' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `errors`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `events`
-- 

CREATE TABLE `events` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `description` varchar(255) default NULL,
  `note` varchar(255) default NULL,
  `e_a_id` int(11) default NULL,
  `pname` varchar(50) default NULL,
  `phone` varchar(18) default NULL,
  `type` varchar(20) NOT NULL default '',
  `smonth` tinyint(2) default NULL,
  `sday` tinyint(2) default NULL,
  `syear` smallint(4) default NULL,
  `emonth` tinyint(2) default NULL,
  `eday` tinyint(2) default NULL,
  `eyear` smallint(4) default NULL,
  `shour` tinyint(2) default NULL,
  `sminute` tinyint(2) default NULL,
  `sampm` char(2) default NULL,
  `ehour` tinyint(2) default NULL,
  `eminute` tinyint(2) default NULL,
  `eampm` char(2) default NULL,
  `choice` char(1) NOT NULL default 's',
  `options` tinyint(1) default NULL,
  `days` tinyint(2) NOT NULL default '0',
  `weekday` char(3) default NULL,
  `months` tinyint(2) default NULL,
  `user_id` int(11) NOT NULL default '0',
  `calendar` char(1) NOT NULL default 'P',
  `location` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the events of the calendar' AUTO_INCREMENT=3102 ;

-- 
-- Dumping data for table `events`
-- 

INSERT INTO `events` VALUES (2, 'Lab', 'I have to get some blood out so that they can check my liver.', '', NULL, '', '', 'a', 4, 1, 2008, 0, 0, 0, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 2, 'P', 'Park Slope');
INSERT INTO `events` VALUES (3, 'Meeting with Brian and Bill', '', '', NULL, '', '', 'a', 10, 31, 2006, 0, 0, 0, 8, 30, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (5, 'Meeting with Bill and Brian', '', '', NULL, '', '', 'a', 10, 30, 2006, 0, 0, 0, 8, 30, 'AM', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (6, 'Meeting with Mary B', '', '', NULL, '', '', 'a', 10, 30, 2006, 0, 0, 0, 1, 30, 'PM', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (7, 'Meeting about Baseline', '', '', NULL, '', '', 'a', 11, 1, 2006, 0, 0, 0, 1, 55, 'PM', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (8, 'NLG Meeting', '', '', NULL, '', '', 'a', 11, 1, 2006, 0, 0, 0, 6, 15, 'pm', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (9, 'Cashiering task force', '', '', NULL, '', '', 'a', 10, 30, 2006, 0, 0, 0, 9, 0, 'AM', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (10, 'Admin and Technical training for HP 24', '', 'All day', NULL, '', '', 'a', 10, 30, 2006, 0, 0, 0, 0, 0, '', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (11, 'Security and cashiering meeting', '', '', NULL, '', '', 'a', 10, 30, 2006, 0, 0, 0, 9, 0, 'Am', 10, 0, 'am', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (12, 'Dinner with Felicia', '', '', NULL, '', '', 'a', 11, 15, 2006, 0, 0, 0, 5, 30, 'PM', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (14, 'Testing to see if options work', '', '', NULL, '', '', '', 0, 0, 0, 7, 2, 107, 0, 0, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Mon', 0, 2, 'P', '');
INSERT INTO `events` VALUES (15, 'Dentist: Dr. Patel', 'I am going to the dentist to fix a filling.', '', NULL, '', '', '', 0, 0, 0, 0, 0, 0, 11, 30, 'PM', 0, 0, 'AM', 'y', 0, 1, 'Mon', 1, 2, 'P', 'Park Slope Clinic');
INSERT INTO `events` VALUES (16, 'Department Heads meeting', '', '', NULL, '', '', 'a', 11, 13, 2006, 0, 0, 0, 9, 0, 'am', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (17, 'Training I', 'Coaching training.  Mandatory.', '', NULL, '', '', 'm', 0, 0, 0, 0, 0, 0, 6, 0, 'PM', 7, 30, 'PM', 's', 0, 0, '', 0, 2, 'P', '');
INSERT INTO `events` VALUES (18, 'Training II', 'Coaching Training. Mandatory meeting.', '', NULL, 'Dean Simpson', '917-494-9650', 'm', 11, 30, 2006, 11, 30, 2006, 6, 0, 'PM', 7, 30, 'PM', 's', NULL, 0, NULL, NULL, 2, 'P', NULL);
INSERT INTO `events` VALUES (30, 'Meeting with Marianne', '', '', NULL, '', '', 'a', 11, 16, 2006, 0, 0, 0, 11, 0, 'AM', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (44, 'Joe M', 'MEU', '', NULL, '', '', 'a', 11, 20, 2006, 0, 0, 0, 10, 30, 'am', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (41, 'Women at Rist', 'Managing your health in the age of information', '', NULL, '', '212-305-5917', 'a', 11, 20, 2006, 0, 0, 0, 5, 30, 'pm', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (972, 'Meet with Elvis from Brian''', '', '', 328, '', '', '', 8, 6, 2008, 8, 6, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (43, 'Pat Votta, Manny, Mohammed (mtg', 'Discuss current procedure - dif systems that they use', '', NULL, '', '', 'a', 11, 17, 2006, 0, 0, 0, 10, 0, 'AM', 0, 0, '', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (45, 'Thanksgiving Dinner', '', '', 3, 'Leticia Velasquez', '', 'o', 0, 0, 0, 0, 0, 0, 8, 0, 'PM', 11, 0, 'PM', 's', NULL, 0, NULL, NULL, 2, 'P', NULL);
INSERT INTO `events` VALUES (49, 'Call  - Marianne Carna', '', '', 0, '', '', '', 12, 1, 2006, 12, 1, 2006, 10, 30, 'AM', 11, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (50, 'Mtg w Shelly Crawford', '', '', 0, '', '', '', 12, 1, 2006, 12, 1, 2006, 2, 0, 'PM', 4, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (51, 'Envelopes to Joyce''s office', '', '', 0, '', '', '', 12, 1, 2006, 12, 1, 2006, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (53, 'Holiday Party', '', '', 0, '', '', '', 12, 18, 2006, 12, 18, 2006, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (54, 'Get together w B group', '', '', 0, '', '', '', 12, 26, 2006, 12, 26, 2006, 7, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'greenburg `10-171');
INSERT INTO `events` VALUES (55, 'Meet Equifax', '', '', 0, '', '', '', 12, 7, 2006, 12, 7, 2006, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (56, 'MEu Mtg @ Westchester', '', 'Find out exactly where meeting will be', 0, '', '', '', 12, 14, 2006, 12, 14, 2006, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (57, 'Mtg  Steve Estevez', '', '', 0, '', '', '', 12, 5, 2006, 12, 5, 2006, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (58, 'Quarterly Staff Mtg', '', '', 0, '', '', '', 12, 7, 2006, 12, 7, 2006, 9, 0, 'AM', 10, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (59, 'Luncheon', '', '', 0, '', '', '', 12, 8, 2006, 12, 8, 2006, 12, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (60, 'Mtg w/ Brian and John', '', '', 0, '', '', '', 12, 12, 2006, 12, 12, 2006, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (61, 'Mtg W Shelly Crawford', '', '', 0, '', '', '', 12, 5, 2006, 12, 5, 2006, 2, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (62, 'Mtg w Brenda Sauer and Tayna Cruz', '', '', 0, '', '', '', 12, 8, 2006, 0, 0, 0, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (63, 'Cashiering task force', '', '', 0, '', '', '', 12, 13, 2006, 12, 13, 2006, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (64, 'Mtg w Shelly Crawford', '', '', 0, '', '', '', 12, 8, 2006, 12, 8, 2006, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (66, 'Cashiering implementation', '', '', 0, '', '', '', 12, 5, 2006, 2, 5, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (67, 'Cashiering implementation', '', '', 0, '', '', '', 12, 12, 2006, 2, 28, 2007, 2, 30, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (68, 'Nutrition: General Meeting', '', '', 0, '', '', 'o', 0, 0, 0, 0, 0, 0, 0, 0, 'AM', 0, 0, 'AM', 'd', 0, 0, '', 0, 2, 'P', 'Park Slope Clinic');
INSERT INTO `events` VALUES (69, 'Call David Liss', '', '', 0, '', '', '', 12, 8, 2006, 12, 8, 2006, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (759, 'Table coaching', '', '', 92, '', '', '', 4, 2, 2008, 4, 2, 2008, 8, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Shabazz Center');
INSERT INTO `events` VALUES (71, 'Cashiering task force', '', '', 0, '', '', '', 1, 19, 2007, 1, 19, 2007, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (72, 'NLG mtg', '', '', 0, '', '', '', 1, 9, 2007, 1, 9, 2007, 6, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (73, 'Trinity Event', '', '', 0, '', '', '', 1, 6, 2007, 1, 6, 2007, 4, 0, 'PM', 6, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (74, 'Aunt Ann''s Birthday', '', '', 0, '', '', '', 1, 13, 2007, 1, 13, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (75, 'Mtg with David Liss', '', '', 0, '', '', '', 1, 24, 2007, 1, 24, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (76, 'Bgroup get together', '', '', 0, '', '', '', 1, 23, 2007, 1, 23, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (77, 'Make gybo  apptment', '', '', 0, '', '', '', 1, 8, 2007, 1, 8, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (78, 'Make gyno apptment', '', '', 0, '', '', '', 1, 8, 2007, 1, 8, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (79, 'Appointment', '', '', 0, '', '', '', 1, 11, 2007, 1, 11, 2007, 6, 0, 'PM', 7, 0, 'PM', 'w', 0, 1, 'Thu', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (80, 'Access meeting', 'Brian''s office', '', 0, '', '', '', 1, 10, 2007, 1, 10, 2007, 13, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (81, 'Acces mtg', '', '', 0, '', '', '', 1, 10, 2007, 1, 10, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (82, 'Access mtg', '', '', 0, '', '', '', 1, 10, 2007, 1, 10, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (83, 'Mt w/ Mercedes', 'Go over Chart', '', 0, 'M Perry', '', '', 1, 19, 2007, 1, 19, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (84, 'Speak to Mercedes', '', '', 0, '', '', '', 1, 26, 2007, 1, 26, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (85, 'Meet with Mercedes', '', '', 0, '', '', '', 1, 23, 2007, 1, 23, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (86, 'mt with mercy', '', '', 0, '', '', '', 1, 25, 2007, 1, 25, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (87, 'BAM Cafe Circus events', 'ersThe circus and a sideshow, jugglers clowns,etc.', '', 0, '', '', '', 2, 23, 2007, 2, 23, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (88, 'Finance Training', 'Get projector -', '', 0, '', '', '', 2, 6, 2007, 2, 6, 2007, 2, 0, 'PM', 4, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (89, 'State of the Hospital', '', '', 0, '', '', '', 2, 6, 2007, 2, 6, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (90, 'Lunch  with  Pat''s  group', '', '', 0, '', '', '', 2, 7, 2007, 2, 7, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (91, 'Work Out', '', '', 0, '', '', '', 2, 8, 2007, 2, 8, 2007, 2, 0, 'PM', 5, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (92, 'Gyno Appintment', 'BRING QUESTIONS!', '', 0, '', '', '', 3, 9, 2007, 3, 9, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (93, 'Bag Receiving Training', '', '', 0, '', '', '', 2, 9, 2007, 2, 9, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (94, 'Kingsborough Sunday dance', '', '', 0, '', '', '', 2, 11, 2007, 2, 11, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (95, 'soccer', '', '', 0, '', '', '', 2, 2, 2007, 0, 0, 0, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (96, 'soccer', '', '', 0, '', '', '', 2, 2, 2007, 0, 0, 0, 10, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (97, 'test', '', '', 0, '', '', '', 0, 0, 0, 0, 0, 0, 11, 0, 'PM', 0, 0, 'AM', 'd', 0, 4, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (98, 'Todo Tango', 'Swing club at lincoln center', '', 0, '', '', '', 4, 13, 2007, 4, 13, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (99, 'The Riveside Inspiratoinal Choir', 'Diverse musical literature - 15 dolllars, 10 in advance', '', 0, '', '', '', 2, 25, 2007, 2, 25, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (100, 'Ebony Ecumenical ensemble', '', '', 0, 'Box office for tickets', '212-870-6784', '', 3, 3, 2007, 3, 3, 2007, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (101, 'Piano and singing - Riverside church', 'Carolyn Braden', 'Free', 0, '', '', '', 3, 4, 2007, 3, 4, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (102, 'Singer and pianist at riverside churech', '', 'Free', 0, '', '', '', 4, 1, 2007, 4, 1, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (103, 'Annual english handbell festival', '', 'tickets at door 10-15 dollars', 0, '', '', '', 4, 22, 2007, 4, 22, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (104, 'The Pheonix quartet', '', 'free', 0, '', '', '', 6, 3, 2007, 6, 3, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (105, 'summer organ series at Riverside Church', '', '', 0, '', '', '', 7, 3, 7, 8, 7, 7, 7, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'S', NULL);
INSERT INTO `events` VALUES (106, 'Piano and Singing at Riverside Church', '', 'free', 0, '', '', '', 5, 20, 2007, 5, 20, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (107, 'Flute at Riverside Church', '', '', 0, '', '', '', 5, 6, 2007, 5, 6, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (108, 'Making Brooklyn Bloom -', '', '', 0, '', '', '', 3, 10, 2007, 3, 10, 2007, 10, 0, 'AM', 3, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (109, 'Creating a rain garden', '', '', 0, '', '', '', 4, 24, 2007, 4, 24, 2007, 6, 0, 'PM', 8, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (110, 'Greening up your storefront', '', '', 0, '', '', '', 5, 22, 2007, 5, 22, 2007, 6, 0, 'PM', 8, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (111, 'Twelve Angry Men', 'Courtroo dramas at the film forum', '', 0, '', '', '', 3, 2, 2007, 3, 2, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (112, 'Film -In herit the wind - @ Ethical culture societ', '', '', 0, '', '', '', 4, 6, 2007, 4, 6, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (113, 'Film - The Accused - @ethical culture society', '', '', 0, '', '', '', 5, 4, 2007, 5, 4, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (114, 'Film  - Anatomy of Murder @ Ethical culture societ', '', '', 0, '', '', '', 6, 1, 2007, 6, 1, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (115, 'Composting Class', 'Look at wesite - www.lesecoogycenter.org - spoke to Kate', '', 0, '', '', '', 2, 13, 2007, 2, 13, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (116, 'Front end  meeting', 'Helen K, Brian', '', 0, 'Helen K', '', '', 2, 21, 2007, 2, 21, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (117, 'Policy group', '', '', 0, '', '', '', 2, 28, 2007, 2, 28, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (160, 'CSA - movie - local farmers, etc.', '', 'www.times-up.org ir look at williamsburg CSa for info', 0, '', '', '', 3, 29, 2007, 3, 29, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (119, 'Shopping day with Joanna!', 'Dress shopping', '', 0, '', '', '', 4, 21, 2007, 4, 21, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (120, 'Lunch w Pat V''s group', '', '', 0, '', '', '', 2, 16, 2007, 2, 16, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (121, 'Brian Van Velzor meeting', '', '', 0, '', '', '', 2, 16, 2007, 2, 16, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (122, 'Valentine''s dinner', '', '', 0, '', '', '', 2, 14, 2007, 2, 14, 2007, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (123, 'Show w/ Amanda and Dad', '', '', 0, '', '', '', 2, 15, 2007, 2, 15, 2007, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (124, 'Cashiering task force', '', '', 0, '', '', '', 3, 7, 2007, 3, 7, 2007, 11, 30, 'AM', 1, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (125, 'Dr. Manning', '', '', 0, '', '', '', 2, 20, 2007, 2, 20, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (126, 'Mt w Brian  and James', '', '', 0, '', '', '', 2, 20, 2007, 2, 20, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (127, 'Staff meeting', '', '', 0, '', '', '', 2, 15, 2007, 2, 15, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (128, 'Mt w Eileen C and Beatriz', '', '', 0, '', '', '', 2, 22, 2007, 2, 22, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (129, 'Sam - Dinner get together', '', 'There is also event going on at BAM', 0, '', '', '', 2, 24, 2007, 2, 24, 2007, 0, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (130, 'Meet with Miraim B di Medicaid report', '', '', 0, '', '', '', 2, 21, 2007, 2, 21, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (131, 'Meet w Liz Daly time?', '', '', 0, '', '', '', 2, 20, 2007, 2, 20, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (132, 'Riverside Church Choir', '', '', 0, '', '', '', 2, 25, 2007, 2, 25, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (133, 'Quartery staff meeting', '', '', 0, '', '', '', 3, 9, 2007, 3, 9, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (134, 'Jackie''s Graduation', '', '', 0, '', '', '', 5, 20, 2007, 5, 20, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (135, 'Meeting with Ken and Jim atwell', '', '', 0, '', '', '', 2, 21, 2007, 2, 21, 2007, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (136, 'Meeting with Veronica', '', '', 0, '', '', '', 2, 23, 2007, 2, 23, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (137, 'mtg w Jim and Art', '', '', 0, '', '', '', 2, 23, 2007, 2, 23, 2007, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (138, 'Call with Terre', '', '', 0, '', '', '', 2, 27, 2007, 2, 27, 2007, 4, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (139, 'gyno appt', '', '', 0, '', '', '', 3, 9, 2007, 3, 9, 2007, 1, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (140, 'Dr. Manning Appt', '', '', 0, '', '', '', 3, 14, 2007, 3, 14, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (141, 'Lester Govia and reg coorrds', 'go up to', '', 0, '', '', '', 2, 27, 2007, 2, 27, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (142, 'Speak to Trinity Student', 'Ashley', '', 0, '', '', '', 3, 6, 2007, 3, 6, 2007, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (143, 'Show Healthpay to Phyllis Lantos', '', '', 0, '', '', '', 3, 13, 2007, 3, 13, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (144, 'Cashiering conference call 342-1515', '', '', 0, '', '', '', 3, 5, 2007, 3, 5, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (145, 'Dept Heads mtg', '', '', 0, '', '', '', 3, 7, 2007, 3, 7, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (146, 'Ethics for lunch', 'CHONY difficult cases', '', 0, '', '', '', 3, 22, 2007, 3, 22, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (147, 'Ethics for lunch', 'Bioethics 5th annuual event', '', 0, '', '', '', 4, 26, 2007, 4, 26, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (148, 'Ethics for lunch', 'Difficult cases', '', 0, '', '', '', 5, 10, 2007, 5, 10, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (149, 'Off the chart Band playing', '', '', 0, '', '', '', 3, 30, 2007, 3, 30, 2007, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (150, 'Show P Lantos Healthpay24', '', '', 0, '', '', '', 3, 30, 2007, 3, 21, 2007, 10, 0, 'AM', 3, 0, 'AM', '', 0, 0, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (151, 'Penny in Greenpoint', '', '', 0, '', '', '', 3, 30, 2007, 3, 30, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (152, 'Policy group meeting', '', '', 0, '', '', '', 3, 28, 2007, 3, 28, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (153, 'Gyn appointment', 'Look at questions', '', 0, '', '', '', 3, 19, 2007, 3, 19, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (154, 'Mtg w Atef', '', '', 0, '', '', '', 3, 16, 2007, 3, 16, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (155, 'One man performance - Concord, Virginia', 'Peter Neofotis - guy I met on train', '', 0, '', '', '', 4, 23, 2007, 0, 0, 0, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (156, 'Clinic Tour', '', '', 0, '', '', '', 3, 27, 2007, 3, 27, 2007, 11, 0, 'AM', 2, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (157, 'Mtg with trainers', '', '', 0, '', '', '', 3, 20, 2007, 3, 20, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (158, 'Non pt cash training', '', '', 0, '', '', '', 3, 22, 2007, 3, 22, 2007, 1, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (159, 'appt w Dr. Manning', '', '', 0, '', '', '', 4, 11, 2007, 4, 11, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (161, 'Speak with Veronica Lestelle', '', '', 0, '', '', '', 3, 20, 2007, 3, 20, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (162, 'Environment day', '', '', 0, '', '', '', 4, 14, 2007, 4, 14, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (163, 'Mt w Bill', '', '', 0, '', '', '', 3, 20, 2007, 3, 20, 2007, 8, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (164, 'Meeting with Phyllis Lantos', '', '', 0, '', '', '', 3, 30, 2007, 3, 30, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (165, 'Go live with Healthpay @ VC 3', '', '', 0, '', '', '', 3, 29, 2007, 3, 29, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (166, 'Hea;thpay24 clinic tour', '', '', 0, '', '', '', 4, 3, 2007, 4, 3, 2007, 9, 0, 'AM', 12, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (167, 'Basketball game', '', '', 0, '', '', '', 4, 6, 2007, 4, 6, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (168, 'mt Ellen Dooley', '', '', 0, '', '', '', 3, 27, 2007, 3, 27, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (169, 'Show David HP24', '', '', 0, '', '', '', 3, 29, 2007, 3, 29, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (171, 'Mt w Brenda Sauer', '', '', 0, '', '', '', 4, 10, 2007, 4, 9, 2007, 10, 0, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (172, 'Cherry Blossom Festival', '', '', 0, '', '', '', 4, 28, 2007, 4, 28, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (173, 'Cherry Blossom Festival', '', '', 0, '', '', '', 4, 29, 2007, 4, 29, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (174, 'Jazz and Roses', '', '', 0, '', '', '', 6, 3, 2007, 6, 3, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (175, 'Rose night at Botanic Gardens', '', '', 0, '', '', '', 6, 6, 2007, 6, 6, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (176, 'Bot. Gardens Sunset Picnic', '', '', 0, '', '', '', 6, 27, 2007, 6, 27, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (177, 'Bot. Gardens sunset picnic', '', '', 0, '', '', '', 7, 25, 2007, 7, 25, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (178, 'Bot. Gardens Sunset picnic', '', '', 0, '', '', '', 8, 29, 2007, 8, 29, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (179, 'Chile Pepper fiesta', '', '', 0, '', '', '', 9, 30, 2007, 9, 30, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (180, 'Bot. Gardens winter celebration', '', '', 0, '', '', '', 12, 2, 2007, 12, 2, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (181, 'Pete Neofotis on man show', 'About Concord Virginia=  met him on the train - brochure at work', '', 0, '', '', '', 4, 23, 2007, 7, 1, 2007, 8, 0, 'PM', 0, 0, 'AM', 'm', 2, 4, 'Mon', 1, 1, 'S', NULL);
INSERT INTO `events` VALUES (182, 'Prior balance collection', '_Liz Daly\r\nEileen Cottrell\r\nPat Votta\r\nKathy Tompkins\r\nSteve Estevez\r\nWilliam Farrell\r\nBrian Kurz\r\nNicole Minichiello\r\nHelen Kotchoubey', 'Create presentation', 0, '', '', '', 4, 10, 2007, 4, 10, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (183, 'McKeen payment collection meeting', '', '', 0, '', '', '', 4, 11, 2007, 4, 11, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (184, 'Meet with  Margaret di ARMDS', '', '', 0, '', '', '', 4, 5, 2007, 4, 5, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (185, 'Shari will call', '', '', 0, '', '', '', 4, 5, 2007, 4, 5, 2007, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (186, 'Peter Neofitis - One man show', 'Met Peter on train', '', 0, '', '', '', 4, 23, 2007, 4, 23, 2007, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (187, 'Aunt Ann''s house in cape cod', '', '', 0, '', '', '', 4, 28, 2007, 4, 28, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (188, 'Peter Neofritis one man show', 'Met Peter on the train', '', 0, '', '', '', 5, 21, 2007, 5, 21, 2007, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (189, 'Peter Neofritis  - one man show', 'Met Pete on the train', '', 0, '', '', '', 6, 18, 2007, 6, 18, 2007, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (190, 'Joanna''s Shower', '', '', 0, '', '', '', 8, 18, 2007, 8, 18, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (191, 'Kingsborough music - hatian creole', '', '', 0, '', '', '', 4, 15, 2007, 8, 15, 2007, 2, 0, 'PM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (192, 'Kingsborough Chorus and Bklyn band', '', '', 0, '', '', '', 5, 20, 2007, 5, 20, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (193, 'Mtg w Brenda Sauer', '', '', 0, '', '', '', 4, 10, 2007, 4, 10, 2007, 11, 0, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (194, 'Policy group', '', '', 0, '', '', '', 4, 23, 2007, 4, 23, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (195, 'Meet with Lesmah Fraser', 'Discuss clinictrac', '', 0, '', '', '', 4, 17, 2007, 4, 17, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (196, 'Financial Couseling overview', '', '', 0, '', '', '', 4, 16, 2007, 4, 16, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (197, 'FUP w Amanda Mendillo di cornell training', '', '', 0, '', '', '', 4, 13, 2007, 4, 13, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (198, 'Testing', 'testing month option 2', '', 0, 'testing', '', 'o', 5, 29, 2007, 6, 29, 2007, 10, 5, 'AM', 0, 0, 'AM', 'm', 0, 2, 'Mon', 2, 2, 'P', '');
INSERT INTO `events` VALUES (199, 'Go Live - AIM East', '', '', 0, '', '', '', 4, 12, 2007, 4, 12, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (200, 'Healthy Kids Benefit meeting', '', '', 0, '', '', '', 4, 17, 2007, 4, 17, 2007, 6, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (201, 'Meeting w Brian Hale', '', '', 0, '', '', '', 4, 18, 2007, 4, 18, 2007, 1, 0, 'PM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (202, 'Mt w Margaret and Brian', '', '', 0, '', '', '', 4, 13, 2007, 4, 13, 2007, 11, 0, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (203, 'Mt Carol Caraway', '', '', 0, '', '', '', 4, 17, 2007, 4, 17, 2007, 11, 0, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (204, 'Mt q Ben Scaglione (security)', '', '', 0, '', '', '', 4, 18, 2007, 4, 18, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (205, 'Mt w Janet Hildreth', '', '', 0, '', '', '', 4, 18, 2007, 4, 18, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (206, 'Appt for Darwin at Dr. Manning', '', '', 0, '', '', '', 5, 8, 2007, 5, 8, 2007, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (207, 'Dr. Manning Appt', '', '', 0, '', '', '', 5, 2, 2007, 5, 2, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (208, 'mt Carol Caraway', '', '', 0, '', '', '', 4, 17, 2007, 4, 17, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (209, 'Mt w Franklin', '', '', 0, '', '', '', 4, 17, 2007, 4, 17, 2007, 11, 45, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (210, 'Mt w margaret and ARMDS', '', '', 0, '', '', '', 4, 23, 2007, 4, 23, 2007, 2, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (212, 'Development go live', '', '', 0, '', '', '', 4, 24, 2007, 4, 24, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (213, 'Hpay go live - fort wash - 181st', '', '', 0, '', '', '', 4, 20, 2007, 4, 20, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (214, 'Mt Judith Dufoe', '', '', 0, '', '', '', 4, 17, 2007, 4, 17, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (215, 'Mt w Brian Hale', '', '', 0, '', '', 'a', 4, 22, 2007, 4, 22, 2007, 1, 0, 'PM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (216, 'Mt Brian Hale', '', '', 0, '', '', '', 4, 18, 2007, 4, 18, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (217, 'Eartth day broadcast', '', '', 0, '', '', '', 4, 21, 2007, 4, 21, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (218, 'Ukranian Band', '', 'call for tics', 0, '', '212-477-0729', '', 5, 6, 2007, 5, 6, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', NULL);
INSERT INTO `events` VALUES (219, 'International services mtg', '', '', 0, '', '', '', 5, 11, 2007, 5, 11, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (221, 'Meeting with Shari Nadelman', '', '', 0, '', '', '', 5, 11, 2007, 5, 11, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (222, 'mt w janet hildreth', '', '', 0, '', '', '', 5, 2, 2007, 5, 2, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (223, 'Walk for the rivers', 'Starts at south street seaport', '', 0, '', '', '', 5, 13, 2007, 5, 13, 2007, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (224, 'NYC friends of Rof Clearwater Riverkeeper monthly', 'Monthly meeting - nycfriendsofclearwater.org\r\nand\r\ngroups.yahoo.com/group/nycclearwater', 'Check website', 0, '', '', '', 5, 18, 2007, 0, 0, 0, 6, 30, 'PM', 0, 0, 'AM', 'm', 2, 3, 'Fri', 1, 1, 'S', NULL);
INSERT INTO `events` VALUES (225, 'Alumni weekend', '', '', 0, '', '', '', 10, 19, 2007, 10, 21, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (226, 'Meet with Steve Hermann', 'Radiology, etc.', '', 0, '', '', '', 5, 4, 2007, 5, 4, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (227, 'Tour of ARMDS', '', '', 0, '', '', '', 5, 8, 2007, 5, 8, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (228, 'Talk with HPay FC contact', '', '', 0, '', '', '', 5, 8, 2007, 5, 8, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (229, 'Mtg w  Lesmah Fraser''s group', '', '', 0, '', '', '', 5, 9, 2007, 5, 9, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (230, 'Conf. call w CU group for HPay fup', '', '', 0, '', '', '', 5, 29, 2007, 5, 29, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (231, 'Parks Day', '', '', 0, '', '', '', 5, 8, 2007, 5, 8, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (232, 'Policy Group Meeting', '', '', 0, '', '', '', 5, 30, 2007, 5, 30, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (233, 'Susan Hein', '', '', 0, '', '', '', 5, 29, 2007, 5, 29, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (234, 'Appt w Dr. Manning', '', '', 0, '', '', '', 6, 6, 2007, 6, 6, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (235, 'UHF policy meeting', '', '', 0, '', '', '', 5, 23, 2007, 5, 23, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (236, 'mt w BF di GL', '', '', 0, '', '', '', 5, 16, 2007, 5, 16, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (237, 'Mt w Shari Nadelman', '', '', 0, '', '', '', 5, 17, 2007, 5, 17, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (238, 'Mtg w Patti Denham', '', '', 0, '', '', '', 5, 16, 2007, 5, 16, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (239, 'Self pay task force', '', '', 0, '', '', '', 5, 30, 2007, 5, 30, 2007, 9, 0, 'AM', 11, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (240, 'Mt. w Brian', '', '', 0, '', '', '', 5, 17, 2007, 5, 17, 2007, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (241, 'Mt w Brian Van Velzor', '', '', 0, '', '', '', 5, 18, 2007, 5, 18, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (242, 'Meet with Annita @allen', '', '', 0, '', '', '', 5, 21, 2007, 5, 21, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (243, 'Admitting Go Live', '', '', 0, '', '', '', 6, 5, 2007, 6, 5, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (244, 'Call for climate', '50 Butler st off the F train - bring cell phone', '', 0, '', '', '', 5, 22, 2007, 5, 22, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (245, 'Meet with Lesmah and Rich I', 'Go over healthpay 24 pickup', '', 0, '', '', '', 6, 1, 2007, 6, 1, 2007, 3, 30, 'PM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (246, 'Mt W Carol Caraway', 'Update w Carol', '', 0, '', '', '', 6, 6, 2007, 6, 6, 2007, 11, 0, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (247, 'Go live at Allen', '', '', 0, '', '', '', 5, 23, 2007, 5, 23, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (248, 'Mt w Judy Podell', '', '', 0, '', '', '', 5, 22, 2007, 5, 22, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (249, 'Training with Marcia', '', '', 0, '', '', '', 5, 24, 2007, 5, 24, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (250, 'Steve Kurz', '', '', 0, '', '', '', 5, 25, 2007, 5, 25, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (251, 'Mt W Ellanie O', '', 'HT 5', 0, '', '', '', 6, 1, 2007, 6, 1, 2007, 9, 30, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (252, 'mt w brenda di admit go liive', '', '', 0, '', '', '', 6, 4, 2007, 6, 4, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (253, 'Train Soraida in Meth clinic', '445 East 68. Ste 3P', '445 East 68. Ste 3P', 0, '', '', '', 6, 7, 2007, 6, 7, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (254, 'presentation for Shari Nadelman', '', '', 0, '', '', '', 6, 6, 2007, 6, 6, 2007, 8, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (255, 'Mt peggiie cristiano for go ilve', '420 East 76th - gracie square', '', 0, '', '', '', 6, 7, 2007, 6, 7, 2007, 2, 30, 'PM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (256, 'Go live w peg chriastiano''s area', '', '', 0, '', '', '', 6, 8, 2007, 6, 8, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (257, 'Virtual town hall w moveon', '', '', 0, '', '', '', 7, 7, 2007, 7, 7, 2007, 0, 0, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', NULL);
INSERT INTO `events` VALUES (258, 'virtual town hall w moveon', '', '', 0, '', '', '', 7, 7, 2007, 7, 7, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (259, 'Newton Creek tour', 'www.working harbor.com - right in Greenpoint - register', 'Departs from Skyport Marina\r\nNewton Creek alliance', 0, '', '', '', 7, 8, 2007, 7, 8, 2007, 11, 0, 'AM', 3, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', NULL);
INSERT INTO `events` VALUES (260, 'Healthy Kids Benefit', '', '', 0, '', '', '', 6, 27, 2007, 6, 27, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (261, 'Dave Liss Mtg', '', '', 0, '', '', '', 6, 27, 2007, 6, 27, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (262, 'Equifax call', '', '', 0, '', '', '', 6, 27, 2007, 6, 27, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (263, 'Mt w Mercedes Crespo', 'Write center for aging\r\n1484 First Avenue, 1st Fl\r\nBtw 77th & 78th Street', '', 0, '', '', '', 6, 11, 2007, 6, 11, 2007, 10, 0, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (264, 'Mt w Mercedes Crespo', '1484 First Avenue, 1st Fl\r\nBtw 77th & 78th Street', '', 0, '', '', '', 6, 11, 2007, 6, 11, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (265, 'Brewing compost tea - Bot Gar', 'At the botanic gardens', '', 0, '', '', '', 7, 24, 2007, 7, 24, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (266, 'Composting in the city', 'Bot gardens', '', 0, '', '', '', 7, 9, 2007, 7, 9, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (267, 'Aunt Nel''s doc appt', '', '', 0, '', '', '', 6, 13, 2007, 6, 13, 2007, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (268, 'Blood drive', '', '', 0, '', '', '', 6, 22, 2007, 6, 22, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (269, 'Mt. w Aracelis', '', '7th Fl', 0, '', '', '', 6, 14, 2007, 6, 14, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (270, 'mt w Ellanie O', '', '', 0, '', '', '', 6, 12, 2007, 6, 12, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (271, 'Go Live w Wright Center', 'Mercedes Crespo', '', 0, '', '', '', 6, 19, 2007, 6, 19, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (272, 'Training for dental clinic', '', '', 0, '', '', '', 6, 22, 2007, 6, 22, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (273, 'Go Live with Pedes and OB', '', '', 0, '', '', '', 6, 28, 2007, 6, 28, 2007, 0, 0, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (274, 'Go see Beverly in accounting', '', '', 0, '', '', '', 6, 13, 2007, 6, 13, 2007, 3, 33, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (275, 'Speak to sasha', '', '', 0, '', '', '', 6, 13, 2007, 6, 13, 2007, 3, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (276, 'Mt w Brian', '', '', 0, '', '', '', 6, 18, 2007, 12, 13, 2007, 3, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (277, 'Mt margaret and Brian', '', '', 0, '', '', '', 6, 18, 2007, 6, 11, 2007, 9, 30, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (278, 'Go live at Allen', '', '', 0, '', '', '', 6, 22, 2007, 6, 22, 2007, 0, 0, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (279, 'Mt w KT hpay storage', '', '', 0, '', '', '', 6, 19, 2007, 6, 19, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (281, 'quarterly staff meeting', '', '', 0, '', '', '', 6, 21, 2007, 6, 21, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (282, 'Train Aracelis for go live', '', '', 0, '', '', '', 6, 19, 2007, 6, 19, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (283, 'Hpay call', '', '', 0, '', '', '', 6, 19, 2007, 6, 19, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (284, 'mt w Brian', '', '', 0, '', '', '', 6, 20, 2007, 6, 20, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (285, 'Mt w Margaret', '', '', 0, '', '', '', 6, 20, 2007, 6, 20, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (286, 'BBQ at Paul Portugese''s house', 'From New York:  Take Queens Midtown to Long Island Expressway.  Get off at the Clearview Expressway exit and head towards Grand Central Parkway.  Get off at exit # 2 Union Turnpike.  Make a left turn on Union Turnpike to 223rd Street then turn right on 22', '', 0, '', '', '', 7, 22, 2007, 7, 22, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (287, 'Chiro', '', '', 0, '', '', '', 7, 11, 2007, 7, 11, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (288, 'Mt w ken T and Ken B', '', '', 0, '', '', '', 6, 26, 2007, 6, 26, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (289, 'pick up from print shop', '', '', 0, '', '', '', 6, 27, 2007, 6, 27, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (290, 'Prep for parenthood.', '', '', 0, '', '', '', 7, 2, 2007, 7, 2, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (291, 'Staff mtg', '', '', 0, '', '', '', 6, 28, 2007, 6, 28, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (292, 'Mt Rich Einwechter', 'Budget ideas\r\n', '', 0, '', '', '', 7, 3, 2007, 7, 3, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (293, 'Go live at Dental', '', '', 0, '', '', '', 7, 11, 2007, 7, 11, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (294, 'CLINIC TOUR', '', '', 0, '', '', '', 7, 10, 2007, 7, 10, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (295, 'Mt w Yvettte', '', '', 0, '', '', '', 7, 3, 2007, 7, 3, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (296, 'Cooper Hewitt summer sessions music series', '', '', 0, '', '', '', 7, 6, 2007, 9, 7, 7, 0, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Fri', 0, 1, 'P', 'Cooperr Hewitt -=- Aurthur ros');
INSERT INTO `events` VALUES (297, 'El Museo del Barrio  - music sessions', 'Summer nights concert series', '', 0, '', '', '', 7, 4, 2007, 8, 23, 2007, 0, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Thu', 0, 1, 'S', 'el museo de barrio');
INSERT INTO `events` VALUES (298, 'MOMA summergarden concerts', 'Every sunday', '', 0, '', '', '', 7, 8, 2007, 9, 26, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (299, 'Beach day', '', '', 0, '', '', '', 8, 4, 2007, 8, 4, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (300, 'Self pay task force', '', '', 0, '', '', '', 8, 2, 2007, 8, 2, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (301, 'nina and david;s house warming', '', '', 0, '', '', '', 7, 20, 2007, 7, 20, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (302, 'Mt w carol caraway', '', '', 0, '', '', '', 7, 16, 2007, 7, 16, 2007, 12, 3, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (303, 'mt w brian and margaret', '', '', 0, '', '', '', 7, 12, 2007, 7, 12, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (304, 'Mt w Ken B over phone', '', '', 0, '', '', '', 7, 13, 2007, 7, 13, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (305, 'Me w CE', '', '', 0, '', '', '', 7, 17, 2007, 7, 17, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (306, 'Lesmah''s clinic manager mtg', '', '', 0, '', '', '', 7, 25, 2007, 7, 25, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (307, 'Marc Ribot', 'River to river', '', 0, '', '', '', 7, 17, 2007, 7, 17, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'River to river');
INSERT INTO `events` VALUES (308, 'River to river ochestra', '', '', 0, '', '', '', 7, 18, 2007, 7, 18, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'river to river');
INSERT INTO `events` VALUES (309, 'Prospect park blues', '', '', 0, '', '', '', 7, 20, 2007, 7, 20, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (310, 'Prospect park mix', '', '', 0, '', '', '', 7, 21, 2007, 7, 21, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (311, 'BP mov - The sting', '', '', 0, '', '', '', 7, 23, 2007, 7, 23, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (312, 'R2R - Cowboy music', '', '', 0, '', '', '', 7, 25, 2007, 7, 25, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'river to river');
INSERT INTO `events` VALUES (313, 'Hud - Back to the future', '', '', 0, '', '', '', 7, 27, 2007, 7, 27, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'Hudson river movie');
INSERT INTO `events` VALUES (314, 'CP - Modern dance', '', '', 0, '', '', '', 7, 27, 2007, 7, 27, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'Central park');
INSERT INTO `events` VALUES (315, 'R2R - singer', '', '', 0, '', '', '', 7, 30, 2007, 7, 30, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'river to river');
INSERT INTO `events` VALUES (316, 'R2r - Freedom songs', '', '', 0, '', '', '', 8, 1, 2007, 8, 1, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'river to river');
INSERT INTO `events` VALUES (317, 'CP - Philly dance coorp', '', '', 0, '', '', '', 8, 3, 2007, 8, 3, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'central park');
INSERT INTO `events` VALUES (318, 'PP - Carribean', '', '', 0, '', '', '', 8, 4, 2007, 8, 4, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'Prospect park');
INSERT INTO `events` VALUES (319, 'BP - Bus stop', '', '', 0, '', '', '', 8, 6, 2007, 8, 6, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'bryant park');
INSERT INTO `events` VALUES (320, 'Mcarren park movie - 3 kings', '', '', 0, '', '', '', 8, 7, 2007, 8, 7, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'Mcarren park');
INSERT INTO `events` VALUES (321, 'CP - contemporary ballet', '', '', 0, '', '', '', 8, 10, 2007, 8, 10, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'central park');
INSERT INTO `events` VALUES (322, 'PP - carribean festival', '', '', 0, '', '', '', 8, 11, 2007, 8, 11, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'prospect park');
INSERT INTO `events` VALUES (323, 'BP - casablanca', '', '', 0, '', '', '', 8, 13, 2007, 8, 13, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'bryant park');
INSERT INTO `events` VALUES (324, 'Mc Park mov - Bonnie and Clyde', '', '', 0, '', '', '', 8, 14, 2007, 8, 14, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (325, 'CP Orchestra', '', '', 0, '', '', '', 8, 15, 2007, 8, 15, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'centrakl park');
INSERT INTO `events` VALUES (326, 'hUD - Happy feet', '', '', 0, '', '', '', 8, 17, 2007, 8, 17, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'Pier 46');
INSERT INTO `events` VALUES (327, 'Blues BBQ', '', '', 0, '', '', '', 8, 19, 2007, 8, 19, 2007, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'Pier 54');
INSERT INTO `events` VALUES (328, 'HP24 fup mtg', '', '', 0, '', '', '', 7, 17, 2007, 9, 17, 2007, 2, 30, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'P', '');
INSERT INTO `events` VALUES (329, 'ARMDS site visit', '', '', 0, '', '', '', 7, 24, 2007, 7, 24, 2007, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (330, 'walk through of ED', '', '', 0, '', '', '', 7, 25, 2007, 7, 25, 2007, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (331, 'Lesmah''s office', '', '', 0, '', '', '', 7, 20, 2007, 7, 20, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (332, 'Mt w Chris Oates at Health OUtreach', '', '', 0, '', '', '', 7, 25, 2007, 7, 25, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '420  76th St.');
INSERT INTO `events` VALUES (333, 'Department heads', '', '', 0, '', '', '', 7, 19, 2007, 7, 19, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (334, 'ELC group presentations', 'at Dr. Corwin''s meeting - 69th and york - 2nd floor Weill medical college auditorium\r\n', '', 0, '', '', '', 7, 19, 2007, 7, 19, 2007, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (335, 'Access training', '', '', 0, '', '', '', 7, 24, 2007, 7, 24, 2007, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (336, 'ACCESS TRAINING', '', '', 0, '', '', '', 7, 31, 2007, 7, 31, 2007, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (337, 'pOLICY GROUP MEETING', '', '', 0, '', '', '', 7, 31, 2007, 7, 31, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (338, 'Table coaching training', 'Gloria Turner', '', 0, '', '', '', 8, 7, 2007, 8, 7, 2007, 12, 30, 'PM', 4, 30, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (339, 'Mtg w Mildred', 'Petty cash', '', 0, '', '', '', 7, 26, 2007, 7, 26, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (340, 'Pot Luck', '', '', 0, '', '', '', 8, 3, 2007, 8, 3, 2007, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (341, 'lunch w tim', '', '', 0, '', '', '', 7, 20, 2007, 7, 20, 2007, 12, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (342, 'Revenue group mt w mark larmore', '', '', 0, '', '', '', 10, 1, 2007, 10, 1, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'small conference room');
INSERT INTO `events` VALUES (343, 'mt w nancy Cutter', '404-279-5028', '', 0, '', '', '', 7, 26, 2007, 7, 26, 2007, 11, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'as');
INSERT INTO `events` VALUES (344, 'discovering Russia', '', '', 0, '', '', '', 7, 25, 2007, 7, 25, 2007, 12, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (345, 'Eco cruises to Heron Islands', 'From healthy living magazine  - south street seaport', '', 0, '', '', '', 7, 28, 2007, 8, 13, 2007, 7, 30, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Sat', 0, 1, 'S', '');
INSERT INTO `events` VALUES (346, 'Eco cruises', '212-742-1969', '', 0, '', '', '', 7, 29, 2007, 8, 13, 2007, 7, 30, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Sun', 0, 1, 'S', '');
INSERT INTO `events` VALUES (347, 'Introduction to Meditation', ' free mditation at 39 w 14th st rm 508', '', 0, 'light@manhatanmeditation.com', '', '', 7, 30, 2007, 12, 30, 2007, 7, 30, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'S', '39 w 14th st rm 508');
INSERT INTO `events` VALUES (348, 'Green drinks', 'Healthy living magazine - -second tues each month. GOto Green-links.org', '', 0, '', '', '', 8, 14, 2007, 8, 14, 2009, 7, 0, 'PM', 0, 0, 'AM', 'm', 2, 2, 'Tue', 1, 1, 'S', '');
INSERT INTO `events` VALUES (349, 'shari nadelman meeting', '', '', 0, '', '', '', 7, 27, 2007, 7, 27, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (350, 'Celebration lunch', '', '', 0, '', '', '', 8, 29, 2007, 8, 29, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'park');
INSERT INTO `events` VALUES (351, 'train nursing ed on Hpay', 'Payson house apt 4E', '', 0, '', '', '', 8, 8, 2007, 8, 8, 2007, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (352, 'training for ad hoc', '', '', 0, '', '', '', 7, 30, 2007, 7, 30, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (353, 'Training for shari nadelman', '', '', 0, '', '', '', 7, 31, 2007, 7, 31, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (354, 'Virgin Music Vestival', '', '', 0, '', '', '', 8, 3, 2007, 8, 3, 2007, 11, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', 'Baltimore');
INSERT INTO `events` VALUES (355, 'VIRGIN MUSIC FESTIVAL', '', '', 0, '', '', '', 8, 4, 2007, 8, 4, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (356, 'Yankees Game', '', '', 0, '', '', '', 8, 1, 2007, 8, 1, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', 'Yankee Stadium');
INSERT INTO `events` VALUES (357, 'Dinner with Mom', '', '', 0, '', '', '', 8, 2, 2007, 8, 2, 2007, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (358, 'Movie night', '', '', 0, '', '', '', 8, 6, 2007, 8, 6, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (359, 'Training', '', '', 0, '', '', '', 8, 7, 2007, 8, 7, 2007, 11, 0, 'AM', 12, 30, 'PM', 's', NULL, 0, NULL, NULL, 3, 'P', 'Service building');
INSERT INTO `events` VALUES (360, 'Beach', '', '', 0, '', '', '', 8, 11, 2007, 8, 11, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (361, 'CHRISSY COMES', '', '', 0, '', '', '', 8, 17, 2007, 8, 17, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (362, 'Healthy kids benefit meeting', '', '', 0, '', '', '', 8, 9, 2007, 8, 9, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (363, 'train Ellanie Occasio', '', '', 0, '', '', '', 8, 8, 2007, 8, 8, 2007, 2, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (364, 'Shari Nadelman', '', '', 0, '', '', '', 8, 2, 2007, 8, 2, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (365, 'Pot luck with Clausdio', '', '', 0, '', '', '', 8, 11, 2007, 8, 11, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (366, 'manny presentation at Cornell', '', '', 0, '', '', '', 8, 16, 2007, 8, 16, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (367, 'Mary Eileen''s Email', 'Billing WIP info', '', 0, '', '', '', 8, 3, 2007, 8, 11, 2007, 0, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Fri', 0, 3, 'P', '');
INSERT INTO `events` VALUES (368, 'Kathy Tompkins', '', '', 0, '', '', 'm', 8, 7, 2007, 8, 7, 2007, 2, 0, 'PM', 3, 0, 'PM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (369, 'Steve and Maria- BIS Training', '', '', 0, '', '', '', 8, 15, 2007, 8, 15, 2007, 11, 0, 'AM', 12, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (370, 'Brian Goldstein', '', '', 0, '', '', '', 8, 14, 2007, 8, 14, 2007, 10, 30, 'AM', 12, 0, 'PM', 's', 0, 0, '', 0, 3, 'P', '');
INSERT INTO `events` VALUES (371, 'WESTCHESTER', '', '', 0, '', '', '', 8, 10, 2007, 8, 10, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (372, 'WESTCHESTER', '', '', 0, '', '', '', 8, 13, 2007, 8, 13, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (373, 'Women''s Health Pilot', '', '', 0, '', '', '', 8, 6, 2007, 8, 6, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (374, 'Ad hoc training - LIz daly', '', '', 0, '', '', '', 8, 6, 2007, 8, 6, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (375, 'training session - service building', '', '', 0, '', '', '', 8, 14, 2007, 8, 14, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (376, 'training session - service building', '', '', 0, '', '', '', 8, 21, 2007, 8, 21, 2007, 2, 0, 'PM', 3, 30, 'PM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (377, 'training session - service building', '', '', 0, '', '', '', 8, 24, 2007, 8, 24, 2007, 11, 0, 'AM', 12, 30, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (378, 'Meeting with Brian', '', '', 0, '', '', '', 8, 6, 2007, 8, 6, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (379, 'Meet with Bill', 'Speak to Bill about go lives, outstanding areas, etc.', '', 0, '', '', '', 8, 8, 2007, 8, 8, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (380, 'mt w shari nadelman', '', '', 0, '', '', '', 8, 6, 2007, 8, 6, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (381, 'Wedding  Laura and Hunter', '713-784-3003 - Courtyard by Mariott - hotel', '', 0, '', '', '', 12, 8, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'houston texas');
INSERT INTO `events` VALUES (382, 'Alumni weekend', '', '', 0, '', '', '', 10, 19, 2007, 10, 21, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (383, 'Paul Sampson - mtg', '', '', 0, '', '', '', 8, 7, 2007, 8, 7, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (384, 'ELC Breakfast w dr corwin', '', '', 0, '', '', '', 8, 16, 2007, 8, 16, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (385, 'mt paul samspson', '', '', 0, '', '', '', 8, 9, 2007, 8, 9, 2007, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (386, 'ArMDs', '', '', 0, '', '', '', 8, 10, 2007, 8, 10, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (387, 'Training', '', '', 0, '', '', '', 8, 9, 2007, 8, 9, 2007, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (388, 'Training', '', '', 0, '', '', '', 8, 9, 2007, 8, 9, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (389, 'training', '', '', 0, '', '', '', 8, 9, 2007, 8, 9, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (390, 'Training Shelly', 'train Elizabeth and janet Harvey', '', 0, '', '', '', 8, 14, 2007, 8, 14, 2007, 9, 0, 'AM', 2, 0, 'PM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (391, 'Train Shelly C', 'Train Earnest and Jennifer', '', 0, '', '', '', 8, 14, 2007, 8, 14, 2007, 11, 45, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (392, 'Train', 'Cindy and Susan Rudder', '', 0, '', '', '', 8, 14, 2007, 8, 14, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (393, 'Go live with Shari Nadelman', '', '', 0, '', '', '', 8, 14, 2007, 8, 14, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (394, 'LIC training', '', '', 0, '', '', '', 8, 20, 2007, 8, 17, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '3611 21st n LIC bet 36th and 3');
INSERT INTO `events` VALUES (406, 'go live in westchester', '', '', 0, '', '', '', 8, 17, 2007, 8, 17, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (395, 'mt w brian', '', '', 0, '', '', '', 8, 13, 2007, 8, 13, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (396, 'Call Lykos from Nursing ed', '', '', 0, '', '', '', 8, 14, 2007, 8, 14, 2007, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (397, 'Training for INt. Services', '', 'spoke to Socoorro', 0, '', '', '', 8, 14, 2007, 8, 14, 2007, 2, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (398, 'Kenneth Wong', '', '', 0, '', '', '', 8, 15, 2007, 8, 15, 2007, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (399, 'HOME', '', '', 0, '', '', '', 8, 18, 2007, 8, 18, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (400, 'Coney Island?', '', '', 0, '', '', '', 8, 19, 2007, 8, 19, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (401, 'OHIO', '', '', 0, '', '', '', 8, 25, 2007, 8, 26, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (402, 'Marion', '', '', 0, '', '', '', 8, 31, 2007, 8, 31, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (403, 'Training for Beatriz Sherwood''', '', '', 0, '', '', '', 8, 16, 2007, 8, 16, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '57th St.');
INSERT INTO `events` VALUES (404, 'Lunch for ELC', 'The Faculty Club at NYP/Columbia\r\n630 West 168th Street- 4th Floor\r\n(Use entrance located at 168th and Ft.Washington on the south east \r\ncorner-Black Building)\r\n', '', 0, '', '', '', 8, 17, 2007, 8, 17, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (405, 'Westchester go live', '', '', 0, '', '', '', 8, 16, 2007, 8, 16, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (407, 'Lesmah', '', '', 0, '', '', '', 8, 15, 2007, 8, 15, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (408, 'BIS training', '', '', 0, '', '', '', 8, 27, 2007, 8, 27, 2007, 2, 0, 'PM', 3, 30, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (409, 'Alvester- BIS training audobon', '', '', 0, '', '', '', 8, 22, 2007, 8, 22, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (410, 'bis training - leon', '', '', 0, '', '', '', 8, 17, 2007, 8, 17, 2007, 2, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (411, 'Make Appointment to the Dentist', 'I have to make appointment to the dentist because on December 1st I was coughin too much so I couldn''t do the clean up. I already paid, so I don''t have to pay for the next section. I am suppose to make appointment within two weeks of December 1st.', '', 0, '', '', 'a', 0, 0, 0, 0, 0, 0, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 2, 'P', 'Park Slope Clinic');
INSERT INTO `events` VALUES (412, 'Nutrition General Meeting: Call to make appointmen', 'General meeting about nutrition.', '', 0, '', '', 'a', 0, 0, 0, 0, 0, 0, 9, 15, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 2, 'P', 'Park Slope Clinic');
INSERT INTO `events` VALUES (413, 'AUDOBON GO-LIVE', '', '', 0, '', '', '', 8, 28, 2007, 8, 28, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (414, 'Rev Cycle Mtg', '', '', 0, '', '', '', 8, 27, 2007, 8, 27, 2007, 11, 0, 'AM', 12, 0, 'PM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (415, 'SSS Christmas Party', 'It happens once a year. SSS holds a party for everyone that works in the SSS with open bar and food.', '', 0, '', '', 'o', 0, 0, 0, 0, 0, 0, 6, 30, 'PM', 10, 30, 'PM', 's', 0, 0, '', 0, 2, 'P', 'SOHO');
INSERT INTO `events` VALUES (416, 'BIS training', '', '', 0, '', '', '', 9, 21, 2007, 9, 21, 2007, 11, 0, 'AM', 1, 0, 'PM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (417, 'WESTCHESTER', '', '', 0, '', '', '', 9, 5, 2007, 9, 5, 2007, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (418, 'back from marion', '', '', 0, '', '', '', 9, 3, 2007, 9, 3, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (419, 'ER meeting', '', '', 0, '', '', '', 9, 18, 2007, 9, 18, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (420, 'BIS training - andres nieto', '', '', 0, '', '', '', 9, 5, 2007, 9, 5, 2007, 3, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (421, 'NLG meeting', '', '', 0, '', '', '', 9, 25, 2007, 9, 25, 2007, 6, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (422, 'Presentation at Revenue Cycle meeting!', '', '', 0, '', '', '', 10, 8, 2007, 10, 8, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (423, 'Table Coach session', '', '', 0, '', '', '', 10, 19, 2007, 10, 19, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (424, 'Bachelorette Party', '', '', 0, '', '', '', 10, 6, 2007, 10, 7, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (425, 'Staff meeting', '', '', 0, '', '', '', 10, 2, 2007, 10, 2, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (426, 'Dept Heals Uptown', '', '', 0, '', '', '', 10, 25, 2007, 10, 25, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (427, 'Self Pay task force', '', '', 0, '', '', '', 9, 27, 2007, 9, 27, 2007, 1, 0, 'PM', 0, 0, 'AM', 'w', 0, 2, 'Thu', 0, 1, 'P', '');
INSERT INTO `events` VALUES (428, 'Meeting w Karthleen Cuellen', 'Chony pilot for FC', '', 0, '', '', '', 10, 4, 2007, 10, 4, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (429, 'Dr. Manning', '', '', 0, '', '', '', 10, 3, 2007, 10, 3, 2007, 6, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (430, 'Mt w JP', '', '', 0, '', '', '', 9, 27, 2007, 9, 27, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (431, 'Long Isalnd City', '', '', 0, '', '', '', 9, 28, 2007, 9, 28, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (432, 'self pay task force premeeting', '', '', 0, '', '', '', 10, 12, 2007, 10, 12, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '342-1515');
INSERT INTO `events` VALUES (433, 'Nursery @ 92Y', '', '', 0, 'Richard Smith', '', 'm', 9, 28, 2007, 9, 28, 2007, 2, 30, 'PM', 3, 30, 'PM', 's', NULL, 0, NULL, NULL, 6, 'P', 'Upper East Side');
INSERT INTO `events` VALUES (434, 'Mt  w Lourdes - VC3', '', '', 0, '', '', '', 10, 4, 2007, 10, 4, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (435, 'STAFF meeting - Brian''s office', '', '', 0, '', '', '', 10, 2, 2007, 10, 2, 2007, 10, 0, 'AM', 11, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (436, 'Hemodialysis meeting', '', '', 0, '', '', '', 10, 3, 2007, 10, 3, 2007, 3, 0, 'PM', 4, 0, 'AM', 's', 0, 0, '', 0, 3, 'P', '');
INSERT INTO `events` VALUES (437, 'Erin''s Birthday Party', '', '', 0, '', '', '', 10, 5, 2007, 10, 5, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (445, 'Rashida', '', '', 0, '', '', '', 10, 9, 2007, 10, 9, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (439, 'GIANT''S GAME', '', '', 0, '', '', '', 10, 7, 2007, 10, 7, 2007, 11, 0, 'AM', 5, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (440, 'Stuart''s Birthday', '', '', 0, '', '', '', 10, 8, 2007, 10, 8, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (441, 'LONDON', '', '', 0, '', '', '', 10, 25, 2007, 10, 29, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 3, 'P', '');
INSERT INTO `events` VALUES (442, 'PPD shot', '', '', 0, '', '', '', 10, 9, 2007, 10, 9, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (443, 'CHONY FC meeting', '40 and 5th', '', 0, '', '', '', 10, 10, 2007, 10, 10, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (444, 'Admitting Go-Lives', '', '', 0, '', '', '', 10, 13, 2007, 10, 13, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (446, 'Jim Tallon speaking at UHF', '', '', 0, '', '', '', 10, 10, 2007, 10, 10, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (447, 'UHF Meeting', '', '', 0, '', '', '', 11, 13, 2007, 11, 13, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (448, 'UHF Event', 'Bedtine story project', '', 0, '', '', '', 12, 6, 2007, 12, 6, 2007, 5, 30, 'PM', 8, 30, 'PM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (449, 'Amanda''s Birthday Party', 'Nicole''s friend''s birthday.', '', 0, 'Nicole Minichiello', '', 'o', 2, 6, 2009, 2, 6, 2009, 7, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 2, 'P', 'Slate');
INSERT INTO `events` VALUES (1276, 'Talk w Mike K', '', '', 0, '', '', '', 2, 2, 2009, 2, 2, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (450, 'PPD shot read', '', '', 0, '', '', '', 10, 11, 2007, 10, 11, 2007, 1, 0, 'PM', 4, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (451, ' Dr. Moralez', 'I have to go see Dr. Maralez for my blood results and also to check if a disease I think I have is for real.', '', 0, '', '', 'a', 4, 12, 2008, 0, 0, 0, 1, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 2, 'P', 'Park Slope');
INSERT INTO `events` VALUES (452, 'Go live w Dermatology', 'Call in advance for official training', 'Vanessa Riviero 305-5550', 0, '', '', '', 10, 17, 2007, 10, 17, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (453, 'Call Ken Bl', '', '', 0, '', '', '', 10, 10, 2007, 10, 10, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (454, 'Healthpay Outpatient file testing', 'JP sent email with file  - send him patient names', '', 0, '', '', '', 10, 12, 2007, 10, 12, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (455, 'Training for Gail D', '', '', 0, '', '', '', 10, 12, 2007, 10, 12, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (456, 'meet w Lourdes', '', '', 0, '', '', '', 10, 17, 2007, 10, 17, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (457, 'Call Gloria K', '', '', 0, '', '', '', 10, 15, 2007, 10, 15, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (458, 'Volunteer at the CSA', '', '', 0, '', '', '', 10, 27, 2007, 10, 27, 2007, 8, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (459, 'Visit Sam and Baby', '', '', 0, '', '', '', 10, 20, 2007, 10, 20, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (460, 'Nina''s birthday dinner', '', '', 0, '', '', '', 10, 16, 2007, 10, 16, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (461, 'Dinner w JO', '', '', 0, '', '', '', 10, 17, 2007, 10, 17, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (462, 'Chip''s Birthday Party', 'Chip''s birthday party in Queens.', '', 0, 'Sandra', '646.242.1937', 'o', 2, 31, 2009, 2, 31, 2009, 5, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 2, 'P', 'Break Bar & Billiard');
INSERT INTO `events` VALUES (463, 'Table coaching - all day', '', '', 0, '', '', '', 11, 30, 2007, 11, 30, 2007, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (464, 'Call 9149975950', 'Gails staff going live w non patient cash', '', 0, '', '', '', 10, 22, 2007, 10, 22, 2007, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (465, 'train Pam W on HP error posting', '3rd fl rm 317', '', 0, '', '', '', 10, 19, 2007, 10, 19, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (466, 'Phase II mtg w Lesmah', '', '', 0, '', '', '', 10, 24, 2007, 10, 24, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (467, 'Call Glen Ednie', '', '', 0, '', '', '', 10, 18, 2007, 10, 18, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (468, 'MTM Session', '', '', 0, '', '', '', 11, 10, 2007, 11, 10, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', 'Edison, NJ');
INSERT INTO `events` VALUES (469, 'JAPAN', '', '', 0, '', '', '', 11, 18, 2007, 11, 18, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (470, 'Lissa''s Birthday Dinner', '', '', 0, '', '', '', 10, 20, 2007, 10, 20, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (471, 'Hemodialysis meeting', '', '', 0, '', '', '', 10, 24, 2007, 10, 24, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (472, 'JK', '', '', 0, '', '', '', 10, 19, 2007, 10, 19, 2007, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (473, 'Date w/ Greg', '', '', 0, '', '', '', 10, 19, 2007, 10, 19, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (474, 'health policy commissioner speech', 'Commissioner Daines.', 'Robert F. Wagner Graduate School of Public Service\r\nNew York University\r\nRudin Family Forum for Civic Dialogue\r\nThe Puck Building, 295 Lafayette St., 2nd Fl.\r\n', 0, '', '', '', 11, 7, 2007, 11, 7, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'The Puck Building, 295 Lafayet');
INSERT INTO `events` VALUES (475, 'WEDDING', '', '', 0, '', '', '', 11, 17, 2007, 11, 17, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (476, 'Miguel''s Birthday', '', '', 0, '', '', '', 11, 3, 2007, 11, 3, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (477, 'Dinner', '', '', 0, '', '', '', 10, 30, 2007, 10, 30, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (478, 'Convo w CVENT', '', '', 0, '', '', '', 10, 22, 2007, 10, 22, 2007, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (479, 'Dinner w candace and Jason', '', '', 0, '', '', '', 10, 23, 2007, 10, 23, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (480, 'Meeting about fare increase', 'in Bklyn, Look on MTA site', '', 0, '', '', '', 11, 5, 2007, 11, 5, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (481, 'Dr. Manning Appt', '', '', 0, '', '', '', 11, 13, 2007, 11, 13, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (482, 'Open batch training for Khawaja''s staff', '', '', 0, '', '', '', 10, 24, 2007, 10, 24, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (483, 'Training for Marcia''s group on Open batch', '', '', 0, '', '', '', 10, 25, 2007, 10, 25, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (484, 'Meet w Kathy Cullen', 'Phase II', '', 0, '', '', '', 10, 24, 2007, 10, 24, 2007, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (485, 'Cashiering task force', '', '', 0, '', '', '', 11, 15, 2007, 11, 15, 2007, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '342-1515');
INSERT INTO `events` VALUES (486, 'Phase II meeting w Kathy and Steve', '', '', 0, '', '', '', 10, 24, 2007, 10, 24, 2007, 11, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (487, 'Dinner with Amanda', '', '', 0, '', '', '', 11, 7, 2007, 11, 7, 2007, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (488, 'Retrain Shelly''s group', 'Payne Whitney ad hoc training', '', 0, '', '', '', 11, 2, 2007, 11, 2, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (489, 'Mt w Kathy Tompkins', '', '', 0, '', '', '', 10, 24, 2007, 10, 24, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (490, 'Send email to Policy Club', '', '', 0, '', '', '', 10, 25, 2007, 10, 25, 2007, 11, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (491, 'FC Task Force', '', '', 0, '', '', '', 11, 8, 2007, 11, 8, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (492, 'Dr. Valdemir Sentome', 'Regular visit', '', 0, '', '', 'a', 10, 31, 2007, 10, 31, 2007, 3, 15, 'PM', 3, 30, 'PM', 's', NULL, 0, NULL, NULL, 4, 'P', 'Coney Islan Medical Center');
INSERT INTO `events` VALUES (493, 'Daniel''s game', '', '', 0, '', '', '', 11, 11, 2007, 11, 11, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (494, 'OUt with Elaine', '', '', 0, '', '', '', 11, 2, 2007, 11, 2, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (495, 'Dermatology go live', 'vanessa 3055550', '', 0, '', '', '', 11, 1, 2007, 11, 1, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (496, 'stipend payment', 'Stipend payment period 10/16/07-10/31/07', '', 0, '', '', 'o', 11, 8, 2007, 11, 8, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 4, 'P', '');
INSERT INTO `events` VALUES (497, 'Call Jeff Bokser', '', '', 0, '', '', '', 10, 31, 2007, 10, 31, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (498, 'Table Coaching all day', '', '', 0, '', '', '', 11, 6, 2007, 11, 6, 2007, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (499, 'Table coaching', '', '', 0, '', '', '', 12, 7, 2007, 12, 7, 2007, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (500, 'Phase II call w Brenda Sauer', '', '', 0, '', '', '', 10, 31, 2007, 10, 31, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (501, 'Call Kathleen Tomkins', '', '', 0, '', '', '', 10, 30, 2007, 10, 30, 2007, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (502, 'Spinning', '', '', 0, '', '', 'o', 11, 2, 2007, 11, 2, 2007, 7, 0, 'AM', 7, 50, 'AM', 's', NULL, 0, NULL, NULL, 6, 'P', '6 Ave. Manhattan');
INSERT INTO `events` VALUES (503, 'Spinning', '', '', 0, '', '', 'o', 11, 1, 2007, 11, 1, 2007, 6, 30, 'PM', 7, 25, 'PM', 's', NULL, 0, NULL, NULL, 6, 'P', 'Sheepshead Bay');
INSERT INTO `events` VALUES (504, 'Kwando', '', '', 0, '', '', 'o', 11, 1, 2007, 11, 1, 2007, 7, 30, 'PM', 8, 30, 'PM', 's', 0, 0, '', 0, 6, 'P', 'Sheepshead Bay');
INSERT INTO `events` VALUES (505, 'Bike ride', '', '', 0, '', '', 'o', 11, 4, 2007, 11, 4, 2007, 8, 0, 'AM', 12, 0, 'PM', 's', NULL, 0, NULL, NULL, 6, 'P', 'Long Island');
INSERT INTO `events` VALUES (506, 'Broadway Show', '', '', 0, '', '', 'o', 11, 23, 2007, 11, 23, 2007, 8, 0, 'PM', 10, 0, 'PM', 's', NULL, 0, NULL, NULL, 6, 'P', 'Manhathan');
INSERT INTO `events` VALUES (507, 'WIP Webinar', '', '', 0, '', '', '', 11, 5, 2007, 11, 5, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (508, 'BIS training', '', '', 0, '', '', '', 11, 6, 2007, 11, 6, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (509, 'Hemodialysis meeting', '', '', 0, '', '', '', 11, 15, 2007, 11, 15, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (510, 'Hair appointment', 'Salon Rocks\r\n251 Rock road - near railroad byu bank of america', '', 0, '', '', '', 11, 17, 2007, 11, 17, 2007, 8, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (511, 'Meet with Jeff Bokser', 'm118A\r\nFirst floor M building', '', 0, '', '', '', 11, 28, 2007, 11, 28, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (512, 'manicure', '', '', 0, '', '', '', 11, 14, 2007, 11, 14, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (513, 'Healthpolicy discussion', '', '', 0, '', '', '', 11, 27, 2007, 11, 27, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (514, 'Nova intr call', '', '', 0, '', '', '', 11, 7, 2007, 11, 7, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (515, 'Lunch', '', '', 0, '', '', '', 11, 2, 2007, 11, 2, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (516, 'Mt w Bill', 'Di CVent account and banking downtown', '', 0, '', '', '', 11, 9, 2007, 11, 9, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (517, 'cALL jp THEN fRED mCCREADY', '', '', 0, '', '', '', 11, 2, 2007, 11, 2, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (518, 'Cash posting training', '', '', 0, '', '', '', 11, 5, 2007, 11, 5, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (519, 'Go to 3rd fllor and check posting', '', '', 0, '', '', '', 11, 7, 2007, 11, 7, 2007, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (520, 'Call JP di INt services', '', '', 0, '', '', '', 11, 7, 2007, 11, 7, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (521, 'MTA hearing', '', '', 0, '', '', '', 11, 13, 2007, 11, 13, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (522, 'Potluck dinner', 'Natalie Kaire & Paul Jacobsen\r\n235 Berry St., between Grand and North 1st, Brooklyn, NY US', '', 0, '', '', '', 11, 10, 2007, 11, 10, 2007, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (523, 'Return from Texas', '', '', 0, '', '', '', 12, 9, 2007, 12, 9, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (524, 'Women''s Health', '', '', 0, 'Dr. Loftman', '', 'a', 12, 6, 2007, 0, 0, 0, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 6, 'P', '110 West 97th Street, NY, NY');
INSERT INTO `events` VALUES (525, 'Adult Medicine', '', '', 0, 'Dr. Lai', '', 'a', 12, 17, 2007, 12, 17, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 6, 'P', '110 West 97th Street, NY, NY');
INSERT INTO `events` VALUES (526, 'Group Excercise', '', '', 0, '', '', 'o', 11, 7, 2007, 5, 28, 2008, 10, 0, 'AM', 10, 55, 'AM', 'w', 0, 0, 'Wed', 0, 6, 'P', 'Sheepshead Bay Bally');
INSERT INTO `events` VALUES (527, 'call fran pellot', '', '', 0, '', '', '', 11, 7, 2007, 11, 7, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (528, 'Paul potugese''s concert', '', '', 0, '', '', '', 12, 14, 2007, 12, 14, 2007, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (529, 'Holiday party', '', '', 0, '', '', '', 12, 21, 2007, 12, 21, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (530, 'speak w Julio C', '', '', 0, '', '', '', 11, 9, 2007, 11, 9, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (531, 'mt w dr corwin', 'Cayuga Room at the Weill Cornell Campus from 7:30am', '', 0, '', '', '', 11, 15, 2007, 11, 15, 2007, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (532, 'Speak w K. Cullen', '', '', 0, '', '', '', 11, 14, 2007, 11, 14, 2007, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (533, 'Mt w K Tomkins and S Estevez', '', '', 0, '', '', '', 11, 15, 2007, 11, 15, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (534, 'Call Janet Negron', '', '', 0, '', '', '', 11, 14, 2007, 11, 14, 2007, 9, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '63164');
INSERT INTO `events` VALUES (535, 'appointment with dr. manning', '', '', 0, '', '', '', 11, 28, 2007, 11, 28, 2007, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (536, 'ethics for lunch', 'Hammer Health sciences center rm 401.', '', 0, '', '', '', 11, 15, 2007, 11, 15, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (537, 'Call Ellanie O', '', '', 0, '', '', '', 11, 16, 2007, 11, 16, 2007, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (538, 'Meeting with Bill and PFS', '', '', 0, '', '', '', 11, 27, 2007, 11, 27, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (539, 'Thanksgiving', 'Thanksgiving', '', 0, '', '', '', 11, 1, 2007, 0, 0, 0, 6, 0, 'PM', 0, 0, 'AM', 'y', 0, 3, 'Thu', 11, 2, 'P', 'Winsor Terrace');
INSERT INTO `events` VALUES (540, 'Quarterly staff meeting', '', '', 0, '', '', '', 12, 19, 2007, 12, 20, 2007, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (541, 'Mt w Rita Hamburg', '', '', 0, '', '', '', 11, 26, 2007, 11, 26, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Milstein 8 HN--Room 8-114*');
INSERT INTO `events` VALUES (542, 'AT systems', 'Debbie christiano - 908-482-0224', '', 0, '', '', '', 11, 21, 2007, 11, 21, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (543, 'Mt w Ellanie Ocasio', 'Then goto 445 east 68th St. \r\n', '', 0, '', '', '', 11, 28, 2007, 11, 28, 2007, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (544, '2008 NYP Kickoff', '', '', 0, '', '', '', 1, 30, 2008, 1, 30, 2008, 8, 30, 'AM', 12, 30, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (545, 'Biethics lunch', 'Smoking and the workplace', '', 0, '', '', '', 12, 11, 2007, 12, 11, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (546, 'Facilitator training for revenue learning map', '12-4 p', '', 0, '', '', '', 12, 6, 2007, 12, 6, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'CHONY 7 central rm 734');
INSERT INTO `events` VALUES (547, 'Facilitator training for learning map', '', '', 0, '', '', '', 12, 7, 2007, 12, 7, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (548, 'Call into Brian', '', '', 0, '', '', '', 11, 28, 2007, 11, 28, 2007, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (549, 'Learning Map training', 'Payson in MRD conference room on second floor', '', 0, '', '', '', 12, 17, 2007, 12, 17, 2007, 10, 0, 'AM', 12, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'payson 2nd floor');
INSERT INTO `events` VALUES (550, 'CSA core group meeting', '', '', 0, '', '', '', 12, 2, 2007, 12, 2, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (551, 'Talk to tmobile di voicemail trouble', 'Kyle called from customer care on NOvember 29, at 10 am.', '', 0, '', '', '', 12, 12, 2007, 12, 12, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (552, 'Call in to 212-746-5323', '', '', 0, '', '', '', 11, 29, 2007, 11, 29, 2007, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (553, 'Appointment with Dr. Manning', '', '', 0, '', '', '', 1, 9, 2008, 1, 9, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (554, 'Holiday get together at the Bravest', '', '', 0, '', '', '', 12, 17, 2007, 12, 17, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (555, 'Meeting with trainers', '', '', 0, '', '', '', 12, 13, 2007, 12, 13, 2007, 10, 0, 'AM', 4, 0, 'PM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (556, 'Train the trainer', '', '', 0, '', '', '', 12, 17, 2007, 12, 17, 2007, 10, 0, 'AM', 12, 0, 'PM', 's', NULL, 0, NULL, NULL, 3, 'P', '68th street');
INSERT INTO `events` VALUES (557, 'BIS training', '', '', 0, '', '', '', 12, 7, 2007, 12, 7, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', 'CHONY');
INSERT INTO `events` VALUES (558, 'Merry Monday', '', '', 0, '', '', '', 12, 17, 2007, 12, 17, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (559, 'Mt w / Mayra Ozoria', 'Mayra will call - 305-7016', '', 0, '', '', '', 12, 3, 2007, 12, 3, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (560, 'Hemodialysis meeting', '', '', 0, '', '', '', 12, 17, 2007, 12, 17, 2007, 3, 0, 'PM', 4, 0, 'PM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (561, 'Table coach meeting', '', '', 0, '', '', '', 12, 14, 2007, 12, 14, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-342-4072');
INSERT INTO `events` VALUES (562, 'Community Board Meeting', '', '', 0, '', '', '', 1, 8, 2008, 1, 8, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (563, 'GP community board meeting -', '', '', 0, '', '', '', 2, 13, 2008, 2, 13, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (564, 'GP Community Board Mtg', '', '', 0, '', '', '', 3, 11, 2008, 3, 11, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (565, 'Ryan and Lexie visit', '', '', 0, '', '', '', 12, 14, 2007, 12, 17, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (566, 'Pam in town', '', '', 0, '', '', '', 12, 6, 2007, 12, 6, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (567, 'Dinner', '', '', 0, '', '', '', 12, 6, 2007, 12, 6, 2007, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', 'Mercadito');
INSERT INTO `events` VALUES (568, 'Karim''s Birthday', '', '', 0, '', '', '', 12, 8, 2007, 12, 8, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (569, 'Holiday Party', '', '', 0, '', '', '', 12, 21, 2007, 12, 21, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (570, 'Dashboard Demo', '', '', 0, '', '', '', 12, 4, 2007, 12, 4, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (571, 'Referred Amb - with John', '', '', 0, '', '', '', 12, 5, 2007, 12, 5, 2007, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (572, 'Dermotologist', '', '', 0, '', '', '', 12, 5, 2007, 12, 5, 2007, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (573, 'Duke Game', '', '', 0, '', '', '', 12, 20, 2007, 12, 20, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (574, 'Gloria Turner', 'call', '', 0, '', '', '', 12, 4, 2007, 12, 4, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (575, 'Staff holiday lunch', '', '', 0, '', '', '', 12, 18, 2007, 12, 18, 2007, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (576, 'Christmas Day', '', '', 0, '', '', 'o', 12, 4, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 'AM', 'y', 1, 25, '', 12, 2, 'P', '');
INSERT INTO `events` VALUES (577, 'New Year''s Eve', '', '', 0, '', '', '', 12, 4, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 'AM', 'y', 1, 31, '', 12, 2, 'P', '');
INSERT INTO `events` VALUES (578, 'Web demo with John Tessin', 'Healthpay24 demo with food and nutrition.', '', 0, '', '', '', 12, 11, 2007, 12, 11, 2007, 9, 0, 'AM', 10, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (579, 'Audubon pilot meeting', 'Hip basement?', '', 0, '', '', '', 1, 7, 2008, 1, 7, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Hip basement?');
INSERT INTO `events` VALUES (580, 'Lunch with the rev group', '', '', 0, '', '', '', 12, 12, 2007, 12, 12, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (581, 'Dinner at Alta', 'with all the cousins', '', 0, '', '', '', 12, 18, 2007, 12, 18, 2007, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (582, 'Mt with Bill di stork club', '', '', 0, '', '', '', 12, 14, 2007, 12, 14, 2007, 8, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (583, 'Mt in Lori Vaccaro''s office', 'homecare heme', '', 0, '', '', '', 12, 14, 2007, 12, 13, 2007, 11, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (584, 'Tutorial using CCs with Sharon from health outreac', 'Find out volume\r\n540 members', '', 0, '', '', '', 12, 19, 2007, 12, 17, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (585, 'Meet with sharon in lifeline', '', '', 0, '', '', '', 12, 19, 2007, 12, 19, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (586, 'Meet with Lourdes', '', '', 0, '', '', '', 12, 20, 2007, 12, 20, 2007, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (587, 'Holiday Lunch', '', '', 0, '', '', '', 12, 18, 2007, 12, 18, 2007, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (588, 'Full Staff Meeting', '', '', 0, '', '', '', 12, 19, 2007, 12, 19, 2007, 9, 0, 'AM', 10, 30, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (589, 'Revenue Cycle Academy Session', '', '', 0, '', '', '', 12, 20, 2007, 12, 20, 2007, 10, 0, 'AM', 12, 0, 'PM', 's', NULL, 0, NULL, NULL, 3, 'P', '168th Street');
INSERT INTO `events` VALUES (590, 'Leave for Ohio', '', '', 0, '', '', '', 12, 24, 2007, 12, 24, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (591, 'Home from Ohio', '', '', 0, '', '', '', 12, 25, 2007, 12, 25, 2007, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (592, 'BIS Training', '', '', 0, '', '', '', 12, 20, 2007, 12, 20, 2007, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (593, 'table coaching', '', '', 0, '', '', '', 12, 19, 2007, 12, 19, 2007, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (594, 'CIMA/Radiology audits', '', '', 0, '', '', '', 1, 3, 2008, 1, 3, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (595, 'send audits to Carolyn', '', '', 0, '', '', '', 1, 11, 2008, 1, 11, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 3, 'P', '');
INSERT INTO `events` VALUES (596, 'Mt w Brian', '', '', 0, '', '', '', 1, 7, 2008, 1, 7, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (597, 'Mtg w Bill and K Cullen', 'stork club', '', 0, '', '', '', 1, 14, 2008, 1, 14, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (598, 'Call with Ken Blessing', '', '', 0, '', '', '', 1, 28, 2008, 1, 28, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (599, 'CSA meeting', '173 Monitor', '', 0, '', '', '', 1, 13, 2008, 1, 13, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (600, 'Mt w Rita H', '', '', 0, '', '', '', 1, 9, 2008, 1, 9, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Milstein 8114');
INSERT INTO `events` VALUES (602, 'Call with Andy Nieto', 'About translating into spanish', '', 0, '', '', '', 1, 9, 2008, 1, 9, 2008, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (603, 'Call Gina dejesus', 'Open batch', '', 0, '', '', '', 1, 9, 2008, 1, 9, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (604, 'Mt in khawaja''s office', '', '', 0, '', '', '', 1, 9, 2008, 1, 9, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (605, 'PAY AMEX BILL', '', '', 0, '', '', '', 1, 3, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 'AM', 'm', 0, 1, 'Thu', 1, 1, 'P', '');
INSERT INTO `events` VALUES (606, 'Meeting w Bill and Scott from Citibank', '', '', 0, '', '', '', 1, 15, 2008, 1, 15, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (607, 'Alllison Aab''s party', 'M1-5\r\n52 Walker Street, Tribeca, NY 10013 US\r\n', '', 0, '', '', '', 1, 12, 2008, 1, 12, 2008, 9, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (608, ' MT on VC 3', '', '', 0, '', '', '', 1, 14, 2008, 1, 11, 2008, 1, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (609, 'Training for Westchester', '', '', 0, '', '', '', 1, 15, 2008, 1, 15, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (610, 'Mt w CHONY Collections group', '', '', 0, '', '', '', 1, 17, 2008, 1, 17, 2008, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Bernadette''s office');
INSERT INTO `events` VALUES (611, 'Mt w Brian Goldstein', '', '', 0, '', '', '', 1, 14, 2008, 1, 14, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (612, 'Mt w Khawaja', '', '', 0, '', '', '', 1, 14, 2008, 1, 14, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (613, 'Call to Steve Hermann', 'Allisher Prosper gave me info. Steve has regges being done on Starr 9', '', 0, '', '', '', 1, 16, 2008, 1, 16, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '(212) 746-2534.');
INSERT INTO `events` VALUES (614, 'SSS', '', '', 0, 'Evan Tasch', '', 'o', 9, 4, 2008, 0, 0, 0, 6, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Thu', 0, 2, 'P', 'Chelsea');
INSERT INTO `events` VALUES (615, 'SSS Soccer', '', '', 0, '', '', 'o', 3, 10, 2008, 0, 0, 0, 7, 45, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 2, 'P', 'Upper West Side');
INSERT INTO `events` VALUES (616, 'NSCAA: National Youth License', 'The NSCAA National Youth License is for ages 5-12. In SSS office.', '', 0, 'Dean', '', '', 5, 7, 2008, 6, 4, 2008, 6, 30, 'PM', 10, 0, 'PM', 'w', 0, 1, 'Wed', 0, 2, 'P', 'Upper Westside');
INSERT INTO `events` VALUES (617, 'Dar''s Aunt Linda Bday', '', '', 0, '', '', '', 1, 19, 2008, 1, 19, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (618, 'Brunch at one if by land', '', '', 0, '', '', '', 1, 27, 2008, 1, 27, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (619, 'CSA sign up', '', '', 0, '', '', '', 1, 28, 2008, 1, 28, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (620, 'Dinner w/ Dar', '', '', 0, '', '', '', 1, 29, 2008, 1, 29, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (621, 'Doll party', '', '', 0, '', '', '', 1, 26, 2008, 1, 26, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (622, 'Eileen''s party', '', '', 0, '', '', '', 2, 29, 2008, 2, 29, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Coogan');
INSERT INTO `events` VALUES (623, 'Gyn appointment', '', '', 0, '', '', '', 1, 25, 2008, 1, 25, 2008, 9, 45, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '425 east 61st st., 11th floor');
INSERT INTO `events` VALUES (624, 'Lunch with Sam', '', '', 0, '', '', '', 1, 17, 2008, 1, 17, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (625, 'Eye doc appointment', 'Dr. freeley  - 718-389-8585\r\ncontact lens exam\r\n934 Manhattan ave.\r\nGreenpoint', '', 0, '', '', '', 2, 8, 2008, 2, 8, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (626, 'Brunch w Jackie and Dave', '', '', 0, '', '', '', 1, 20, 2008, 1, 20, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (627, 'Policy meeting', '', '', 0, '', '', '', 1, 30, 2008, 1, 30, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (628, 'Convo w Amanda', '', '', 0, '', '', '', 1, 16, 2008, 1, 16, 2008, 2, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (629, 'Appt w Dr. Manning', '', '', 0, '', '', '', 2, 12, 2008, 2, 12, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (630, 'CSA meeting', '', '', 0, '', '', '', 2, 17, 2008, 2, 17, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (631, 'Call Amanda Mendillo di manager training.', '', '', 0, '', '', '', 1, 25, 2008, 1, 25, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (632, 'Brooklyn Kithchen CSA sign up', '', '', 0, '', '', '', 2, 25, 2008, 2, 25, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (633, 'Meet w Yvette Riley', '', '', 0, '', '', '', 1, 17, 2008, 1, 17, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (634, 'Conference call with PFS to', '', '', 0, '', '', '', 1, 29, 2008, 1, 29, 2008, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (636, 'Mt w Brian and Kathleen', '', '', 0, '', '', '', 1, 31, 2008, 1, 31, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (637, 'Mt Carlene', '', '', 0, '', '', '', 1, 31, 2008, 1, 31, 2008, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (638, 'convo w dave liss', '', '', 0, '', '', '', 1, 24, 2008, 1, 24, 2008, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (639, 'meeting with Yon', '', '', 0, '', '', '', 2, 1, 2008, 2, 1, 2008, 1, 0, 'PM', 3, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '68th st');
INSERT INTO `events` VALUES (640, 'Call pat votta', '', '', 0, '', '', '', 1, 25, 2008, 1, 25, 2008, 3, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (641, 'Meet jo at bedford l stop', '', '', 0, '', '', '', 1, 27, 2008, 1, 27, 2008, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (642, 'Dr. Pardes State of the Hospital', '', '', 0, '', '', '', 2, 20, 2008, 2, 20, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '38th St 3rd Fl.');
INSERT INTO `events` VALUES (643, 'Vacation', '', '', 0, '', '', '', 3, 26, 2008, 3, 29, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (644, 'NLG Meeting', '', '', 0, '', '', '', 2, 5, 2008, 2, 5, 2008, 6, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (645, 'Meet w reg coordinators and mgrs from clinics', 'Clinic track meeting', '', 0, '', '', '', 2, 6, 2008, 2, 6, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (646, 'mt w Sal Loiacono', '', '', 0, '', '', '', 2, 7, 2008, 2, 7, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Eye institute - 2nd floor  - a');
INSERT INTO `events` VALUES (647, 'Nina''s engagement', '', '', 0, '', '', '', 2, 9, 2008, 2, 9, 2008, 0, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (648, 'CSA meeting', '', '', 0, '', '', '', 2, 10, 2008, 2, 10, 2008, 10, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (649, 'Jackie''s Birthday', '', '', 0, '', '', '', 2, 20, 2008, 2, 20, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (650, 'Board on a chili day - Felicia''s party', '', '', 0, '', '', '', 2, 17, 2008, 2, 17, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (651, 'Mt Bonnie Corbit', 'Go over Carolyn''s project\r\n', '', 0, '', '305-3203', '', 2, 5, 2008, 2, 5, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '1st fl. CHONY 108');
INSERT INTO `events` VALUES (652, 'Mt K Cullen', '', '', 0, '', '', '', 2, 4, 2008, 2, 4, 2008, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (653, 'Pay American Express Bill', '', '', 0, '', '', '', 2, 4, 2008, 5, 4, 2009, 0, 0, 'AM', 0, 0, 'AM', 'm', 2, 1, 'Mon', 1, 1, 'P', '');
INSERT INTO `events` VALUES (654, 'Amanda''s party', '', '', 0, '', '', '', 2, 8, 2008, 2, 8, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (655, 'Talk to Sabrin and Nicole', '', '', 0, '', '', '', 2, 10, 2008, 2, 10, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (656, 'Jackies'' Bday party', '', '', 0, '', '', '', 2, 23, 2008, 2, 23, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (657, 'NLG at UHF', '', '', 0, '', '', '', 3, 4, 2008, 3, 4, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (658, 'WIP meeting', '', '', 0, '', '', '', 3, 24, 2008, 3, 24, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (659, 'Easter', '', '', 0, '', '', '', 3, 23, 2008, 3, 23, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (660, 'Letty''s party', '', '', 0, '', '', '', 2, 15, 2008, 2, 15, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (661, 'NLG group meeting', '', '', 0, '', '', '', 4, 15, 2008, 4, 15, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (662, 'NLG meetning', '', '', 0, '', '', '', 5, 20, 2008, 5, 20, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (663, 'Lunch w Jena', '', '', 0, '', '', '', 2, 21, 2008, 2, 14, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (664, 'Meeting w Bonnie Corbett', 'Mt di HP24 cash collections', '', 0, '', '305-3203', '', 2, 15, 2008, 2, 15, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'CHONY N rm 108');
INSERT INTO `events` VALUES (665, 'NLG meeting - auction committee', '', '', 0, '', '', '', 2, 26, 2008, 2, 26, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (666, 'meet w BF', '', '', 0, '', '', '', 2, 20, 2008, 2, 20, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'rrm 866');
INSERT INTO `events` VALUES (667, 'Mt w Andrea from UHF', '', '', 0, '', '', '', 2, 25, 2008, 2, 25, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (668, 'Mom''s Bday', '', '', 0, '', '', '', 2, 23, 2008, 2, 23, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (669, 'Table coaching', '', '', 0, '', '', '', 2, 21, 2008, 2, 21, 2008, 1, 0, 'PM', 4, 0, 'PM', 's', 0, 0, '', 0, 1, 'P', '38th 8a');
INSERT INTO `events` VALUES (670, 'training', '', '', 0, '', '', '', 2, 13, 2008, 2, 13, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (671, 'Mt w Healthpay', '', '', 0, '', '', '', 2, 13, 2008, 2, 13, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (672, 'Ethics group at Columbia', 'Columbia University Medical Center\r\nTower One Conference Room, Room 103\r\nCHONY Hospital', '', 0, '', '', '', 3, 4, 2008, 3, 4, 2008, 12, 3, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (673, 'Mt w Brian', '', '', 0, '', '', '', 2, 13, 2008, 2, 13, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (674, 'Meet w Liz Daly', '', '', 0, '', '', '', 2, 15, 2008, 2, 15, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (675, 'Mt w Miraim Beydoun', '', '', 0, '', '', '', 2, 20, 2008, 2, 20, 2008, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (676, 'Grand Rounds -', 'Wednesday, February 20, 2008\r\n12 noon-1pm\r\nGriffis Faculty Club\r\nLunch provided\r\nTopic - when family and care team have different opinions', '', 0, '', '', '', 2, 20, 2008, 2, 20, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (677, 'Big Picture coaching', '', '', 0, '', '', '', 2, 25, 2008, 2, 25, 2008, 1, 0, 'PM', 4, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (678, 'Big Picture Coaching', '', '', 0, '', '', '', 3, 13, 2008, 3, 13, 2008, 1, 0, 'PM', 4, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (679, 'Big Picture Table Coaching', '', '', 0, '', '', '', 3, 6, 2008, 3, 6, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (680, 'Call w Ken B', '', '', 0, '', '', '', 2, 14, 2008, 2, 14, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (681, 'speak to Sandra', '', '', 0, '', '', '', 2, 14, 2008, 2, 14, 2008, 11, 45, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (682, 'Contact G esposito''s office', '', '', 0, '', '', '', 2, 19, 2008, 2, 19, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (683, 'Sandra', 'training room in service building is available', '', 0, '', '', '', 2, 28, 2008, 2, 28, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (684, 'Jackie''s birthday dinner', '', '', 0, '', '', '', 2, 18, 2008, 2, 18, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (685, 'Training for B goldstein staff in service building', '', '', 0, '', '', '', 2, 22, 2008, 2, 22, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (686, 'Call B Goldstein', '', '', 0, '', '', '', 2, 15, 2008, 2, 15, 2008, 1, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (687, 'mt w Bonnie Corbit', '', '', 0, '', '', '', 2, 21, 2008, 2, 21, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (688, 'Call from ELC members', '', '', 0, '', '', '', 2, 20, 2008, 2, 20, 2008, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (689, 'Table coaching (hospital)', '', '', 0, '', '', '', 4, 1, 2008, 4, 1, 2008, 8, 0, 'AM', 0, 0, 'AM', '', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (690, 'Table coaching (hospital)', '', '', 0, '', '', '', 2, 26, 2008, 2, 26, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Rockefellar University, 1230 Y');
INSERT INTO `events` VALUES (691, 'Go live in clinic', '', '', 0, '', '', '', 3, 4, 2008, 3, 4, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (692, 'Call D Liss', '', '', 0, '', '', '', 2, 19, 2008, 2, 19, 2008, 2, 5, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (693, 'Mt Paul S', '', '', 0, '', '', '', 2, 19, 2008, 2, 19, 2008, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (694, 'Mt w Ashley M di analyst positions', 'Job talk - Financial analyst and senior FA', '', 0, '', '', '', 2, 28, 2008, 2, 28, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '7th fl-  -38th st');
INSERT INTO `events` VALUES (695, 'Meet with Gerald Esposito of comm board 1', 'Storefront building - yosellis ususally works on his calendar  - spoke to Marie on Friday to try to move to March 6th', '', 0, '', '', '', 3, 6, 2008, 3, 6, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '435 Graham Ave. corner of Fros');
INSERT INTO `events` VALUES (696, 'Policy CLub', '', '', 0, '', '', '', 2, 27, 2008, 2, 27, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (697, 'St patty''s day get together', '', '', 0, '', '', '', 3, 15, 2008, 3, 15, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (698, 'Visit Elaine', '', '', 0, '', '', '', 3, 1, 2008, 3, 1, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (699, 'conferencew James', '', '', 0, '', '', '', 2, 20, 2008, 2, 20, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (700, 'Making Brooklyn Bloom', '', '', 0, '', '', '', 3, 8, 2008, 3, 8, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (701, 'Domino IP Mtg', '', '', 0, '', '', '', 3, 5, 2008, 3, 5, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (702, 'Mt w Bonnie Corbett', '', '', 0, '', '', '', 2, 28, 2008, 2, 28, 2008, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (703, 'Lunch at MJ''s with John C and Friend', '', '', 0, '', '', '', 2, 28, 2008, 2, 28, 2008, 12, 3, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (704, 'Kaiser''s medicare info session', 'March 6 Policy Workshop To Examine Implications of Medicare’s Funding Warning', '', 0, '', '', '', 3, 6, 2008, 3, 6, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (705, 'Just food workshop', 'w yo and ryan\r\n208 East 51st Street, 4th Floor \r\nNew York, NY 10022\r\ntel 212.645.9880', '', 0, '', '', '', 3, 10, 2008, 3, 10, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Midtown');
INSERT INTO `events` VALUES (706, 'CSA Meeting', '', '', 0, '', '', '', 3, 9, 2008, 3, 9, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (707, 'Just food workshop', 'Cooking demos\r\n208 East 51st Street, 4th Floor \r\nNew York, NY 10022\r\ntel 212.645.9880', '', 0, '', '', '', 6, 9, 2008, 6, 9, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'midotwn');
INSERT INTO `events` VALUES (708, 'Send rent check to landlord', 'Make check payable to: Ronald Landon. Send it to:\r\n128 Saxton Lane, Pine Bush, NY 12566. The amount is $1600', '', 0, '', '', 'o', 3, 29, 2009, 0, 0, 0, 0, 0, 'AM', 0, 0, 'AM', 'm', 0, 28, '', 1, 2, 'P', '');
INSERT INTO `events` VALUES (709, 'Shwartz grand rounds', 'Various topics', '', 0, '', '', '', 4, 9, 2008, 4, 9, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Griffis Faculty Club');
INSERT INTO `events` VALUES (710, 'Healthy Kids Benefit', '', '', 0, '', '', '', 6, 26, 2008, 6, 26, 2008, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (711, 'Mt w Brian', '', '', 0, '', '', '', 2, 27, 2008, 2, 27, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (712, 'Mt Amy and Andrea F n N', 'Go over Healthpay24 implementation and next steps', '', 0, '', '', '', 3, 5, 2008, 3, 5, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (713, 'mt w brian', '', '', 0, '', '', '', 2, 29, 2008, 2, 29, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (714, 'Vacation', 'EWith Dad for Mon''s anniversary', '', 0, '', '', '', 5, 8, 2008, 5, 12, 2008, 0, 0, 'AM', 0, 0, 'AM', 'd', 0, 1, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (715, 'Conf w Brian C', '', '', 0, '', '', '', 3, 3, 2008, 3, 3, 2008, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (716, 'Mt maria Lyons', '', '', 0, '', '', '', 3, 5, 2008, 3, 5, 2008, 12, 3, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (717, 'Dr. Manning', '', '', 0, '', '', '', 3, 18, 2008, 3, 18, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (718, 'John Jay: Olimpia', '', '', 51, '', '', 'o', 2, 8, 2009, 0, 0, 0, 1, 30, 'PM', 0, 0, 'AM', 'm', 0, 1, 'Sun', 1, 2, 'P', 'Park Slope');
INSERT INTO `events` VALUES (757, 'Big Picture training session', '', '', 90, '', '', '', 4, 9, 2008, 4, 9, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (719, 'Employee appreciation day', '', '', 52, '', '', '', 5, 14, 2008, 5, 14, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (720, 'mt w maria lyons', '', '', 53, '', '', '', 3, 5, 2008, 3, 5, 2008, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (721, 'Training for F and N', 'Amy Friedman', '', 54, '', '', '', 3, 7, 2008, 3, 7, 2008, 2, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Greenburg 10-171');
INSERT INTO `events` VALUES (722, 'Mt w Brian K', '', '', 55, '', '', '', 3, 6, 2008, 3, 6, 2008, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (723, 'T mobile call', 'Bet 1 pm and 4 pm', '', 56, '', '', '', 3, 10, 2008, 3, 10, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (724, 'Call w Aida Ruiz', '', '', 57, '', '', '', 3, 7, 2008, 3, 7, 2008, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (725, 'Mt w Brenda Sauer', '', '', 58, '', '', '', 3, 11, 2008, 3, 11, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '68th St.');
INSERT INTO `events` VALUES (726, 'Ken B', '', '', 59, '', '', '', 3, 10, 2008, 3, 10, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (727, 'Table coaches meeting', '38th st 8 B', '', 60, '', '', '', 3, 19, 2008, 3, 19, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (728, 'speak to mike k', '', '', 61, '', '', '', 3, 7, 2008, 3, 7, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (729, 'Quarterly staff meeting', '', '', 62, '', '', '', 3, 12, 2008, 3, 12, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (730, 'Meeting with Mark Banner', '', '', 63, '', '', '', 3, 17, 2008, 3, 17, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (731, 'Community Board meeting', '', '', 64, '', '', '', 4, 8, 2008, 4, 8, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (732, 'Mt w Annemarie to do ED walkthrough', '', '', 65, '', '', '', 3, 13, 2008, 3, 13, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (733, 'Breakfast w Dr. Corwin', '', '', 66, '', '', '', 4, 2, 2008, 4, 2, 2008, 7, 3, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'HIP 1400');
INSERT INTO `events` VALUES (734, 'Breakfast w Dr. Corwin', '', '', 67, '', '', '', 5, 22, 2008, 5, 22, 2008, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Whitney 117');
INSERT INTO `events` VALUES (735, 'Breakfast w Dr. Corwin', '', '', 68, '', '', '', 8, 27, 2008, 8, 27, 2008, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (736, 'Breakfast with Dr. Corwin', '', '', 69, '', '', '', 11, 17, 2008, 11, 17, 2008, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'HIP 1400');
INSERT INTO `events` VALUES (738, 'Music and the brain - bioethics', 'Alumni Auditorium\r\nCollege of Physicians and Surgeons\r\nColumbia University Medical Center\r\n630 West 168th Street', '', 71, '', '', '', 4, 8, 2008, 4, 8, 2008, 4, 0, 'AM', 5, 50, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (739, 'Center for bioethics', 'nanotechnology\r\n Columbia University Medical Center\r\nHammer Health Sciences Center, Room 301\r\n701 West 168th Street\r\n[NW corner of 168th Street & Fort Washington Avenue]', '', 72, '', '', '', 3, 20, 2008, 3, 20, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (740, 'HFMA seminar', '', '', 73, '', '', '', 4, 28, 2008, 4, 28, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (741, 'Earth day', 'Booth at McCarren Park', '', 74, '', '', '', 4, 19, 2008, 4, 19, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (742, 'Orchids at NY Botanical gardens', '', '', 75, '', '', '', 4, 5, 2008, 4, 5, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (743, 'Adrianne and Rob''s engagement', '', '', 76, '', '', '', 4, 6, 2008, 4, 6, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (744, 'CSA Meeting', '', '', 77, '', '', '', 4, 13, 2008, 4, 13, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (745, 'CSA sign up at Bklyn kitches\\', '', '', 78, '', '', '', 3, 31, 2008, 3, 31, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1759, 'Amerigroup monthly calls', 'Send out Feb issues tracker', '', 0, '', '', '', 2, 10, 2010, 1, 10, 2011, 11, 0, 'AM', 0, 0, 'AM', 'm', 0, 2, 'Wed', 1, 1, 'P', '(212) 746-7269');
INSERT INTO `events` VALUES (748, 'Beyond the stethescope', 'Children need more than medicine for good health', '', 81, '', '', '', 4, 24, 2008, 4, 24, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (749, 'Meeting with Bill and accountants', '', '', 82, '', '', '', 3, 28, 2008, 3, 28, 2008, 2, 0, 'PM', 3, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (750, 'Meeting with Trainers', '', '', 83, '', '', '', 3, 18, 2008, 3, 18, 2008, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (751, 'Talk to david Liss', '', '', 84, '', '', '', 3, 18, 2008, 3, 18, 2008, 4, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (752, 'Mt Aida at Allen pavilion - Admitting office', '', '', 85, '', '', '', 3, 21, 2008, 3, 21, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (753, 'Meeting w Bill and Art', '', '', 86, '', '', '', 4, 1, 2008, 4, 1, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (754, 'Call with Table coaches', '', '', 87, '', '', '', 4, 10, 2008, 4, 10, 2008, 1, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (755, 'Permaculture Designs', 'Principles and Practices of Permaculture', '', 88, '212-219-2527 x 2', '', '', 4, 11, 2008, 4, 13, 2008, 7, 0, 'PM', 0, 0, 'AM', 'd', 0, 1, '', 0, 1, 'P', 'NY Open center');
INSERT INTO `events` VALUES (756, 'Mt w Jena', '', '', 89, '', '', '', 3, 21, 2008, 3, 21, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (768, 'CSA sign up at ZIPE ZAPE', '153 Metropolitan Ave (@Berry) \r\n630pm-830pm', '', 101, '', '', '', 4, 29, 2008, 4, 29, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (760, 'Table Coaching', '', '', 93, '', '', '', 4, 30, 2008, 4, 30, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Cayuga room');
INSERT INTO `events` VALUES (761, 'Meetwith Ava', '', '', 94, '', '', '', 3, 25, 2008, 3, 25, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (762, 'Volunteer w Brooklyn Greenway initiative', '', '', 95, '', '', '', 5, 3, 2008, 5, 3, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (763, 'Meet w Brian', '', '', 96, '', '', '', 3, 26, 2008, 3, 26, 2008, 8, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (764, 'UHF calls to Glodine', '', '', 97, '', '', '', 3, 26, 2008, 3, 26, 2008, 9, 45, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (765, 'Meeting with Bill and Art', '', '', 98, '', '', '', 4, 3, 2008, 4, 3, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (766, 'Healthpay24 training w Sue Pellar and Vicki', '', '', 99, '', '', '', 4, 8, 2008, 4, 8, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (767, 'Mt Sam for lunch', '', '', 100, '', '', '', 4, 4, 2008, 4, 4, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (769, 'Make eye doc appt', '', '', 102, '', '', '', 4, 4, 2008, 4, 4, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (770, 'Kevin''s birthday', 'Blue & Gold Tavern\r\n79 East 7th Street, New York, NY 10003 US\r\nhe updated the', '', 103, '', '', '', 4, 19, 2008, 4, 19, 2008, 9, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (771, 'Dinner for Becca', '', '', 104, '', '', '', 4, 23, 2008, 4, 23, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (772, 'Chiro appointment', '', '', 105, '', '', '', 4, 22, 2008, 4, 22, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (773, 'CSA cookbook group', '', '', 106, '', '', '', 4, 15, 2008, 4, 15, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (774, 'Call w NLG', '', '', 107, '', '', '', 4, 7, 2008, 4, 7, 2008, 5, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (775, 'Arkansas', '', '', 108, '', '', '', 4, 14, 2008, 4, 14, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (776, 'brunch w Claudio', '', '', 109, '', '', '', 4, 20, 2008, 4, 20, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (777, 'Follow up with Ken on items for change', '', '', 110, '', '', '', 4, 18, 2008, 4, 18, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (778, 'healthpay24 training', '', '', 111, '', '', '', 4, 11, 2008, 4, 11, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (779, 'Healthpay24 training', '', '', 112, '', '', '', 4, 10, 2008, 4, 10, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (780, 'Mt w Jason', '', '', 113, '', '', '', 4, 11, 2008, 4, 11, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (781, 'Big picture session', '', '', 114, '', '', '', 4, 24, 2008, 4, 24, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Tower 103');
INSERT INTO `events` VALUES (782, 'is training room available on this date', '', 'call 342-4471 - vickie office   - 305-7294', 115, '', '', '', 4, 18, 2008, 4, 18, 2008, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (783, 'CSA first distribution!', '', '', 116, '', '', '', 6, 14, 2008, 6, 14, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (784, 'CSA distribution!', '', '', 117, '', '', '', 6, 21, 2008, 6, 21, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (785, 'Dinner with Joanna', '', '', 118, '', '', '', 4, 16, 2008, 4, 16, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (786, 'Transportatiion  Committee meetting', '', '', 119, '', '', '', 4, 30, 2008, 4, 30, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '435 Graham Avenue');
INSERT INTO `events` VALUES (787, 'Community Board Meeting', '', '', 120, '', '', '', 5, 13, 2008, 5, 13, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '435 Graham Avenue');
INSERT INTO `events` VALUES (788, 'Community board meeting', '', '', 121, '', '', '', 6, 11, 2008, 6, 11, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (789, 'Community Board Meeting', '', '', 122, '', '', '', 7, 8, 2008, 7, 8, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (790, 'Community Board meeting', '', '', 123, '', '', '', 8, 12, 2008, 8, 12, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '435 Graham Avenue');
INSERT INTO `events` VALUES (791, 'Community Board Meeting', '', '', 124, '', '', '', 9, 8, 2008, 9, 8, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (792, 'Community Board Meeting', '', '', 125, '', '', '', 10, 6, 2008, 10, 6, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '435 Graham Avenue');
INSERT INTO `events` VALUES (793, 'Community Board Meeting', '', '', 126, '', '', '', 11, 12, 2008, 11, 12, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (794, 'Community Board Meeting', '', '', 127, '', '', '', 12, 2, 2008, 12, 2, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (795, 'Field Trips', 'Botanical Garden', '', 128, '', '', 'o', 7, 1, 2008, 9, 1, 2008, 10, 0, 'AM', 12, 0, 'PM', 'w', 0, 1, 'Tue', 0, 11, 'P', '');
INSERT INTO `events` VALUES (796, 'Training N Ramidan''s group', '', '', 129, '', '', '', 5, 1, 2008, 5, 1, 2008, 1, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Service Building');
INSERT INTO `events` VALUES (797, 'Meeting with Bill and Brian', '', '', 130, '', '', '', 4, 17, 2008, 4, 17, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (798, 'Meeting with Amex and Nova', 'Antionnette will call.', '', 131, '', '', '', 4, 17, 2008, 4, 17, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (799, 'Big Picture training', '', '', 132, '', '', '', 4, 29, 2008, 4, 29, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '41 Audubon');
INSERT INTO `events` VALUES (800, 'Meeting w Bonnie Corbett', '', '', 133, '', '', '', 4, 24, 2008, 4, 24, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (801, 'Cash collection training', '', '', 134, '', '', '', 4, 25, 2008, 4, 25, 2008, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'service building');
INSERT INTO `events` VALUES (802, 'Policy Club meeting', '', '', 135, '', '', '', 5, 27, 2008, 5, 27, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (803, 'HP 24 Training', '', '', 136, '', '', '', 4, 25, 2008, 4, 25, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (804, 'City Meals on Wheels Orientation', '355 Lexington Avenue, 3rd Floor, between 40th & 41st Streets', '', 137, '', '', '', 5, 21, 2008, 5, 21, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '355 Lexington Avenue, 3rd Floo');
INSERT INTO `events` VALUES (805, 'Stork Club training', '', '', 138, '', '', '', 4, 29, 2008, 4, 29, 2008, 10, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (806, 'eye doc appointment', '', '', 139, '', '', '', 4, 25, 2008, 4, 25, 2008, 6, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'manhattan ave');
INSERT INTO `events` VALUES (807, 'Big Picture training', '', '', 149, '', '', '', 5, 15, 2008, 5, 15, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (808, 'Big Picture training', '', '', 150, '', '', '', 5, 27, 2008, 5, 27, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (809, 'Big Picture Training', '', '', 151, '', '', '', 5, 29, 2008, 5, 29, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (810, 'Big Picture Training', '', '', 152, '', '', '', 8, 14, 2008, 8, 14, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (811, 'Big Picture training (confirm)', '', '', 153, '', '', '', 8, 18, 2008, 8, 18, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (812, 'Mt w Mely and Leroy', '', '', 154, '', '', '', 5, 1, 2008, 5, 1, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (813, 'Meet with Maria Lyons', '', '', 155, '', '', '', 5, 2, 2008, 5, 2, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (814, 'SH', '', '', 156, '', '', '', 5, 6, 2008, 5, 6, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (815, 'cookbook group', '', '', 157, '', '', '', 5, 15, 2008, 5, 15, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (816, 'Meeting with Roseanne Hagan and Maria Lyons', '', '', 158, '', '', '', 5, 14, 2008, 5, 14, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (817, 'Allison''s going away party', '', '', 159, '', '', '', 5, 28, 2008, 5, 28, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (818, 'Talk to Mike', '', '', 160, '', '', '', 5, 13, 2008, 5, 13, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (819, 'Canning demonstration', '', '', 161, '', '', '', 6, 21, 2008, 6, 21, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (820, 'Check WAMU CD - expires next week', '', '', 162, '', '', '', 7, 9, 2008, 7, 9, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (821, 'Appointment w Dr Manning', '', '', 163, '', '', '', 6, 17, 2008, 6, 17, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (822, 'Rev Cycle Report out', '', '', 164, '', '', '', 6, 2, 2008, 6, 2, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (824, 'Rev Cycle Report out', '', '', 166, '', '', '', 10, 20, 2008, 10, 20, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (825, 'Microsoft access  - queries and relationships', '', '', 167, '', '', '', 6, 10, 2008, 6, 10, 2008, 9, 0, 'AM', 12, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (826, 'Jill''s bday', '', '', 168, '', '', '', 6, 7, 2008, 6, 7, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (827, 'Strawberry Picking at the farm', '', 'Natasha is in charge of this event', 169, '', '', '', 6, 8, 2008, 6, 8, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (828, 'CSA cocktail party', '', '', 170, '', '', '', 6, 10, 2008, 6, 10, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (829, 'Compost project with Natasha', '', '', 171, '', '', '', 6, 14, 2008, 6, 14, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1037, 'Dinner w Dad for anniversary?', '', '', 0, '', '', '', 10, 8, 2008, 10, 8, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (831, 'CSA Distribution', '', '', 173, '', '', '', 7, 26, 2008, 7, 26, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (832, 'CSA Distribution', '', '', 174, '', '', '', 8, 2, 2008, 8, 2, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (833, 'CSA Distribution', '', '', 175, '', '', '', 8, 16, 2008, 8, 16, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (834, 'CSA Distribution', '', '', 176, '', '', '', 9, 20, 2008, 9, 20, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (835, 'CSA meeting', '', '', 177, '', '', '', 6, 29, 2008, 6, 29, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (836, 'Rev Cycle Presentation - go over with Bill', '', '', 178, '', '', '', 5, 28, 2008, 5, 28, 2008, 12, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (837, 'Library books due june 10', '', '', 179, '', '', '', 6, 6, 2008, 6, 6, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (838, 'Carolina Chocolate drops at Celebrate Brooklyn', '', '', 180, '', '', '', 6, 26, 2008, 6, 26, 2008, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (839, '10 am  - meeting w PFS 57 di call center', '', '', 181, '', '', '', 5, 22, 2008, 5, 22, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (840, 'Training w Liz Daly''s group', '', '', 182, '', '', '', 5, 29, 2008, 5, 29, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (841, 'Grill Delivery', '', '', 183, '', '', '', 5, 25, 2008, 5, 25, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (842, 'Volunteer with BGI in Park slope', 'Meg F', '', 184, '', '', '', 6, 15, 2008, 6, 15, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (843, 'BGI volunteer night', '', '', 185, '', '', '', 6, 24, 2008, 6, 24, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (844, 'Possibly help BGI', '', '', 186, '', '', '', 5, 31, 2008, 5, 31, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (845, 'Trainging with Rita''s grou[p', '', 'train on not entering the P', 187, '', '', '', 6, 12, 2008, 6, 12, 2008, 10, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (846, 'Jimmy Avellini Birthday party', '', '', 188, '', '', '', 6, 8, 2008, 6, 8, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (847, 'Rev Cycle academy healthpay24', '', '', 189, '', '', '', 6, 6, 2008, 6, 6, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (848, 'Mt w accountants', '', '', 190, '', '', '', 5, 28, 2008, 5, 28, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (849, 'Silent Auction Committee meeting', '', '', 191, '', '', '', 6, 2, 2008, 6, 2, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (850, 'Transport Committee of community board', 'The meeting will be held at Music Hall of Williamsburg*, 66 North 6th Street between Kent Avenue and Wythe Avenue in Northside, Williamsburg.  The meeting will be at 6:30pm.', '', 192, '', '', '', 6, 18, 2008, 6, 18, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '66 north 6th st bet Kent and W');
INSERT INTO `events` VALUES (851, 'Mt w Kathy C and Brian G', '', '', 193, '', '', '', 5, 27, 2008, 5, 27, 2008, 12, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (852, 'Tomato Picking at the farm', '', '', 194, '', '', '', 8, 10, 2008, 8, 10, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (853, 'Argentinian Game', '', '', 199, '', '', '', 6, 8, 2008, 6, 8, 2008, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (854, 'Celebrate Darwin''s birthday', '', '', 200, '', '', '', 6, 28, 2008, 6, 28, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (855, 'NYC Friends of Clearwater Festival', '', 'Check info about meeting on website or call', 205, '917-374-9729', '', '', 6, 20, 2008, 0, 0, 0, 6, 30, 'PM', 0, 0, 'AM', 'm', 0, 3, 'Fri', 1, 1, 'P', '');
INSERT INTO `events` VALUES (856, 'Dutch reform church soup Kitchen meeting', '', 'Call to find out about the meeting', 206, '', '', '', 5, 26, 2008, 0, 0, 0, 7, 30, 'PM', 0, 0, 'AM', 'm', 2, 2, 'Wed', 1, 1, 'S', '');
INSERT INTO `events` VALUES (857, 'Canning Demonstration', '', '', 207, '', '', '', 6, 12, 2008, 6, 12, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (858, 'Meeting with Naomi Ramdin', '', '', 208, '', '', '', 5, 29, 2008, 5, 29, 2008, 4, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (859, 'Meeting w Bernadette Obrien', '', '', 209, '', '', '', 5, 27, 2008, 5, 27, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (860, 'Comedy Show w Dar', '', '', 210, '', '', '', 6, 18, 2008, 6, 18, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (861, 'Talk to Maria Lyons', '', '', 211, '', '', '', 5, 29, 2008, 5, 29, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (862, 'Museum mile festival', '', '', 212, '', '', '', 6, 3, 2008, 6, 3, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (863, 'Pier 54 - La Bamba', '', '', 213, '', '', '', 7, 9, 2008, 7, 9, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (864, 'Pier 54 - Almost Famous', '', '', 214, '', '', '', 7, 16, 2008, 7, 16, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (865, 'Pier 54 - Dream Grils', 'Movie on the Hudson', '', 215, '', '', '', 7, 30, 2008, 7, 30, 2008, 8, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (866, 'Pier 54 - Saturday Night Fever', 'Movie on the Hudson', '', 216, '', '', '', 8, 6, 2008, 8, 6, 2008, 8, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (867, 'Pier 54 - The Blues Brothers', '', '', 217, '', '', '', 8, 20, 2008, 8, 20, 2008, 8, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (868, 'Pier 54 - Bee Movie', 'Moview on the Hudson', '', 218, '', '', '', 7, 18, 2008, 7, 18, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (869, 'Pier 54 - Shrek', 'Hudson River movies', '', 219, '', '', '', 8, 22, 2008, 8, 22, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (870, 'Washington Square Park Music Festival', 'Classical music concerts', '', 220, '', '', '', 7, 8, 2008, 7, 30, 2008, 8, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'S', '');
INSERT INTO `events` VALUES (871, 'Salute to folk music', 'Washington Sq. park', '', 221, '', '', '', 6, 21, 2008, 6, 21, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (872, 'NY Phil in Central Park', '', '', 222, '', '', '', 6, 24, 2008, 6, 24, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (873, 'NY Phil in Central Park', '', '', 223, '', '', '', 7, 15, 2008, 7, 15, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (874, 'Brooklyn Phils in CP Nauburg Bandshell', '', '', 224, '', '', '', 6, 24, 2008, 6, 24, 2008, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (875, 'CP classical concert in Nauberg bandshell', '', '', 225, '', '', '', 7, 8, 2008, 7, 8, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (876, 'Flamenco music in CP - Naumberg bandshell', '', '', 226, '', '', '', 7, 22, 2008, 7, 22, 2008, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (877, 'Naumberg orchestra in CP Naumberg bandshell', '', '', 227, '', '', '', 8, 5, 2008, 8, 5, 2008, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (878, 'Train Maria Lyons and Rafeal on HP24', '', '', 228, '', '', '', 6, 6, 2008, 6, 6, 2008, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (879, 'Amex bill paid', '1714.40 thru AMEX', '', 229, '', '', '', 6, 13, 2008, 6, 13, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (880, 'Call into Imagevision', '', '', 230, '', '', '', 5, 30, 2008, 5, 30, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (881, 'Prospect Park -Mariam Makeba', 'Vocal stat in south africa', '', 231, '', '', '', 6, 14, 2008, 6, 14, 2008, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (882, 'Prospect Park - Keita', 'African singer - "golden voice of Africa" sounds very good', '', 232, '', '', '', 6, 22, 2008, 6, 22, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (883, 'BBG - Food Grows in Brooklyn', '', '', 234, '', '', '', 7, 10, 2008, 7, 10, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'BBG');
INSERT INTO `events` VALUES (884, 'Beach', '', '', 239, '', '', '', 6, 22, 2008, 6, 22, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (885, 'ELC  reception', '', '', 240, '', '', '', 6, 9, 2008, 6, 9, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (886, 'Meeting with Bill and Mary B', '', '', 241, '', '', '', 6, 10, 2008, 6, 10, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (887, 'Mark Larmore meets with Rev Cycle', '', '', 242, '', '', '', 7, 16, 2008, 7, 16, 2008, 9, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'rm 866');
INSERT INTO `events` VALUES (888, 'Father''s Day', '', '', 243, '', '', '', 6, 15, 2008, 6, 15, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (889, 'Talk to Shari N', '', '', 244, '', '', '', 6, 9, 2008, 6, 9, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (890, 'Rev Cycle Conference', '', '', 245, '', '', '', 6, 17, 2008, 6, 17, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (891, 'Bryan Park movie - Dr. NO', 'Looksond', '', 246, '', '', '', 6, 16, 2008, 6, 16, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (892, 'Bryant Park Movie - Arsenic and Old Lace', '', '', 247, '', '', '', 7, 21, 2008, 7, 21, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (893, 'Bryant Park MOV - The Candidate', 'Robert Redford in Washington  - sounds like a feel good', '', 248, '', '', '', 8, 11, 2008, 8, 11, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (894, 'Bryant Park MOV - Superman', '', '', 249, '', '', '', 8, 18, 2008, 8, 18, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (895, 'Bryant Park Mov - HUD', 'Paul Newman - black and white - sounds slow but good', '', 250, '', '', '', 6, 30, 2008, 6, 30, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (896, 'Bryant Park mov - The man who came to dinner', 'comedy w harpo marx - sounds pretty good', '', 251, '', '', '', 7, 7, 2008, 7, 7, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (897, 'Call Shari Nadelman', '', '', 252, '', '', '', 6, 10, 2008, 6, 10, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (898, 'Meet with Andrea and Caroline', '', '', 253, '', '', '', 6, 16, 2008, 6, 16, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (899, 'Call David Francis 212 932 5078', '', '', 254, '', '', '', 6, 11, 2008, 6, 11, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (900, 'Happy hour w Nina', '', '', 255, '', '', '', 6, 12, 2008, 6, 12, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (901, 'Training w David Francis', '', '', 256, '', '', '', 6, 12, 2008, 6, 12, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (902, 'Shari Nadelman', '', '', 257, '', '', '', 6, 13, 2008, 6, 13, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (903, 'Cold war kids - PP', 'Pianos and Ballroom and \r\nUnleashing “cave-stomp drums, barroom piano and chiming post-punk guitars,” (Rolling Stone) Cold War Kids eschew preciousness for grit. Live, they’re all smoldering energy and raw power.', '', 258, '', '', '', 6, 27, 2008, 6, 27, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', 'Prospect Park');
INSERT INTO `events` VALUES (904, 'Lunch with Srini', '', '', 259, '', '', '', 6, 19, 2008, 6, 19, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (905, 'Shwartz Center Grand Rounds', '', '', 260, '', '', '', 6, 25, 2008, 6, 25, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Griffits faculty club');
INSERT INTO `events` VALUES (906, 'Meet with Shari', '', '', 261, '', '', '', 6, 18, 2008, 6, 18, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (907, 'Meet w Maria and Rafael', '', '', 262, '', '', '', 6, 17, 2008, 6, 17, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (908, 'Go over HP w F and N', '', '', 263, '', '', '', 6, 23, 2008, 6, 23, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (909, 'Meet with intern', '', '', 264, '', '', '', 6, 17, 2008, 6, 17, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (910, 'Meeting w SH', '', '', 265, '', '', '', 6, 23, 2008, 6, 23, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (911, 'Meet with Rafael', '', '', 266, '', '', '', 6, 20, 2008, 6, 20, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Payson 3 , rt, past brown  doo');
INSERT INTO `events` VALUES (912, 'Meet with Aunt Fran''s friend', '', '', 267, '', '', '', 6, 25, 2008, 6, 25, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (913, 'Talk to D liss', '', '', 268, '', '', '', 6, 18, 2008, 6, 18, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (914, 'Meet Caroline at f and N', '', '', 269, '', '', '', 6, 19, 2008, 6, 19, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (915, 'ELC presentation - Tom', '', '', 270, '', '', '', 8, 13, 2008, 8, 13, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Weill Greenberg Center, locate');
INSERT INTO `events` VALUES (916, 'ULURP comm mtg', '', '', 271, '', '', '', 6, 24, 2008, 6, 24, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (917, 'Mt w Rafael', '', '', 272, '', '', '', 6, 23, 2008, 6, 23, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (918, 'Policy Meeting', '', '', 273, '', '', '', 7, 23, 2008, 7, 23, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (919, 'Dr Manning', '', '', 274, '', '', '', 8, 5, 2008, 8, 5, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (920, 'Julio''s RQI meeting', '', '', 275, '', '', '', 6, 25, 2008, 6, 25, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (921, 'Meet w Mely on Tower 3', '', '', 276, '', '', '', 6, 25, 2008, 6, 25, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (922, 'Talk to D LIss', '', '', 277, '', '', '', 6, 24, 2008, 6, 24, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (923, 'Taste restaurant', '', '', 278, '', '', '', 6, 26, 2008, 6, 26, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'upper east side');
INSERT INTO `events` VALUES (924, 'Call Jeffrey Chan from Neuro 3', '', '', 279, '', '', '', 6, 25, 2008, 6, 25, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-305-0006');
INSERT INTO `events` VALUES (925, 'Meet w Mely Chua', '', '', 280, '', '', '', 6, 25, 2008, 6, 25, 2008, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (926, 'SH', '', '', 281, '', '', '', 7, 1, 2008, 7, 1, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (927, 'McCarren Park Movie', 'Desp seeking Susan,\r\nMean Streets,\r\nBlue Velvet,\r\nRushmore', '', 282, '', '', '', 7, 15, 2008, 8, 26, 2008, 6, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'P', '');
INSERT INTO `events` VALUES (928, 'Brooklyn Bridge Movies', 'Wallace and Gromit: Curse Of The Were Rabbit  - animation\r\nAce In The Hole \r\nBilly Wilder''s cynical classic envisions a world where tragedy makes for media gold and once-respected journalists change into self-serving desperados…a full half-century before', '', 283, '', '', '', 7, 24, 2008, 8, 14, 2008, 8, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Thu', 0, 1, 'S', 'Bklyn Bridge');
INSERT INTO `events` VALUES (929, 'NY Phil in Prospect park', '', '', 284, '', '', '', 7, 14, 2008, 7, 14, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (930, 'Rural life  rooftop films @ automotive HS in GP', 'http://gonyc.about.com/gi/dynamic/offsite.htm?zi=1/XJ&sdn=gonyc&cdn=travel&tm=430&gps=45_785_1148_696&f=00&su=p531.31.150.ip_p531.29.420.ip_p284.8.150.ip_&tt=2&bt=1&bts=0&zu=http%3A//www.rooftopfilms.com/', '', 285, '', '', '', 7, 18, 2008, 7, 18, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'S', '');
INSERT INTO `events` VALUES (931, 'Mt w rafael and D alago', '', '', 286, '', '', '', 7, 2, 2008, 7, 2, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (932, 'Volunteer w Williamsburg Walks', '', '', 287, '', '', '', 8, 9, 2008, 8, 9, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (933, 'CSA meeting', '', '', 288, '', '', '', 7, 20, 2008, 7, 20, 2008, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (934, 'Go live with Heme-Onc', '', '', 289, '', '', '', 7, 1, 2008, 7, 1, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (935, 'Go over non-patient with Rita', '', '', 290, '', '', '', 7, 2, 2008, 7, 2, 2008, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (936, 'Speak with Tomlee', 'Phone - 212-659-9154\r\n973-264-7932\r\n210-747-8127', '', 291, '', '', '', 7, 1, 2008, 7, 1, 2008, 9, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (937, 'Swartz center rounds', '', '', 292, '', '', '', 9, 10, 2008, 9, 10, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (938, 'POS collection in the ER', '', '', 293, '', '', '', 9, 16, 2008, 9, 16, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (939, 'ER meeting', '\r\nWe can use the 10th floor Conference Room 10-25 for 7/16 from 3-4. Please let me know if you are still interested.\r\n', '', 294, '', '', '', 7, 16, 2008, 7, 16, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (940, 'Meet with Genie', '', '', 295, '', '', '', 7, 15, 2008, 7, 15, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (941, 'Phils in prospect park', '', '', 296, '', '', '', 7, 14, 2008, 7, 14, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (942, 'Bday party?', '', '', 297, '', '', '', 8, 9, 2008, 8, 9, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (943, 'Mt W Steve Hermann and Rich G', '', '', 298, '', '', '', 7, 23, 2008, 7, 23, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '8A41 starr');
INSERT INTO `events` VALUES (944, 'DAY OFF ---GRAM', '', '', 299, '', '', '', 7, 18, 2008, 7, 18, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (945, 'Interview with consulting firm', '', '', 300, '', '', '', 7, 15, 2008, 7, 15, 2008, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (946, 'Call Carol C', '', '', 301, '', '', '', 7, 15, 2008, 7, 15, 2008, 2, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (947, 'Speak to Dr Pincus', '', '', 302, '', '', '', 8, 27, 2008, 8, 27, 2008, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (948, 'Speak to Julio', '', '', 303, '', '', '', 7, 16, 2008, 7, 16, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (949, 'Work on PT!', '', '', 304, '', '', '', 7, 16, 2008, 7, 16, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (950, 'ED copay collection', '', '', 305, '', '', '', 7, 24, 2008, 7, 24, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (951, 'Meet with Rafael', '', '', 306, '', '', '', 7, 23, 2008, 7, 23, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (952, 'Meet w Rita H', '', '', 307, '', '', '', 7, 29, 2008, 7, 29, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'M8HN-8-114');
INSERT INTO `events` VALUES (953, 'Alvin Ailey dance', '', '', 308, '', '', '', 8, 7, 2008, 8, 7, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Prospect Park');
INSERT INTO `events` VALUES (954, 'Mt w Brian and Ken Blessing', '', '', 309, '', '', '', 7, 18, 2008, 7, 18, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (955, 'Meet w Brian Hale', '', '', 311, '', '', '', 7, 24, 2008, 7, 24, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (956, 'Mt w Ken B', '', '', 312, '', '', '', 8, 4, 2008, 8, 4, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (957, 'Cookbook meeting', '', '', 313, '', '', '', 8, 6, 2008, 8, 6, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (958, 'Mt w Bill and accountants', '', '', 314, '', '', '', 7, 25, 2008, 7, 25, 2008, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (959, 'Meeting w Margaret Liu??', '', '', 315, '', '', '', 7, 24, 2008, 7, 24, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (960, 'OFF - Jay in!', '', '', 316, '', '', '', 8, 1, 2008, 8, 1, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (961, 'JAYINTOWN', '', '', 317, '', '', '', 8, 2, 2008, 8, 3, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (962, 'Public safety meeting', '', '', 318, '', '', '', 7, 31, 2008, 7, 31, 2008, 6, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (963, 'Mt w Lesmayh Fraser Di Phase II', '', '', 319, '', '', '', 8, 6, 2008, 8, 6, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (964, 'CSA low income brunch', '', '', 320, '', '', '', 8, 24, 2008, 8, 24, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (965, 'CSA meeting', '', '', 321, '', '', '', 8, 17, 2008, 8, 17, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (966, 'APT w SH', '', '', 322, '', '', '', 7, 29, 2008, 7, 29, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (967, 'Slideluck potshow - GP', '', '', 323, '', '', '', 8, 2, 2008, 8, 2, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (968, 'OFf the Chart Band', '', '', 324, '', '', '', 8, 7, 2008, 8, 7, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '251 West 30th Street');
INSERT INTO `events` VALUES (969, 'Mt w Glen Ednie', '', '', 325, '', '', '', 7, 31, 2008, 7, 31, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (970, 'Clinic Track meeting w B Hale', 'Speak about Healthpay24', '', 326, '', '', '', 8, 7, 2008, 8, 7, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'HT 582A');
INSERT INTO `events` VALUES (971, 'Call Genie', '', '', 327, '', '', '', 7, 31, 2008, 7, 31, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (973, 'Mtg w brian Hale and Emily G', '', '', 329, '', '', '', 8, 5, 2008, 8, 5, 2008, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-746-7284');
INSERT INTO `events` VALUES (974, 'Meet with Rob and Prithy', '', '', 330, '', '', '', 8, 4, 2008, 8, 4, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (975, 'Go out w Margaret', '', '', 331, '', '', '', 8, 4, 2008, 8, 4, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (976, 'Meet Ken Blessing', '', '', 332, '', '', '', 8, 19, 2008, 8, 19, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (977, 'Meeting with Brian and Steve', '', '', 333, '', '', '', 8, 5, 2008, 8, 5, 2008, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (978, 'Meet with broadway clinic', '', '', 334, '', '', '', 8, 7, 2008, 8, 7, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (979, 'Call Juan Mejia', '', '', 335, '', '', '', 8, 29, 2008, 8, 29, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (980, 'Call L Burke - (212) 821-0904', '', '', 336, '', '', '', 8, 7, 2008, 8, 7, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (981, 'Lunch with the interns', 'The luncheon will be held at the 168th Street (Uptown) campus in the Faculty Club, located at 630 West 168th Street on the 4th floor (between Ft. Washington Street and Broadway).', '', 337, '', '', '', 8, 14, 2008, 8, 14, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Faculty club - cu');
INSERT INTO `events` VALUES (982, 'Call Elvis', '', '', 338, '', '', '', 8, 8, 2008, 8, 8, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (983, 'Mt w Anita from Lori''s group', '', '', 339, '', '', '', 8, 8, 2008, 8, 8, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (984, 'Mt  w Brian', '', '', 340, '', '', '', 8, 8, 2008, 8, 8, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (985, 'Adam''s BDay', '', '', 341, '', '', '', 8, 16, 2008, 8, 16, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'sing sing NYC');
INSERT INTO `events` VALUES (986, 'happy hour w jena', '', '', 342, '', '', '', 8, 13, 2008, 8, 13, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (987, 'call evis @chony', '', '', 343, '', '', '', 8, 14, 2008, 8, 14, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (988, 'Meet w Audubon', '', '', 344, '', '', '', 8, 14, 2008, 8, 14, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (989, 'Lunch w Rev group', '', '', 345, '', '', '', 8, 13, 2008, 8, 13, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (990, 'Komen race for the cure', '', '', 346, '', '', '', 9, 14, 2008, 9, 14, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (991, 'Mt w BK and Jason di POS web training', '', '', 347, '', '', '', 8, 13, 2008, 8, 13, 2008, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (992, 'WAMU CD expires - CHANGE', '', '', 348, '', '', '', 4, 8, 2009, 4, 14, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (993, 'Meet with Tracey on CHONY 3 N', '', '', 349, '', '', '', 8, 14, 2008, 8, 14, 2008, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'CHONY3N bet MRI and  exit rt');
INSERT INTO `events` VALUES (994, 'Call Chris L about C/A file', 'email from tues aug 12', '', 350, '', '', '', 8, 18, 2008, 8, 18, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (995, 'Train Diana A''s staff', '', '', 351, '', '', '', 8, 15, 2008, 8, 15, 2008, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (996, 'Big picture @ Cornell', '', '', 352, '', '', '', 9, 9, 2008, 9, 9, 2008, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (997, 'Big Picture @WC', '', '', 353, '', '', '', 9, 17, 2008, 9, 17, 2008, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (998, 'Big Picture @ WC', '', '', 354, '', '', '', 9, 23, 2008, 9, 23, 2008, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (999, 'Lunch w Tom G', '', '', 355, '', '', '', 8, 15, 2008, 8, 15, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1000, 'GIT w Jessica Prata', 'from Ken Haber''s email about the sustainability council.', '', 356, '', '', '', 8, 20, 2008, 8, 20, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1001, 'Lori Mills di electronic checks', '', '', 357, '', '', '', 8, 15, 2008, 8, 15, 2008, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1002, 'Mt Martha Tirado at the Allen', '', '', 358, '', '', '', 8, 22, 2008, 8, 22, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1003, 'Mt with Ken Blessing', '', '', 359, '', '', '', 9, 9, 2008, 9, 9, 2008, 9, 30, 'AM', 10, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1005, 'Look for info di sustainability council', 'jessica prata', '', 361, '', '', '', 9, 10, 2008, 9, 10, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1006, 'Send Document to Bill and Steve', 'Doc for legal for hP24 print out', '', 362, '', '', '', 8, 25, 2008, 8, 25, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1007, 'Mt with Bill and D liss', '', '', 363, '', '', '', 8, 29, 2008, 8, 29, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Bill''s office');
INSERT INTO `events` VALUES (1008, 'UHF meeting', '', '', 364, '', '', '', 9, 10, 2008, 9, 10, 2008, 6, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1009, 'Go live for radiology at Allen', '', '', 365, '', '', '', 9, 3, 2008, 9, 3, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1010, 'Sustainable investing dinner - offered by trinity', 'Location:   Cornell Club of New York \r\n  Fall Creek Room \r\n  6 East 44th St. \r\n  New York, NY 10017 \r\nContact:   Candice Comeaux ''01 \r\n  candice_comeaux@hotmail.com \r\n  \r\n', '', 366, '', '', '', 9, 16, 2008, 9, 16, 2008, 6, 0, 'PM', 9, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1011, 'Meet Eliza', '', '', 367, '', '', '', 8, 24, 2008, 8, 24, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1012, 'CSA meeting', '', '', 368, '', '', '', 9, 14, 2008, 9, 14, 2008, 4, 0, 'PM', 6, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1013, 'CSA " Accounting" meeting', '', '', 369, '', '', '', 9, 7, 2008, 9, 7, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1014, 'Mt w B Hale and spec clinic mgrs', 'Bring data\r\n\r\noffice746-5444', '', 370, '', '', '', 9, 10, 2008, 9, 10, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'HT 601');
INSERT INTO `events` VALUES (1015, 'Mtg di Bburg walks!', 'Music Hall of Williamsburg (66 N 6th)\r\nDATE: August 27th (Wednesday)\r\nTIME: 6pm, doors open', '', 371, '', '', '', 8, 27, 2008, 8, 27, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Music Hall of Williamsburg (66');
INSERT INTO `events` VALUES (1016, 'Library talk - Jerusalem', '', '', 372, '', '', '', 9, 15, 2008, 9, 15, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1017, 'Library talk - Ramadan in NYC', '', '', 373, '', '', '', 9, 3, 2008, 9, 3, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1018, 'Lib talk - Slave labor in modern america', '', '', 374, '', '', '', 9, 9, 2008, 9, 9, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'NYPL');
INSERT INTO `events` VALUES (1019, 'Train D Alago', '', '', 375, '', '', '', 8, 25, 2008, 8, 25, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1020, 'Garlic Festival', 'Note - ryan is camping and invited', '', 376, '', '', '', 9, 27, 2008, 9, 28, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1021, 'HP24 manager''s meeting!', '', '', 377, '', '', '', 8, 28, 2008, 8, 28, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'webinar');
INSERT INTO `events` VALUES (1022, 'Meet w Brian', '', '', 378, '', '', '', 8, 22, 2008, 8, 22, 2008, 1, 3, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1023, 'Happy hour w Jena', 'confirm - mon', '', 379, '', '', '', 9, 26, 2008, 9, 26, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1024, ' presentation at Rev cycle', '', '', 0, '', '', '', 9, 22, 2008, 9, 22, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1025, 'Meet w Brian about C/as', '', '', 0, '', '', '', 8, 26, 2008, 8, 26, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1026, 'Go through payments w Rita', '', '', 0, '', '', '', 8, 26, 2008, 8, 26, 2008, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1027, 'Meeting with B Hale and HT5', '', '', 0, '', '', '', 9, 3, 2008, 9, 3, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'HT 601');
INSERT INTO `events` VALUES (1028, 'Mt w Bill, Brian, and D Liss', '', '', 0, '', '', '', 9, 4, 2008, 9, 4, 2008, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1029, 'Meet with Radiology woman - payson 3 or 6', '', '', 0, '', '', '', 8, 27, 2008, 8, 27, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1030, 'call Mike Z', '', '', 0, '', '', '', 8, 26, 2008, 8, 26, 2008, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1031, 'Finance staff meeting', '', '', 0, '', '', '', 9, 12, 2008, 9, 12, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1032, 'Meet w Beatriz and Rita webinar', '', '', 0, '', '', '', 8, 28, 2008, 8, 28, 2008, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1033, 'Meeting with another hospital to review HP', '', '', 0, '', '', '', 9, 25, 2008, 9, 25, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1034, 'Dr Manning', '', '', 0, '', '', 'a', 9, 9, 2008, 9, 9, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1035, 'LIBRARY BOOKS DUE TOMORROW', '', '', 0, '', '', '', 9, 22, 2008, 9, 22, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1036, 'Meet with Emily and Eliza', '', '', 0, '', '', '', 9, 11, 2008, 9, 11, 2008, 8, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1038, 'GET PPD READ', '', '', 0, '', '', '', 9, 5, 2008, 9, 5, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1039, 'Farmer meet and greet', '', '', 0, '', '', '', 9, 20, 2008, 9, 20, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1040, 'Potentisl to go to Gram''s', '', '', 0, '', '', '', 9, 21, 2008, 9, 21, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1041, 'Go to Gram''s', '', '', 0, '', '', '', 10, 4, 2008, 10, 4, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1042, 'Canning Class in Jersey', '', '', 0, '', '', '', 9, 13, 2008, 9, 13, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1043, 'Policy Mtg w Dr. Pincus', '', '', 0, '', '', '', 9, 15, 2008, 9, 15, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1044, 'Sept  111th service', '', '', 0, '', '', '', 9, 11, 2008, 9, 11, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1045, 'Bioethics - Critical issues of our time', 'Columbia University Medical Center\r\nNeurology Institute Auditorium, First Floor\r\n710 West 168th Street\r\n[Intersection of Fort Washington Avenue and Haven Avenue]\r\n\r\n The event is free and all are encouraged to attend.\r\n\r\n Please RSVP, or for more informat', '', 0, '', '', '', 9, 25, 2008, 9, 25, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1046, 'Dept Heads at WCMC', 'Report out to Rev Cycle group', '', 0, '', '', '', 9, 19, 2008, 9, 19, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Uris Auditorium');
INSERT INTO `events` VALUES (1047, 'Meeting with Stockcamp and carol c', '', '', 0, '', '', '', 9, 11, 2008, 9, 11, 2008, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1048, 'Speak w David Liss', '', '', 0, '', '', '', 9, 8, 2008, 9, 8, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1049, 'Nina''s birthday party', '', '', 0, '', '', '', 10, 17, 2008, 10, 17, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1050, 'Meet Ngina (38th) for lunch', '', '', 0, '', '', '', 9, 24, 2008, 9, 24, 2008, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1051, 'Revenue Cycle', '', '', 0, '', '', '', 10, 6, 2008, 12, 30, 2008, 11, 0, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1052, 'Mt w Steve Herrmann and Rich Graffell', '', '', 0, '', '', '', 9, 17, 2008, 9, 17, 2008, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Steve''s office  - starr 8a');
INSERT INTO `events` VALUES (1053, 'MIDWOOD reunion', '', '', 0, '', '', '', 9, 20, 2008, 9, 20, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1054, 'Fall for Dance', '', '', 0, '', '', '', 9, 23, 2008, 9, 23, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1055, 'mt w Ken Blessing', '', '', 0, '', '', '', 0, 0, 0, 0, 0, 0, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1056, 'Meet with Rick Evans', '', '', 0, '', '', '', 9, 19, 2008, 9, 19, 2008, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1057, 'Meet w Mike Z', '', '', 0, '', '', '', 10, 17, 2008, 10, 17, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1058, 'Meet w Rita', '', '', 0, '', '', '', 9, 12, 2008, 9, 12, 2008, 2, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1059, 'mt w Rita', '', '', 0, '', '', '', 9, 11, 2008, 9, 11, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1060, 'trinity reunion', '', '', 0, '', '', '', 10, 11, 2008, 10, 11, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1061, 'HOME NIGHT', '', '', 0, '', '', '', 9, 17, 2008, 9, 17, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1062, 'Mt w Bonnie Corrbitt', '', '', 0, '', '', '', 9, 22, 2008, 9, 22, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1063, 'Train with sybill from development', '', '', 0, '', '', '', 9, 19, 2008, 9, 19, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1064, 'Dr. Lao - derm', '121 East 60th st. Bet park and lex on second \r\nSecond floor', '', 0, '', '', '', 9, 22, 2008, 9, 22, 2008, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1065, 'Call w Larry Burke', 'check email for info', '', 0, '', '', '', 9, 23, 2008, 9, 23, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1066, 'Budget comm. from comm. board', '', '', 0, '', '', '', 9, 29, 2008, 9, 29, 2008, 6, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1067, 'Sustainability Council Meeting', '', '', 0, '', '', '', 10, 3, 2008, 10, 3, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Whitney 117');
INSERT INTO `events` VALUES (1068, 'Table coaching (comm to care)', '', '', 0, '', '', '', 10, 30, 2008, 10, 30, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Shabazz center');
INSERT INTO `events` VALUES (1069, 'Candace Birthday Celebration', '', '', 0, 'Jason Karageorge', '', 'o', 10, 4, 2008, 10, 4, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1070, 'Meet Tom M at thye Yatch Club', '', '', 0, '', '', '', 10, 1, 2008, 10, 1, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1071, 'KING CORN', '', '', 0, '', '', '', 10, 2, 2008, 10, 2, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1072, 'Mt w Dawn and Mikella', '', '', 0, '', '', '', 9, 30, 2008, 9, 30, 2008, 6, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1073, 'Meet with David Liss', '', '', 0, '', '', '', 9, 24, 2008, 9, 24, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1074, 'Meet Jose Rojas', '', '', 0, '', '', '', 9, 26, 2008, 9, 26, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1075, 'Go to Hoboken', '', '', 0, '', '', '', 10, 3, 2008, 10, 3, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1076, 'Dinner w Staci', '', '', 0, '', '', '', 10, 7, 2008, 10, 7, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1077, 'Out w Leslie in wburg', '', '', 0, '', '', '', 10, 9, 2008, 10, 9, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1078, 'post carbon cities presentation', 'Look at cb1 or teresa toros email', '', 0, '', '', '', 10, 15, 2008, 10, 15, 2008, 12, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1079, 'CSA meeting', '', '', 0, '', '', '', 10, 19, 2008, 10, 19, 2008, 4, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1080, 'Meet with Farmers', '', '', 0, '', '', '', 10, 4, 2008, 10, 4, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1081, 'Webinar with Norma from Specialty Clinics', '', '', 0, '', '', '', 9, 30, 2008, 9, 30, 2008, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1082, 'HALLOWEEN', '', '', 0, '', '', '', 10, 31, 2008, 10, 31, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1083, 'Trinity Reunion', '', '', 0, '', '', '', 10, 10, 2008, 10, 10, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1084, 'THANKSGIVING', '', '', 0, '', '', '', 11, 27, 2008, 11, 30, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1085, 'Stop at black and white store; call about returns', '', '', 0, '', '', '', 10, 3, 2008, 10, 3, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1086, 'Go to Norma''s Clinic mtg - to discuss HP24', 'discuss copay collection and self pay collection', '', 0, '', '', '', 10, 21, 2008, 10, 21, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1087, 'Call with Lesmah', '305-1999.\r\n', '', 0, '', '', '', 10, 6, 2008, 10, 6, 2008, 9, 15, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1088, 'Dinner w Fleo and Nina', '', '', 0, '', '', '', 10, 19, 2008, 10, 19, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1089, 'Meet w Bill', '', '', 0, '', '', '', 10, 1, 2008, 10, 1, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1090, 'Helen''s meeting', '', '', 0, '', '', '', 10, 2, 2008, 10, 2, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1091, 'Dr. Manning', '', '', 0, '', '', '', 10, 14, 2008, 10, 14, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1092, 'Call Khawaja', '', '', 0, '', '', '', 10, 3, 2008, 10, 3, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1093, 'Call Rosa Buenestro from IS to post pmt', '', '', 0, '', '', '', 10, 6, 2008, 10, 6, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1094, 'Meet Lesmah', 'Carol, Andy, Evelyn', '', 0, '', '', '', 10, 21, 2008, 10, 21, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1095, 'Meet with Bank and Khawaja', '', '', 0, '', '', '', 10, 9, 2008, 10, 9, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1101, 'WIP meeting', '', '', 0, '', '', '', 10, 20, 2008, 10, 20, 2008, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1097, 'Meet w Margaret and Jeff B', 'About payson 3 and payson 6. \r\n\r\n60420 \r\nm108', '', 0, '', '', '', 10, 15, 2008, 10, 15, 2008, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'm108');
INSERT INTO `events` VALUES (1098, 'Show w Dad', '', '', 0, '', '', '', 10, 18, 2008, 10, 18, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1099, 'Show w Dar Dad and Jack', '', '', 0, '', '', '', 10, 27, 2008, 10, 27, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1100, 'Meet w Steve H and Rich and Davina', '', '', 0, '', '', '', 10, 7, 2008, 10, 7, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1102, 'Election Forum - Health Care in the 2008 Election:', 'Columbia University Medical Center\r\n650 West 168th Street\r\nAlumni Auditorium', '', 0, '', '', '', 10, 20, 2008, 10, 20, 2008, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1103, 'Meet w Silvia R from pedes chemo', '', '', 0, '', '', '', 10, 14, 2008, 10, 14, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1104, 'Meeting at Cornell', 'Past starr building - 530 e 70th m-05,, towards ER. w fred. Ask for Danielle. \r\nRadiologyish area.', '', 0, '', '', '', 10, 15, 2008, 10, 15, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1105, 'Conf Call for UHF', '', '', 0, '', '', '', 10, 16, 2008, 10, 16, 2008, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1106, 'Meet w David L', '', '', 0, '', '', '', 10, 8, 2008, 10, 8, 2008, 2, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1107, 'Call into Steve Herrmann', '', '', 0, '', '', '', 10, 20, 2008, 10, 20, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1108, 'Visit polish terrace on GP ave', '', '', 0, '', '', '', 10, 13, 2008, 10, 13, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1109, 'Call w Steve H etc.', '', '', 0, '', '', '', 10, 22, 2008, 10, 22, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1110, 'Meet w Steve H', '8a09', '', 0, '', '', '', 10, 15, 2008, 10, 15, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1111, 'Meet w Brian and Alex', 'About PT / ot', '', 0, '', '', '', 10, 16, 2008, 10, 16, 2008, 11, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1112, 'Out w Staci', '', '', 0, '', '', '', 10, 16, 2008, 10, 16, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1113, 'MATTHEW WILL BE OVER', '', '', 0, '', '', '', 10, 26, 2008, 10, 26, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1114, 'Pick up Matthew', '', '', 0, '', '', '', 10, 25, 2008, 10, 25, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1115, 'Dance at City Center', '', '', 0, '', '', '', 11, 5, 2008, 11, 5, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1116, 'Dr. Manning', '', '', 0, '', '', '', 11, 18, 2008, 11, 18, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1117, 'Dance at City Center', '', '', 0, '', '', '', 12, 9, 2008, 12, 9, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2480, 'Meet w Empire', '', '', 0, '', '', '', 6, 14, 2011, 6, 14, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1119, 'PHR Meeting', '', '', 0, '', '', '', 11, 5, 2008, 11, 5, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1120, 'Mt w David', '', '', 0, '', '', '', 10, 22, 2008, 10, 22, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1121, 'Mt w David', '', '', 0, '', '', '', 11, 19, 2008, 11, 19, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1122, 'Mt w David', '', '', 0, '', '', '', 11, 26, 2008, 12, 26, 2008, 3, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Thu', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1123, 'Meet w Bank', '', '', 0, '', '', '', 10, 20, 2008, 10, 20, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1124, 'Aida and Martha - radiology', '', '', 0, '', '', '', 10, 17, 2008, 10, 17, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1125, 'CSA meeting', '', '', 0, '', '', '', 11, 16, 2008, 11, 16, 2008, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1126, 'Harvest dinner', '', '', 0, '', '', '', 11, 15, 2008, 11, 15, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1127, 'Manager''s meeting', '', '', 0, '', '', '', 11, 4, 2008, 11, 4, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1128, 'Mt w Lori V', '', '', 0, '', '', '', 10, 21, 2008, 10, 21, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1129, 'THE PARTY!!!', '', '', 0, '', '', '', 12, 6, 2008, 12, 6, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1130, 'UHF event', 'Mad 46 - The Roosevelt Hotel\r\n45 East 45th Street (corner of Madison Avenue), New York, NY 10017 US\r\n', '', 0, '', '', '', 10, 29, 2008, 10, 29, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1131, 'Mt w Mouna di Cc machine', '', '', 0, '', '', '', 10, 24, 2008, 10, 24, 2008, 11, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1132, 'Alice''s tea cup party w fleo', 'Alice''s Tea Cup\r\n220 East 81st Street, New York, NY 10028 US', '', 0, '', '', '', 11, 9, 2008, 11, 9, 2008, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'UES');
INSERT INTO `events` VALUES (1133, 'PREP for the PARTY', '', '', 0, '', '', '', 12, 5, 2008, 12, 5, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1134, 'Gram''s??', '', '', 0, '', '', '', 11, 1, 2008, 11, 1, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1135, 'VOTE!!!', '', '', 0, '', '', '', 11, 4, 2008, 11, 4, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1136, 'Get Dress from store in GP', '', '', 0, '', '', '', 10, 28, 2008, 10, 29, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1137, 'Meet Kattia on VC2', '', '', 0, '', '', '', 10, 30, 2008, 10, 30, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1138, 'Get Letters to Santa from 34th st!!', '', '', 0, '', '', '', 12, 7, 2008, 12, 13, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1139, 'Mt w D Liss', '', '', 0, '', '', '', 10, 29, 2008, 10, 29, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1140, 'GO to Meeting for the parks', 'at the bklyn brewery -', '', 0, '', '', '', 11, 3, 2008, 11, 3, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1141, 'Bedtime story Project', '', '', 0, '', '', '', 12, 4, 2008, 12, 4, 2008, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1142, 'mt w Alex', '', '', 0, '', '', '', 11, 3, 2008, 11, 3, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1143, 'PT-Ot meeting', '', '', 0, '', '', '', 11, 10, 2008, 11, 10, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1144, '$$ for Polish Hall!!', '', '', 0, '', '', '', 11, 10, 2008, 11, 10, 2008, 7, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1145, 'UHF round table', '', '', 0, '', '', '', 2, 18, 2009, 2, 18, 2009, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1146, 'GREEN SCREENS - donate electronics', '', '', 0, '', '', '', 11, 15, 2008, 11, 16, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1147, 'Return to L and T', '', '', 0, '', '', '', 11, 10, 2008, 11, 10, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1148, 'FUP w Katia di PT / OT at Milstein', '', '', 0, '', '', '', 11, 25, 2008, 11, 25, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1149, 'FUP w Juan Mejia', '', '', 0, '', '', '', 12, 2, 2008, 12, 2, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1192, 'Meet w S kurz and P sampson', '', '', 0, '', '', '', 12, 10, 2008, 12, 10, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1151, 'PT OT mtg', '', '', 0, '', '', '', 11, 19, 2008, 11, 19, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1152, 'Meet w David', '', '', 0, '', '', '', 11, 12, 2008, 11, 12, 2008, 3, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1153, 'Schwatrz center grand rounds', '', '', 0, '', '', '', 11, 12, 2008, 11, 12, 2008, 11, 45, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1154, 'Healthy Kids Benefit', '', '', 0, '', '', '', 6, 23, 2009, 0, 0, 0, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1155, 'Table coach lunch', '', '', 0, '', '', '', 11, 17, 2008, 11, 17, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '38th St Conf. Rm');
INSERT INTO `events` VALUES (1156, 'Call w Curtis Cole regarding Healthvault and EPIC', 'Find out privacy policy with Epic personal health record information.', '', 0, '', '', '', 11, 17, 2008, 11, 17, 2008, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-746-0471');
INSERT INTO `events` VALUES (1157, 'Meet w Cathy Stack', 'Do training w staff on prior balance collection', '', 0, '', '', '', 11, 20, 2008, 11, 20, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Meet in Audubon - 2nd fl - 211');
INSERT INTO `events` VALUES (1158, 'Ethics for lunch - Meet margaret', 'P&S Amphitheater, 7th Floor\r\n630 West 168th Street\r\n[Between Broadway & Fort Washington Avenue]', '', 0, '', '', '', 11, 20, 2008, 11, 20, 2008, 11, 45, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'P&S Amphitheater, 7th Floor');
INSERT INTO `events` VALUES (1159, 'Transportation town hall', 'with CB1 abd David Yassky and Daniel Squadron', '', 0, '', '', '', 11, 24, 2008, 11, 24, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '211 Ainslie St (corner of Manh');
INSERT INTO `events` VALUES (1160, 'ULURP Comm. Meeting', 'Submit questions to Marie', '', 0, '', '', '', 11, 25, 2008, 11, 25, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1161, 'Mt w Jose Rojas', '', '', 0, '', '', '', 11, 14, 2008, 11, 14, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1162, 'Out w Staci', '', '', 0, '', '', '', 11, 21, 2008, 11, 21, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1163, 'Closing for Gram''s house', '', '', 0, '', '', '', 11, 25, 2008, 11, 25, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1164, 'Mtg w IXT grou]p', '', '', 0, '', '', '', 11, 17, 2008, 11, 17, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1165, 'Mt w ken T di server stuff', '', '', 0, '', '', '', 11, 24, 2008, 11, 24, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1166, 'Gram''s House', '', '', 0, '', '', '', 11, 22, 2008, 11, 22, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1167, 'FUP w Shelly Crawford di misposted payments', '', '', 0, '', '', '', 12, 1, 2008, 12, 1, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1168, 'Breakfast w Dr. Corwin', '', '', 0, '', '', '', 1, 21, 2009, 1, 21, 2009, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1169, 'Mt Susan from Holy name', '201-833-7043', '', 0, '', '', '', 12, 9, 2008, 12, 9, 2008, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Mt at Milstein lobby info desk');
INSERT INTO `events` VALUES (1170, 'TSI Breakfast', '', '', 0, '', '', '', 12, 3, 2008, 12, 3, 2008, 9, 0, 'AM', 11, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '3rd fl conf. rm');
INSERT INTO `events` VALUES (1171, 'Table coaching', '', '', 0, '', '', '', 12, 9, 2008, 12, 9, 2008, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1172, 'Mtg w Shari''s group', '', '', 0, '', '', '', 12, 5, 2008, 12, 5, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1173, 'Call w IXT', '', '', 0, '', '', '', 12, 3, 2008, 12, 3, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1174, 'WEBINAR w Shelly''s group', 'Train on errors in ad hoc posting', '', 0, '', '', '', 12, 11, 2008, 12, 11, 2008, 11, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1175, 'Mgmt holiday party', '', '', 0, '', '', '', 12, 18, 2008, 12, 18, 2008, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1176, 'CB1 public safety meeting', '', '', 0, '', '', '', 12, 18, 2008, 12, 18, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1177, 'Community Board Meeting', '', '', 0, '', '', '', 1, 13, 2009, 1, 13, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1178, 'Community Board Meeting', '', '', 0, '', '', '', 2, 10, 2009, 2, 10, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1179, 'Speak to Helen and Mo di prior balance.', '', '', 0, '', '', '', 12, 4, 2008, 12, 4, 2008, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '646 317 1125');
INSERT INTO `events` VALUES (1180, 'Mtg w Lesmah', '', '', 0, '', '', '', 12, 3, 2008, 12, 3, 2008, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1181, 'Food sustainability task force', 'room K510 with the conference line available for anyone who cannot attend in person, 212-342-3999. We will be discussing ideas and determining our top 2-3 priorities for 2009.', '', 0, '', '', '', 12, 4, 2008, 12, 4, 2008, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1182, 'potential meeting for bike lane', '', '', 0, '', '', '', 12, 10, 2008, 12, 10, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1183, 'Mt John at Diamond Bar', '', '', 0, '', '', '', 12, 8, 2008, 12, 8, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1184, 'Holiday Lunch', '', '', 0, '', '', '', 12, 18, 2008, 12, 18, 2008, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1185, 'Lean training', '', '', 0, '', '', '', 12, 12, 2008, 12, 12, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1186, 'LEAN TRAINING ALL DAY', '', '', 0, '', '', '', 12, 11, 2008, 12, 11, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1187, 'Jose Rojas', '', '', 0, '', '', '', 12, 5, 2008, 12, 5, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1188, 'Sustainability coucil meeting', '', '', 0, '', '', '', 12, 9, 2008, 12, 9, 2008, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1189, 'Dr. Barone', '', '', 0, '', '', '', 12, 8, 2008, 12, 8, 2008, 3, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1190, 'Holiday Party', '', '', 0, '', '', '', 12, 19, 2008, 12, 19, 2008, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1191, 'Hand out gifts at shelter', '', '', 0, '', '', '', 12, 17, 2008, 12, 17, 2008, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1223, 'PT/OT MEETING', 'find out time', '', 0, '', '', '', 1, 15, 2009, 1, 15, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'f17 dining room');
INSERT INTO `events` VALUES (1194, 'Happy Hour w UHF', 'Honey (www.honeyny.com) located at 243 East 14th Street between 7th and 8th Avenues.', '', 0, '', '', '', 12, 23, 2008, 12, 23, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1206, 'speak wt Megan C from Trinity', '', '', 0, '', '', '', 12, 22, 2008, 12, 22, 2008, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1196, 'CSA meeting', '', '', 0, '', '', '', 12, 14, 2008, 12, 14, 2008, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1197, 'Dr. Barone', '', '', 0, '', '', '', 12, 15, 2008, 12, 15, 2008, 3, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1198, 'Mail Aunt Ann letter', '', '', 0, '', '', '', 12, 15, 2008, 12, 15, 2008, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1199, '11th floor party', '', '', 0, '', '', '', 12, 19, 2008, 12, 19, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1200, 'rev cycle', '', '', 0, '', '', '', 12, 16, 2008, 12, 16, 2008, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1201, 'CANCEL Amazon trial membership and US airways CC', '', '', 0, '', '', '', 2, 1, 2009, 2, 4, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1202, 'Cancel United CC', '', '', 0, '', '', '', 1, 1, 2009, 1, 10, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1203, 'Mt at Toys r us w Staci', '', '', 0, '', '', '', 12, 18, 2008, 12, 18, 2008, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1204, 'Call Rita H', '', '', 0, '', '', '', 12, 17, 2008, 12, 17, 2008, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1205, 'call with nutrition group', '', '', 0, '', '', '', 12, 19, 2008, 12, 19, 2008, 3, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1207, 'Columbia University Center for Bioethics', '\r\nProfessional Behavior and\r\n\r\npatient outcomes', '', 0, '', '', '', 1, 22, 2009, 1, 22, 2009, 4, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1208, 'Columbia University Center for Bioethics', 'Scientific and Ethical Implications\r\n of Recent Breakthroughs in\r\n\r\nStem Cell Technologies', '', 0, '', '', '', 1, 15, 2009, 1, 15, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1209, 'Quarterly Staff Meeting', '', '', 0, '', '', '', 1, 21, 9, 0, 0, 0, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1210, ' Finance Quarterly Staff meeting', '', '', 0, '', '', '', 4, 1, 9, 0, 0, 0, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1211, 'Quarterly finance staff meeting', '', '', 0, '', '', '', 0, 0, 0, 0, 0, 0, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1212, 'Quarterly Finance meeting', '', '', 0, '', '', '', 0, 0, 0, 0, 0, 0, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1213, 'Shwartz grand rounds', '', '', 0, '', '', '', 3, 11, 2009, 0, 0, 0, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1214, 'Shwartz Center Grand Rounds', '', '', 0, '', '', '', 4, 29, 2009, 0, 0, 0, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1215, 'Shwartz Center Grand Rounds', '', '', 0, '', '', '', 6, 10, 2009, 0, 0, 0, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1216, 'Shwartz Center Grand Rounds', '', '', 0, '', '', '', 10, 14, 9, 0, 0, 0, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1217, 'Shwartz Center Rounds', '', '', 0, '', '', '', 12, 9, 2009, 0, 0, 0, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1218, 'Wild Fermentation class w Jack and Dad', '', '', 0, '', '', '', 1, 10, 2009, 1, 10, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1219, 'Miami City Ballet at the City Center', '', '', 0, '', '', '', 1, 24, 2009, 1, 24, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1220, 'CSA SIGN UP', '', '', 0, '', '', '', 1, 31, 2009, 1, 31, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1221, 'CSA Meeting ??', '', '', 0, '', '', '', 1, 11, 2009, 1, 11, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1222, 'NYP KICKOFF', '', '', 0, '', '', '', 1, 28, 2009, 1, 28, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1224, 'Meeting w Bill, etc', '', '', 0, '', '', '', 1, 6, 2009, 1, 6, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'his office');
INSERT INTO `events` VALUES (1225, 'Call Sen', '', '', 0, '', '', '', 1, 6, 2009, 1, 6, 2009, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212 305 7035.');
INSERT INTO `events` VALUES (1226, 'Train Peg Christiano''s staff', 'One at 10, and one at 10:30', '', 0, '', '', '', 1, 7, 2009, 1, 7, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1227, 'Dr. Manning', '', '', 0, '', '', '', 1, 6, 2009, 1, 6, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1228, 'Mardi Gras', '', '', 0, '', '', '', 2, 24, 2009, 2, 24, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1229, 'Superbowl Sunday', '', '', 0, '', '', '', 2, 1, 2009, 2, 1, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1230, 'Speak w Megan Cooney from Trinity', '', '', 0, '', '', '', 1, 7, 2009, 1, 7, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1231, 'Set up meeting w Gloria and Larry.', '', '', 0, '', '', '', 2, 9, 2009, 2, 12, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1232, 'Meet w Shari''s Group', '', '', 0, '', '', '', 1, 15, 2009, 1, 15, 2009, 1, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1233, 'Call D Liss', '', '', 0, '', '', '', 1, 7, 2009, 1, 7, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1234, 'Speak to Millie from other hospital', '', '', 0, '', '', '', 1, 9, 2009, 1, 9, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1235, 'Speak w Shelly Crawford', '', '', 0, '', '', '', 1, 8, 2009, 1, 8, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1236, 'Mt W Yon at Columbia', '', '', 0, '', '', '', 1, 22, 2009, 1, 22, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Kathleen Thompkins'' office');
INSERT INTO `events` VALUES (1237, 'Mt w Ken Blessing di PCI', '', '', 0, '', '', '', 1, 9, 2009, 1, 9, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1238, 'Wellness committee meeting', '', '', 0, '', '', '', 1, 16, 2009, 1, 16, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'VC4 conference room');
INSERT INTO `events` VALUES (1239, 'HP24 training w stork Club - GIT w Brian G w info', '57568', '', 0, '', '', '', 1, 13, 2009, 1, 13, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1240, 'Mt Shari Nadelman', '', '', 0, '', '', '', 1, 12, 2009, 1, 12, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1241, 'Out w staci', '', '', 0, '', '', '', 1, 15, 2009, 1, 15, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1242, 'Call into mtg w Kathleen Erbacker, etc.', '', '', 0, '', '', '', 1, 13, 2009, 1, 13, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', ' 646 317 1125');
INSERT INTO `events` VALUES (1243, 'Museum w Staci', '', '', 0, '', '', '', 1, 23, 2009, 1, 23, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1244, 'Call Dr. Erde', '', '', 0, '', '', '', 1, 15, 2009, 1, 15, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-585-6677');
INSERT INTO `events` VALUES (1245, 'mt w gloria, bill,', '', '', 0, '', '', '', 1, 23, 2009, 1, 23, 2009, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Bill''s office');
INSERT INTO `events` VALUES (1246, 'Mt w Carl Cambell di Eagle superbill', '', '', 0, '', '', '', 1, 22, 2009, 1, 22, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1247, 'Mt w Rob Reineman', '', '', 0, '', '', '', 1, 22, 2009, 1, 22, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1248, 'Meet w Carl Cambell', '', '', 0, '', '', '', 1, 21, 2009, 1, 21, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1249, 'UHF meeting', '', '', 0, '', '', '', 2, 25, 2009, 2, 25, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1250, 'PCI mt w Ken B Bill f, IGX, etc', '', '', 0, '', '', '', 1, 21, 2009, 1, 21, 2009, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1251, 'meet w  vanessa', '', '', 0, '', '', '', 1, 27, 2009, 1, 27, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1252, 'GIT w Mohamed about his area', '', '', 0, '', '', '', 1, 27, 2009, 1, 27, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1253, 'Dr. Manning', '', '', 0, '', '', '', 2, 10, 2009, 2, 10, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1254, 'Dr. Barrone', 'Foot Doc', '', 0, '', '', '', 3, 16, 2009, 3, 16, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1255, 'Mt w David Liss', '', '', 0, '', '', '', 1, 22, 2009, 1, 22, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1256, 'webinar for Non-pat pos', 'rry9001@nyp.org 0- email', '', 0, '', '', '', 1, 26, 2009, 1, 26, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1257, 'mt w jason. etc', '', '', 0, '', '', '', 1, 30, 2009, 1, 30, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1258, 'Meet w Shari''s staff', '', '', 0, '', '', '', 1, 30, 2009, 1, 30, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1259, 'Mt w Shari''s area', '', '', 0, '', '', '', 1, 27, 2009, 1, 27, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1260, 'Mt w cookbook group', '', '', 0, '', '', '', 1, 26, 2009, 1, 26, 2009, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1261, 'Revenue Cycle Meeting', '', '', 0, '', '', '', 1, 26, 2009, 1, 26, 2009, 11, 0, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1262, 'State of the hospital', '', '', 0, '', '', '', 2, 13, 2009, 2, 13, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1263, 'Kick-off w Rita Hamburg', '', '', 0, '', '', '', 1, 29, 2009, 1, 29, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1264, 'Mtg w Jason, Brian, Bill di POS training', '', '', 0, '', '', '', 1, 29, 2009, 1, 29, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1354, 'Gyn Appointment', '', '', 0, '', '', '', 4, 1, 2009, 4, 1, 2009, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '425 east 61st 11th fl. close t');
INSERT INTO `events` VALUES (1266, 'Mtg w Mark Larmore', '', '', 0, '', '', '', 3, 27, 2009, 3, 27, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1267, 'Botanic Gardens Making Brooklyn Bloom', '', '', 0, '', '', '', 3, 7, 2009, 3, 7, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1268, 'Meet manny by his staff', 'Go over radiology 3drd floor', '', 0, '', '', '', 1, 29, 2009, 1, 29, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1269, 'Brainstorming w WCMC rehab', '', '', 0, '', '', '', 2, 12, 2009, 2, 12, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1270, 'Brianstorming w Shari''s staff', '', '', 0, '', '', '', 2, 6, 2009, 2, 6, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1271, 'Shari''s area', 'Watch charges being picked up, Yvonne posting charges, Ken posting charges. Also, look at OT next day registration folder', '', 0, '', '', '', 2, 3, 2009, 2, 3, 2009, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1272, 'Dinner w Dad and jax', '', '', 0, '', '', '', 2, 4, 2009, 2, 4, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1273, 'Semi perm interview training', 'Let''s meet there next Wednesday at 5:30 to review the information we will be giving out and how we want to conduct these. The attendees will arrive at 6:30.\r\nThe address is 210 West 102nd Street just east of Broadway. Ring the CR1 or CR2 doorbell. Take my', '', 0, '', '', '', 2, 11, 2009, 2, 11, 2009, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '210 West 102nd Street');
INSERT INTO `events` VALUES (1274, 'CSA Meeting', '', '', 0, '', '', '', 2, 8, 2009, 2, 8, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1275, 'Wellness Task Force', 'Green NYP', '', 0, '', '', '', 2, 13, 2009, 2, 13, 2009, 3, 0, 'PM', 0, 0, 'AM', 'm', 2, 2, 'Fri', 1, 1, 'P', 'VC4th floor conference room)');
INSERT INTO `events` VALUES (1277, 'Bowling happy hr', '', '', 0, '', '', '', 2, 6, 2009, 2, 6, 2009, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1278, 'Speak to Beatriz', '', '', 0, '', '', '', 2, 2, 2009, 2, 2, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1279, 'PAY BILLS', '', '', 0, '', '', '', 2, 3, 2009, 2, 4, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1280, 'Mt w Brian', 'Talk to Shari and Brian about regging patient in advance - ICD codes, etc.', '', 0, '', '', '', 2, 6, 2009, 2, 6, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1281, 'Mt w Shari about Brianstorming', '', '', 0, '', '', '', 2, 11, 2009, 2, 11, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1282, 'Update mtgs w Shari', '', '', 0, '', '', '', 2, 9, 2009, 6, 4, 2009, 3, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1283, 'Meet w David', '', '', 0, '', '', '', 2, 11, 2009, 5, 11, 2009, 3, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Wed', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1284, 'Staff mtg', '', '', 0, '', '', '', 2, 10, 2009, 2, 10, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1285, '2nd brainstorming w Shari''s staff', '', '', 0, '', '', '', 2, 10, 2009, 2, 10, 2009, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1286, 'Meet w Shari''s staff', '', '', 0, '', '', '', 2, 10, 2009, 2, 10, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1287, 'CSA SIGN UP', '', '', 0, '', '', '', 2, 17, 2009, 2, 17, 2009, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1288, 'VISIT TAIT', '', '', 0, '', '', '', 3, 25, 2009, 3, 31, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1289, 'VACATION', '', '', 0, '', '', '', 3, 25, 2009, 3, 31, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1290, 'Talk to Jay', '', '', 0, '', '', '', 2, 9, 2009, 2, 9, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1291, 'REV CYCLE REPORT OUT', '', '', 0, '', '', '', 4, 6, 2009, 4, 6, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1292, 'REV CYCLE REPORT OUT', '', '', 0, '', '', '', 7, 13, 2009, 0, 0, 0, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1293, 'REV CYCLE REPORT OUT', '', '', 0, '', '', '', 11, 2, 2009, 0, 0, 0, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1294, 'CSA meeting', '', '', 0, '', '', '', 3, 22, 2009, 3, 22, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1295, 'Just Food Conference', '', '', 0, '', '', '', 3, 8, 2009, 3, 8, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1296, 'meet w Shari', '', '', 0, '', '', '', 2, 10, 2009, 2, 10, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1297, 'Meeting about Doc phone system', '', '', 0, '', '', '', 2, 10, 2009, 2, 10, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1298, 'Phone call w Shari and Gina', 'Meeting abuot scripts etc. When docs', '', 0, '', '', '', 2, 13, 2009, 2, 13, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1299, 'OUt w Dar', '', '', 0, '', '', '', 2, 12, 2009, 2, 12, 2009, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1300, 'Out w Staci', '', '', 0, '', '', '', 2, 13, 2009, 2, 13, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1301, 'CSA sign up', '', '', 0, '', '', '', 2, 28, 2009, 2, 28, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1302, 'meet for dinner w Anathea', '', '', 0, '', '', '', 2, 19, 2009, 2, 19, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1303, 'Call w Shari di scripts', '', '', 0, '', '', '', 2, 13, 2009, 2, 13, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1304, 'Meeting Eingineering task force', 'south knuckle at cornell', '', 0, '', '', '', 2, 23, 2009, 2, 23, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1305, 'Hp24 client component', '', '', 0, '', '', '', 2, 13, 2009, 2, 13, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', ' 305-1223');
INSERT INTO `events` VALUES (1641, 'Mt w Melissa Orenstein', '', '', 0, '', '', '', 11, 19, 2009, 11, 19, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1307, 'Wellness task force meeting', '', '', 0, '', '', '', 2, 27, 2009, 0, 0, 0, 3, 0, 'PM', 0, 0, 'AM', 'm', 0, 2, 'Fri', 1, 1, 'P', '');
INSERT INTO `events` VALUES (1308, 'Healthpvault policy meeting', '', '', 0, '', '', '', 2, 17, 2009, 2, 17, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1309, 'Incorporation meeting - at Natasha''s House', '', '', 0, '', '', '', 3, 22, 2009, 3, 22, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1310, 'CSA SIGN UP', '', '', 0, '', '', '', 3, 15, 2009, 3, 15, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1311, 'Meeting w Mollie Jones', '', '', 0, '', '', '', 2, 20, 2009, 2, 20, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1312, 'St. Patrick''s Day', '', '', 0, '', '', '', 3, 17, 2009, 3, 17, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1313, 'Dr. Manning', '', '', 0, '', '', '', 3, 24, 2009, 3, 24, 2009, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1314, 'cancel amazon membership and get payment removed', '', '', 0, '', '', '', 2, 20, 2009, 2, 25, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1315, 'Therapy Supervisor meeting  - WC pt', '', '', 0, '', '', '', 3, 3, 2009, 3, 3, 2009, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1316, 'Meet w Terre Paul', '', '', 0, '', '', '', 2, 20, 2009, 2, 20, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '305-1223');
INSERT INTO `events` VALUES (1317, 'Community Board Meeting', '', '', 0, '', '', '', 3, 17, 2009, 3, 17, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1318, 'CB1 Environmental meeting', '', '', 0, '', '', '', 3, 4, 2009, 3, 4, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1319, 'Dinner w Dad', '', '', 0, '', '', '', 3, 11, 2009, 3, 11, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1320, 'Meet w Alex', '', '', 0, '', '', '', 2, 24, 2009, 2, 24, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1321, 'Meet w Brian', '', '', 0, '', '', '', 2, 25, 2009, 2, 25, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1322, 'Meet w Franca', '', '', 0, '', '', '', 2, 25, 2009, 2, 25, 2009, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1323, 'Meeting w Terre Paul', '', '', 0, '', '', '', 2, 27, 2009, 2, 27, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '305-1223');
INSERT INTO `events` VALUES (1324, 'Meeting w Helen K, Mo, Manny', 'Title: Patient Balance Document\r\nFriday, March 6, 2009\r\nTime: 3:30 pm to 4:30 pm (EST5EDT)\r\nLocation: VC 4-417', '', 0, '', '', '', 3, 6, 2009, 3, 6, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1325, 'Shari''s staff meeting', '', '', 0, '', '', '', 3, 6, 2009, 3, 6, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1326, 'Dinner w Staci', '', '', 0, '', '', '', 3, 5, 2009, 3, 5, 2009, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1327, 'Go to the reformed chuch', '', '', 0, '', '', '', 2, 28, 2009, 2, 28, 2009, 12, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1328, 'Mentoring', '', '', 0, '', '', '', 3, 11, 2009, 6, 11, 2009, 4, 0, 'PM', 6, 0, 'PM', 'w', 0, 2, 'Wed', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1329, 'RENEW LIBRARY BOOKS', '', '', 0, '', '', '', 3, 2, 2009, 3, 2, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1330, 'LIBRARY BOOKS DUe MARCH 23', '', '', 0, '', '', '', 3, 20, 2009, 3, 23, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1331, 'Meet w Atef''s staff about errors', '', '', 0, '', '', '', 3, 10, 2009, 3, 10, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1332, 'CSA sign up', '', '', 0, '', '', '', 3, 18, 2009, 3, 18, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1333, 'CSA communication meeting', '', '', 0, '', '', '', 3, 10, 2009, 3, 10, 2009, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1334, 'Meeting w Rev Cycle group', '', '', 0, '', '', '', 3, 5, 2009, 3, 5, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1335, 'Meeting w Jason and Mollie', '', '', 0, '', '', '', 3, 5, 2009, 3, 5, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '3rd Floor');
INSERT INTO `events` VALUES (1336, 'Terre Paul''s meeting', '', '', 0, '', '', '', 3, 6, 2009, 3, 6, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1337, 'Meeting w terre paul', '', '', 0, '', '', '', 3, 13, 2009, 3, 13, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '305-1223');
INSERT INTO `events` VALUES (1338, 'superbill meeting', '', '', 0, '', '', '', 3, 12, 2009, 3, 12, 2009, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1339, 'Lunch', '', '', 0, '', '', '', 3, 12, 2009, 3, 12, 2009, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1340, 'Sharis'' staff meeting', '', '', 0, '', '', '', 3, 20, 2009, 3, 20, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1341, 'Easter Sunday', '', '', 0, '', '', '', 4, 12, 2009, 4, 12, 2009, 0, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1342, 'HONDURAS', '', '', 0, '', '', '', 4, 12, 2009, 4, 18, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1343, 'Meeting with Ken Thibault and Tammy', '', '', 0, '', '', '', 3, 17, 2009, 3, 17, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1344, 'Meeet with Carolyn P at Cornell', '', '', 0, '', '', '', 3, 16, 2009, 3, 16, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1345, 'Chocolate Party', '', '', 0, '', '', '', 3, 21, 2009, 3, 21, 2009, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1346, 'Meet Diana Alago', '', '', 0, '', '', '', 3, 16, 2009, 3, 16, 2009, 12, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1347, 'Climacs interface meeting', '', '', 0, '', '', '', 3, 19, 2009, 3, 19, 2009, 2, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1348, 'Meeting w Julio Cruz', '', '', 0, '', '', '', 3, 18, 2009, 3, 18, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1349, 'Mt w Brian di Friday meeting', '', '', 0, '', '', '', 3, 18, 2009, 3, 18, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1350, 'Lunch w Penny', '', '', 0, '', '', '', 3, 18, 2009, 3, 18, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1351, 'NYP Green Facilities task force', '', '', 0, '', '', '', 4, 20, 2009, 4, 20, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1352, 'Meet w PT heads', '', '', 0, '', '', '', 3, 24, 2009, 3, 24, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1353, 'Table coaching', '', '', 0, '', '', '', 4, 22, 2009, 4, 22, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1355, 'Dinner w Amanda', '', '', 0, '', '', '', 4, 2, 2009, 4, 2, 2009, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1356, 'mtg w Brian', '', '', 0, '', '', '', 3, 24, 2009, 3, 24, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1357, 'Libby', '', '', 0, '', '', '', 4, 3, 2009, 4, 3, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1407, 'Meet w Tracy and Gina''s staff di messaging', '', '', 0, '', '', '', 5, 28, 2009, 5, 28, 2009, 12, 20, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1359, 'Meeting w PT OT', '', '', 0, '', '', '', 4, 3, 2009, 4, 3, 2009, 12, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1360, 'Full revstaff mtg', '', '', 0, '', '', '', 4, 2, 2009, 4, 2, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1361, 'Scheduling Meeting', '', '', 0, '', '', '', 4, 6, 2009, 4, 6, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1362, 'Meet with Brian', '', '', 0, '', '', '', 4, 3, 2009, 9, 3, 2009, 9, 30, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Fri', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1363, 'SH early!', '', '', 0, '', '', '', 4, 9, 2009, 4, 9, 2009, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1364, 'Mt w Shari di fax machine', '', '', 0, '', '', '', 4, 8, 2009, 4, 8, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1365, 'Meeting w Shari''s operations staff', '', '', 0, '', '', '', 4, 7, 2009, 4, 7, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1366, 'Soccer w Dar', '', '', 0, '', '', '', 4, 21, 2009, 4, 21, 2009, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1367, 'Soccer w Dar', '', '', 0, '', '', '', 4, 27, 2009, 4, 27, 2010, 6, 30, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1368, 'Mt w tracy and Gina', '', '', 0, '', '', '', 4, 8, 2009, 4, 8, 2009, 10, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1369, 'Get together w Elaine', '', '', 0, '', '', '', 4, 22, 2009, 4, 22, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1370, 'LIBRARY BOOKS DUE!', '', '', 0, '', '', '', 4, 30, 2009, 5, 1, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1371, 'Mtg w Glen an Dr. Hollenburg', '', '', 0, '', '', '', 4, 15, 2009, 4, 15, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1372, 'Dr. Manning!!', '', '', 0, '', '', '', 4, 21, 2009, 4, 21, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1373, 'Brooklyn Food Conference', '', '', 0, '', '', '', 5, 2, 2009, 5, 2, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1374, 'UHF meeting', '', '', 0, '', '', '', 4, 22, 2009, 4, 22, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1375, 'Cornell Business & Medicine Symposium', 'Physicians and reimbursement, etc.', '', 0, '', '', '', 4, 30, 2009, 4, 30, 2009, 3, 0, 'PM', 8, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1376, 'The Center for Bioethics 7TH Anniversary Special', 'Understanding how the visual system can recover function following periods of extended blindness has challenged researchers. While motivation for Dr. Sinha’s notable laboratory work is primarily scientific, by organizing eye-care camps as part of Project', '', 0, '', '', '', 4, 24, 2009, 4, 24, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', ' Faculty Club, 4th Floor// 630');
INSERT INTO `events` VALUES (1379, 'Mtg w Bill and Rev group', '', '', 0, '', '', '', 4, 21, 2009, 4, 21, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1378, 'Healthy Kid''s Benefit', '', '', 0, '', '', '', 6, 23, 2009, 6, 23, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1380, 'PT OT scheduling meeting', '', '', 0, '', '', '', 4, 28, 2009, 4, 28, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1381, 'mt w lew perin', '', '', 0, '', '', '', 4, 23, 2009, 4, 23, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1382, 'Meet w Shari', '', '', 0, '', '', '', 4, 27, 2009, 4, 27, 2009, 1, 0, 'PM', 3, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1383, 'Adrienne and Rob''s wedding', '', '', 0, '', '', '', 5, 30, 2009, 5, 30, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1384, 'Elizabeth and Jose''s wedding', '', '', 0, '', '', '', 6, 11, 2009, 6, 11, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1385, 'Farmer meet and Greet', '', '', 0, '', '', '', 5, 16, 2009, 5, 16, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1386, 'Soccer!', '', '', 0, '', '', '', 5, 1, 2009, 5, 1, 2009, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1387, 'Emilia', '', '', 0, '', '', '', 5, 9, 2009, 5, 9, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1388, 'Zimmerman mtg w Bill', '', '', 0, '', '', '', 5, 7, 2009, 5, 7, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1389, 'VACATION', '', '', 0, '', '', '', 5, 12, 2009, 5, 13, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1390, 'Meeting w Lisa Finnen', '', '', 0, '', '', '', 5, 1, 2009, 5, 1, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1391, 'Mt w Shari', '', '', 0, '', '', '', 4, 30, 2009, 4, 30, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1392, 'Mt w Lew and Shari, etc.', '', '', 0, '', '', '', 4, 30, 2009, 4, 30, 2009, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1393, 'Mother''s Day', '', '', 0, '', '', '', 5, 10, 2009, 5, 10, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1394, 'Mtg w Bill F', '', '', 0, '', '', '', 5, 5, 2009, 5, 5, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1395, 'Mtg w Agency', '', '', 0, '', '', '', 5, 5, 2009, 5, 5, 2009, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Mt in Lobby');
INSERT INTO `events` VALUES (1396, 'Mt w Gloria Kao and elevon', '', '', 0, '', '', '', 5, 11, 2009, 5, 11, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1397, 'Call Mike Coulston', '', '', 0, '', '', '', 5, 8, 2009, 5, 8, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1398, 'Mt w Delia', '', '', 0, '', '', '', 5, 15, 2009, 5, 15, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1399, 'Mt w Sue S - 212-342-3999.', '', '', 0, '', '', '', 5, 15, 2009, 5, 15, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1400, 'Mt w brad from IGX', '', '', 0, '', '', '', 5, 15, 2009, 5, 15, 2009, 10, 45, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1401, 'Full Day pow-wow w mgrs', '', '', 0, '', '', '', 5, 27, 2009, 5, 27, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1402, 'Meet w Delia', '', '', 0, '', '', '', 5, 19, 2009, 5, 19, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1403, 'Meet over phone with Assemblyman Brennan', 'Met him at Bklyn food conference. \r\nSpoke to sherry Levine on phone to set up', '', 0, '', '', '', 5, 21, 2009, 5, 21, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '718-788-7221');
INSERT INTO `events` VALUES (1404, 'Mt w Mark L', '', '', 0, '', '', '', 5, 27, 2009, 5, 27, 2009, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1405, 'Sam for lunch', '', '', 0, '', '', '', 5, 29, 2009, 5, 29, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1406, 'Meeting with Bill di CC', '', '', 0, '', '', '', 5, 26, 2009, 5, 26, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1408, 'Mt w tracy and gina', '', '', 0, '', '', '', 6, 1, 2009, 6, 22, 2009, 3, 30, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1409, 'Telecom meeting', '', '', 0, '', '', '', 5, 26, 2009, 5, 26, 2009, 2, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'P0015 sub-basement');
INSERT INTO `events` VALUES (1410, 'CSA distribution', '', '', 0, '', '', '', 6, 10, 2009, 6, 10, 2009, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1411, 'CSA distribution', '', '', 0, '', '', '', 6, 17, 2009, 6, 17, 2009, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1412, 'HKB gift bag stuffing', '', '', 0, '', '', '', 6, 16, 2009, 6, 16, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1413, 'Conf call with UPI group', 'When: Monday, June 08, 2009 2:00 PM-3:00 PM (GMT-05:00) Eastern Time (US & Canada).\r\nWhere: 1(866) 309-0557, passcode: *1580861*', '', 0, '', '', '', 6, 8, 2009, 6, 8, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1414, 'UPI conf call UPI Workgroup 2 (Value Proposition', 'When: Friday, June 05, 2009 3:00 PM-4:00 PM (GMT-05:00) Eastern Time (US & Canada).\r\nWhere: 1(866) 309-0557, passcode: *1580861*', '', 0, '', '', '', 6, 5, 2009, 6, 5, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1415, 'UPI Workgoup Technical Conference Call', 'When: Friday, May 29, 2009 2:00 PM-3:00 PM (GMT-05:00) Eastern Time (US & Canada).\r\nWhere: 1(866) 309-0557, passcode: *1580861*\r\n', '', 0, '', '', '', 5, 29, 2009, 5, 29, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1416, 'Uptown - go live more w PBD', '', '', 0, '', '', '', 6, 26, 2009, 6, 26, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1417, 'Sustainability task force  - engineering', 'NYP/ Weill-Cornell – Annex Building #108  \r\nBridge Line 212-305-1900\r\n', '', 0, '', '', '', 6, 15, 2009, 6, 15, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-305-1900');
INSERT INTO `events` VALUES (1418, 'BRUCE TICS ON SALE TOMM', '', '', 0, '', '', '', 5, 31, 2009, 6, 1, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1419, 'MT w Telecom - listen to msgs', 'Jim will call me', '', 0, '', '', '', 6, 2, 2009, 6, 2, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'starr 4?');
INSERT INTO `events` VALUES (1420, 'Meet about OT charge slips', '', '', 0, '', '', '', 6, 4, 2009, 6, 4, 2009, 1, 45, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Kerri''s office');
INSERT INTO `events` VALUES (1421, 'SH', '', '', 0, '', '', '', 6, 9, 2009, 6, 9, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1422, 'LIBRARY BOOKS DUE!', '', '', 0, '', '', '', 5, 29, 2009, 5, 29, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1423, 'Meet with David', '', '', 0, '', '', '', 6, 4, 2009, 6, 4, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1424, 'Mt w Brian', '', '', 0, '', '', '', 6, 1, 2009, 6, 1, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1425, 'Jesse''s Wedding!', '', '', 0, '', '', '', 9, 19, 2009, 9, 19, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1426, 'Mt w Bill di CC stuff', '', '', 0, '', '', '', 6, 2, 2009, 6, 2, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1427, 'Mt w Mark L', '', '', 0, '', '', '', 6, 4, 2009, 6, 4, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1428, 'Mt w Barry J', '', '', 0, '', '', '', 6, 3, 2009, 6, 3, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1429, 'Father''s Day! Uncle Butchie BBQ!', '', '', 0, '', '', '', 6, 21, 2009, 6, 21, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1430, 'Scripting Meeting', '', '', 0, '', '', '', 6, 11, 2009, 6, 11, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1431, 'Meeting with Ken Blessing', '', '', 0, '', '', '', 6, 10, 2009, 6, 10, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1432, 'Interface call with PT group', '(Dial in #212-543-8700)', '', 0, '', '', '', 6, 11, 2009, 6, 11, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '(Dial in #212-543-8700)');
INSERT INTO `events` VALUES (1433, 'Mt w 3 N Radiology over phone', '', '', 0, '', '', '', 6, 8, 2009, 6, 8, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1434, 'Shwartz center rounds', 'he next Schwartz Center Rounds at NYP/WC will be held on Wednesday, June 10th at noon in the Griffis Faculty Club.  All staff are welcome.  The Rounds are led by Dr.Ralph Nachman and facilitated by Penny Dollard, LCSW.\r\n\r\nThe topic of this month''s Rounds', '', 0, '', '', '', 6, 10, 2009, 6, 10, 2009, 11, 45, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Griffiths faculty club');
INSERT INTO `events` VALUES (1435, 'Meeting w Bill and Sue S', '', '', 0, '', '', '', 6, 9, 2009, 6, 9, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1436, 'Food and nutrition task force', '', '', 0, '', '', '', 6, 18, 2009, 6, 18, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-342-3999');
INSERT INTO `events` VALUES (1437, 'Telecom meeting', '', '', 0, '', '', '', 6, 9, 2009, 6, 9, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1438, 'Soccer', '', '', 0, '', '', '', 6, 12, 2009, 6, 12, 2009, 10, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1439, 'Webinar training - HP24 mgmt', '', '', 0, '', '', '', 6, 12, 2009, 6, 12, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1440, 'CSA mtg', '', '', 0, '', '', '', 6, 14, 2009, 6, 14, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1441, 'Mt Sam for lunch', '', '', 0, '', '', '', 6, 12, 2009, 6, 12, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1442, 'UPI technical workgroup', '', '', 0, '', '', '', 6, 12, 2009, 6, 12, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', ' 1(866) 309-0557, passcode: *1');
INSERT INTO `events` VALUES (1443, 'Team Meeting', '', '', 0, '', '', '', 6, 10, 2009, 6, 10, 2009, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1444, 'Call with IGX', 'Telephone Number:        1-877-412-4726\r\nExtension:               7112\r\nPasscode:                47034 #\r\n\r\n', '', 0, '', '', '', 6, 11, 2009, 6, 11, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1445, 'Meet w Ken Blessing', '', '', 0, '', '', '', 6, 10, 2009, 6, 10, 2009, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1446, 'Meet with  Khawaja for Bag training', '', '', 0, '', '', '', 6, 18, 2009, 6, 18, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1447, 'UPI conf call', '', '', 0, '', '', '', 6, 22, 2009, 6, 22, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Where: 1(866) 309-0557, passco');
INSERT INTO `events` VALUES (1448, 'Call with Eric Wallace', '', '', 0, '', '', '', 6, 15, 2009, 6, 15, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-259-0704');
INSERT INTO `events` VALUES (1449, 'UPI call', '', '', 0, '', '', '', 6, 22, 2009, 6, 22, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', ' 1(866) 309-0557, passcode: *1');
INSERT INTO `events` VALUES (1450, 'Meet w Rita di Best Practices', '', '', 0, '', '', '', 6, 17, 2009, 6, 17, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'CUMC');
INSERT INTO `events` VALUES (1451, 'UPI call', '', '', 0, '', '', '', 6, 15, 2009, 6, 15, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1452, 'Felicia''s friends play at Strays', '', '', 0, '', '', '', 7, 8, 2009, 7, 8, 2009, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'first ave and 6th?');
INSERT INTO `events` VALUES (1453, 'Mtg w Ken Blessing', '', '', 0, '', '', '', 6, 24, 2009, 6, 24, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1454, 'Meet w Clinicians for CU PT', '', '', 0, '', '', '', 6, 18, 2009, 6, 18, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1455, 'Mt w PT OT clinicians', '', '', 0, '', '', '', 6, 24, 2009, 6, 24, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1456, 'Wellness task force', '', '', 0, '', '', '', 7, 10, 2009, 7, 10, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1457, 'Mt Sam for lunch', '', '', 0, '', '', '', 6, 19, 2009, 6, 19, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1458, 'Marcia ''s bag training', '', '', 0, '', '', '', 6, 17, 2009, 6, 17, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1459, 'Talk w Genie', '', '', 0, '', '', '', 6, 16, 2009, 6, 16, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1460, 'FUP w Climacs interface group', '', '', 0, '', '', '', 6, 18, 2009, 6, 18, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1461, 'FUP w Zakia Tyson about psych admin position', 'If no word. Applied on Monday June 15.', '', 0, '', '', '', 6, 22, 2009, 6, 22, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1462, 'Training for Gloria K', '', '', 0, '', '', '', 6, 19, 2009, 6, 19, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1463, 'Talk w Genie', '', '', 0, '', '', '', 6, 22, 2009, 6, 22, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'q212-746-0367');
INSERT INTO `events` VALUES (1464, 'Bag training with Marcia''s group', '', '', 0, '', '', '', 6, 23, 2009, 6, 23, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1465, 'Dr. Manning', '', '', 0, '', '', '', 6, 30, 2009, 6, 30, 2009, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1466, 'Meet Pat Brown - Allen Pav Director of Ops', '', '', 0, '', '', '', 6, 26, 2009, 6, 26, 2009, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1467, 'mt w Tracy and Gina', '', '', 0, '', '', '', 6, 29, 2009, 6, 29, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1468, 'FIRE SAFETY TRAINING', '', '', 0, '', '', '', 6, 25, 2009, 6, 25, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1469, 'Call with Kessler and L Finnen', '', '', 0, '', '', '', 6, 24, 2009, 6, 24, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1470, 'Distribution', '', '', 0, '', '', '', 6, 24, 2009, 6, 24, 2009, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1471, 'Staff meeting w Shari', '', '', 0, '', '', '', 6, 25, 2009, 6, 25, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1472, 'Call Shari', '', '', 0, '', '', '', 6, 24, 2009, 6, 24, 2009, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1473, 'Mt w Delia/ Shari over phone', '', '', 0, '', '', '', 6, 26, 2009, 10, 26, 2009, 2, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Fri', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1474, 'Meet with Genie', '', '', 0, '', '', '', 6, 25, 2009, 6, 25, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1475, 'Call David Liss', '', '', 0, '', '', '', 6, 25, 2009, 6, 25, 2009, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1476, 'Mt w Ken Blessing over phone', '', '', 0, '', '', '', 7, 9, 2009, 7, 9, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1477, 'Rev Cycle meeting', '', '', 0, '', '', '', 7, 13, 2009, 7, 13, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1478, 'Gymnastics (maybe at new place)', '', '', 0, '', '', '', 7, 1, 2009, 7, 1, 2009, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1479, 'Meeting at CIMA', 'try to go in person if possible', '', 0, '', '', '', 7, 15, 2009, 7, 15, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'in HT-601 or 212-746-3331');
INSERT INTO `events` VALUES (1480, 'Food and Nutrition Sustainability Task Force Meeti', '', '', 0, '', '', '', 7, 16, 2009, 7, 16, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-342-3999');
INSERT INTO `events` VALUES (1481, 'Delia''s meetign with supervisors', '', '', 0, '', '', '', 7, 7, 2009, 7, 7, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1482, 'Brooklyn Philharmonics', 'Saturday, October 24 at 8 PM\r\nCathedral of St. John the Devine', 'Free concert', 0, '', '', '', 10, 24, 2009, 10, 24, 2009, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Cathedral of St. John the Devi');
INSERT INTO `events` VALUES (1483, 'Healthy Kids Gathering', 'Marianne Hardart''s apt', '', 0, '', '', '', 7, 16, 2009, 7, 16, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '201 East 83rd Street (3rd ave)');
INSERT INTO `events` VALUES (1484, 'Mtg w Lisa', '', '', 0, '', '', '', 6, 30, 2009, 6, 30, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1485, 'Meet Sam for lunch', '', '', 0, '', '', '', 7, 2, 2009, 7, 2, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1486, 'Check for COSTCO rebate - 2 rebates', '', '', 0, '', '', '', 8, 12, 2009, 8, 14, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1487, 'Webinar w Norma and jessica''s group', '', '', 0, '', '', '', 7, 6, 2009, 7, 6, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1488, 'Call Rosa/ Brian Goldstein', '', '', 0, '', '', '', 7, 2, 2009, 7, 2, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1489, 'Mt w D Liss', '', '', 0, '', '', '', 7, 8, 2009, 7, 8, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1490, 'Ny Philharmonics', 'Central park, Prospect park, central park', '', 0, '', '', '', 7, 14, 2009, 7, 17, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1491, 'Lunch w Bryan h', '', '', 0, '', '', '', 7, 7, 2009, 7, 7, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1492, 'Magnificent 7 - BP mov', 'beloved western w charles bronsen, etc', '', 0, '', '', '', 8, 10, 2009, 8, 10, 2009, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1493, 'Schwartz Center Grand Rounds', '', '', 0, '', '', '', 9, 9, 2009, 9, 9, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1494, 'UPI call', 'When: Monday, July 13, 2009 1:00 PM-2:00 PM (GMT-05:00) Eastern Time (US & Canada).\r\nWhere: 1(866) 309-0557, passcode: *1580861*\r\n', '', 0, '', '', '', 7, 13, 2009, 7, 13, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1495, 'Marcia and Khawaja - mtg', '', '', 0, '', '', '', 7, 6, 2009, 7, 6, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1496, 'SH', '', '', 0, '', '', '', 7, 7, 2009, 7, 7, 2009, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1497, 'Climacs call - 212-342-1747', '', '', 0, '', '', '', 7, 9, 2009, 7, 9, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1498, 'Wine and Cheese at Fleo''s', 'Bring a wine and a cheese', '', 0, '', '', '', 7, 18, 2009, 7, 18, 2009, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1499, 'Call Kessler', '', '', 0, '', '', '', 7, 8, 2009, 7, 8, 2009, 2, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1500, 'Mtg w Helen K', '', '', 0, '', '', '', 7, 8, 2009, 7, 8, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1501, 'Parks Steering Comm', '', '', 0, '', '', '', 7, 13, 2009, 7, 13, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1502, 'FUP w Iron Gym straps', 'Dept Iron Gym products - sent 7.99 to 21 Law Drive, Fairfield NJ,07004', '', 0, '', '', '', 7, 27, 2009, 7, 27, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1503, 'Meet w Shari - sched for week', '', '', 0, '', '', '', 7, 13, 2009, 7, 13, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1504, 'Mtg w PT mgrs', '', '', 0, '', '', '', 7, 15, 2009, 7, 15, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1505, 'LIBRARY BOOKS DUE', '', '', 0, '', '', '', 7, 14, 2009, 7, 14, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1506, 'Meet w Jason', '', '', 0, '', '', '', 7, 16, 2009, 7, 16, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '3rd fl');
INSERT INTO `events` VALUES (1507, 'Lunch w Bryan', 'meet at 69th St entrance', '', 0, '', '', '', 7, 17, 2009, 7, 17, 2009, 12, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1508, 'Speak to David', '', '', 0, '', '', '', 7, 16, 2009, 7, 16, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1509, 'Meet w Bill di CC signatures', '', '', 0, '', '', '', 7, 13, 2009, 7, 13, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1510, 'Food and Nutrition task force', '', '', 0, '', '', '', 8, 20, 2009, 8, 20, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1511, 'Meet w Margaret', '', '', 0, '', '', '', 7, 20, 2009, 7, 20, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1512, 'Look for MTA refund', '68.31 - from July 4 - ref 605884\r\nJuly 5 purchase - 48.46 - Lost July 15 (really 14), called on the 16th  - ref 605885\r\nSpoke to Cynthia\r\nRefund win 7 bus days', '', 0, '', '', '', 7, 29, 2009, 7, 31, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1513, 'Leroy going to cashier''s office', '', '', 0, '', '', '', 7, 17, 2009, 7, 17, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1514, 'REV CYCLE REPORT OUT', '', '', 0, '', '', '', 8, 3, 2009, 8, 3, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1515, 'REV REPORT OUT', '', '', 0, '', '', '', 11, 30, 2009, 11, 30, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1516, 'Dinner w Elaine', '', '', 0, '', '', '', 7, 23, 2009, 7, 23, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1517, 'Movie at Brooklyn bridge', '', '', 0, '', '', '', 7, 30, 2009, 7, 30, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1518, 'West side story movie', '', '', 0, '', '', '', 7, 20, 2009, 7, 20, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1519, 'Meeting w Shari, Rich H', '\r\n/*Date: Tuesday, July 28, 2009\r\nTime: 11:30 am\r\nLocation: 333 East 38 Street, 8th floor, Conference Room B */\r\n\r\nThanks\r\nJackie', '', 0, '', '', '', 7, 28, 2009, 7, 28, 2009, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1520, 'Meet w Shelly Crawford', '', '', 0, '', '', '', 7, 22, 2009, 7, 22, 2009, 11, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1521, 'Training Shari''s staff - scripting', '', '', 0, '', '', '', 7, 24, 2009, 7, 24, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1522, 'Training with Shari''s staff', '', '', 0, '', '', '', 7, 17, 2009, 7, 17, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1523, 'Training Shari''s staff', '', '', 0, '', '', '', 7, 20, 2009, 7, 20, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1524, 'Meet with Steve Kurz', 'ecashiering', '', 0, '', '', '', 7, 21, 2009, 7, 21, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1525, 'Meeting w Greenberg 14', '', '', 0, '', '', '', 7, 22, 2009, 7, 22, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1526, 'Meet w Shelly Crawford', '', '', 0, '', '', '', 7, 29, 2009, 7, 29, 2009, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1527, 'Full staff meeting', '', '', 0, '', '', '', 8, 19, 2009, 8, 19, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1528, 'Meeting w Julio and Pat Gellen', '', '', 0, '', '', '', 7, 27, 2009, 7, 27, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1529, 'Meeting w Shari', '', '', 0, '', '', '', 7, 23, 2009, 7, 23, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1530, 'Screen for study (pan)', '425 East 61 st ste 223-  go to second fl and turn L\r\n646-253-2840. Charlie will do screen with me\r\n', '', 0, '', '', '', 7, 30, 2009, 7, 30, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1531, 'Look for mail from Chase for debit transactions', '', '', 0, '', '', '', 7, 22, 2009, 7, 25, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1532, 'Meet w Emily Goodwin', '', '', 0, '', '', '', 7, 27, 2009, 7, 27, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1533, 'Breakfast w Dr. Corwin', '', '', 0, '', '', '', 7, 29, 2009, 7, 29, 2009, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'MSCHONY in Tower 103');
INSERT INTO `events` VALUES (1534, 'Transport meeting// chocolate tasting// Distro', '', '', 0, '', '', '', 7, 29, 2009, 7, 29, 2009, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1535, 'Call w Brian and Health system', '', '', 0, '', '', '', 7, 29, 2009, 7, 29, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1536, 'TALK TO JACKIE - Shari''s staff training', '', '', 0, '', '', '', 7, 30, 2009, 7, 30, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1537, 'RENEW LISCENSE!!!', '', '', 0, '', '', '', 7, 29, 2009, 7, 31, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1538, 'Call Chris and JP', '', '', 0, '', '', '', 7, 31, 2009, 7, 31, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1539, 'FOLLOW UP with cecilia Ortega (admin postiion)', '', '', 0, '', '', '', 8, 10, 2009, 8, 10, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1540, 'Call with Bill', '', '', 0, '', '', '', 7, 31, 2009, 7, 31, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1541, 'Mt w Sam!!', '', '', 0, '', '', '', 7, 31, 2009, 7, 31, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1542, 'Ca,ll Shelly Crawford', '', '', 0, '', '', '', 7, 31, 2009, 7, 31, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1543, 'Training', '', '', 0, '', '', '', 7, 31, 2009, 7, 31, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1544, 'Meet w Atil Koyunzu - qual and pt safe mgr', '501 East 75th st - corner of 75th and york buzz the third floor. Brenda', '', 0, '', '', '', 8, 10, 2009, 8, 10, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-746-3928');
INSERT INTO `events` VALUES (1545, 'Twilight tous in Prospect park', 'Reserve at 718-287-3400 - tours in the park - see bats, etc.', '', 0, '', '', '', 8, 13, 2009, 8, 13, 2009, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1546, 'Appt w Dr. Manning', '', '', 0, '', '', '', 8, 21, 2009, 8, 21, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1547, 'Meet w Emily Goodwin', '', '', 0, '', '', '', 8, 14, 2009, 8, 14, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1548, 'Speak w Tait''s friend Jay', '', '', 0, '', '', '', 8, 13, 2009, 8, 13, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '916/443-3302');
INSERT INTO `events` VALUES (1549, 'Meet w Bill F', '', '', 0, '', '', '', 8, 14, 2009, 8, 14, 2009, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1550, 'Dermatologist appt', '', '', 0, '', '', '', 8, 19, 2009, 8, 19, 2009, 12, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1551, 'PTOT go -live debrief', '', '', 0, '', '', '', 8, 18, 2009, 8, 18, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1552, 'Meet w Dov.', '', '', 0, '', '', '', 8, 19, 2009, 8, 19, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1553, 'Meet w Mary Ellen Antonio', '', '', 0, '', '', '', 8, 19, 2009, 8, 19, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1554, 'Shari''s staff meeting', '', '', 0, '', '', '', 8, 18, 2009, 8, 18, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1555, 'real estate sustainability', '', '', 0, '', '', '', 8, 24, 2009, 8, 24, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-205-1900.');
INSERT INTO `events` VALUES (1556, 'Meet with Kathy Ronan', '', '', 0, '', '', '', 8, 21, 2009, 8, 21, 2009, 9, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '1414 York and 75th St.');
INSERT INTO `events` VALUES (1557, 'Call Daisy at 305-6454', '', '', 0, '', '', '', 8, 20, 2009, 8, 20, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1558, 'Meet w Charlie (Dr. Milrod study)', '', '', 0, '', '', '', 9, 21, 2009, 9, 21, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '61st St.');
INSERT INTO `events` VALUES (1559, 'Meet w Brian', '', '', 0, '', '', '', 8, 25, 2009, 8, 25, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1560, 'Speak with Jeff Bokser', '', '', 0, '', '', '', 8, 25, 2009, 8, 25, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1561, 'Call Emily Goodwin', '', '', 0, '', '', '', 8, 25, 2009, 8, 25, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1562, 'Food and nutrition task force', '', '', 0, '', '', '', 9, 17, 2009, 9, 17, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-342-3999');
INSERT INTO `events` VALUES (1563, 'Sabrina''s coming!', '', '', 0, '', '', '', 9, 25, 2009, 9, 25, 2009, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1564, 'Meet w Shari', '', '', 0, '', '', '', 9, 17, 2009, 9, 17, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1565, 'Dinner w fleo', '', '', 0, '', '', '', 9, 21, 2009, 9, 21, 2009, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1566, 'Leader to Leader', '\r\nDisruptive behavior by healthcare professionals is first and foremost a threat to quality of care and patient safety, while also affecting staff morale and increasing cost burdens to a healthcare organization. This presentation will give healthcare prof', '', 0, '', '', '', 10, 1, 2009, 10, 1, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'CUMC faculty club - 4th fl pre');
INSERT INTO `events` VALUES (1567, 'Meet with Emily Goodwin', '', '', 0, '', '', '', 9, 22, 2009, 9, 22, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1568, 'Meet w Mely Chua', '', '', 0, '', '', '', 9, 23, 2009, 9, 23, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '212 342 1654');
INSERT INTO `events` VALUES (1569, 'Meet w David Liss', '', '', 0, '', '', '', 9, 23, 2009, 9, 23, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1570, 'Meet w Sheila Conklin', '', '', 0, '', '', '', 9, 23, 2009, 9, 23, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1571, '92Y Audits', 'I have to inventory of the inside and outside locker at the 92Y.', '', 0, 'Chris SSS', '646.596.6549', 'o', 9, 18, 2009, 12, 31, 2010, 12, 0, 'PM', 2, 0, 'PM', 'm', 2, 3, 'Fri', 1, 2, 'P', '92Y');
INSERT INTO `events` VALUES (1573, 'Dr. Mattew Ebben', '520 East 70yh 6th fl rm 607. Selia', '', 0, '', '', '', 10, 14, 2009, 10, 14, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1574, 'Call Leroy', '', '', 0, '', '', '', 9, 25, 2009, 9, 25, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-305-5036');
INSERT INTO `events` VALUES (1575, 'Call Lisa', '', '', 0, '', '', '', 9, 22, 2009, 9, 22, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '746.1592');
INSERT INTO `events` VALUES (1576, 'Call Jeff Bokser', '', '', 0, '', '', '', 9, 24, 2009, 9, 24, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '60430');
INSERT INTO `events` VALUES (1577, 'Emilia??', '', '', 0, '', '', '', 10, 3, 2009, 10, 3, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1578, 'Bills!', '', '', 0, '', '', '', 10, 3, 2009, 10, 3, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1579, 'Annual Health Assessment', '', '', 0, '', '', '', 10, 13, 2009, 10, 13, 2009, 2, 40, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1580, 'Call w Lauren P di F and N', '', '', 0, '', '', '', 9, 24, 2009, 9, 24, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1581, 'Training w Rose Cortez', '', '', 0, '', '', '', 9, 24, 2009, 9, 24, 2009, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1582, 'Meet w Sean?', '', '', 0, '', '', '', 9, 24, 2009, 9, 24, 2009, 10, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1583, 'Full Staff Meeting', '', '', 0, '', '', '', 9, 30, 2009, 9, 30, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1584, 'Meet Chris and JP', '', '', 0, '', '', '', 9, 25, 2009, 9, 25, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1585, 'Food and Nutrition task force', '', '', 0, '', '', '', 10, 15, 2009, 10, 15, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Conference Room K510 and Conf.');
INSERT INTO `events` VALUES (1586, 'Food and nutrition task force', '', '', 0, '', '', '', 11, 19, 2009, 11, 19, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Conference Room K510 and Conf.');
INSERT INTO `events` VALUES (1587, 'Food and Nutrition task force', '', '', 0, '', '', '', 12, 17, 2009, 12, 17, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Conference Room K510 and Conf.');
INSERT INTO `events` VALUES (1588, 'Training for sheila''s group', '', '', 0, '', '', '', 9, 30, 2009, 9, 30, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Webinar');
INSERT INTO `events` VALUES (1589, 'CSA meeting', '', '', 0, '', '', '', 10, 11, 2009, 10, 11, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1590, 'Yoga w Felicia', '', '', 0, '', '', '', 10, 4, 2009, 10, 4, 2009, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1591, 'Kevin''s soccer game', '', '', 0, '', '', '', 10, 4, 2009, 10, 4, 2009, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1592, 'Meet w Shari', '', '', 0, '', '', '', 10, 2, 2009, 10, 2, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1593, 'Meet w Brian and Alex', '', '', 0, '', '', '', 10, 15, 2009, 10, 30, 2009, 12, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Thu', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1594, 'Volunteer w WNYC', 'Arrive at the Morgan Library at 5pm.\r\n\r\n225 Madison Avenue at 36th Street\r\nNew York, NY 10016\r\nWhen you get there, tell security that you are a volunteer for the WNYC event, and that you need to find me (Shira Rosenhaft). If you have any trouble at all ca', '', 0, '', '', '', 10, 5, 2009, 10, 5, 2009, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '(347) 637-0265.');
INSERT INTO `events` VALUES (1595, 'Train staff Leroy K', '', '', 0, '', '', '', 10, 5, 2009, 10, 5, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1596, 'Meet w Shari', '', '', 0, '', '', '', 10, 8, 2009, 10, 8, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'shari''s office');
INSERT INTO `events` VALUES (1597, 'ARTS Demo', '', '', 0, '', '', '', 10, 15, 2009, 10, 15, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1598, 'Training for Leroy''s staff', '', '', 0, '', '', '', 10, 12, 2009, 10, 12, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1599, 'Train Carmen Castro to pull up GL receipts', '', '', 0, '', '', '', 10, 12, 2009, 10, 12, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '3052094');
INSERT INTO `events` VALUES (1600, 'Nancy''s wedding reception', '', '', 0, '', '', '', 10, 25, 2009, 10, 25, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1601, 'Lunch w Sam - talk first', '', '', 0, '', '', '', 10, 13, 2009, 10, 13, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1602, 'Sheila C''s group GO LIVE', 'Get bags', '', 0, '', '', '', 10, 14, 2009, 10, 14, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1603, 'Jay in town', '', '', 0, '', '', '', 11, 20, 2009, 11, 20, 2009, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1604, 'Business writing class', '', '', 0, '', '', '', 11, 3, 2009, 11, 3, 2009, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1605, 'Lunch w Margaret', '', '', 0, '', '', '', 10, 19, 2009, 10, 19, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1606, 'Meet w Emily Goodwin', '', '', 0, '', '', '', 10, 15, 2009, 10, 15, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1607, 'Meet w Miosotti -', 'mir9054@nyp.org', '', 0, '', '', '', 10, 20, 2009, 10, 20, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1608, 'Meet w Doug', '', '', 0, '', '', '', 10, 19, 2009, 10, 19, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1609, 'Meet w Doug', '', '', 0, '', '', '', 10, 19, 2009, 10, 19, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1610, 'Meet w Doug', '', '', 0, '', '', '', 10, 20, 2009, 10, 20, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1611, 'Mt w Doug', '', '', 0, '', '', '', 10, 22, 2009, 10, 22, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1612, 'Training w Doug and Sheila''s group', '', '', 0, '', '', '', 10, 22, 2009, 10, 22, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1613, 'Fall UHF reunion', '', '', 0, '', '', '', 10, 29, 2009, 10, 29, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1614, 'UHF fall get together', '', '', 0, '', '', '', 10, 29, 2009, 10, 29, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Public house - 140 E 41st St');
INSERT INTO `events` VALUES (1615, 'Dr. Manning', '', '', 0, '', '', '', 11, 10, 2009, 11, 10, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1616, 'Get together for Jena''s Wedding', '', '', 0, '', '', '', 11, 5, 2009, 11, 5, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1617, 'Out w Amanda', '', '', 0, '', '', '', 11, 12, 2009, 11, 12, 2009, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1618, 'Train Kim Jerome', '', '', 0, '', '', '', 10, 20, 2009, 10, 20, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1619, 'Meet w Stacy', '', '', 0, '', '', '', 10, 21, 2009, 10, 21, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1620, 'Dr. Ebben', '', '', 0, '', '', '', 11, 11, 2009, 11, 11, 2009, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1621, 'Real Estate', '', '', 0, '', '', '', 10, 21, 2009, 10, 21, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1622, 'Richard Irizzary', '', '', 0, '', '', '', 10, 21, 2009, 10, 21, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1623, 'Meet w Dar''s Lawyer', '', '', 0, '', '', '', 11, 6, 2009, 11, 6, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '44th bet 5 and 6');
INSERT INTO `events` VALUES (1624, 'Matthew and Bday for Miguel', '', '', 0, '', '', '', 11, 1, 2009, 11, 1, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1625, 'AWAY W DAR', '', '', 0, '', '', '', 11, 14, 2009, 11, 15, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1626, 'Dinner w Autn Nella', '', '', 0, '', '', '', 10, 30, 2009, 10, 30, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1627, 'Mattew over!', '', '', 0, '', '', '', 10, 31, 2009, 10, 31, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1628, 'Uncle Dino in', '', '', 0, '', '', '', 11, 8, 2009, 11, 8, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1629, 'Off the Chart performing', '', '', 0, '', '', '', 11, 20, 2009, 11, 20, 2009, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1630, 'Train Sheila''s staff', '', '', 0, '', '', '', 10, 29, 2009, 10, 29, 2009, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1631, 'Meeting w Doug etc.', '', '', 0, '', '', '', 10, 29, 2009, 10, 29, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1632, 'Meet w Binta', '', '', 0, '', '', '', 10, 29, 2009, 10, 29, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1633, 'meet w Doug and Elavon', '', '', 0, '', '', '', 10, 29, 2009, 10, 29, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1634, 'Meet w Lauren Marino', '', '', 0, '', '', '', 11, 4, 2009, 11, 4, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1635, 'Pizza party for Mgd Care', '', '', 0, '', '', '', 11, 9, 2009, 11, 9, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1636, 'Mgd Care Staff Mtg', '', '', 0, '', '', '', 11, 9, 2009, 11, 9, 2011, 10, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1637, 'Meet w Methodist', '', '', 0, '', '', '', 11, 11, 2009, 11, 11, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '521 6th Street, 3rd Floor');
INSERT INTO `events` VALUES (1638, 'Meet w Emily', '', '', 0, '', '', '', 11, 6, 2009, 11, 6, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1639, 'Meet Dar''s Lawyer', '', '', 0, '', '', '', 11, 10, 2009, 11, 10, 2009, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1640, 'Meet w Walky and plans', '', '', 0, '', '', '', 11, 16, 2009, 11, 16, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Call # 212-746-7269');
INSERT INTO `events` VALUES (1642, 'Mt w Lisette and plans', '', '', 0, '', '', '', 11, 19, 2009, 11, 19, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1643, 'Mt w Doug', '', '', 0, '', '', '', 11, 11, 2009, 11, 11, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1644, 'Mt w Doug', '', '', 0, '', '', '', 11, 12, 2009, 11, 12, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1645, 'Mt w Doug', '', '', 0, '', '', '', 11, 13, 2009, 11, 13, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1646, 'Meeting w Lesmah and lester', '', '', 0, '', '', '', 11, 12, 2009, 11, 12, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1647, 'Meet at Brooklyn Hospital', '', '', 0, '', '', '', 11, 17, 2009, 11, 17, 2009, 8, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1648, 'Mt w Doug', '', '', 0, '', '', '', 11, 12, 2009, 11, 12, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1649, 'Harvest Dinner', '', '', 0, '', '', '', 11, 21, 2009, 11, 21, 2009, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1650, 'Meet w Ken Blessing', '', '', 0, '', '', '', 11, 16, 2009, 11, 16, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1651, 'Billing meeting w Shawn', '', '', 0, '', '', '', 11, 16, 2009, 11, 16, 2009, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1652, 'Issues tracker call', '', '', 0, '', '', '', 11, 17, 2009, 11, 17, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1653, 'Training w Deborah Hill', '', '', 0, '', '', '', 11, 17, 2009, 11, 17, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1654, 'Christmas Party - 11th Fl.', '', '', 0, '', '', '', 12, 18, 2009, 12, 18, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1655, 'Mt w Doug', '', '', 0, '', '', '', 11, 18, 2009, 11, 18, 2009, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1656, 'Meet w Emily', '', '', 0, '', '', '', 11, 18, 2009, 11, 18, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1657, 'Meet w Millie at Queens', '', '', 0, '', '', '', 12, 9, 2009, 12, 9, 2009, 9, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1658, 'Call joyce P', '', '', 0, '', '', '', 11, 18, 2009, 11, 18, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1659, 'Meet w David', '', '', 0, '', '', '', 11, 18, 2009, 11, 18, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1660, 'Interview w Ana K', '', '', 0, '', '', '', 11, 20, 2009, 11, 20, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1661, 'Meet w staff', '', '', 0, '', '', '', 11, 19, 2009, 11, 19, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1662, 'P and P group meeting', '', '', 0, '', '', '', 12, 10, 2009, 12, 10, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1663, 'Meet w Candace', '', '', 0, '', '', '', 11, 24, 2009, 11, 24, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1664, 'Appt w Dr. Ebben', '', '', 0, '', '', '', 12, 7, 2009, 12, 7, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1665, 'Show w Uncle D', '', '', 0, '', '', '', 12, 20, 2009, 12, 20, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1666, '11th Floor lunch', 'Bring Pear tart!', '', 0, '', '', '', 12, 11, 2009, 12, 11, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1667, 'Dr Manning', '', '', 0, '', '', '', 12, 15, 2009, 12, 15, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1668, 'Nina get together??', '', '', 0, '', '', '', 12, 2, 2009, 12, 2, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1669, 'Steph''s birthday party', '', '', 0, '', '', '', 12, 4, 2009, 12, 4, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1670, 'Meet w Dov', '', '', 0, '', '', '', 12, 2, 2009, 12, 2, 2009, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1671, 'Appt w Dr. Ebben', '', '', 0, '', '', '', 12, 30, 2009, 12, 30, 2009, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1672, 'Dinner w Wnyc', '', '', 0, '', '', '', 12, 9, 2009, 12, 9, 2009, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1673, 'Mt Doug', '', '', 0, '', '', '', 12, 3, 2009, 12, 3, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1674, 'Managed Care Holiday Lunch', '', '', 0, '', '', '', 12, 14, 2009, 12, 14, 2009, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1675, 'Meet w Karen Feeley', 'Prep w Shawn', '', 0, '', '', '', 12, 7, 2009, 12, 7, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1676, 'Out w Nancy', '', '', 0, '', '', '', 12, 7, 2009, 12, 7, 2009, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1677, 'Meet w Doug', '', '', 0, '', '', '', 12, 8, 2009, 12, 8, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1678, 'Meet w Doug', '', '', 0, '', '', '', 12, 9, 2009, 12, 9, 2009, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1679, 'Meet w Doug', '', '', 0, '', '', '', 12, 10, 2009, 12, 10, 2009, 10, 0, 'AM', 12, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1680, 'Meet w Doug', '', '', 0, '', '', '', 12, 10, 2009, 12, 10, 2009, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1681, 'Meet w Lisette', '', '', 0, '', '', '', 12, 11, 2009, 12, 11, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1682, 'ELC meeting w Phyllis Lantos', '', '', 0, '', '', '', 12, 17, 2009, 12, 17, 2009, 8, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1683, 'CABLE BOXES SHOULD ARRIVE', '', '', 0, '', '', '', 12, 21, 2009, 12, 24, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1684, 'CALLED FOR CABLE BOXES', 'Have 30 days from today to return. Will receive within 7-10 days.', '', 0, '', '', '', 12, 13, 2009, 12, 13, 2009, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1685, 'Firefighter''s tee shirt sale', '', '', 0, '', '', '', 12, 18, 2009, 12, 18, 2009, 9, 0, 'AM', 2, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '68th st lobby');
INSERT INTO `events` VALUES (1686, 'Mt w Joe fromm Queens', '', '', 0, '', '', '', 12, 15, 2009, 12, 15, 2009, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212.746.7269');
INSERT INTO `events` VALUES (1687, 'Speak to David Coates from OB Qns', '', '', 0, '', '', '', 12, 22, 2009, 12, 22, 2009, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '718.670.1390');
INSERT INTO `events` VALUES (1688, 'Mt w Doug', '', '', 0, '', '', '', 12, 16, 2009, 12, 16, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1689, 'Mt w Lisette', '', '', 0, '', '', '', 12, 18, 2009, 12, 18, 2009, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1690, 'Meeting w Emily and Michelle from Doral Dental', '', '', 0, '', '', '', 12, 16, 2009, 12, 16, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1691, '2010 Kick off', '', '', 0, '', '', '', 1, 29, 2010, 1, 29, 2010, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1692, 'Meet w Emily', '', '', 0, '', '', '', 12, 18, 2009, 12, 18, 2009, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1693, 'Call Lisa Weisberg', '', '', 0, '', '', '', 12, 18, 2009, 12, 18, 2009, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-737-0979.');
INSERT INTO `events` VALUES (1694, 'Monthly Clinic calls', 'Lisette sends this out to clinic. I will have to send in January.', '', 0, '', '', '', 2, 11, 2011, 12, 22, 2011, 11, 0, 'AM', 0, 0, 'AM', 'm', 0, 3, 'Tue', 2, 1, 'P', '(212) 746-7269');
INSERT INTO `events` VALUES (1695, 'Meet John after work', '', '', 0, '', '', '', 12, 28, 2009, 12, 28, 2009, 5, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1696, 'Call for issues tracker', '', '', 0, '', '', '', 12, 22, 2009, 12, 22, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '(212) 746-7269');
INSERT INTO `events` VALUES (1697, 'Meet w Simone Zappa', '', '', 0, '', '', '', 1, 7, 2010, 1, 7, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '3rd fl rm 305');
INSERT INTO `events` VALUES (1698, 'New Manager Orientation', 'Sent by Nina Guercio', '', 0, '', '', '', 2, 2, 2010, 2, 2, 2010, 9, 0, 'AM', 5, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '41 Audubon Avenue at 167th Str');
INSERT INTO `events` VALUES (1699, 'Call with Queens', '', '', 0, '', '', '', 1, 8, 2010, 1, 8, 2011, 9, 0, 'AM', 0, 0, 'AM', 'm', 2, 2, 'Fri', 1, 1, 'P', '');
INSERT INTO `events` VALUES (1736, 'Appt w Dr. Freeley (eye doc)', '', '', 0, '', '718-389-8585', '', 2, 9, 2010, 2, 9, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Greenpoint Medical');
INSERT INTO `events` VALUES (1701, 'Get together with Elaine', '', '', 0, '', '', '', 1, 9, 2010, 1, 9, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1702, 'Call with Lisette', '', '', 0, '', '', '', 12, 29, 2009, 12, 29, 2009, 2, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '(212) 746-7269');
INSERT INTO `events` VALUES (1703, 'Call with Empire', '', '', 0, '', '', '', 1, 5, 2010, 1, 5, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1704, 'Appt w Dr. Ebben', '', '', 0, '', '', '', 1, 27, 2010, 1, 27, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1705, 'Alison Welski''s birthday', '', '', 0, '', '', '', 1, 30, 2010, 1, 30, 2010, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1706, 'Meet with LLisette', '', '', 0, '', '', '', 1, 5, 2010, 1, 5, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1707, 'Meet with Emily, etc.', '', '', 0, '', '', '', 1, 8, 2010, 1, 8, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1708, 'Meet w Queens', '', '', 0, '', '', '', 1, 8, 2010, 1, 8, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1709, 'Check all DRG tables', '', '', 0, '', '', '', 1, 21, 2010, 1, 21, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1710, 'QUEENS MTGS w LAUREN', '11 am Dr. Rimar, 1 pm Mary Godfrey', '', 0, '', '', '', 1, 19, 2010, 1, 19, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1711, 'Soccer game (NYP)', '', '', 0, '', '', '', 1, 12, 2010, 1, 12, 2010, 8, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Baruch 25th and lexington');
INSERT INTO `events` VALUES (1712, 'DISH NETWORK BOX MUST BE BACK BY FEB 7', '', '', 0, '', '', '', 2, 1, 2010, 2, 7, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1713, 'Meet with Emily', '', '', 0, '', '', '', 1, 15, 2010, 1, 15, 2011, 2, 30, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1715, 'Dance lessons with Dar', '', '', 0, '', '', '', 1, 13, 2010, 1, 13, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1716, 'Gymnastics?', '', '', 0, '', '', '', 1, 14, 2010, 1, 14, 2010, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1717, 'Meet w Trainer at NYP', '', '', 0, '', '', '', 1, 11, 2010, 1, 11, 2010, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1718, 'KAREN FEELEY AT MGD CARE MEETING', '', '', 0, '', '', '', 1, 25, 2010, 1, 25, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1719, 'Meet w Healthfirst', '', '', 0, '', '', '', 1, 12, 2010, 1, 12, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1720, 'Meet w Affinity', '', '', 0, '', '', '', 1, 13, 2010, 1, 13, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '(212) 746-7269');
INSERT INTO `events` VALUES (1721, 'Meeting for Dentequest', '', '', 0, '', '', '', 1, 19, 2010, 1, 19, 2010, 4, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1722, 'Soccer game (NYP)', 'Xavier High School\r\n30 W. 16th St. (between 5th & 6th Ave.) - Main and Side Gyms', '', 0, '', '', '', 1, 18, 2010, 1, 18, 2010, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Xavier High school');
INSERT INTO `events` VALUES (1723, 'Dr. Manning', '', '', 0, '', '', '', 1, 19, 2010, 1, 19, 2010, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1724, 'Meet w Empire', '', '', 0, '', '', '', 1, 14, 2010, 1, 14, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1725, 'Call w John Holstein', '', '', 0, '', '', '', 1, 20, 2010, 1, 20, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1726, 'SEND BACK CABLE BOXES!!!', '', '', 0, '', '', '', 1, 23, 2010, 1, 23, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1727, 'Call w Dr. Rimar', 'Call in w Millie, etc.', '', 0, '', '', '', 1, 26, 2010, 1, 26, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '516-616-4721');
INSERT INTO `events` VALUES (1728, 'Meet w/ United', '', '', 0, '', '', '', 1, 27, 2010, 1, 27, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1729, 'Meeting with Darwin', '', '', 0, '', '', '', 2, 2, 2010, 2, 2, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1730, 'Call Joe Antonik to go over providers', '', '', 0, '', '', '', 1, 26, 2010, 1, 26, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1731, 'Weekend in Jersey!', '', '', 0, '', '', '', 2, 5, 2010, 2, 6, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1732, 'Robby Albenda''s music show', '', '', 0, '', '', '', 2, 25, 2010, 2, 25, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1733, 'Off the Chart performing', '', '', 0, '', '', '', 2, 12, 2010, 2, 12, 2010, 4, 0, 'PM', 6, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', 'MSCHONY');
INSERT INTO `events` VALUES (1734, 'Call with Melissa', '', '', 0, '', '', '', 1, 28, 2010, 1, 28, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '201-497-5910');
INSERT INTO `events` VALUES (1735, 'Appt w Dr. Ebben', '', '', 0, '', '', '', 3, 3, 2010, 3, 3, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1737, 'PAUL TAYLOR SHOW', '', '', 0, '', '', '', 3, 6, 2010, 3, 6, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1738, 'James Vinograd''s wedding', '', '', 0, '', '', '', 7, 30, 2010, 7, 30, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1739, 'Lunch w wnyc gals', '', '', 0, '', '', '', 2, 1, 2010, 2, 1, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1740, 'Lunch w Felicia and Nina', '', '', 0, '', '', '', 2, 3, 2010, 2, 3, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1741, 'Dr. Leonard appt (gyn)', '', '', 0, '', '', '', 4, 28, 2010, 4, 28, 2010, 8, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1742, 'Grand Rounds at Cornell', '', '', 0, '', '', '', 3, 24, 2010, 0, 0, 0, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Griffis Faculty Club');
INSERT INTO `events` VALUES (1743, 'Go through evaluation w Brian', '', '', 0, '', '', '', 2, 5, 2010, 2, 5, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1744, 'Bridal Shower', 'Miriam''s Bridal Shower', '', 0, 'Gisselle Procel', '', 'o', 3, 6, 2010, 3, 6, 2010, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 6, 'P', '');
INSERT INTO `events` VALUES (1745, 'Wedding Day', '', '', 0, '', '', 'o', 3, 28, 2010, 3, 28, 2010, 5, 30, 'PM', 11, 0, 'PM', 's', NULL, 0, NULL, NULL, 6, 'P', 'Astoria, NY');
INSERT INTO `events` VALUES (1746, 'Trip to Argentina', '', '', 0, '', '', 'o', 11, 18, 2010, 12, 26, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 6, 'P', 'Mendoza / Neuquen');
INSERT INTO `events` VALUES (1747, 'Call with Neighborhood', '', '', 0, '', '', '', 1, 29, 2010, 1, 29, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1748, 'Lunch at Le Perigord (w fleo)', '', '', 0, '', '', '', 2, 5, 2010, 2, 5, 2010, 12, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1749, 'Meet with Shawn di Sustainability', '', '', 0, '', '', '', 2, 3, 2010, 2, 3, 2010, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1750, 'Elaine''s Birthday Weekend!!', '', '', 0, '', '', '', 4, 16, 2010, 4, 18, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1751, 'Dr. Pardes', '', '', 0, '', '', '', 2, 3, 2010, 2, 3, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1752, 'Meeting for Dentequest', '', '', 0, '', '', '', 2, 4, 2010, 2, 4, 2010, 10, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2890, 'Call w Amy H', '', '', 0, '', '', '', 4, 10, 2012, 4, 10, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1754, 'ELC happy Hour', '', '', 0, '', '', '', 2, 25, 2010, 2, 25, 2010, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Stumble Inn - 76th and 2nd');
INSERT INTO `events` VALUES (1755, 'Meet with Shawn di isuite', '', '', 0, '', '', '', 2, 4, 2010, 2, 4, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1756, 'Meet with Chris Edwards', '', '', 0, '', '', '', 2, 12, 2010, 2, 12, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1757, 'mt w Emily', '', '', 0, '', '', '', 2, 4, 2010, 2, 4, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1758, 'Healthplus calls', 'Monthly issues call. Send out issues tracker for Feb call while Lisette is away.', '', 0, '', '', '', 2, 18, 2010, 2, 4, 2011, 2, 30, 'PM', 0, 0, 'AM', 'm', 2, 3, 'Thu', 1, 1, 'P', '(212) 746-7269');
INSERT INTO `events` VALUES (1760, 'Healthfirst monthly calls', '', '', 0, '', '', '', 2, 4, 2010, 2, 4, 2011, 11, 0, 'AM', 0, 0, 'AM', 'm', 2, 2, 'Tue', 1, 1, 'P', '');
INSERT INTO `events` VALUES (1761, 'NHP calls', '', '', 0, '', '', '', 2, 4, 2010, 11, 4, 2011, 11, 0, 'AM', 0, 0, 'AM', 'm', 0, 5, 'Fri', 1, 1, 'P', '(212) 746-7269');
INSERT INTO `events` VALUES (1762, 'Training with Dentaquest (lester)', '', '', 0, '', '', '', 2, 5, 2010, 2, 5, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1763, 'Meet with Doug Z', '', '', 0, '', '', '', 2, 8, 2010, 2, 8, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1764, 'Food and Nutrition sustainability', '', '', 0, '', '', '', 2, 11, 2010, 2, 11, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '342-3999');
INSERT INTO `events` VALUES (1765, 'Affinity issues tracker calls', '', '', 0, '', '', '', 2, 23, 2010, 2, 23, 2011, 11, 0, 'AM', 0, 0, 'AM', 'm', 2, 5, 'Tue', 1, 1, 'P', '(212) 746-7269');
INSERT INTO `events` VALUES (1766, 'Dentaquest call with ACN, etc.', '', '', 0, '', '', '', 2, 11, 2010, 2, 11, 2010, 10, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1767, 'Dr. Manning', '', '', 0, '', '', '', 3, 16, 2010, 3, 16, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1768, 'Appt w Dr. Vogel', '', '', 0, '', '', '', 2, 13, 2010, 2, 13, 2010, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1769, 'Call Alicia from Empire', '', '', 0, '', '', '', 2, 9, 2010, 2, 9, 2010, 3, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1770, 'Dentaquest call with ACN, etc.', '', '', 0, '', '', '', 2, 18, 2010, 2, 18, 2010, 10, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1771, 'Access Database with Shawn', '', '', 0, '', '', '', 2, 19, 2010, 2, 19, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1772, 'Network Meeting (Dov)', '', '', 0, '', '', '', 5, 20, 2010, 5, 20, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1773, 'Network Meeting (Dov)', '', '', 0, '', '', '', 7, 29, 10, 7, 29, 10, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1774, 'Network Meeting (Dov)', '', '', 0, '', '', '', 11, 4, 10, 11, 4, 10, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1775, 'Making Brooklyn Bloom', '', '', 0, '', '', '', 3, 13, 2010, 3, 13, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1776, 'Meeting with Amerigroup', '', '', 0, '', '', '', 3, 2, 2010, 3, 2, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1777, 'Chris Edwards will speak', '', '', 0, '', '', '', 3, 15, 2010, 3, 15, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1778, 'Note: Candice has training until 1230', '', '', 0, '', '', '', 2, 16, 2010, 2, 16, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1779, 'Nyp Soccer', '', '', 0, '', '', '', 3, 18, 2010, 3, 18, 2010, 8, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1780, 'NYP Soccer', '', '', 0, '', '', '', 3, 12, 2010, 3, 12, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1781, 'NO NYP Soccer next week', '', '', 0, '', '', '', 3, 7, 2010, 3, 7, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1782, 'NYP Soccer', '', '', 0, '', '', '', 2, 25, 2010, 2, 25, 2010, 7, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1783, 'NYP Soccer', '', '', 0, '', '', '', 2, 18, 2010, 2, 18, 2010, 10, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1784, 'Appt w Emilia', '', '', 0, '', '', '', 3, 5, 2010, 3, 5, 2010, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1785, 'A LITTLE NIGHT MUSIC? AND HINCHES BEFOREHAND?', '', '', 0, '', '', '', 2, 28, 2010, 2, 28, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1786, 'Healthfirst marketing call', '', '', 0, '', '', '', 3, 1, 2010, 3, 1, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1787, 'Mt w Stu Standerwick', '', '', 0, '', '', '', 2, 17, 2010, 2, 17, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1788, 'Dance lessons with Dar', '', '', 0, '', '', '', 2, 24, 2010, 2, 24, 2010, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Health and Raquet club - 57th');
INSERT INTO `events` VALUES (1789, 'Dance lessons with Dar', '', '', 0, '', '', '', 3, 3, 2010, 3, 3, 2010, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Health and Raquet club - 57th');
INSERT INTO `events` VALUES (1790, 'john Hiatt', '', '', 0, '', '', '', 3, 10, 2010, 3, 10, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1791, 'Imputed Presentation', '', '', 0, '', '', '', 2, 23, 2010, 2, 23, 2010, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1792, 'Mt w Plil Olla', '', '', 0, '', '', '', 2, 18, 2010, 2, 18, 2010, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1793, 'Training session with Art', '', '', 0, '', '', '', 2, 22, 2010, 2, 22, 2010, 6, 50, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1794, 'Training session with Art', '', '', 0, '', '', '', 2, 25, 2010, 2, 25, 2010, 6, 50, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1795, 'Performance evaluation', '', '', 0, '', '', '', 3, 24, 2010, 3, 24, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1796, 'Candice has Dr. Appt', '', '', 0, '', '', '', 3, 10, 2010, 3, 10, 2010, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1797, 'Call  with Empire', '', '', 0, '', '', '', 2, 23, 2010, 2, 23, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1798, 'Speak w Tyler from Nat Del', '', '', 0, '', '', '', 2, 23, 2010, 2, 23, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1799, 'Payor website training - Oxford (optional)', '', '', 0, '', '', '', 3, 22, 2010, 3, 22, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Rm 8B');
INSERT INTO `events` VALUES (1800, 'Food and Nutrition sustainability', '', '', 0, '', '', '', 2, 25, 2010, 2, 25, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1801, 'Call with Hospitals', '', '', 0, '', '', '', 2, 25, 2010, 2, 25, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1802, 'Dentaquest call with ACN, etc.', '', '', 0, '', '', '', 2, 25, 2010, 2, 25, 2010, 10, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1803, 'DQ training', '', '', 0, '', '', '', 2, 26, 2010, 2, 26, 2010, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1804, 'Call w NYP Green', '', '', 0, '', '', '', 2, 24, 2010, 2, 24, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '342-3999');
INSERT INTO `events` VALUES (1805, 'Call w JOyce', '', '', 0, '', '', '', 2, 25, 2010, 2, 25, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1806, 'Yesica''s baby shower', '', '', 0, '', '', '', 3, 19, 2010, 3, 19, 2010, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1807, 'Meet w Emily', '', '', 0, '', '', '', 3, 2, 2010, 3, 2, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1808, 'Dinner with Margaret at GOBO', '', '', 0, '', '', '', 3, 9, 2010, 3, 9, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1809, 'Outdoor (GP) league starts! (Dragons team)', '', '', 0, '', '', '', 4, 2, 2010, 4, 2, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1810, 'Dinner w Cate and Staci', '', '', 0, '', '', '', 3, 4, 2010, 3, 4, 2010, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1811, 'DentaQuest Training', '', '', 0, '', '', '', 3, 5, 2010, 3, 5, 2010, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1812, 'Lunch w Mike Z', '', '', 0, '', '', '', 3, 8, 2010, 3, 8, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1813, 'Mt w Candice and Lisette di Rate sheet database', 'Prep - pull empire info, Look at rate sheet info', '', 0, '', '', '', 3, 11, 2010, 3, 11, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1814, 'Diner w Dar', '', '', 0, '', '', '', 3, 11, 2010, 3, 11, 2010, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1815, 'Julie and Julia night', '', '', 0, '', '', '', 3, 25, 2010, 3, 25, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1816, 'Nina''s house party', '', '', 0, '', '', '', 3, 27, 2010, 3, 27, 2010, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1817, 'Dinner with Amanda', '', '', 0, '', '', '', 4, 8, 2010, 4, 8, 2010, 7, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1818, 'Appt w Dr. Ebben', '', '', 0, '', '', '', 3, 29, 2010, 3, 29, 2010, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1819, 'PFS mtg di Dental write offs', '', '', 0, '', '', '', 3, 8, 2010, 3, 8, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1820, 'Lunch w Sam', '', '', 0, '', '', '', 3, 10, 2010, 3, 10, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1821, 'Meet w Shawn', '', '', 0, '', '', '', 3, 10, 2010, 3, 10, 2011, 4, 30, 'PM', 0, 0, 'AM', 'w', 0, 2, 'Wed', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1822, 'CLASS!', '', '', 0, '', '', '', 3, 15, 2010, 3, 15, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1823, 'Training', '', '', 0, '', '', '', 3, 10, 2010, 3, 10, 2010, 7, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1824, 'Pick up from library', '', '', 0, '', '', '', 3, 11, 2010, 3, 11, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1825, 'Return movies and other items!', '', '', 0, '', '', '', 3, 15, 2010, 3, 15, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1826, 'Meet di Dentaquest', '', '', 0, '', '', '', 3, 11, 2010, 3, 11, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1827, 'Dentaquest call with ACN, etc.', '', '', 0, '', '', '', 3, 18, 2010, 3, 18, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1828, 'Call w Roseanne and Eileen', '', '', 0, '', '', '', 3, 12, 2010, 3, 12, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1829, 'Meet w Josephine P', '', '', 0, '', '', '', 3, 11, 2010, 3, 11, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1830, 'Appt w Emilia', '', '', 0, '', '', '', 3, 19, 2010, 3, 19, 2010, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1831, 'L:IBRARY ITEMS DUE', '', '', 0, '', '', '', 4, 5, 2010, 4, 5, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2144, 'Methodist call', '', '', 0, '', '', '', 10, 6, 2010, 12, 29, 2011, 9, 30, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Wed', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1833, 'Soccer game (NYP)', '', '', 0, '', '', '', 3, 22, 2010, 3, 22, 2010, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1834, 'Kickers Soccer Practice', '', '', 0, '', '', '', 3, 23, 2010, 6, 23, 2010, 7, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1835, 'JILL''S Graduation', '', '', 0, '', '', '', 5, 15, 2010, 5, 15, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1836, 'Easter!', '', '', 0, '', '', '', 4, 4, 2010, 4, 4, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1837, 'Elaine''s bday party', '', '', 0, '', '', '', 3, 27, 2010, 3, 27, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1838, 'Dinner w Staci', '', '', 0, '', '', '', 3, 17, 2010, 3, 17, 2010, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1839, 'Hoboken date!', '', '', 0, '', '', '', 3, 28, 2010, 3, 28, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1840, 'Emblem', '', '', 0, '', '', '', 4, 28, 2010, 4, 28, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1841, 'LIBRARY ITEMS DUE!', '', '', 0, '', '', '', 3, 23, 2010, 3, 23, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2483, 'John clark presenting', '', '', 0, '', '', '', 6, 22, 2011, 6, 22, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1843, 'Night w WNYC gals', '', '', 0, '', '', '', 3, 26, 2010, 3, 26, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1844, 'Speak with Michael at Full Moon', '', '', 0, '', '', '', 3, 24, 2010, 3, 24, 2010, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1845, 'Bank of America w Dar', '', '', 0, '', '', '', 3, 25, 2010, 3, 25, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1846, 'PFS call', '', '', 0, '', '', '', 3, 23, 2010, 3, 23, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1847, 'Drr. Manning appt', '', '', 0, '', '', '', 4, 29, 2010, 4, 29, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2511, 'Elderplan call', '', '', 0, '', '', '', 7, 6, 2011, 7, 6, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1849, 'Training session with Art', '', '', 0, '', '', '', 3, 24, 2010, 3, 24, 2010, 7, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1850, 'DRAGONS soccer!', '', '', 0, '', '', '', 4, 9, 2010, 8, 9, 2010, 0, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Fri', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1851, 'Appt w Dr. Barry Cohen', '', '718-934-1222', 0, '', '', '', 4, 1, 2010, 4, 1, 2010, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1852, 'Training session with Art', '', '', 0, '', '', '', 3, 31, 2010, 4, 10, 2010, 7, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Thu', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1853, 'Call w John Holstein', '', '', 0, '', '', '', 3, 31, 2010, 12, 31, 2010, 10, 0, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Wed', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1854, 'HIP meeting', '', '', 0, '', '', '', 3, 30, 2010, 3, 30, 2010, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1855, 'Meet w Josephine P (Brooklyn)', '', '', 0, '', '', '', 3, 31, 2010, 12, 31, 2011, 10, 30, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Wed', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1856, 'Meet with Alicia', '', '', 0, '', '', '', 3, 25, 2010, 3, 25, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1857, 'Meet with Ada H and Bklyn', '', '', 0, '', '', '', 3, 25, 2010, 3, 25, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1858, 'Meet with Bklyn (Josephine and Karen)', '', '', 0, '', '', '', 3, 26, 2010, 3, 26, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1859, 'Meet with Candice', '', '', 0, '', '', '', 3, 25, 2010, 3, 25, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1860, 'Del C spreadsheet reviewt w Emily', '', '', 0, '', '', '', 3, 31, 2010, 3, 31, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1861, 'Appt at Bridal Garden', '54 West 21st St. Bet 5th and 6th ave on 9th fl.', '', 0, '', '', '', 3, 31, 2010, 3, 31, 2010, 5, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1911, 'Jay in town!', '', '', 0, '', '', '', 5, 21, 2010, 5, 23, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1912, 'Away in Lake George', '', '', 0, '', '', '', 5, 29, 2010, 5, 31, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1863, 'Meeting at Brooklyn Hospital', '', '', 0, '', '', '', 3, 29, 2010, 3, 29, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1864, 'emilia', '', '', 0, '', '', '', 4, 3, 2010, 4, 3, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1865, 'Full Moon Food Tasting!!!', '', '', 0, '', '', '', 6, 6, 2010, 0, 0, 0, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1866, 'Lunch w Penny and Sarah', '', '', 0, '', '', '', 4, 1, 2010, 4, 1, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1867, 'Lunch w Robby', '', '', 0, '', '', '', 4, 2, 2010, 4, 2, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1868, 'NYP soccer game - Playoff!', '', '', 0, '', '', '', 4, 5, 2010, 4, 5, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1869, 'Meeting for Dentequest', '', '', 0, '', '', '', 4, 1, 2010, 4, 1, 2010, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1870, 'Dinner at Rio''s', '', '', 0, '', '', '', 4, 9, 2010, 4, 9, 2010, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1871, 'Organizing for America celebration', 'check email', '', 0, '', '', '', 4, 6, 2010, 4, 6, 2010, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1872, 'Meet with HIP (Hilda)', '', '', 0, '', '', '', 4, 16, 2010, 4, 16, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1873, 'Emblem meeting-- w Carl Lunde', '', '', 0, '', '', '', 6, 30, 2010, 6, 30, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1874, 'Melissa''s wedding!', '', '', 0, '', '', '', 5, 15, 2010, 5, 16, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1875, 'Meeting with Healthfirst', '', '', 0, '', '', '', 4, 6, 2010, 4, 6, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1876, 'CB Public Safety and Qual of Life', '', 'First Alliance Church\r\n127 West 26th St.\r\nbuzzer #3003\r\nPublic Safety & Quality of Life\r\n\r\nNicholas Athanail, Chair\r\nAsa Somers, Vice Chair', 0, '', '', '', 4, 7, 2010, 4, 7, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1877, 'Manhattan CB5 Fulll Board', '', '', 0, '', '', '', 4, 15, 2010, 4, 15, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1878, 'CB5 land use committtee', '', '', 0, '', '', '', 4, 28, 2010, 4, 28, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1879, 'CB5 Health, Human Services & Youth', '', 'Board Office, 450 Seventh Ave, #2109, at 34th St.\r\n', 0, '', '', '', 4, 27, 2010, 4, 27, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1880, 'Appt at Kleinfelds', 'Password kleinfelds718', '', 0, '', '', '', 4, 8, 2010, 4, 8, 2010, 1, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1881, 'Appt at Macy''s Bridal Salon', 'Made appt w Michelle - for 1 hr on Macy''s  8th flk', '', 0, '', '', '', 4, 8, 2010, 4, 8, 2010, 5, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '8th fl Macy''s');
INSERT INTO `events` VALUES (1882, 'Mtg w Millie', '', '', 0, '', '', '', 4, 8, 2010, 4, 8, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1883, 'WNYC gals meetuip', '', '', 0, '', '', '', 5, 5, 2010, 5, 5, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1884, 'Appointment at BirnBaum and Bullock', '', '', 0, 'Robert', '212-242-2914', '', 4, 9, 2010, 4, 9, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '151 West 25th St. #2A');
INSERT INTO `events` VALUES (1885, 'DQ call', '', '', 0, '', '', '', 4, 8, 2010, 4, 8, 2010, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1886, 'Speak w Jaclyn Giancola', 'Aunt Ann''s friend', '', 0, '', '', '', 4, 16, 2010, 4, 16, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2478, 'Call w Cigna', '', '', 0, '', '', '', 6, 13, 2011, 6, 13, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1888, 'L:IBRARY ITEMS DUE', '', '', 0, '', '', '', 4, 21, 2010, 4, 21, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1889, 'Lunch with Bryan Hart', '', '', 0, '', '', '', 4, 23, 2010, 4, 23, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1890, 'Training session with Art', '', '', 0, '', '', '', 4, 22, 2010, 4, 22, 2010, 7, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1891, 'Gymnastics lesson', '', '', 0, '', '', '', 4, 26, 2010, 4, 26, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1892, 'Quarterly review with Candice', '', '', 0, '', '', '', 4, 26, 2010, 4, 26, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1893, 'Call with David liss', '', '', 0, '', '', '', 4, 29, 2010, 4, 29, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '305-9039');
INSERT INTO `events` VALUES (1894, 'CANDICE IN TRAINING 9-12', '', '', 0, '', '', '', 4, 28, 2010, 4, 28, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1895, 'Appointment with Dr. Ebben', '', '', 0, '', '', '', 6, 16, 2010, 6, 16, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '61st St 425 East 61.');
INSERT INTO `events` VALUES (1896, 'VISIT JILLY', '', '', 0, '', '', '', 5, 1, 2010, 5, 2, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1897, 'Meeting with Candice', '', '', 0, '', '', '', 4, 26, 2010, 4, 26, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1898, 'Meet w Joyce', '', '', 0, '', '', '', 5, 27, 2010, 5, 27, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1899, 'Meet w Millie', '', '', 0, '', '', '', 4, 30, 2010, 4, 30, 2010, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1900, 'Breakast with Dr. Corwin', '', '', 0, '', '', '', 5, 5, 2010, 5, 5, 2010, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1901, 'Breakfast with Rick Evans', '', '', 0, '', '', '', 4, 29, 2010, 4, 29, 2010, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'April 29th in Whitney 117');
INSERT INTO `events` VALUES (1902, 'VACA - CANDICE', '', '', 0, '', '', '', 5, 21, 2010, 5, 26, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1903, 'Pearl Jam Concert!', '', '', 0, '', '', '', 5, 18, 2010, 5, 18, 2010, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1904, 'Management Skills Practice Lab', 'tart Date: 5/20/2010 1:30 PM Session Duration: 3 hours 30 min Session Location: Payson House Sub-Basement - Room 2', '', 0, '', '', '', 5, 20, 2010, 5, 20, 2010, 1, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Payson House Sub-Basement - Ro');
INSERT INTO `events` VALUES (1905, 'Meet w Candice for G drive', '', '', 0, '', '', '', 4, 29, 2010, 4, 29, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1906, 'Appt w Dr Manning', '', '', 0, '', '', '', 5, 13, 2010, 5, 13, 2010, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1907, 'Talk with Beechstreet - Pablo Vargas', '', '', 0, '', '', '', 4, 30, 2010, 4, 30, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '949-639-3847');
INSERT INTO `events` VALUES (1908, 'FOLLOW up with NATE SHAY for Jac G', '', '', 0, '', '', '', 5, 5, 2010, 5, 6, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1910, 'EMAIL ROBERT FROM AETNA', 'Email robert from Aetna to go thru credentialing questions list.', '', 0, '', '', '', 5, 7, 2010, 5, 7, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1913, 'Gymnastics lesson', '', '', 0, '', '', '', 5, 3, 2010, 6, 3, 2010, 6, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1914, 'NYP II game', '', '', 0, '', '', '', 5, 13, 2010, 5, 13, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1915, 'NYP II game', '', '', 0, '', '', '', 5, 20, 2010, 5, 20, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1916, 'Meet w Carol C', '', '', 0, '', '', '', 5, 3, 2010, 5, 3, 2010, 4, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1917, 'Call w Dan Varney', '', '', 0, '', '', '', 5, 5, 2010, 5, 5, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1918, 'Meeting withAngela Crowe from NypCHP', '', '', 0, '', '', '', 5, 6, 2010, 5, 6, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1919, 'Meet w Amy H di delegated spreadsheet', '', '', 0, '', '', '', 5, 6, 2010, 5, 6, 2010, 9, 45, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1920, 'Call with Tara Ebbin', '', '', 0, '', '', '', 5, 5, 2010, 5, 5, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1921, 'Call with Tara Ebbin', '', '', 0, '', '', '', 5, 7, 2010, 5, 7, 2010, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1922, 'Meet with Steve Kurz', '', '', 0, '', '', '', 5, 7, 2010, 5, 7, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1923, 'Dinner with Staci', '', '', 0, '', '', '', 5, 9, 2010, 5, 9, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1924, 'Dinner w Dar and Jo', '', '', 0, '', '', '', 5, 11, 2010, 5, 11, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1925, 'Meet w Millie', '', '', 0, '', '', '', 5, 6, 2010, 5, 6, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1926, 'Meet w Steve K', '', '', 0, '', '', '', 5, 7, 2010, 5, 7, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1927, 'Conversation  With Denise Econopouly', '', '', 0, '', '', '', 5, 11, 2010, 5, 11, 2010, 11, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '845-348-2985');
INSERT INTO `events` VALUES (1928, 'Call with Hilda at Emblem', '', '', 0, '', '', '', 5, 17, 2010, 5, 17, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1929, 'Quarterly meeting with Dov', '', '', 0, '', '', '', 6, 3, 2010, 6, 3, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1930, 'Call with David Wiecks', '', '', 0, '', '', '', 5, 20, 2010, 5, 20, 2010, 12, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1931, 'Speak with Joyce', '', '', 0, '', '', '', 5, 11, 2010, 5, 11, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1932, 'Meet w Millie', '', '', 0, '', '', '', 5, 11, 2010, 5, 11, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1933, 'Recycling event', '', '', 0, '', '', '', 5, 18, 2010, 5, 18, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1934, 'Call wtih Oxford + lauren', '', '', 0, '', '', '', 5, 26, 2010, 5, 26, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1935, 'Wedding tasting!', '', '', 0, '', '', '', 6, 19, 2010, 6, 19, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1936, 'Father''s day', '', '', 0, '', '', '', 6, 20, 2010, 6, 20, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1937, 'Candice and Jason''s wedding~!', '', '', 0, '', '', '', 7, 10, 2010, 7, 10, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1938, 'Dentaquest', '', '', 0, '', '', '', 5, 18, 2010, 5, 18, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1939, 'Get together w Marisa', '', '', 0, '', '', '', 6, 8, 2010, 6, 8, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1940, 'WNYC gals meetuip', '', '', 0, '', '', '', 5, 25, 2010, 5, 25, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1941, 'Dr. Manning appt', '', '', 0, '', '', '', 5, 26, 2010, 5, 26, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1942, 'United meeting', '', '', 0, '', '', '', 5, 24, 2010, 5, 24, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '888-844-7278 Passcode: 6328273');
INSERT INTO `events` VALUES (1943, 'Meeting with Dov di HIP', '', '', 0, '', '', '', 5, 26, 2010, 5, 26, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1944, 'Call eye doctor!!', '', '', 0, '', '', '', 5, 25, 2010, 5, 25, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1945, 'DQ meeting', '', '', 0, '', '', '', 5, 27, 2010, 5, 27, 2010, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1946, 'Interview for AOC with Chip', '', '', 0, '', '', '', 5, 27, 2010, 5, 27, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Payson House - 435 East 70th s');
INSERT INTO `events` VALUES (1947, 'Call with tracey Lewis di Dentaquest', '', '', 0, '', '', '', 6, 2, 2010, 6, 2, 2010, 11, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1948, 'Call w David liss', '', '', 0, '', '', '', 5, 24, 2010, 5, 24, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '305-9039');
INSERT INTO `events` VALUES (1949, 'Bill Benjamin - leader to leader', '', '', 0, '', '', '', 6, 2, 2010, 6, 2, 2010, 9, 0, 'AM', 11, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1950, 'Meet with Sean  -- ini lobby', '', '', 0, '', '', '', 6, 4, 2010, 6, 4, 2010, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1951, 'Meet with Millie and Dr. Rimar', '', '', 0, '', '', '', 5, 26, 2010, 5, 26, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1952, 'Meet with Brooklyn Hospital (w Emily)', '', '', 0, '', '', '', 5, 25, 2010, 5, 25, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1953, 'Speak w Denise at Brooklyn', '', '', 0, '', '', '', 5, 25, 2010, 5, 25, 2010, 9, 45, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '718-488-3726');
INSERT INTO `events` VALUES (1954, 'Affinity call', '', '', 0, '', '', '', 5, 25, 2010, 5, 25, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1955, 'Reservation at sfoglia', '', '', 0, '', '', '', 5, 28, 2010, 5, 28, 2010, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1956, 'Call with Fowad K', '', '', 0, '', '', '', 5, 27, 2010, 5, 27, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', ' 718-312-5211');
INSERT INTO `events` VALUES (1957, 'Cal yvette from pfs', '', '', 0, '', '', '', 5, 27, 2010, 5, 27, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '585-6696');
INSERT INTO `events` VALUES (1958, 'Speak with Joyce', '', '', 0, '', '', '', 6, 1, 2010, 6, 1, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1959, 'Candice Off', '', '', 0, '', '', '', 6, 1, 2010, 6, 1, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1960, 'Vac Candice', '', '', 0, '', '', '', 7, 2, 2010, 7, 2, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1961, 'Vac Can', '', '', 0, '', '', '', 7, 28, 2010, 8, 1, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1962, 'Vac Can', '', '', 0, '', '', '', 8, 6, 2010, 8, 6, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2107, 'HONEYMOON', '', '', 0, '', '', '', 11, 1, 2010, 11, 14, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1964, 'Meet with Emily', '', '', 0, '', '', '', 6, 25, 2010, 6, 25, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1965, 'Meet wity Aetna', '', '', 0, '', '', '', 6, 2, 2010, 6, 2, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Conf # Toll Free: 866-692-3580');
INSERT INTO `events` VALUES (1966, 'GIT with Tara Ebbin', '', '', 0, '', '', '', 6, 1, 2010, 6, 1, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1967, 'Dentaquest call with ACN, etc. Must send email!', '', '', 0, '', '', '', 6, 3, 2010, 6, 3, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1968, 'Meet with Dan V', '', '', 0, '', '', '', 6, 1, 2010, 6, 1, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1969, 'Meet w Oh Darling photographers', '', '', 0, '', '', '', 6, 3, 2010, 6, 3, 2010, 9, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1970, 'Candice leaving early', '', '', 0, '', '', '', 6, 7, 2010, 6, 7, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1971, 'BG', '', '', 0, '', '', '', 6, 3, 2010, 6, 3, 2010, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1972, 'Fup w Andy Nieto', '', '', 0, '', '', '', 6, 14, 2010, 6, 16, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1973, 'Call with Lester', '', '', 0, '', '', '', 6, 7, 2010, 6, 7, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '914-762-1305.');
INSERT INTO `events` VALUES (1974, 'GIT w Yesica', '', '', 0, '', '', '', 6, 7, 2010, 6, 7, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1975, 'Dinner w Lib', '', '', 0, '', '', '', 6, 7, 2010, 6, 7, 2010, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1976, 'Dr. Manning appt', '', '', 0, '', '', '', 6, 9, 2010, 6, 9, 2010, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1977, 'mt w emily', '', '', 0, '', '', '', 6, 4, 2010, 6, 4, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1978, 'Meet w Dov', 'Print and bring copies of revised letter HIP/ HCP', '', 0, '', '', '', 6, 9, 2010, 6, 9, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1979, 'Meet with Lauren about Dr. Rimar meeting', '', '', 0, '', '', '', 6, 10, 2010, 6, 10, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1980, 'Mt w HIP', '', '', 0, '', '', '', 6, 10, 2010, 6, 10, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1981, 'Call Lance from Affinity', '', '', 0, '', '', '', 6, 9, 2010, 6, 9, 2010, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '718-794-3134');
INSERT INTO `events` VALUES (1982, 'Calll wiith HIP', '   Dial In Number: 646-447-2700 / x32700\r\n    Conference ID: 37388', '', 0, '', '', '', 6, 10, 2010, 6, 10, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1983, 'Meeting with United', '', '', 0, '', '', '', 6, 17, 2010, 6, 17, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'One Penn Plaza, Eighth Floor');
INSERT INTO `events` VALUES (1984, 'Queens meeting', '', '', 0, '', '', '', 6, 16, 2010, 6, 16, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1985, 'call with Maria Lyons', '', '', 0, '', '', '', 6, 10, 2010, 6, 10, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1986, 'Meet w Brianne (MZ assoc)', '', '', 0, '', '', '', 6, 11, 2010, 6, 11, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1987, 'Meet w Yesica for lunch', '', '', 0, '', '', '', 6, 14, 2010, 6, 14, 2010, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1988, 'Call with Hilda', '', '', 0, '', '', '', 6, 17, 2010, 6, 17, 2010, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1989, 'Meet w NHP di delegated spreadsheet', '', '', 0, '', '', '', 6, 22, 2010, 6, 22, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '877-925-9855 -- 1784635');
INSERT INTO `events` VALUES (1990, 'Meeting with Karen M', '', '', 0, '', '', '', 6, 14, 2010, 6, 14, 2010, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1991, 'Candice out this week', '', '', 0, '', '', '', 6, 15, 2010, 6, 15, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1992, 'Call with UHC', '', '', 0, '', '', '', 6, 15, 2010, 6, 15, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1993, 'Meet w AMY H', '', '', 0, '', '', '', 6, 17, 2010, 6, 17, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1994, 'Healthfirst call', '', '866-304-8615\r\nCode – 2573418793', 0, '', '', '', 6, 17, 2010, 6, 17, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1995, 'meeting w Michele walsh', '', '', 0, '', '', '', 6, 18, 2010, 6, 18, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1996, 'UHC Queens call', '', 'use UHC call in number', 0, '', '', '', 7, 15, 2010, 7, 15, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (1997, 'Meet w Tara E and Fowad', '1-866-854-8782; code 439-483-5104\r\n', '\r\n   Brooklyn hospital docs -\r\n* R. Gulrajani\r\n   * S. Reminick\r\n   * F. Arjomand\r\n   * V. Vasudevan\r\n   * Y. Davis', 0, '', '', '', 6, 25, 2010, 6, 25, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (1998, 'Speak with Angela Crowe', '', '', 0, '', '', '', 6, 21, 2010, 6, 21, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '917-521-7020');
INSERT INTO `events` VALUES (1999, 'Speak w Angela Crowe and Methodist', '', '', 0, '', '', '', 6, 22, 2010, 6, 22, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2000, 'Performance Review with Emily', '', '', 0, '', '', '', 6, 28, 2010, 6, 28, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2001, 'susan Hein', '', '', 0, '', '', '', 6, 24, 2010, 6, 24, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2002, 'Dentaquest mtg', '', '', 0, '', '', '', 6, 29, 2010, 6, 29, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2003, 'Lunch w Nina', '', '', 0, '', '', '', 6, 24, 2010, 6, 24, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2484, 'Gyn appt', '', '', 0, '', '', '', 6, 20, 2011, 6, 20, 2011, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2005, 'Appt w Dr Manning', '', '', 0, '', '', '', 7, 15, 2010, 7, 15, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2006, 'Call with HIP', '', '1. Dial-in number is: 32663 or 646-447-2663\r\n2. Conference ID is: 5809\r\n3. Conf. Entry Password: 6622', 0, '', '', '', 6, 29, 2010, 6, 29, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2007, 'Meet with BMA', '', '', 0, '', '', '', 6, 28, 2010, 6, 28, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2008, 'Revisit making it better plan', '', '', 0, '', '', '', 7, 19, 2010, 7, 19, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2009, 'Call with Joyce and NYPCHp', 'Bring up Queen''s issue', '', 0, '', '', '', 6, 29, 2010, 6, 29, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2010, 'Affinity call', '', '', 0, '', '', '', 7, 13, 2010, 7, 13, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2011, 'Call with Janet from Oxford', '', '', 0, '', '', '', 6, 30, 2010, 6, 30, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2012, 'Dental Call', '', '', 0, '', '', '', 7, 6, 2010, 7, 6, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2013, 'Meet with Dan Zaccagnino', '', '', 0, '', '', '', 7, 1, 2010, 7, 1, 2010, 6, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2014, 'Meet with Emily and Joyce', '', '', 0, '', '', '', 7, 2, 2010, 7, 2, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2015, 'Really good siinger at river to river - NPR', 'Jimmy web - heard on L lopate - country style', '', 0, '', '', '', 7, 14, 2010, 7, 14, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2016, 'Call with Quees', '', '', 0, '', '', '', 7, 13, 2010, 7, 13, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2017, 'Call with Americhoice', '', '', 0, '', '', '', 7, 9, 2010, 7, 9, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2018, 'Brooklyn Phils in the park', '', '', 0, '', '', '', 7, 13, 2010, 7, 13, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2019, 'Call with Josephine', '', '', 0, '', '', '', 7, 9, 2010, 7, 9, 2010, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2020, 'Call with Joyce', '', '', 0, '', '', '', 7, 9, 2010, 7, 9, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2021, 'Employee appreciation', '', '', 0, '', '', '', 8, 12, 2010, 8, 12, 2010, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2022, 'Philharmonics in prospect park', '', '', 0, '', '', '', 7, 16, 2010, 7, 16, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2023, 'lunch with Penny and Robby', '', '', 0, '', '', '', 7, 12, 2010, 7, 12, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2024, 'Meet w Joyce', '', '', 0, '', '', '', 7, 14, 2010, 7, 14, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2025, 'Candice off', '', '', 0, '', '', '', 7, 14, 2010, 7, 14, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2026, 'Candice off', '', '', 0, '', '', '', 8, 10, 2010, 8, 15, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2027, 'I''m  off (but must be reachable by phone)', '', '', 0, '', '', '', 7, 28, 2010, 7, 28, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2028, 'DQ call', '', '', 0, '', '', '', 7, 12, 2010, 7, 12, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2029, 'Call with HIP', '', '', 0, '', '', '', 7, 13, 2010, 7, 13, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2030, 'Met opera in bklyn bridge park', '', '', 0, '', '', '', 7, 20, 2010, 7, 20, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2031, 'No gymnastics', '', '', 0, '', '', '', 8, 2, 2010, 8, 2, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2032, 'Call Jeanette R', '', '', 0, '', '', '', 7, 13, 2010, 7, 13, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2033, 'SH', '', '', 0, '', '', '', 7, 22, 2010, 7, 22, 2010, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2034, 'Lunch w Margaret J', '', '', 0, '', '', '', 7, 23, 2010, 7, 23, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2035, 'amerigroup call', '', '', 0, '', '', '', 7, 16, 2010, 7, 16, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2036, 'Draft for FB page for D liss!', 'Intro', '', 0, '', '', '', 7, 15, 2010, 7, 21, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2037, 'Speak with Fowad K', '', '', 0, '', '', '', 7, 20, 2010, 7, 20, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2038, 'Speak w Amy H', '', '', 0, '', '', '', 7, 20, 2010, 7, 20, 2010, 3, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2039, 'Call w HIP', '', ' \r\n\r\n1. Dial-in number is: 32663 or 646-447-2663\r\n\r\n2. Conference ID is: 6527\r\n\r\n3. Conf. Entry Password: 2526', 0, '', '', '', 7, 21, 2010, 7, 21, 2010, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2040, 'Meet w Sean Kelliher', '', '', 0, '', '', '', 7, 26, 2010, 7, 26, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2041, 'lunch w penny and sarah', '', '', 0, '', '', '', 7, 27, 2010, 7, 27, 2010, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2042, 'EMAIL KAREN MILANO WITH EPIN UPDATE', '', '', 0, '', '', '', 7, 26, 2010, 7, 26, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2043, 'Call w Dr. Rimar', '', '', 0, '', '', '', 8, 10, 2010, 8, 10, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2044, 'NO mtg w Dr. Rimar', '', '', 0, '', '', '', 8, 24, 2010, 8, 24, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2045, 'Health screening', '', '', 0, '', '', '', 8, 24, 2010, 8, 24, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2046, 'Mtg w Brynn and Americhoice-- need agenda', '888-844-9901\r\n3866228', '', 0, '', '', '', 8, 5, 2010, 8, 5, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2047, 'Get together at the Wharf', '', '', 0, '', '', '', 8, 5, 2010, 8, 5, 2010, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2048, 'speak to melanie', '', '', 0, '', '', '', 7, 29, 2010, 7, 29, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2049, 'Call with Americhoice and Jackie Mayer', '', '', 0, '', '', '', 8, 12, 2010, 8, 12, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2050, 'Contact Tom/Ted (Mike Z''s connection)', '', '', 0, '', '', '', 9, 3, 2010, 9, 10, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2051, 'Call with Oxford United', '', '', 0, '', '', '', 8, 12, 2010, 1, 12, 2010, 10, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Thu', 0, 1, 'P', 'Call in 888-844-7278 passcode:');
INSERT INTO `events` VALUES (2052, 'Discussion with Melanie from Full Moon', '', '', 0, '', '', '', 8, 10, 2010, 8, 10, 2010, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2053, 'Mt w Dov', '', '', 0, '', '', '', 7, 30, 2010, 7, 30, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2054, 'Dental Billing meeting', '', '', 0, '', '', '', 8, 26, 2010, 8, 26, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2055, 'Meet with Brynn and M Minelli', '', '888-844-7278, 2166975', 0, '', '', '', 8, 3, 2010, 8, 3, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'call');
INSERT INTO `events` VALUES (2056, 'Quartlerly managed care meeting', '', '', 0, '', '', '', 7, 12, 2010, 7, 12, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2057, 'Take items off floor - carpet cleaning', '', '', 0, '', '', '', 8, 4, 2010, 8, 4, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2058, 'Cigna call - discuss Millie''s AIM issue', '', '1-866-731-3506 Participant code 415368', 0, '', '', '', 8, 20, 2010, 8, 20, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2059, 'Candice leaving early', '', '', 0, '', '', '', 8, 6, 2010, 8, 6, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2060, 'Appt w Dr. Richard Mark', 'Concord Medical center\r\n235 East 38th St. (bet 1 and 2)', '', 0, '', '', '', 8, 12, 2010, 8, 12, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '235 East 38th St. (bet 1 and 2');
INSERT INTO `events` VALUES (2061, 'Amerigroup call', '', '', 0, '', '', '', 8, 3, 2010, 8, 3, 2010, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2062, 'call with Brynn and melissa', '888-844-7278, 2166975', '', 0, '', '', '', 8, 4, 2010, 8, 4, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2063, 'Positive employee relations training', '', 'Title:     Positive Employee Relations - Full Course  \r\nStart Date:  8/11/2010 2:30 PM \r\nLocation:  NYP/WC-Greenberg Pavilion, Room F-1190', 0, '', '', '', 8, 11, 2010, 8, 11, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Greenberg');
INSERT INTO `events` VALUES (2064, 'Call w Adrienne', '', '', 0, '', '', '', 8, 4, 2010, 8, 4, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2065, 'thirsty thursday', '', '', 0, '', '', '', 8, 12, 2010, 8, 12, 2010, 6, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Stumble Inn - 76th and 2nd');
INSERT INTO `events` VALUES (2066, 'Call with Millie', '', '', 0, '', '', '', 8, 6, 2010, 8, 6, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2067, 'beach and Dar''s family', '', '', 0, '', '', '', 8, 7, 2010, 8, 7, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2068, 'CALL W Melissa M!!!', ' 888-844-7278, 2166975', '', 0, '', '', '', 8, 6, 2010, 8, 6, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2069, 'Gymnastics and Dinner w Libby', '', '', 0, '', '', '', 8, 9, 2010, 8, 9, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2070, 'Meeting w Amy Horowitz', '', '', 0, '', '', '', 8, 10, 2010, 8, 10, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2071, 'NYP united game', '', '', 0, '', '', '', 8, 12, 2010, 8, 12, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2072, 'Soccer - Sticky Bandits', '', '', 0, '', '', '', 8, 13, 2010, 8, 13, 2010, 10, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2073, 'Lunch with Margaret', '', '', 0, '', '', '', 8, 13, 2010, 8, 13, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2074, 'Meeting with Cathy W and Dentaquest', '', '', 0, '', '', '', 8, 16, 2010, 8, 16, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2075, 'Concert with dad', '', '', 0, '', '', '', 8, 19, 2010, 8, 19, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2076, 'DAY WITH JACKIE!', '', '', 0, '', '', '', 8, 21, 2010, 8, 21, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2077, 'Shawn''s training', '', '', 0, '', '', '', 8, 23, 2010, 8, 23, 2010, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2078, 'SEND UPDATE EMAIL', '', '', 0, '', '', '', 8, 27, 2010, 8, 27, 2011, 0, 0, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Fri', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2079, 'RESPOND TO AMANDA AND CHRIS', '', '', 0, '', '', '', 8, 22, 2010, 8, 27, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2080, 'Meet w Dr.Klass', '45 min', '', 0, '', '212-242-0132', '', 8, 25, 2010, 8, 25, 2010, 7, 15, 'PM', 8, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '40 W 17th Street between 5th a');
INSERT INTO `events` VALUES (2081, 'Samba Falsa', '', '', 0, 'Mario Maldonado', '347.262.7208', 'o', 1, 3, 2012, 3, 10, 2013, 8, 0, 'PM', 9, 0, 'PM', 'w', 0, 1, 'Thu', 0, 2, 'P', 'Chelsea Piers');
INSERT INTO `events` VALUES (2082, 'Call with Dentaquest', '', '', 0, '', '', '', 8, 18, 2010, 8, 18, 2010, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2083, 'Felicia''s Baby Shower', '', '', 0, '', '', '', 9, 12, 2010, 9, 12, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2084, 'SEND EMILY HIP OUTSTANDING ISSUES', '', '', 0, '', '', '', 8, 20, 2010, 12, 20, 2010, 9, 15, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Fri', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2085, 'Hair appointment with Janice', 'upstate NY', '', 0, '', '', '', 9, 15, 2010, 9, 15, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2086, 'Meet with Denise Econopouly', '', '', 0, '', '', '', 9, 10, 2010, 12, 30, 2011, 10, 0, 'AM', 0, 0, 'AM', 'w', 0, 3, 'Fri', 0, 1, 'P', 'Denise will call me');
INSERT INTO `events` VALUES (2087, 'Call with CRT and americhoice', '888-844-9901 code 3866228', '', 0, '', '', '', 8, 24, 2010, 8, 24, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2088, 'Call w josephine', '', '', 0, '', '', '', 8, 23, 2010, 8, 23, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2089, 'Eliza P for eyebrows', 'call: 1-800-EYE-BROW \r\nor \r\n212-757-0702', '24 hrs cancellation policy', 0, '', '', '', 8, 28, 2010, 8, 28, 2010, 11, 15, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '30 East 76th Street bet mad an');
INSERT INTO `events` VALUES (2090, ' call with Empire - 866 308 0254  Code 4458965263', '', '', 0, '', '', '', 8, 23, 2010, 8, 23, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2091, 'Call with Empire group - MaryAnn, Fowad, etc.', 'Where: Conference Call  866 308 0254   Conf Code 4458965263', '', 0, '', '', '', 9, 10, 2010, 9, 10, 2010, 11, 30, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Fri', 0, 1, 'P', 'Where: Conference Call  866 30');
INSERT INTO `events` VALUES (2092, 'BRYANT PARK??', '', '', 0, '', '', '', 8, 26, 2010, 8, 26, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2093, 'THE DAILY SHOW-- AUNT FRAN''s Tickets', '', '', 0, '', '', '', 9, 13, 2010, 9, 13, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2094, 'Visit Aunt Ann''s friend in Jersey', '', '', 0, '', '', '', 9, 1, 2010, 9, 1, 2010, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2095, 'Appointment at worksong in GP', '', '', 0, '', '', '', 9, 2, 2010, 9, 2, 2010, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2096, 'Call Stephanie P from greenmarket', '', '', 0, '', '', '', 8, 24, 2010, 8, 24, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2097, 'AHT NOW AVAILABLE', '', '', 0, '', '', '', 8, 25, 2010, 8, 25, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2098, 'ANNUAL HOSPITAL TRAINING', '', '', 0, '', '', '', 8, 30, 2010, 9, 2, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2099, 'Meet with Nada', '', '', 0, '', '', '', 8, 27, 2010, 8, 27, 2010, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '773-276-6404');
INSERT INTO `events` VALUES (2100, 'Breakfast w Dr. Corwin', '', '', 0, '', '', '', 10, 27, 2010, 9, 29, 2010, 7, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2101, 'Soccer NYP', '', '', 0, '', '', '', 8, 31, 2010, 8, 31, 2010, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2102, 'Meet w Millie', '', '', 0, '', '', '', 9, 1, 2010, 9, 1, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2103, 'Speak w Hilda and Erick', '', '', 0, '', '', '', 8, 27, 2010, 8, 27, 2010, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2104, 'Speak w Hilda and Erick', '', '', 0, '', '', '', 9, 10, 2010, 9, 10, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2105, 'Meet w Brynn', '', '', 0, '', '', '', 8, 31, 2010, 8, 31, 2010, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2106, 'Dental meeting', '', '', 0, '', '', '', 9, 2, 2010, 9, 2, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2108, 'Dental meeting', '', '', 0, '', '', '', 9, 30, 2010, 9, 30, 2010, 3, 0, 'PM', 4, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'HT 601');
INSERT INTO `events` VALUES (2109, 'vacation day', '', '', 0, '', '', '', 9, 3, 2010, 9, 3, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2110, 'Oxford / United call', '', '', 0, '', '', '', 9, 8, 2010, 9, 8, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2111, 'Oxford / United call', '', '', 0, '', '', '', 9, 16, 2010, 9, 16, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2112, 'Oxford / United call', '', '', 0, '', '', '', 9, 22, 2010, 9, 22, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2113, 'Oxford / United call', '', '', 0, '', '', '', 9, 29, 2010, 9, 29, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2114, 'lunch w penny', '', '', 0, '', '', '', 9, 8, 2010, 9, 8, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2115, 'ACcess course for candice', '', '', 0, '', '', '', 9, 30, 2010, 9, 30, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2116, 'Meet with Lauren', '', '', 0, '', '', '', 9, 9, 2010, 9, 9, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2117, 'Wellness task force', '', '', 0, '', '', '', 9, 10, 2010, 9, 10, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2118, 'UPDATE LAUREN"S NYHQ TRACKEr', '', '', 0, '', '', '', 9, 9, 2010, 9, 9, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2119, 'Dental meeting', '', '', 0, '', '', '', 9, 9, 2010, 9, 9, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2120, 'GO TO DRY CLEANERS FOR APPT!', '', '', 0, '', '', '', 9, 15, 2010, 9, 15, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2121, 'Candice md appt', '', '', 0, '', '', '', 9, 16, 2010, 9, 16, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2122, 'CANDICE MD appt', '', '', 0, '', '', '', 10, 5, 2010, 10, 5, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2123, 'CANDICE OUT', '', '', 0, '', '', '', 10, 7, 2010, 10, 8, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2124, 'SABRINA"S WEDDING!', '', '', 0, '', '', '', 9, 23, 2010, 9, 27, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2125, 'SHOULD GET IRS INFO IN THE MAIL', '', '', 0, '', '', '', 9, 30, 2010, 10, 10, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2126, 'Note : Lance from Affinity will get back to me.', '', '', 0, '', '', '', 9, 17, 2010, 9, 17, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2127, 'Hospital Kick off!', '', '', 0, '', '', '', 1, 25, 2011, 1, 25, 2011, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2128, 'Lunch', '', '', 0, '', '', '', 9, 16, 2010, 9, 16, 2010, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2129, 'Gymnastics', '', '', 0, '', '', '', 9, 16, 2010, 9, 16, 2010, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2130, 'FLU SHOT FORM', '', '', 0, '', '', '', 10, 11, 2010, 10, 15, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2131, 'Long term planning mtg with Emily, Lisette, CS', '', '', 0, '', '', '', 9, 22, 2010, 9, 22, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2132, 'Appt w Dr. Manning', '', '', 0, '', '', '', 9, 20, 2010, 9, 20, 2010, 7, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2133, 'Call with Methodist', '', '', 0, '', '', '', 9, 22, 2010, 9, 22, 2010, 10, 30, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Wed', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2134, 'Meet w Michele W di TIN change', '', '', 0, '', '', '', 9, 22, 2010, 9, 22, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2135, 'Send Lauren and Dr. Rimar rate info', '', '', 0, '', '', '', 9, 22, 2010, 9, 22, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2136, 'OFF!! Wedding!! Honeymoon!', '', '', 0, '', '', '', 10, 27, 2010, 11, 15, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2137, 'Meeting with Melissa and Brynn', '', '', 0, '', '', '', 9, 27, 2010, 9, 27, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Where: 888-844-7278, 2166975');
INSERT INTO `events` VALUES (2138, 'Speak to John Holstein', '', '', 0, '', '', '', 10, 1, 2010, 10, 1, 2010, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2139, 'meet with Emily re performace appraisal', '', '', 0, '', '', '', 9, 27, 2010, 9, 27, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2140, 'Call w Affinity', '', '', 0, '', '', '', 9, 29, 2010, 9, 29, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2141, 'Call w Hilda', '', '', 0, '', '', '', 9, 27, 2010, 9, 27, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2142, 'MEET W josephine', 'Delegated form', '', 0, '', '', '', 9, 28, 2010, 9, 28, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2143, 'Independence dental meeting', '', '', 0, '', '', '', 9, 28, 2010, 9, 28, 2010, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2145, 'Dr. Bretholtz', '', '', 0, '', '', '', 10, 6, 2010, 10, 6, 2010, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '232 East 30th st');
INSERT INTO `events` VALUES (2146, 'Call Michelle at Demetrios', '', '', 0, '', '', '', 9, 29, 2010, 9, 29, 2010, 1, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-494-3330');
INSERT INTO `events` VALUES (2147, 'Hair Appointment - Alfani salon', '', '', 0, '', '', '', 10, 2, 2010, 10, 2, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '435 5th ave bet 38 and 39');
INSERT INTO `events` VALUES (2148, 'Dr. Rubin  - Neuro appt.', '', '', 0, '', '746-2320', '', 10, 20, 2010, 10, 20, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '520 E 70th - 6th fl - rm - 607');
INSERT INTO `events` VALUES (2149, 'Lunch w Hilda n HIP', '', '', 0, '', '', '', 10, 6, 2010, 10, 6, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2150, 'Melissa''s office baby shower', '', '', 0, '', '', '', 10, 14, 2010, 10, 14, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2151, 'Flu shot form', '', '', 0, '', '', '', 10, 14, 2010, 10, 14, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2152, 'SEND MONTHLY UPDATES TO PLANS', '', '', 0, '', '', '', 10, 19, 2010, 10, 21, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2192, 'Call w David Liss', '', '', 0, '', '', '', 11, 19, 2010, 11, 19, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2193, 'Send reminder email to hosps di settlment', 'Email about settlment - info due on Dec 1,2010.', '', 0, '', '', '', 11, 25, 2010, 11, 25, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2154, 'Calll w Americhoice and Amy H', '', '', 0, '', '', '', 10, 13, 2010, 10, 13, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', ' 888-844-9901 pc 3866228');
INSERT INTO `events` VALUES (2155, 'SEND UPDATE EMAIL', '', '', 0, '', '', '', 10, 11, 2010, 10, 11, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2156, 'Jenn''s birthday', '', '', 0, '', '', '', 10, 19, 2010, 10, 19, 2010, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2157, 'Meet w Empire', '', '', 0, '', '', '', 10, 11, 2010, 10, 11, 2010, 2, 20, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2158, 'Aim women''s center call', '', '', 0, '', '', '', 10, 11, 2010, 10, 11, 2010, 3, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2159, 'Call with Aetna', '', '', 0, '', '', '', 10, 15, 2010, 10, 15, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-746-7269');
INSERT INTO `events` VALUES (2160, 'Mt w Emily', '', '', 0, '', '', '', 10, 12, 2010, 10, 12, 2010, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2161, 'Meet with Andrew from Empire', 'My office', '', 0, '', '', '', 10, 13, 2010, 10, 13, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2162, 'Call with Empire', '', '', 0, '', '', '', 10, 18, 2010, 10, 18, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2163, 'Gymnastics lesson!', '', '', 0, '', '', '', 10, 14, 2010, 10, 14, 2010, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2164, 'Meet w Melissa di Rate sheet database', '', '', 0, '', '', '', 10, 25, 2010, 10, 25, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2165, 'Meet w Emily', '', '', 0, '', '', '', 10, 14, 2010, 10, 14, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2166, 'Call w CIGNA', '', '', 0, '', '', '', 10, 22, 2010, 10, 22, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2167, 'call w Dan varney', '', '', 0, '', '', '', 10, 19, 2010, 10, 19, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2168, 'Weekly Empire Roster disc', '', '', 0, '', '', '', 10, 18, 2010, 3, 29, 2011, 3, 0, 'PM', 3, 30, 'PM', 'w', 0, 1, 'Mon', 0, 1, 'P', '866-308-0254, pass 9732134083');
INSERT INTO `events` VALUES (2169, 'Call w Qns and AmCh', '', '', 0, '', '', '', 11, 16, 2010, 11, 16, 2011, 11, 0, 'AM', 0, 0, 'AM', 'm', 2, 3, 'Tue', 1, 1, 'P', '888-844-9901 pc 3866228.');
INSERT INTO `events` VALUES (2473, 'Meet w Lester Zizman (elder)', '', '', 0, '', '', '', 6, 14, 2011, 6, 14, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Call him');
INSERT INTO `events` VALUES (2171, 'Mt w Meth and AmCh', '', '', 0, '', '', '', 11, 4, 2010, 11, 4, 2011, 10, 0, 'AM', 0, 0, 'AM', 'm', 0, 1, 'Thu', 1, 1, 'P', '888-844-9901 pc 3866228');
INSERT INTO `events` VALUES (2172, 'Mt TBHC + AmCh', '', '', 0, '', '', '', 11, 2, 2010, 11, 2, 2011, 2, 0, 'PM', 0, 0, 'AM', 'm', 2, 1, 'Tue', 1, 1, 'P', '');
INSERT INTO `events` VALUES (2173, 'call Michele walsch', '', '', 0, '', '', '', 10, 20, 2010, 10, 20, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2174, 'HIP chart review', '', '', 0, '', '', '', 10, 20, 2010, 10, 20, 2010, 9, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2175, 'Mt w Candice - re updates and network mtg info', '', '', 0, '', '', '', 10, 25, 2010, 10, 25, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2176, 'Mt w jim Atwell', '', '', 0, '', '', '', 10, 22, 2010, 10, 22, 2010, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2177, 'Eliza P for eyebrows - Robert', '', '', 0, '', '', '', 10, 26, 2010, 10, 26, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2178, 'Eliza P for eyebrows - Robert', '', '', 0, '', '', '', 10, 26, 2010, 10, 26, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2179, 'Emilia!', '', '', 0, '', '', '', 10, 26, 2010, 10, 26, 2010, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2180, 'Go to Sonia  - the tailor!', '', '', 0, '', '', '', 10, 23, 2010, 10, 23, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2181, 'Call with Emblem for records - Brian', '', '', 0, '', '', '', 10, 21, 2010, 10, 21, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2182, 'Convo w Joyce and Emily', 'Re dataset 17', '', 0, '', '', '', 10, 22, 2010, 10, 22, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2183, 'Meeting w Brynn re: updates', '', '', 0, '', '', '', 10, 25, 2010, 10, 25, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2184, 'Penny''s Wedding!!', '', '', 0, '', '', '', 6, 18, 2011, 6, 18, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2185, 'Mt w Milllie and LM', '', '', 0, '', '', '', 11, 19, 2010, 0, 0, 0, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2186, 'Healthfirst monthly call', '', '', 0, '', '', '', 6, 7, 2011, 0, 0, 0, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2187, 'Physician "numbers" list for Dov', 'Provide the numbers of physicians at each hospital for Dov Save in G drive and let Emily know where.', '', 0, '', '', '', 11, 22, 2010, 11, 22, 2011, 11, 0, 'AM', 0, 0, 'AM', 'm', 2, 5, 'Mon', 1, 1, 'P', '');
INSERT INTO `events` VALUES (2188, 'Call Jackie Mayer', '', '', 0, '', '', '', 11, 15, 2010, 11, 15, 2010, 3, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2189, 'talk w Jackie M', '', '', 0, '', '', '', 11, 16, 2010, 11, 16, 2010, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2190, 'Yovany''s birthday', '', '', 0, '', '', '', 11, 20, 2010, 11, 20, 2010, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2191, 'meet w Brynn', '', '', 0, '', '', '', 11, 18, 2010, 11, 18, 2010, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2194, 'Call with Joyce', '', '', 0, '', '', '', 11, 18, 2010, 11, 18, 2010, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2195, 'Due Date for Hospitals to send', '', '', 0, '', '', '', 12, 1, 2010, 12, 1, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2196, 'Meet w Denise and Josephine from Brooklyn', '', '', 0, '', '', '', 11, 19, 2010, 11, 19, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2197, 'Emily birthday', '', '', 0, '', '', '', 11, 18, 2010, 11, 18, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2198, 'Meet with Ox /U di file load', '', '', 0, '', '', '', 12, 2, 2010, 2, 2, 2011, 9, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Thu', 0, 1, 'P', '888-844-7278 pc 4245165');
INSERT INTO `events` VALUES (2199, 'NHP call', '', '', 0, '', '', '', 1, 28, 2011, 10, 30, 2012, 11, 0, 'AM', 11, 30, 'AM', 'm', 0, 5, 'Fri', 1, 1, 'P', '');
INSERT INTO `events` VALUES (2200, 'NHP call', '', '', 0, '', '', '', 11, 18, 2011, 11, 18, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2201, 'NHP call', '', '', 0, '', '', '', 12, 16, 2011, 12, 16, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2202, 'Healthfirst monthly call', '', '', 0, '', '', '', 12, 6, 2011, 12, 6, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2203, 'Healthfirst monthly call', '', '', 0, '', '', '', 9, 6, 2011, 9, 6, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2204, 'Healthfirst monthly call', '', '', 0, '', '', '', 6, 7, 2011, 6, 7, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2205, 'Mt w shawn di apgs', '', '', 0, '', '', '', 11, 22, 2010, 11, 22, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2206, 'Meet w Dr. Epstein', '309.2a--check w empire', '', 0, '', '', '', 12, 16, 2010, 12, 16, 2010, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '76 EAST 96TH BET 5TH AND MAD');
INSERT INTO `events` VALUES (2207, 'Call Maryann Donner from HRC', 'Uses classes to put together a schedule for you', 'Maryann Donner\r\nGroup Fitness Director\r\nNew York Health & Racquet Club\r\n212-220-0774', 0, '', '', '', 11, 30, 2010, 11, 30, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2208, 'Real estate NYP green mtg', '', '', 0, '', '', '', 12, 1, 2010, 12, 1, 2010, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2209, 'Soccer NYP', '', '', 0, '', '', '', 12, 8, 2010, 12, 8, 2010, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2210, 'Meeting w Larai from Amerigroup for hospitals', 'Invite hospitals prior week', '', 0, '', '', '', 12, 15, 2010, 12, 15, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2211, 'speak w Lance from Affinity', '', '', 0, '', '', '', 12, 2, 2010, 12, 2, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2212, 'Holiday lunch', '', '', 0, '', '', '', 12, 16, 2010, 12, 16, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2213, 'Employee survey review', '', '', 0, '', '', '', 12, 7, 2010, 12, 7, 2010, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2214, 'Call w Amy H', '', '', 0, '', '', '', 12, 6, 2010, 12, 6, 2010, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2215, 'vIVA TRAINING W LYDIA', 'Gotomeeting - \r\nMeeting ID: 986-181-704\r\nDial in: (212) 746-7269', '', 0, '', '', '', 12, 9, 2010, 12, 9, 2010, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2216, 'Rob from Emblem', '', '', 0, '', '', '', 12, 3, 2010, 12, 3, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2217, 'Meet w Eleanor W from Affinity', '', '', 0, '', '', '', 12, 6, 2010, 12, 6, 2010, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2218, 'TBHC call w Americhoice', '', '', 0, '', '', '', 12, 8, 2010, 12, 8, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2219, 'HANYs conference on APGs', '', '', 0, '', '', '', 12, 7, 2010, 12, 7, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'conf room');
INSERT INTO `events` VALUES (2220, 'mt w Lauren from Qns', '', '', 0, '', '', '', 12, 6, 2010, 12, 6, 2010, 4, 20, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2221, 'tbhc w brynn', '', '', 0, '', '', '', 12, 9, 2010, 12, 9, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2222, 'Mt w Brynn and Nada', '', '', 0, '', '', '', 12, 10, 2010, 12, 10, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2223, 'meet w nhp', '', '', 0, '', '', '', 12, 9, 2010, 12, 9, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2224, 'CUTCO registry discount!!', '', '', 0, '', '', '', 12, 10, 2010, 12, 11, 2010, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2225, 'Call David Albright', '', '', 0, '', '', '', 1, 11, 2011, 1, 14, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2226, 'Meeting re: wellcare', '', '', 0, '', '', '', 12, 15, 2010, 12, 15, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2227, 'LUNCH W Jill', '', '', 0, '', '', '', 12, 20, 2010, 12, 20, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2228, 'mt w Empire di non-pars', '', '', 0, '', '', '', 12, 23, 2010, 12, 23, 2010, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2229, 'Met w Joyce', '', '', 0, '', '', '', 12, 21, 2010, 12, 21, 2010, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2230, 'Meet w Tara Ebbin from Empire', '', '', 0, '', '', '', 12, 23, 2010, 12, 23, 2010, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2231, 'Meet w group', '', '', 0, '', '', '', 12, 22, 2010, 12, 22, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2232, 'Call w Dr.Rimar', 'Revenue Cycle meeting set up\r\n\r\n\r\n', '', 0, '', '', '', 1, 18, 2011, 1, 18, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '718- 670-1549');
INSERT INTO `events` VALUES (2233, 'Meet w A Bennett', '', '', 0, '', '', '', 12, 23, 2010, 12, 23, 2010, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2234, 'Review w Emily', '', '', 0, '', '', '', 1, 6, 2011, 1, 6, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2235, 'Meeting w Dr. Corwin', '', '', 0, '', '', '', 2, 2, 2011, 2, 2, 2011, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2236, 'Call w Melissa H from United', '', '', 0, '', '', '', 1, 7, 2011, 1, 7, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '1-888-844-7278 access code 344');
INSERT INTO `events` VALUES (2237, 'Gymnastics', '', '', 0, '', '', '', 1, 12, 2011, 1, 12, 2011, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2238, 'Gymnastics', '', '', 0, '', '', '', 1, 11, 2011, 1, 11, 2011, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2239, 'Meet w Emily', '', '', 0, '', '', '', 1, 7, 2011, 1, 7, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2240, 'Call w Joyce and Nancy and billing cos', 'OB and chemo drugs', '', 0, '', '', '', 1, 14, 2011, 1, 14, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'call in');
INSERT INTO `events` VALUES (2840, 'Empire call', '', '', 0, '', '', '', 2, 29, 2012, 2, 29, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2242, 'Call w Empire', '', '', 0, '', '', '', 1, 10, 2011, 1, 10, 2011, 3, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2243, 'OUT SICK', '', '', 0, '', '', '', 1, 4, 2011, 1, 4, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2244, 'LEFT WORK SICK HALF DAY', '', '', 0, '', '', '', 1, 3, 2011, 1, 3, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2245, 'Meet w Amy H', '', '', 0, '', '', '', 1, 11, 2011, 1, 11, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2246, 'Helen will call me at 10 am.', '', '', 0, '', '', '', 1, 11, 2011, 1, 11, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2247, 'ELC meeting', '', '', 0, '', '', '', 1, 20, 2011, 1, 20, 2011, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2248, 'Show w the fam at Joyce theater', '', '', 0, '', '', '', 1, 22, 2011, 1, 22, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2249, 'Meet w Margaret', '', '', 0, '', '', '', 1, 19, 2011, 1, 19, 2011, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2250, 'work anniversary', '', '', 0, '', '', '', 1, 12, 2011, 1, 12, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2251, 'Practical philosophy class', '', '', 0, '', '', '', 1, 17, 2011, 4, 1, 2011, 7, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2252, 'Call with Amy H', '', '', 0, '', '', '', 2, 14, 2011, 2, 14, 2012, 2, 30, 'PM', 0, 0, 'AM', 'm', 2, 2, 'Mon', 1, 1, 'P', '');
INSERT INTO `events` VALUES (2253, 'Call w Joyce', '', '', 0, '', '', '', 1, 11, 2011, 1, 11, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2254, 'Affinity Call', '', '', 0, '', '', '', 1, 18, 2011, 1, 18, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2255, 'Amerigroup monthly call', '', '', 0, '', '', '', 1, 18, 2011, 1, 18, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2256, 'Meet with Ted and Tom', '165 William Street 10th Floor (near city hall)\r\nNY NY 10038\r\n10 A buzzer', '', 0, '', '', '', 1, 26, 2011, 1, 26, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '165 William Street 10th Floor');
INSERT INTO `events` VALUES (2257, ' call Felisha Krausse', '', '', 0, '', '', '', 1, 14, 2011, 1, 14, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '646-473-7179');
INSERT INTO `events` VALUES (2258, 'Call w Joyce and billing group', '', '', 0, '', '', '', 1, 28, 2011, 1, 28, 2011, 12, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2259, 'State of the Union', '', '', 0, '', '', '', 1, 25, 2011, 1, 25, 2011, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2260, 'mt w Emily', '', '', 0, '', '', '', 1, 18, 2011, 1, 18, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2261, 'Jackie''s bday and president''s weekend', '', '', 0, '', '', '', 2, 19, 2011, 2, 20, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2262, 'Double date w Shawn and Jen', '', '', 0, '', '', '', 2, 10, 2011, 2, 10, 2011, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2263, 'Super Bowl Sunday', '', '', 0, '', '', '', 2, 6, 2011, 2, 6, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2264, 'Meet w John Holstein', '', '', 0, '', '', '', 1, 19, 2011, 1, 19, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2265, 'dinner w staci', '', '', 0, '', '', '', 1, 25, 2011, 1, 25, 2011, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2266, 'Meet w Margaret', '', '', 0, '', '', '', 1, 24, 2011, 1, 24, 2011, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2267, 'Oxford call', '', '', 0, '', '', '', 1, 25, 2011, 1, 25, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2268, 'Elderplan Implementation', '', '', 0, '', '', '', 1, 28, 2011, 1, 28, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Emily''s office');
INSERT INTO `events` VALUES (2269, 'meet w Hilda', '', '', 0, '', '', '', 1, 20, 2011, 1, 20, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2270, 'Gymnastics', '', '', 0, '', '', '', 1, 27, 2011, 1, 27, 2011, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2271, 'Meeting w Cigna re cred', '', '', 0, '', '', '', 1, 24, 2011, 1, 24, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2272, 'Meet w Emily', '', '', 0, '', '', '', 1, 21, 2011, 1, 21, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2273, 'Call w HHP', '', '', 0, '', '', '', 1, 26, 2011, 1, 24, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2274, 'Lunch w Pen and Sarah', '', '', 0, '', '', '', 1, 26, 2011, 1, 26, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2275, 'Call w Cigna', '', '', 0, '', '', '', 1, 26, 2011, 1, 26, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2276, 'Empire call', '', '', 0, '', '', '', 2, 2, 2011, 2, 2, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2277, 'mt w emily re:', '', '', 0, '', '', '', 1, 26, 2011, 1, 26, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2278, 'meet w joyce', '', '', 0, '', '', '', 1, 27, 2011, 1, 27, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2279, 'wt w cigna', '', '', 0, '', '', '', 1, 27, 2011, 1, 27, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2280, 'Review w candice', '', '', 0, '', '', '', 1, 26, 2011, 1, 26, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2281, 'Jen from HHP', '', '', 0, '', '', '', 1, 31, 2011, 1, 31, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2282, 'Dr. Rubin', '', '', 0, 'Ebony', '', '', 2, 3, 2011, 2, 3, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '520 east 70th 6th fl rm 607');
INSERT INTO `events` VALUES (2283, 'mt w Joyce', '', '', 0, '', '', '', 2, 28, 2011, 2, 28, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2284, 'Ox U call', '', '', 0, '', '', '', 2, 3, 2011, 2, 3, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '888-844-7278 passcode: 632-827');
INSERT INTO `events` VALUES (2285, 'Ox U call', '', '', 0, '', '', '', 2, 9, 2011, 2, 9, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '888-844-7278 passcode: 632-827');
INSERT INTO `events` VALUES (2286, 'Meet w Jen from HHP', '', '', 0, '', '', '', 2, 7, 2011, 2, 7, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2287, 'Quarterly meeting', '', '', 0, '', '', '', 2, 10, 2011, 2, 10, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2288, 'meet w hilda', '', '', 0, '', '', '', 2, 1, 2011, 2, 1, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2289, 'mt w Ruth', '', '', 0, '', '', '', 2, 1, 2011, 2, 1, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2290, 'State of the Hospital', '', '', 0, '', '', '', 2, 25, 2011, 2, 25, 2011, 8, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2291, 'Visit Jackie', '', '', 0, '', '', '', 2, 12, 2011, 2, 13, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2292, 'Gymnastics', '', '', 0, '', '', '', 2, 3, 2011, 2, 3, 2011, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2293, 'Emilia', '', '', 0, '', '', '', 2, 5, 2011, 2, 5, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2294, 'Call w Zoe', '', '', 0, '', '', '', 2, 3, 2011, 2, 3, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2295, 'Mt w Elaine', '', '', 0, '', '', '', 2, 8, 2011, 2, 8, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2296, 'Aetna call ? check time w binta', '', '', 0, '', '', '', 2, 14, 2011, 2, 14, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2297, 'Meet with Liya', '', '', 0, '', '', '', 2, 10, 2011, 2, 10, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '212-746-9784');
INSERT INTO `events` VALUES (2298, 'Amanda''s shower', '', '', 0, '', '', '', 2, 26, 2011, 2, 26, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2299, 'speak w Melissa hinson', '', '', 0, '', '', '', 2, 7, 2011, 2, 7, 2011, 2, 3, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2300, 'Call Oh Darling', '', '', 0, '', '', '', 2, 8, 2011, 2, 8, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2301, 'Call w HHP', '', '', 0, '', '', '', 2, 14, 2011, 2, 14, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2302, 'meet w cindy', '', '', 0, '', '', '', 2, 8, 2011, 2, 8, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2303, 'ELC breakfast', '', '', 0, '', '', '', 3, 16, 2011, 3, 16, 2011, 7, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Hoyt boardroom NYP/CU');
INSERT INTO `events` VALUES (2304, 'Meet w Joyce and Nancy', '', '', 0, '', '', '', 2, 10, 2011, 2, 10, 2011, 2, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2305, 'Meet w Cigna', '', '', 0, '', '', '', 2, 16, 2011, 2, 16, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2306, 'Clinic call', '', '', 0, '', '', '', 2, 15, 2011, 2, 15, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2307, 'Meet w Amy H', '', '', 0, '', '', '', 2, 15, 2011, 2, 15, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2308, 'Meet w Melissa and Lydia', '', '', 0, '', '', '', 2, 24, 2011, 2, 24, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2309, 'Appt w Dr. Lin - memory', '', '', 0, 'Tanya', '212-746-2441', '', 3, 2, 2011, 3, 2, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '428 East 72nd St. Ste 500');
INSERT INTO `events` VALUES (2310, 'Call joyce', '', '', 0, '', '', '', 2, 16, 2011, 2, 16, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2416, 'Tony and Beatriz''s Wedding', '', '', 0, '', '', '', 7, 30, 2011, 7, 30, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2312, 'Half day vacation', '', '', 0, '', '', '', 2, 11, 2011, 2, 11, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2313, 'Meet w Jill', '', '', 0, '', '', '', 2, 17, 2011, 2, 17, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2314, 'Meet w Fioza', '', '', 0, '', '', '', 2, 17, 2011, 2, 17, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2315, 'Mtg for Wellcare', '', '', 0, '', '', '', 2, 17, 2011, 2, 17, 2011, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2316, 'Post pictures from weekend', '', '', 0, '', '', '', 2, 18, 2011, 2, 18, 2011, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2317, 'Meet w Wellcare', '', '', 0, '', '', '', 2, 18, 2011, 2, 18, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2318, 'Meet w Wellcare', '', '', 0, '', '', '', 2, 18, 2011, 2, 18, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2319, 'Meet w Jill', '', '', 0, '', '', '', 2, 18, 2011, 2, 18, 2011, 12, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2320, 'Meet w Ruth, etc.', '', '', 0, '', '', '', 2, 23, 2011, 2, 23, 2011, 2, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2321, 'web training', '', '', 0, '', '', '', 2, 23, 2011, 2, 23, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2322, 'Mt w Wellcare', '', '', 0, '', '', '', 2, 23, 2011, 2, 23, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2323, 'Meet w Joyce', '', '', 0, '', '', '', 2, 24, 2011, 2, 24, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2324, 'Dr carlon', '', '', 0, '', '', '', 2, 24, 2011, 2, 24, 2011, 1, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2325, 'call ted from efficiancy', '', '', 0, '', '', '', 2, 25, 2011, 2, 25, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2326, 'Out w girls', '', '', 0, '', '', '', 3, 3, 2011, 3, 3, 2011, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2327, 'Weekend w Mathew', '', '', 0, '', '', '', 3, 5, 2011, 3, 6, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2328, 'Memphis', '', '', 0, '', '', '', 3, 13, 2011, 3, 13, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2329, 'Call Dr. Manning', '', '', 0, '', '', '', 2, 28, 2011, 2, 28, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2330, 'call w elderplan', '', '', 0, '', '', '', 3, 1, 2011, 3, 1, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2331, 'Dry cleaning pick up', '', '', 0, '', '', '', 2, 7, 2011, 2, 7, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2332, 'Candice leave early', '', '', 0, '', '', '', 3, 7, 2011, 3, 7, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2333, 'Meet w Manny', '', '', 0, '', '', '', 3, 2, 2011, 3, 2, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2334, 'meet w denise', '', '', 0, '', '', '', 3, 4, 2011, 3, 4, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2335, 'Empire call', '', '', 0, '', '', '', 3, 3, 2011, 3, 3, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2336, 'United call', '', '', 0, '', '', '', 3, 3, 2011, 6, 3, 2011, 10, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Thu', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2337, 'Call w Kaye', '', '', 0, '', '', '', 3, 3, 2011, 3, 3, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2338, 'Mt w John Holstein', '', '', 0, '', '', '', 3, 3, 2011, 3, 3, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2339, 'united mtg', '', '', 0, '', '', '', 3, 3, 2011, 3, 3, 2011, 10, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2340, 'Unpower hour', '', '', 0, '', '', '', 3, 4, 2011, 8, 8, 2011, 3, 0, 'PM', 0, 0, 'AM', 'm', 2, 1, 'Fri', 1, 1, 'P', '');
INSERT INTO `events` VALUES (2341, 'Meet w Hilda', '', '', 0, '', '', '', 3, 3, 2011, 3, 3, 2011, 11, 45, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2342, 'ELC dinner', '', '', 0, '', '', '', 3, 9, 2011, 3, 9, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2343, 'Carrie''s call with Empire', '', '', 0, '', '', '', 4, 7, 2011, 4, 7, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2344, 'Carrie''s call w Empire', '', '', 0, '', '', '', 5, 5, 2011, 5, 5, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2345, 'Carrie''s call w Empire', '', '', 0, '', '', '', 6, 2, 2011, 6, 2, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2346, 'Carri''e''s call w Empire', '', '', 0, '', '', '', 7, 7, 2011, 7, 7, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2347, 'Carrie''s call w Empire', '', '', 0, '', '', '', 8, 4, 2011, 8, 4, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2348, 'Carrie''s call w Empire', '', '', 0, '', '', '', 9, 1, 2011, 9, 1, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2349, 'Carrie''s call w Empire', '', '', 0, '', '', '', 10, 6, 2011, 10, 6, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2350, 'Healthfirst call', '', '', 0, '', '', '', 3, 10, 2011, 3, 10, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2351, 'meet w Emily', '', '', 0, '', '', '', 3, 4, 2011, 3, 4, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2352, 'Meet w NHP re DTNC', '', '', 0, '', '', '', 3, 7, 2011, 3, 7, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2353, 'Meet w Karen Milano re: Caldonian', '', '', 0, '', '', '', 3, 8, 2011, 3, 8, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2354, 'training for Teamweb sites - Firoza', '', '', 0, '', '', '', 3, 23, 2011, 3, 23, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2355, 'Send updates to Liya by Friday!', '', '', 0, '', '', '', 3, 10, 2011, 3, 10, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2356, 'Meet w Manny', '', '', 0, '', '', '', 3, 9, 2011, 3, 9, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2357, 'meet w Melissa and Lydia', '', '', 0, '', '', '', 3, 8, 2011, 3, 8, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2358, 'Meet w Nada and Brynn', '', '', 0, '', '', '', 3, 22, 2011, 3, 22, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '1 penn plaza - 33rd and 8th av');
INSERT INTO `events` VALUES (2359, 'EMPIRE FILE CHECK COMPLETE', '', '', 0, '', '', '', 3, 9, 2011, 3, 9, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2360, 'FEB LIST OF PROVIDERS to plans and DB update', '', '', 0, '', '', '', 3, 10, 2011, 3, 10, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2361, 'Meet w Dar at Lawyer', '', '', 0, '', '', '', 3, 9, 2011, 3, 9, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2362, 'Candice out of the office', '', '', 0, '', '', '', 5, 13, 2011, 5, 17, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2363, 'Call w Hilda', '', '', 0, '', '', '', 3, 10, 2011, 3, 10, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2364, 'Call w Empire', '', '', 0, '', '', '', 3, 11, 2011, 3, 11, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2365, 'Call w Oxford', '', '', 0, '', '', '', 3, 21, 2011, 3, 21, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2366, 'Call w Queens MSO', '', '', 0, '', '', '', 3, 15, 2011, 3, 15, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2367, 'Amanda''s Bachelorette Party', '', '', 0, '', '', '', 4, 16, 2011, 4, 16, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2368, 'Meet w Margaret', '', '', 0, '', '', '', 3, 14, 2011, 3, 14, 2011, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2369, 'Call w Emily and Carl Lund - HCP', '', '', 0, '', '', '', 3, 16, 2011, 3, 16, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2370, 'Meet w Manny', '', '', 0, '', '', '', 3, 15, 2011, 3, 15, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2371, 'Ruth and Marilyn over', '', '', 0, '', '', '', 3, 29, 2011, 3, 29, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2372, 'Uncle G playing w his band', '', '', 0, '', '', '', 3, 29, 2011, 3, 29, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2373, 'Out w Sal', '', '', 0, '', '', '', 3, 23, 2011, 3, 23, 2011, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2374, 'EASTER', '', '', 0, '', '', '', 4, 24, 2011, 4, 24, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2375, 'Amanda''s wedding', '', '', 0, '', '', '', 4, 20, 2011, 4, 22, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2376, 'Call w hip', '', '', 0, '', '', '', 3, 14, 2011, 3, 14, 2011, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2377, 'The Center for Bioethics 9th Anniversary Lecture', 'Controversy, Stigma, and Inflexibility:\r\n\r\nEthical Conundrums of the Autism/Asperger’s World', '', 0, '', '', '', 4, 12, 2011, 4, 12, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2378, 'Mt w Emily - 1-1', '', '', 0, '', '', '', 4, 7, 2011, 4, 7, 2011, 4, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2379, 'MUST SEND TRANSIT AND HEALTH BILLING!!!', '', '', 0, '', '', '', 3, 21, 2011, 3, 25, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2380, 'Call Joyce', '', '', 0, '', '', '', 3, 16, 2011, 3, 16, 2011, 2, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2381, 'meet w Emily re wellcare and cigna cred', '', '', 0, '', '', '', 3, 16, 2011, 3, 16, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2382, 'girls over for dinner', '', '', 0, '', '', '', 3, 22, 2011, 3, 22, 2011, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2383, 'Call w Wellcare', '', '', 0, '', '', '', 3, 21, 2011, 3, 21, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2384, 'Breakfast w Dr. Corwin', '', '', 0, '', '', '', 4, 6, 2011, 4, 6, 2011, 7, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Whitney 117');
INSERT INTO `events` VALUES (2385, 'Call w Joyce', '', '', 0, '', '', '', 3, 24, 2011, 3, 24, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2386, 'Meet w Empire', '', '', 0, '', '', '', 3, 23, 2011, 3, 23, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2387, 'Meet w Cigna', '', '', 0, '', '', '', 3, 23, 2011, 3, 23, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2388, 'NHP website training - Lydia''s email', '', '', 0, '', '', '', 4, 14, 2011, 4, 14, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2389, 'Appt w SH', '', '', 0, '', '', '', 3, 30, 2011, 3, 30, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2390, 'Nyack call', '', '', 0, '', '', '', 3, 25, 2011, 3, 25, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2391, 'See Nic in DC', '', '', 0, '', '', '', 5, 7, 2011, 5, 7, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2392, 'Dr. Manning', '', '', 0, '', '', '', 3, 15, 2011, 3, 15, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2393, 'Dr. Manning', '', '', 0, '', '', '', 4, 5, 2011, 4, 5, 2011, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2394, 'meet w Empire', '', '', 0, '', '', '', 3, 29, 2011, 3, 29, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2395, 'Candice will be out', '', '', 0, '', '', '', 4, 1, 2011, 4, 1, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2396, 'Call w Denise E', '', '', 0, '', '', '', 4, 1, 2011, 4, 1, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2397, 'Call w Wellcare and Queens', '', '', 0, '', '', '', 4, 1, 2011, 4, 1, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2398, 'Call w MMP', '', '', 0, '', '', '', 3, 31, 2011, 3, 31, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2399, 'Candice out', '', '', 0, '', '', '', 9, 8, 2011, 9, 16, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2400, 'Meet w Marilyn and Ruth', '', '', 0, '', '', '', 4, 16, 2011, 4, 16, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2401, 'Call w Healthplus re: adjustments', 'Settlements - etc  - queens eob', '', 0, '', '', '', 4, 14, 2011, 4, 14, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2402, 'Mt Nancy and Joyce', '', '', 0, '', '', '', 4, 4, 2011, 4, 4, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2403, 'Movies w PHil works', '', '', 0, '', '', '', 4, 13, 2011, 4, 13, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2404, 'Sick 1/2 day. Came in at 1230', '', '', 0, '', '', '', 4, 5, 2011, 4, 5, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2405, 'Ox call', '', '', 0, '', '', '', 4, 7, 2011, 4, 7, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2406, 'NYP file review w Hilda and Erick', '', '', 0, '', '', '', 4, 11, 2011, 4, 11, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2407, 'call w Hilda and Tonya', '', '', 0, '', '', '', 4, 7, 2011, 4, 7, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2408, 'Meet w Melissa and Lydia', '', '', 0, '', '', '', 4, 12, 2011, 4, 12, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2409, 'Financial learning map training', '', '', 0, '', '', '', 4, 13, 2011, 4, 13, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2410, 'Dr. Patel - gyn appt', '', '', 0, '', '212-844-8521', '', 4, 15, 2011, 4, 15, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '10 Union Square ste 2B');
INSERT INTO `events` VALUES (2411, 'Lunch w Penny and Sarah', '', '', 0, '', '', '', 4, 14, 2011, 4, 14, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2412, 'Meeting w Empire', '', '', 0, '', '', '', 4, 19, 2011, 4, 19, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2413, 'Meet w Candice', '', '', 0, '', '', '', 4, 13, 2011, 4, 13, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2414, 'Call w MMP', '', '', 0, '', '', '', 9, 22, 2011, 12, 30, 2011, 11, 0, 'AM', 0, 0, 'AM', 'w', 0, 3, 'Thu', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2415, 'Appt w Dr. Gamboa', '', '', 0, 'Evelyn', '', '', 4, 19, 2011, 4, 19, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Neuro ins. 710 west 168th. rm');
INSERT INTO `events` VALUES (2417, 'Meet w Emily1 :1', '', '', 0, '', '', '', 4, 18, 2011, 4, 18, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2418, 'Lunch w Jill', '', '', 0, '', '', '', 4, 28, 2011, 4, 28, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2419, 'Meeting w Elderplan', '', '', 0, '', '', '', 4, 25, 2011, 4, 25, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2420, 'Mt w Amy H', '', '', 0, '', '', '', 4, 25, 2011, 4, 25, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2421, 'Richard Parnell', '', '', 0, '', '', '', 4, 26, 2011, 4, 26, 2011, 11, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2422, 'Meet w Richard Parnell', '', '', 0, '', '', '', 4, 26, 2011, 6, 26, 2011, 9, 30, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2423, 'meet w Emily', '', '', 0, '', '', '', 4, 28, 2011, 4, 28, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2424, 'Meet w Arlene - Diversified rep', '', '', 0, '', '212-746-5220', '', 5, 5, 2011, 5, 5, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2425, 'Appt w Dr. Allen', '', '', 0, '', '', '', 5, 3, 2011, 5, 3, 2011, 8, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2426, 'Call w Brynn', '', '', 0, '', '', '', 4, 29, 2011, 4, 29, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2427, 'Call w Elderplan', '866-210-1669, Participant Code 9031618.', '', 0, '', 'test', '', 5, 3, 2011, 12, 12, 2011, 10, 0, 'AM', 0, 0, 'AM', 'm', 2, 1, 'Tue', 1, 1, 'P', '');
INSERT INTO `events` VALUES (2428, 'Mom''s Anniversary', '', '', 0, '', '', '', 5, 12, 2011, 5, 12, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2429, 'Call Dr. Manning and Susan', '', '', 0, '', '', '', 5, 4, 2011, 5, 4, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2430, 'Meet w HIP', '    Dial In Number: 646-447-2700 / x32700\r\n    Conference ID: 37388', '', 0, '', '', '', 5, 5, 2011, 5, 5, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2431, 'Dr. Manning', '', '', 0, '', '', '', 5, 6, 2011, 5, 6, 2011, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2432, 'Call w Joyce', '', '', 0, '', '', '', 5, 6, 2011, 5, 6, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2433, 'Meeting w HIP', '', '', 0, '', '', '', 5, 25, 2011, 5, 25, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2434, 'Call Doug Mercer', '', '', 0, '', '', '', 5, 9, 2011, 5, 9, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2435, 'Call w Hilda and Erick', '', '', 0, '', '', '', 5, 11, 2011, 4, 11, 2012, 12, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Wed', 0, 1, 'P', '646-447-2700 -- 36502');
INSERT INTO `events` VALUES (2436, 'ELC Breakfast', '', '', 0, '', '', '', 5, 25, 2011, 5, 25, 2011, 7, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Heart Center #4');
INSERT INTO `events` VALUES (2437, 'Oxford Call', '', '', 0, '', '', '', 5, 13, 2011, 5, 13, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2438, 'Meet w Emily', '', '', 0, '', '', '', 5, 13, 2011, 5, 13, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2439, 'Call Jennifer Donnely', '', '', 0, '', '', '', 5, 13, 2011, 5, 13, 2011, 10, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2440, 'Call w Queens', '', '', 0, '', '', '', 5, 20, 2011, 5, 20, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2441, 'Meet w Emily', '', '', 0, '', '', '', 5, 16, 2011, 5, 16, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2442, 'Meet w jenn Don', '', '', 0, '', '', '', 5, 16, 2011, 5, 16, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2443, 'Staci''s birthday party!', '', '', 0, '', '', '', 6, 4, 2011, 6, 4, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2444, 'Meet w Helen S from TBHC MSO', '', '', 0, '', '', '', 5, 18, 2011, 5, 18, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2445, 'Call w Queens', '', '', 0, '', '', '', 5, 18, 2011, 5, 18, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2446, 'Penny''s bach party', '', '', 0, '', '', '', 6, 11, 2011, 6, 11, 2011, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2447, 'Hilda', '', '', 0, '', '', '', 5, 19, 2011, 5, 19, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2448, 'Helen', '', '', 0, '', '', '', 5, 19, 2011, 5, 19, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2449, 'Honduras game', '', '', 0, '', '', '', 6, 13, 2011, 6, 13, 2011, 6, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2450, 'Training for Dentaquest', '„X	The links and information needed to join the webinar will be posted on the PWP in your message center. The call-in number will be: 888-977-4700 code 65204', '', 0, '', '1111111', '', 6, 6, 2011, 6, 6, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', ' 888-977-4700 code 65204');
INSERT INTO `events` VALUES (2451, 'Presentations that work training class', '', '', 0, '', '', '', 6, 7, 2011, 6, 7, 2011, 8, 0, 'AM', 5, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2452, 'Dr. Gamboa returns', '', '', 0, '', '', '', 5, 24, 2011, 5, 24, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2453, 'Leadership rounding training session', 'Title:     Leadership Rounding for Outcomes Webinar  \r\nTraining Contact:  Jacqueline McCarthy - jam9144@nyp.org\r\nTraining Location: https://www1.gotomeeting.com/join/837890184\r\nMeeting ID: 837-890-184\r\nConference Call Number: 212-305-5985\r\nSession Schedul', 'https://www1.gotomeeting.com/join/837890184\r\nMeeting ID: 837-890-184\r\nConference Call Number: 212-305-5985\r\n', 0, '', '', '', 5, 24, 2011, 5, 24, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2454, 'Meet w MMP', 'Monica and Corey', '', 0, '', '', '', 5, 27, 2011, 5, 27, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'office');
INSERT INTO `events` VALUES (2455, 'Montauk week!', '', '', 0, '', '', '', 6, 25, 2011, 7, 2, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2456, 'MD appt w Dr. Pomerantz', '', '', 0, 'Daniel', '212-263-5889', '', 8, 1, 2011, 7, 11, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '530 1 st ave Elevator F ste 7R');
INSERT INTO `events` VALUES (2457, 'mt w Emily', '', '', 0, '', '', '', 5, 26, 2011, 5, 26, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2458, 'Call with Denise// Call with united', '', '', 0, '', '', '', 5, 27, 2011, 5, 27, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2460, 'call w Queens', '', '', 0, '', '', '', 5, 27, 2011, 5, 27, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '746-7269');
INSERT INTO `events` VALUES (2461, 'John Clark at staff meeting', '', '', 0, '', '', '', 6, 13, 2011, 6, 13, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2462, 'Emilia', '', '', 0, '', '', '', 6, 4, 2011, 6, 4, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2463, 'call w Dora', '', '', 0, '', '', '', 6, 3, 2011, 6, 3, 2011, 1, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2464, 'Penny''s work shower', '', '', 0, '', '', '', 6, 10, 2011, 6, 10, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2465, 'Call w Joyce', '', '', 0, '', '', '', 6, 1, 2011, 6, 1, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2466, 'Call w  MMP', '', '', 0, '', '', '', 6, 8, 2011, 6, 8, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '866-886-5751 passcode: 1393258');
INSERT INTO `events` VALUES (2467, 'Candice Off', '', '', 0, '', '', '', 6, 9, 2011, 6, 9, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2468, 'Call w Dora and Qns', '', '', 0, '', '', '', 6, 23, 2011, 12, 23, 2011, 12, 0, 'PM', 0, 0, 'AM', 'm', 2, 4, 'Thu', 1, 1, 'P', '');
INSERT INTO `events` VALUES (2469, 'Call w Qns', '', '', 0, '', '', '', 6, 15, 2011, 6, 15, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2470, 'Brian Kurz presenting', '', '', 0, '', '', '', 8, 8, 2011, 8, 8, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2471, 'Candice re: HIp email', '', '', 0, '', '', '', 6, 10, 2011, 6, 10, 2011, 10, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2472, 'United call', '', '', 0, '', '', '', 6, 10, 2011, 6, 10, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2474, 'Meet w Emily', '', '', 0, '', '', '', 6, 10, 2011, 6, 10, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2475, 'no call w Denise', '', '', 0, '', '', '', 7, 22, 2011, 7, 22, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2476, 'Call w Cigna', '', '', 0, '', '', '', 6, 11, 2011, 6, 11, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2477, 'Beacon call w Melissa', '', '', 0, '', '', '', 7, 11, 2011, 7, 11, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '781-994-7107, 696107');
INSERT INTO `events` VALUES (2481, 'Call Lester (elder)', '', '', 0, '', '', '', 6, 20, 2011, 6, 20, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2482, 'Dr. Mary Lee Wong', 'Immunology doc', '', 0, '', '', '', 6, 21, 2011, 6, 21, 2011, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2485, 'Speak w Mala', '', '', 0, '', '', '', 6, 21, 2011, 6, 21, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2486, 'Managed Care clinic call', '', '', 0, '', '', '', 6, 21, 2011, 6, 21, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2487, 'staff meeting', '', '', 0, '', '', '', 6, 20, 2011, 6, 20, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2488, 'Multiplan meeting', '', '', 0, '', '', '', 6, 20, 2011, 6, 20, 2011, 10, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2489, 'mt w Candice', '', '', 0, '', '', '', 6, 17, 2011, 6, 17, 2011, 2, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2490, 'Call w Queens', '', '', 0, '', '', '', 6, 23, 2011, 6, 23, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2491, 'Anniversary night w Dar!', '', '', 0, '', '', '', 6, 30, 2011, 6, 30, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2492, 'Movies w Philo guys', '', '', 0, '', '', '', 6, 21, 2011, 6, 21, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2493, 'Dinner w cate , then out to rodeo bar', 'elaine, staci. Then Rob and Cate''s sis met us', '', 0, '', '', '', 6, 16, 2011, 6, 16, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2494, 'Class and dinner w Erica', '', '', 0, '', '', '', 6, 15, 2011, 6, 15, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2495, 'Gyn appt', '', '', 0, '', '', '', 6, 27, 2011, 6, 27, 2011, 6, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2496, 'Meeting w Dov', '', '', 0, '', '', '', 6, 21, 2011, 6, 21, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2497, 'Meet w Lester (elder)', '', '', 0, '', '', '', 6, 27, 2011, 6, 27, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2498, 'meeting w dora , brynn', '', '', 0, '', '', '', 6, 28, 2011, 6, 28, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2499, 'night - workout, then dad''s album online', '', '', 0, '', '', '', 6, 20, 2011, 6, 20, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2500, 'Out w Joanna', '', '', 0, '', '', '', 7, 6, 2011, 7, 6, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2501, 'Meet w Lydia re website', '', '', 0, '', '', '', 6, 29, 2011, 6, 29, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2502, 'Meet w Emily', '', '', 0, '', '', '', 6, 24, 2011, 6, 24, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2503, 'Meet w Candice re rounding', '', '', 0, '', '', '', 6, 24, 2011, 6, 24, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2504, 'Meet w Emily - database!', '', '', 0, '', '', '', 6, 29, 2011, 6, 29, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2505, 'Call w Multiplan', '', '', 0, '', '', '', 6, 20, 2011, 6, 20, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2506, 'Cigna meeting', '', 'When: Monday, June 27, 2011 9:30 AM-10:00 AM (GMT-05:00) Eastern Time (US & Canada).\r\nWhere: 866.731.3506, pass code: 493196; host code: 4931967', 0, '', '', '', 6, 27, 2011, 6, 27, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2507, 'Meet w Cindy from Multiplan', '', '', 0, '', '', '', 7, 6, 2011, 7, 6, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2508, 'Date W Ruth and Mar', '', '', 0, '', '', '', 6, 30, 2011, 6, 30, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2520, 'Meet w Mike from select health', '', '', 0, '', '', '', 8, 2, 2011, 8, 2, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2510, 'Philo class and dinner w Erica before', '', '', 0, '', '', '', 6, 22, 2011, 6, 22, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2512, 'Call w HIlda', '', '', 0, '', '', '', 6, 30, 2011, 6, 30, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2513, 'Micheal from VSNY', '', '', 0, '', '', '', 6, 30, 2011, 6, 30, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2514, 'Speak w VNS', '', '', 0, '', '', '', 7, 7, 2011, 7, 7, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2515, 'Meet w Denise', '', '', 0, '', '', '', 8, 5, 2011, 8, 5, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2516, 'Call w Queens', '', '', 0, '', '', '', 7, 6, 2011, 7, 6, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2517, 'GIT w Lester Govia', '', '', 0, '', '', '', 7, 26, 2011, 7, 29, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2518, 'MD appt w NYU doc - find out details!', '', '', 0, '', '', '', 8, 1, 2011, 8, 1, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2519, 'Appt w Dr. Patel', '', '', 0, '', '212-844-8590', '', 7, 26, 2011, 7, 26, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Beth Israel');
INSERT INTO `events` VALUES (2521, 'Meet w Emily for midyear review', '', '', 0, '', '', '', 8, 1, 2011, 8, 1, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2522, 'Employee appreciation day', '', '', 0, '', '', '', 8, 10, 2011, 8, 10, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2523, 'VACATION', '', '', 0, '', '', '', 7, 11, 2011, 7, 23, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2524, 'Lisa Magtibay speaking', '', '', 0, '', '', '', 8, 11, 2011, 8, 11, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2525, 'Binta''s call w HIP', '', '', 0, '', '', '', 8, 9, 2011, 8, 9, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2526, 'Meet w Denise E', '', '', 0, '', '', '', 8, 5, 2011, 8, 5, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2527, 'Call w Affinity', '', '', 0, '', '', '', 8, 2, 2011, 8, 2, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2528, 'Candice out', '', '', 0, '', '', '', 8, 3, 2011, 8, 9, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2529, 'FOLLOW UP w John Featherston - Wellcare', 'per emily''s email on july 26th', '', 0, '', '', '', 8, 3, 2011, 8, 3, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2530, 'PPD  - go to 11th floor', '', '', 0, '', '', '', 8, 2, 2011, 8, 2, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2531, 'Network Meeting', '', '', 0, '', '', '', 8, 11, 2011, 8, 11, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2532, 'Meeting w Emily', '', '', 0, '', '', '', 8, 8, 2011, 8, 8, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2533, 'Meet w David for dinner', '', '', 0, '', '', '', 8, 31, 2011, 8, 31, 2011, 5, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2534, 'Call with Queens', 'Send call in', '', 0, '', '', '', 8, 29, 2011, 8, 29, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2535, 'Meeting w Amy H', '', '', 0, '', '', '', 8, 22, 2011, 8, 22, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2536, 'Dora  will call', '', '', 0, '', '', '', 8, 9, 2011, 8, 9, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2537, 'Meeting w Emily', '', '', 0, '', '', '', 8, 11, 2011, 8, 11, 2011, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2538, 'Healthfirst call', '', '', 0, '', '', '', 8, 11, 2011, 8, 11, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2539, 'Emevs w Lydia', '', '', 0, '', '', '', 8, 12, 2011, 8, 12, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2540, 'Cocktails at Botanic Gardens', 'members'' night', '', 0, '', '', '', 9, 7, 2011, 9, 7, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2541, 'Cigna meeting', 'When: Tuesday, August 23, 2011 9:30 AM-10:00 AM (GMT-05:00) Eastern Time (US & Canada).\r\nWhere: 1-866-731-3506, code 824100 leader code 8241005', '', 0, '', '', '', 8, 23, 2011, 8, 23, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2542, 'GYMNASTICS', '', '', 0, '', '', '', 8, 29, 2011, 8, 29, 2011, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2543, 'Call w HIP', 'Call in will be provided', '', 0, '', '', '', 8, 24, 2011, 8, 24, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2544, 'Meet with Adam', '', '', 0, '', '', '', 8, 25, 2011, 8, 25, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2545, 'Call with Andrew', 'Same call in', '', 0, '', '', '', 8, 24, 2011, 8, 24, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2546, 'Healthplus call', '', '', 0, '', '', '', 8, 24, 2011, 8, 24, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2547, 'mt w Emily', '', '', 0, '', '', '', 8, 25, 2011, 8, 25, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2548, 'Meet w Adam', '', '', 0, '', '', '', 8, 26, 2011, 8, 26, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2549, 'Meet w Dolores from Cigna', '', '', 0, '', '', '', 8, 26, 2011, 8, 26, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2550, 'Interview Petrina', '', '', 0, '', '', '', 8, 30, 2011, 8, 30, 2011, 8, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2551, 'meeting w Empire', '', '', 0, '', '', '', 8, 30, 2011, 8, 30, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2552, 'Meet in conference room', '', '', 0, '', '', '', 8, 26, 2011, 8, 26, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2553, 'Speak with Dolores from Cigna', '', '', 0, '', '', '', 9, 9, 2011, 12, 31, 2011, 12, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Fri', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2554, 'Mt w Karen Milano re caledonian!', 'bridge line', '', 0, '', '', '', 8, 30, 2011, 8, 30, 2011, 12, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2555, 'Meet w Lauren', '', '', 0, '', '', '', 8, 31, 2011, 8, 31, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2556, 'Meet w Queens re new PC', '', '', 0, '', '', '', 9, 2, 2011, 9, 2, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2557, 'Meet w Denise', '', '', 0, '', '', '', 9, 2, 2011, 9, 2, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2558, 'Petrina coming in', '', '', 0, '', '', '', 8, 31, 2011, 8, 31, 2011, 8, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2559, 'Call w Josephine and BIlling cos', '', '', 0, '', '', '', 9, 1, 2011, 9, 1, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2560, 'Meet w Courtney', '', '', 0, '', '', '', 9, 1, 2011, 9, 1, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2561, 'Meet with Emily', '', '', 0, '', '', '', 9, 2, 2011, 9, 2, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2562, 'Shawn''s empire call', '', '', 0, '', '', '', 9, 13, 2011, 9, 13, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2563, 'meet w Eayne Osten', '', '', 0, '', '', '', 9, 29, 2011, 9, 29, 2011, 7, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2564, 'david liss', '', '', 0, '', '', '', 9, 2, 2011, 9, 2, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2565, 'Meeting w Elderplan', '', '', 0, '', '', '', 9, 2, 2011, 9, 2, 2011, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2566, 'Meet w Queens PC group', '', '', 0, '', '', '', 9, 12, 2011, 9, 12, 2011, 9, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2567, 'Meeting with hospital based MDs - Dr. Joseph', '', '', 0, '', '', '', 9, 6, 2011, 9, 6, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2568, 'Meet w Richard from Wellcare', '', '', 0, '', '', '', 9, 9, 2011, 12, 9, 2011, 11, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Fri', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2569, 'meet w Emily and Candice', '', '', 0, '', '', '', 9, 6, 2011, 9, 6, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2570, 'Empire call', '', '', 0, '', '', '', 9, 7, 2011, 9, 7, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2571, 'Dr. Manning', '', '', 0, '', '', '', 9, 8, 2011, 9, 8, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2572, 'schwartz center rounds', '', '', 0, '', '', '', 9, 14, 2011, 9, 14, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2573, 'Speak to Select health', '', '', 0, '', '', '', 9, 14, 2011, 9, 14, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '212-404-2309');
INSERT INTO `events` VALUES (2574, 'Meet w Emily', '', '', 0, '', '', '', 9, 12, 2011, 9, 12, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2575, 'Meet w Jackie Mayer and group', ' Conference Dial-in Number: (605) 477-2100\r\n Participant Access Code: 285344#\r\n', '', 0, '', '', '', 9, 12, 2011, 9, 12, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2576, 'GreenDrinksNYC', 'Tuesday September 13 , 2011\r\nat The EMPIRE ROOM\r\n350 Fifth Ave at 33rd St NYC\r\n6pm - 10pm\r\n$10 in advance HERE or $20 at the door\r\nJoin Green Drinks NYC at the new Empire Room, a 1920''s-inspired vintage cocktail lounge for a fun and inspiring night of con', '', 0, '', '', '', 9, 13, 2011, 9, 13, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2577, 'Amy horowitz', '', '', 0, '', '', '', 9, 12, 2011, 9, 12, 2011, 2, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2578, 'Call w Courtney', '', '', 0, '', '', '', 9, 13, 2011, 9, 13, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2579, 'Call w Queens', '', '', 0, '', '', '', 9, 19, 2011, 9, 19, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2580, 'Meet w Andrew and Courtney', '', '', 0, '', '', '', 9, 14, 2011, 9, 14, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2581, 'Dolores from Cigna??', '', '', 0, '', '', '', 9, 14, 2011, 9, 14, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2582, 'Yondi from healthplus', '', '', 0, '', '', '', 9, 14, 2011, 9, 14, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2583, 'Mt w Emily', '', '', 0, '', '', '', 9, 15, 2011, 9, 15, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2584, 'Call w Queens', '', '', 0, '', '', '', 10, 14, 2011, 10, 14, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2585, 'Meet w Elderplan re credentialing', '', '', 0, '', '', '', 9, 22, 2011, 9, 22, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2586, 'ANNUAL Hospital training', '', '', 0, '', '', '', 9, 29, 2011, 10, 7, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2587, 'Meet w Adam', '', '', 0, '', '', '', 9, 20, 2011, 9, 20, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2588, 'mt w joyce', '', '', 0, '', '', '', 9, 21, 2011, 9, 21, 2011, 2, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2589, 'happy Hour', 'Place: Butterfields 8, 5 East 38th Street (5th Ave & Madison Ave), New York, NY 10016\r\nhttp://butterfield8nyc.com/', '', 0, '', '', '', 9, 23, 2011, 9, 23, 2011, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2590, 'Meet with Lester!!', '', '', 0, '', '', '', 9, 27, 2011, 9, 27, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'HT601');
INSERT INTO `events` VALUES (2591, 'Speak to Luke Peterson', '', '', 0, '', '', '', 9, 23, 2011, 9, 23, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '202-459-2161');
INSERT INTO `events` VALUES (2592, 'EMPLOYEE SURVEY', '', '', 0, '', '', '', 9, 23, 2011, 9, 23, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2593, 'Birthday celebration - Mathew!', '', '', 0, '', '', '', 10, 8, 2011, 10, 8, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2594, 'Call w Joyce', '', '', 0, '', '', '', 9, 23, 2011, 9, 23, 2011, 10, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2595, 'Meet w amarilis', '', '', 0, '', '', '', 9, 26, 2011, 9, 26, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2596, 'Meet w Joyce', '', '', 0, '', '', '', 9, 27, 2011, 9, 27, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2597, 'Call John Rocco', '', '', 0, '', '', '', 9, 27, 2011, 9, 27, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2598, 'Meet w Emily', '', '', 0, '', '', '', 9, 28, 2011, 9, 28, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2599, 'Pick up Bike helmet mirror from GP', '', '', 0, '', '', '', 10, 3, 2011, 10, 3, 2011, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2600, 'NHP call', '', '', 0, '', '', '', 9, 29, 2011, 9, 29, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2601, 'Call w Lester G', '', '', 0, '', '', '', 10, 4, 2011, 10, 4, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2602, 'Meet w Methodist', '', '', 0, '', '', '', 9, 30, 2011, 9, 30, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2603, 'Meet w Kia Lee', '', '', 0, '', '', '', 10, 3, 2011, 10, 3, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2604, 'Flu vaccine', '', '', 0, '', '', '', 10, 13, 2011, 10, 13, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2605, 'Call Josephine', '', '', 0, '', '', '', 10, 4, 2011, 10, 4, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2606, 'Empire call', '', '', 0, '', '', '', 10, 11, 2011, 10, 11, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2607, 'Meet w Dora', 'Lauren will review file.', '', 0, '', '', '', 10, 5, 2011, 10, 5, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2608, 'Call w Amy H', '', '', 0, '', '', '', 10, 5, 2011, 10, 5, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2609, 'Call or text Stephen levin', '', '', 0, '', '', '', 10, 5, 2011, 10, 5, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2610, 'call w Nancy and joyce', 'FUP on J code file for Healthplus', '', 0, '', '', '', 10, 13, 2011, 10, 13, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2611, 'Meet w Brian K', '', '', 0, '', '', '', 10, 11, 2011, 10, 11, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2612, 'Gym park', '', '', 0, '', '', '', 10, 13, 2011, 10, 13, 2011, 6, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2613, 'Meet Helen K for lunch in lobby', '', '', 0, '', '', '', 10, 17, 2011, 10, 17, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2614, 'Cy Wakeman@ Cornell', '', '', 0, '', '', '', 10, 12, 2011, 10, 12, 2011, 1, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2615, 'Excel training', 'w hospital groups', '', 0, '', '', '', 10, 11, 2011, 10, 11, 2011, 10, 15, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2616, 'Meet w Rachel from EDF', '', '', 0, '', '', '', 10, 14, 2011, 10, 14, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2617, 'Follow up with Andrew', '', '', 0, '', '', '', 10, 13, 2011, 10, 13, 2011, 2, 0, 'PM', 3, 30, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2618, 'Call w Liya', '646-317-4852', '', 0, '', '', '', 10, 13, 2011, 10, 13, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '646-317-4852');
INSERT INTO `events` VALUES (2619, 'Call Luke''s friend Rachel!', '', '', 0, '', '', '', 10, 13, 2011, 10, 13, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '202-973-3054');
INSERT INTO `events` VALUES (2620, 'Call D Liss AND Stephen Levin', '', '', 0, '', '', '', 10, 13, 2011, 10, 13, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2621, 'Call Waziri', 'Shawn''s friend - works in Carbon markets -LU on linked in!', '', 0, '', '', '', 10, 14, 2011, 10, 14, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '646 404 0043');
INSERT INTO `events` VALUES (2622, 'Call with Mica', 'Shawn''s friend from EDF!!', '', 0, '', '', '', 10, 18, 2011, 10, 18, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '(512) 619-8453');
INSERT INTO `events` VALUES (2623, 'Career panel', '', '', 0, '', '', '', 11, 30, 2011, 11, 30, 2011, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Cayuga room');
INSERT INTO `events` VALUES (2624, 'Meet w Emily', '', '', 0, '', '', '', 10, 14, 2011, 10, 14, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2625, 'FUP w Ted from Efficiency 2.0', 'said he would have a list of people to contact next week.', '', 0, '', '', '', 10, 20, 2011, 10, 20, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2626, 'Clinic call', '', '', 0, '', '', '', 10, 18, 2011, 10, 18, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '746-7269');
INSERT INTO `events` VALUES (2627, 'Amerigroup call', '', '', 0, '', '', '', 10, 20, 2011, 10, 20, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2628, 'Meet w Emily', '', '', 0, '', '', '', 10, 17, 2011, 10, 17, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2629, 'Talk to Waziri', '', '', 0, '', '', '', 10, 14, 2011, 10, 14, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '646 404 0043');
INSERT INTO `events` VALUES (2630, 'Cqall w Empire', '', '', 0, '', '', '', 10, 18, 2011, 10, 18, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2631, 'GNYHA MEET', '', '', 0, 'Theresa', '212-506-5425', '', 10, 25, 2011, 10, 25, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '555 West 57 th Street, 15 th F');
INSERT INTO `events` VALUES (2632, 'Americhoice call', '', '', 0, '', '', '', 10, 28, 2011, 10, 28, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2633, 'Meet Allison Newell at HSS', '', '', 0, '', '', '', 10, 19, 2011, 10, 19, 2011, 7, 50, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2634, 'Meet w David Liss (In person)', '', '', 0, '', '', '', 10, 21, 2011, 10, 21, 2011, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2635, 'Call w Brynn', '', '', 0, '', '', '', 10, 25, 2011, 10, 25, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '888-844-9901 pin 3866228');
INSERT INTO `events` VALUES (2636, 'Call Waziri', '', '', 0, '', '', '', 10, 19, 2011, 10, 19, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2637, 'Call w Alexa from HF', 'Dial-in: 866-510-4568\r\nCode: 212-801-1602', '', 0, '', '', '', 10, 21, 2011, 10, 21, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2638, 'Call w Amerigroup', 'Underpaid ED claims\r\nDial-in: 866-510-4568\r\nCode: 212-801-1602', '', 0, '', '', '', 10, 25, 2011, 10, 25, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2639, 'Call w Healthfirst', 're POS 11 v 22 file\r\n\r\nDial-in: 866-510-4568\r\nCode: 212-801-1602', '', 0, '', '', '', 11, 2, 2011, 11, 2, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2640, 'Meet w Emily', '', '', 0, '', '', '', 10, 27, 2011, 10, 27, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2641, 'Meet w Emily - this was changed  - Emg had conflic', '', '', 0, '', '', '', 11, 1, 2011, 12, 30, 2011, 4, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2642, 'Meet w Petrina', '', '', 0, '', '', '', 10, 24, 2011, 12, 31, 2011, 9, 45, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', 'my office');
INSERT INTO `events` VALUES (2643, 'Meet w Beth from Amerigroup', 'When: Tuesday, November 01, 2011 10:30 AM-11:00 AM (GMT-05:00) Eastern Time (US & Canada).\r\nWhere: ~ NY1 Bridge Line 2 x66469 or 212-372-6469 (Tone, then 818895)', 'Re: underpaid ED, email from Candice - Beth will resend, and zia ahmed file', 0, '', '', '', 11, 1, 2011, 11, 1, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2644, 'Call w Dora and Queens', '605) 477-2100 Code 285344#', '', 0, '', '', '', 12, 1, 2011, 12, 1, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2645, 'Dora and Magda', 're Americhoice', '', 0, '', '', '', 10, 26, 2011, 10, 26, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2646, 'Call w Oxford United', '', '', 0, '', '', '', 10, 28, 2011, 10, 28, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2647, 'Meet w Petrina re goals', '', '', 0, '', '', '', 11, 2, 2011, 11, 2, 2011, 4, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2648, 'INTERVIEW W DAR', '', '', 0, '', '', '', 11, 17, 2011, 11, 17, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2649, 'Mt w Emily re Empire payments', 'For OB', '', 0, '', '', '', 10, 31, 2011, 10, 31, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2650, 'mt w Kim Pool', '', '', 0, '', '', '', 11, 1, 2011, 11, 1, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', ' Call 1-917-229-1936');
INSERT INTO `events` VALUES (2651, 'united', '', '', 0, '', '', '', 11, 3, 2011, 11, 3, 2011, 1, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2652, 'GNYHA MEET W Jay Fligstein', '', '', 0, '', '', '', 11, 7, 2011, 11, 7, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2653, 'Call w Lisa for ELC', '', '', 0, '', '', '', 11, 4, 2011, 11, 4, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2654, 'Meet w Brian Kurz', '', '', 0, '', '', '', 11, 4, 2011, 11, 4, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2655, 'Speak w Lester from Elderplan', '', '', 0, '', '', '', 11, 8, 2011, 11, 8, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2656, 'Meeting w Empire', '', '', 0, '', '', '', 11, 8, 2011, 11, 8, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2657, 'Talk w Lisa for Elc', '', '', 0, '', '', '', 11, 8, 2011, 11, 8, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2658, 'Call w ELC', '605-475-4800 (Host Access Code: 497955* ; Participant Access Code: 497955#)', '', 0, '', '', '', 11, 8, 2011, 11, 8, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2659, 'Celebration to thank Dr. Pardes', '', '', 0, '', '', '', 11, 18, 2011, 11, 18, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2660, 'meet w Stefanie Feldman from WM', 'Contact of Ken Haber', '', 0, '', '', '', 11, 11, 2011, 11, 11, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2661, 'Lunch w Penny and Sarah', '', '', 0, '', '', '', 11, 10, 2011, 11, 10, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2662, 'Meet w Emily', '', '', 0, '', '', '', 11, 9, 2011, 11, 9, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2663, 'Meet w Joyce re new PC', '', '', 0, '', '', '', 11, 10, 2011, 11, 10, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2664, 'Wellcare', '', '', 0, '', '', '', 11, 8, 2011, 11, 8, 2011, 11, 3, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2665, 'Meet re ED project', '', 'When: Tuesday, November 08, 2011 10:30 AM-11:00 AM (GMT-05:00) Eastern Time (US & Canada).\r\nWhere: ~ NY1 Bridge Line 1 x66470 or 212-372-6470 (Tone, then 0746)', 0, '', '', '', 11, 8, 2011, 11, 8, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2666, 'Meet w Petrina', ' - Binders\r\n - Goals\r\n - Empire repricing\r\n', '', 0, '', '', '', 11, 8, 2011, 11, 8, 2011, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2667, 'Petrina leaves at 430', '', '', 0, '', '', '', 11, 11, 2011, 11, 11, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2668, 'Call w Elderplan', '', '', 0, '', '', '', 11, 17, 2011, 11, 17, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2669, 'meet w Amerigroup', '', '', 0, '', '', '', 11, 15, 2011, 11, 15, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2670, 'United call', '', '', 0, '', '', '', 11, 10, 2011, 11, 10, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2671, 'Meet w Andrew', '', '', 0, '', '', '', 11, 10, 2011, 11, 10, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2672, 'Meet w Emily', '', '', 0, '', '', '', 11, 15, 2011, 11, 15, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2673, 'Lunch w Helen', '', '', 0, '', '', '', 11, 16, 2011, 11, 16, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2674, 'tratoria alba', '', '', 0, '', '', '', 12, 20, 2011, 12, 20, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2675, 'Speak with Lester fro Dentaquest', 'Update on EOB for denials (there are none that we see)\r\n - Reprocess fiel', '', 0, '', '', '', 11, 15, 2011, 11, 15, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2676, 'Speak w Amy', '', '', 0, '', '', '', 11, 9, 2011, 11, 9, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2677, 'Call w Alexa @ healthfirst', '', '', 0, '', '', '', 11, 15, 2011, 11, 15, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2678, 'Meet Marian from NRDC', '40 West 20th between 5th and 6th, if you want to come here to the 11th floor', '', 0, '', '', '', 11, 15, 2011, 11, 15, 2011, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2679, 'Call w Amy H', 'rescheduled from the 14th', '', 0, '', '', '', 11, 21, 2011, 11, 21, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2680, 'Meet Petrina - Goals', 'Goals review', '', 0, '', '', '', 11, 16, 2011, 11, 16, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2681, 'Speak w Mary N from Sierra Club', 'Contact of Tom', '', 0, '', '', '', 11, 17, 2011, 11, 17, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '203-915-5999.');
INSERT INTO `events` VALUES (2682, 'David liss - call', '', '', 0, '', '', '', 11, 14, 2011, 11, 14, 2011, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2683, 'Meet w Andrew', '', '', 0, '', '', '', 11, 17, 2011, 11, 17, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2684, 'ELC Meet and Greet', '', '', 0, '', '', '', 12, 8, 2011, 12, 8, 2011, 5, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Murphey''s Law');
INSERT INTO `events` VALUES (2686, 'Call w Healthfirst', '', '', 0, '', '', '', 11, 18, 2011, 11, 18, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2687, 'Call w Wellcare', '', '', 0, '', '', '', 11, 22, 2011, 11, 22, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2688, 'Lunch w Penny and Sarah', '', '', 0, '', '', '', 11, 18, 2011, 11, 18, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2689, 'Meet w Empire', '', '', 0, '', '', '', 11, 21, 2011, 11, 21, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2690, 'Meet w Empire', '', '', 0, '', '', '', 11, 22, 2011, 11, 22, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2691, 'Call w Brynn', '', '', 0, '', '', '', 11, 22, 2011, 11, 22, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2692, 'Call w Brynn', '', '', 0, '', '', '', 11, 29, 2011, 3, 29, 2011, 10, 30, 'AM', 11, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'P', '888-844-9904 pc2166428');
INSERT INTO `events` VALUES (2693, 'Call w Denise', '', '', 0, '', '', '', 12, 2, 2011, 12, 2, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2694, 'Call w Denise', '', '', 0, '', '', '', 12, 2, 2011, 12, 2, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2695, 'Meet w Wellcare', '', '', 0, '', '', '', 11, 29, 2011, 11, 29, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2696, 'Meet w Lauren', '', '', 0, '', '', '', 11, 22, 2011, 11, 22, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2697, 'Call Lauren A', '', '', 0, '', '', '', 11, 28, 2011, 11, 28, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2698, 'NYP back pick up', '', '', 0, '', '', '', 12, 7, 2011, 12, 7, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2699, 'Call with Courtney', '', '', 0, '', '', '', 12, 1, 2011, 12, 1, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2700, 'Policy Club meeting', '', '', 0, '', '', '', 1, 12, 2012, 1, 12, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2701, 'call w Josephine', '', '', 0, '', '', '', 12, 1, 2011, 12, 1, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2702, 'Soccer', '', '', 0, '', '', '', 11, 29, 2011, 11, 29, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2703, 'Lunch w Margaret', '', '', 0, '', '', '', 12, 13, 2011, 12, 13, 2011, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2704, 'Wellcare meeting', '', '', 0, '', '', '', 11, 30, 2011, 11, 30, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2705, 'Call w Dora and Jackie', '', '', 0, '', '', '', 1, 5, 2012, 1, 5, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2706, 'Call w Wellcare', '', '', 0, '', '', '', 12, 6, 2011, 12, 6, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2707, '11th florr xmas party', '', '', 0, '', '', '', 12, 12, 2011, 12, 12, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2708, 'Green drinks', '', '', 0, '', '', '', 12, 13, 2011, 12, 13, 2011, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2709, 'Speak  to Joyce', '', '', 0, '', '', '', 12, 7, 2011, 12, 7, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2710, 'Call w Elderplan', 'To discuss provider load\r\nConference#: 1-866-210-1669\r\nParticipant code: 9564102', '', 0, '', '', '', 12, 13, 2011, 12, 13, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2711, 'Meet w EG - Rescheduled by EMG', '', '', 0, '', '', '', 12, 6, 2011, 12, 6, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2712, 'Meet w Waziri', '', '', 0, '', '', '', 12, 7, 2011, 12, 7, 2011, 1, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Grand Central');
INSERT INTO `events` VALUES (2713, 'Queens Call', '', '', 0, '', '', '', 12, 16, 2011, 12, 16, 2011, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2714, 'Call Richard', '', '', 0, '', '', '', 12, 19, 2011, 12, 19, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2715, 'Latke festival at Bam', '', '', 0, '', '', '', 12, 19, 2011, 12, 19, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2716, 'Meet w Amanda', 'w Dar and Penny', '', 0, '', '', '', 12, 7, 2011, 12, 7, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2717, 'Call with Beth from Amerigroup', '', '', 0, '', '', '', 12, 9, 2011, 12, 9, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2718, 'Meet w Jennifer Donnelly', '', '', 0, '', '', '', 12, 19, 2011, 12, 19, 2011, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2719, 'Meet w Courtney', '', '', 0, '', '', '', 12, 8, 2011, 12, 8, 2011, 2, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2720, 'Schwartz Center Rounds  - Compassionate Care', 'For the Homeless', '', 0, '', '', '', 12, 14, 2011, 12, 14, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2721, 'meet w Denise', '', '', 0, '', '', '', 12, 9, 2011, 12, 9, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2723, 'Callw josephine', '', '', 0, '', '', '', 12, 13, 2011, 12, 13, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2724, 'Dinner w Steph', '', '', 0, '', '', '', 12, 14, 2011, 12, 14, 2011, 7, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2725, 'Town Hall', '', '', 0, '', '', '', 12, 20, 2011, 12, 20, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2726, 'Speak to Yondi', '', '', 0, '', '', '', 12, 13, 2011, 12, 13, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2727, 'Meet w Adeel', '', '', 0, '', '', '', 12, 15, 2011, 12, 15, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2728, 'Call w Melissa and Brynn', '', '', 0, '', '', '', 12, 20, 2011, 12, 20, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', ' # 888-844-9904 pc2166428');
INSERT INTO `events` VALUES (2729, 'Empire meeting', '', '', 0, '', '', '', 12, 14, 2011, 12, 14, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2730, 'Speak to Wellcare', '', '', 0, '', '', '', 12, 14, 2011, 12, 14, 2011, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2731, 'Call w Qns and Aetna', '', '', 0, '', '', '', 12, 15, 2011, 12, 15, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2732, 'Call w Joyce', '', '', 0, '', '', '', 12, 15, 2011, 12, 15, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2733, 'Clinic Call', '', '', 0, '', '', '', 12, 20, 2011, 12, 20, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2734, 'Cigna call', '', '', 0, '', '', '', 12, 19, 2011, 12, 19, 2011, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2735, 'Call with HIP', '', '', 0, '', '', '', 12, 21, 2011, 12, 21, 2011, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2736, 'Call w Gina from Aetna', '', '', 0, '', '', '', 12, 19, 2011, 12, 19, 2011, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2737, 'Hollywood stunts class', 'Dealist', '', 0, '', '', '', 2, 25, 2012, 2, 25, 2012, 11, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Greenpoint');
INSERT INTO `events` VALUES (2738, 'Call w Amerigroup', '', '', 0, '', '', '', 12, 22, 2011, 12, 22, 2011, 2, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '212.372.6916.');
INSERT INTO `events` VALUES (2739, 'MONDAY OFF', '', '', 0, '', '', '', 12, 26, 2011, 12, 26, 2011, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2740, 'Meeting with Richard and Kim', '', '', 0, '', '', '', 12, 28, 2011, 12, 28, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2741, 'Call w Untited', '', '', 0, '', '', '', 12, 22, 2011, 12, 22, 2011, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2742, 'Speak with Aetna - Gina', '', '', 0, '', '', '', 12, 22, 2011, 12, 22, 2011, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2743, 'Aetna Call', '', '', 0, '', '', '', 12, 29, 2011, 12, 29, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2744, 'Lettie''s graduation', '', '', 0, '', '', '', 1, 12, 2012, 1, 12, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2745, 'Lou - gym trainer', '', '', 0, '', '', '', 12, 20, 2011, 12, 20, 2011, 7, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2746, 'Meet w Jennifer D from HHP', '', '', 0, '', '', '', 12, 29, 2011, 12, 29, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2747, 'Empire call', '', '', 0, '', '', '', 12, 28, 2011, 12, 28, 2011, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2748, 'Elderplan call', '', '', 0, '', '', '', 1, 3, 2012, 1, 3, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2749, 'Call w Josephine', '', '', 0, '', '', '', 12, 22, 2011, 12, 22, 2011, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2750, 'Mt w Cindy from Multiplan', '', '', 0, '', '', '', 1, 17, 2012, 1, 17, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2751, 'Meet w Dora in Queens for billing system review', '', '', 0, '', '', '', 1, 19, 2012, 1, 19, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2752, 'Aetna conversation', '', '', 0, '', '', '', 12, 28, 2011, 12, 28, 2011, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2753, 'Speak with Andrew', '', '', 0, '', '', '', 12, 30, 2011, 12, 30, 2011, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2754, 'Petrina is out', '', '', 0, '', '', '', 1, 18, 2012, 1, 18, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2755, 'Speak with J Donnelly', '', '', 0, '', '', '', 1, 25, 2012, 1, 25, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2756, 'United Call', '', '', 0, '', '', '', 1, 25, 2012, 1, 25, 2012, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2757, 'Philo 4', '', '', 0, '', '', '', 1, 14, 2012, 1, 14, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2758, 'Philo 4', '', '', 0, '', '', '', 1, 18, 2012, 3, 27, 2012, 7, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Wed', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2759, 'Patience Workshop - SPP', '', '', 0, '', '', '', 2, 25, 2012, 2, 25, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2760, 'Call with Empire', '', '', 0, '', '', '', 1, 18, 2012, 1, 18, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2761, 'healthplus call', '', '', 0, '', '', '', 1, 19, 2012, 1, 19, 2012, 2, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2762, 'Call w Gina', '', '', 0, '', '', '', 1, 13, 2012, 1, 13, 2012, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2763, 'Call with Gina - Aetna', '', '', 0, '', '', '', 1, 18, 2012, 1, 18, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2764, 'Call w Cindy from Multiplan', '', '', 0, '', '', '', 1, 20, 2012, 1, 20, 2012, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2765, 'Breakfast with Dr. Kelly', '', '', 0, '', '', '', 2, 1, 2012, 2, 1, 2012, 7, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2766, 'Mtg w Queens and Brynn', '', '', 0, '', '', '', 1, 24, 2012, 1, 24, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2767, 'Call w Queens cred', '', '', 0, '', '', '', 2, 17, 2012, 2, 17, 2012, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '(605) 477-2100 Access Code 285');
INSERT INTO `events` VALUES (2768, 'Call with Kim from Wellcare', '', '', 0, '', '', '', 1, 26, 2012, 1, 26, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Call in number');
INSERT INTO `events` VALUES (2769, 'KICK  OFF', '', '', 0, '', '', '', 1, 24, 2012, 1, 24, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2770, 'Meet w Lydia', 'Regarding info Petrina put together', '', 0, '', '', '', 1, 23, 2012, 1, 23, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2771, 'Managed Care Clinic Call', '', '', 0, '', '', '', 3, 20, 2012, 3, 20, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2773, 'Cindy from Multiplan', '', '', 0, '', '', '', 1, 23, 2012, 1, 23, 2012, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2774, 'Call w Gina', '', '', 0, '', '', '', 1, 20, 2012, 1, 20, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2775, 'Affinity Call', '', '', 0, '', '', '', 1, 31, 2012, 12, 31, 2012, 11, 0, 'AM', 0, 0, 'AM', 'm', 2, 5, 'Tue', 1, 1, 'P', 'Bridge');
INSERT INTO `events` VALUES (2776, 'Meet with Kia Lee', '', '', 0, '', '', '', 1, 25, 2012, 1, 25, 2012, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2777, 'Meet with Andrew and Courtney', '', '', 0, '', '', '', 1, 24, 2012, 1, 24, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2778, 'Talk with David', '', '', 0, '', '', '', 1, 26, 2012, 1, 26, 2012, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2779, 'Call with Oxford', '', '', 0, '', '', '', 1, 24, 2012, 3, 24, 2012, 10, 30, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'P', '# 888-844-9904 pc2166428');
INSERT INTO `events` VALUES (2780, 'Meet w Beth - Amerigroup', '', '', 0, '', '', '', 1, 26, 2012, 1, 26, 2012, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2781, 'Call with Aetna', '', '', 0, '', '', '', 1, 31, 2012, 1, 31, 2012, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2782, 'Call w Denise', '', '', 0, '', '', '', 1, 27, 2012, 1, 27, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2783, 'Call w Dolores', '', '', 0, '', '', '', 1, 27, 2012, 1, 27, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2784, 'Kia Lee will call on my cell', '', '', 0, '', '', '', 1, 30, 2012, 1, 30, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2785, 'Meet with Aetna', '', '', 0, '', '', '', 2, 3, 2012, 2, 3, 2012, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2786, 'Pivot table training', '', '', 0, '', '', '', 2, 7, 2012, 2, 7, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2787, 'Physical with Dr. Allen', '', '', 0, '', '212-252-6131', '', 2, 7, 2012, 2, 7, 2012, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '55 East 34th Street, 1st floor');
INSERT INTO `events` VALUES (2788, 'Potential clothing swap for Erica', '', '', 0, '', '', '', 3, 11, 2012, 3, 11, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2789, 'Amanda''s birthday celeb', '', '', 0, '', '', '', 2, 4, 2012, 2, 4, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Churascarria');
INSERT INTO `events` VALUES (2790, 'Meet w Beth from Amerigroup', '', '', 0, '', '', '', 2, 2, 2012, 2, 2, 2012, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2791, 'Empire call canceled', '', '', 0, '', '', '', 1, 30, 2012, 1, 30, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2792, 'EMG canceled our meeting - reschedduled', '', '', 0, '', '', '', 1, 31, 2012, 1, 31, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2793, 'Call with TBHC', '', '', 0, '', '', '', 2, 1, 2012, 5, 1, 2012, 10, 30, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Wed', 0, 1, 'P', 'Call Josephine');
INSERT INTO `events` VALUES (2794, 'Talk w Cindy from Multiplan', '', '', 0, '', '', '', 2, 15, 2012, 2, 15, 2012, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2795, 'Americhoice call', '', '', 0, '', '', '', 2, 1, 2012, 2, 1, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2796, 'Citizen Cope Concert', '', '', 0, '', '', '', 2, 11, 2012, 2, 11, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2797, 'Call with Wellcare', '', '', 0, '', '', '', 2, 9, 2012, 4, 16, 2012, 11, 0, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Thu', 0, 1, 'P', '212-746-7269');
INSERT INTO `events` VALUES (2798, 'Fast before MD appt', '', '', 0, '', '', '', 2, 7, 2012, 2, 7, 2012, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2799, 'Call w United', '', '', 0, '', '', '', 2, 9, 2012, 2, 9, 2012, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2800, 'Meet w Gina', '', '', 0, '', '', '', 2, 6, 2012, 2, 6, 2012, 2, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2801, 'Dolores from Cigna', '', '', 0, '', '', '', 2, 3, 2012, 4, 3, 2012, 12, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Fri', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2802, 'SKIING', '', '', 0, '', '', '', 2, 12, 2012, 2, 12, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2803, 'Call with Methodist', '', '', 0, '', '', '', 2, 8, 2012, 2, 8, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2804, 'Ticker tape', '', '', 0, '', '', '', 2, 7, 2012, 2, 7, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2805, 'Empire call', '', '', 0, '', '', '', 2, 6, 2012, 4, 6, 2012, 3, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', '866-308-0254 /// 973-213-4083');
INSERT INTO `events` VALUES (2806, 'MD appt - Dr Allen', '', '', 0, '', '', '', 2, 15, 2012, 2, 15, 2012, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2807, 'mt w Denise E', '', '', 0, '', '', '', 2, 24, 2012, 2, 24, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2808, 'Talk with Aetna', '', '', 0, '', '', '', 2, 8, 2012, 2, 8, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2811, 'Call with Methodist', '', '', 0, '', '', '', 2, 10, 2012, 2, 10, 2012, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2810, 'Speak with K lee', '', '', 0, '', '', '', 2, 8, 2012, 2, 8, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2817, 'Meet with Aetna', '', '', 0, '', '', '', 2, 14, 2012, 2, 14, 2012, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2813, 'Speak with Gina', '', '', 0, '', '', '', 2, 10, 2012, 2, 10, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2814, 'network Meeting', '', '', 0, '', '', '', 2, 9, 2012, 2, 9, 2012, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2815, 'Call Luke 4 pm.', '', '', 0, '', '', '', 2, 9, 2012, 2, 9, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2816, 'Speak to Aron', '', '', 0, '', '', '', 2, 10, 2012, 2, 10, 2012, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2818, 'Cigna', '', '', 0, '', '', '', 2, 13, 2012, 2, 13, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2819, 'Meet w HR', '', '', 0, '', '', '', 2, 15, 2012, 2, 15, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2820, 'Meet w Emily', '', '', 0, '', '', '', 2, 14, 2012, 2, 14, 2012, 4, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2821, 'Call with Empire', '', '', 0, '', '', '', 2, 16, 2012, 2, 16, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2822, 'Call with Queens', '', '', 0, '', '', '', 2, 14, 2012, 2, 14, 2012, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2823, 'Call with Dora re Aetna', '', '', 0, '', '', '', 2, 16, 2012, 2, 16, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2824, 'Call w Gina', '', '', 0, '', '', '', 2, 17, 2012, 2, 17, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2825, 'Call w Gina', '', '', 0, '', '', '', 2, 16, 2012, 2, 16, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2826, 'Call with Multiplan', '', '', 0, '', '', '', 3, 8, 2012, 3, 8, 2012, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2827, 'Call w Dora re Aetna', '', '', 0, '', '', '', 2, 23, 2012, 2, 23, 2012, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2828, 'Speak with Gina', '', '', 0, '', '', '', 2, 22, 2012, 2, 22, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2829, 'Casa Mono w Cate and Rob', '', '', 0, '', '', '', 2, 25, 2012, 2, 25, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2830, 'Meet w SV', '', '', 0, '', '', '', 2, 23, 2012, 2, 23, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2831, 'Queens meeting with Brynn', '', '', 0, '', '', '', 2, 23, 2012, 2, 23, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2832, 'Call w Wellcare -Kelvin', '', '', 0, '', '', '', 2, 23, 2012, 2, 23, 2012, 12, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'CONFERENCE CALL NUMBER: (877)');
INSERT INTO `events` VALUES (2833, 'Hot Stone Massage', '', '', 0, '', '', '', 4, 6, 2012, 4, 6, 2012, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '56th and Lex');
INSERT INTO `events` VALUES (2834, 'Cred Call with Queens', '', '', 0, '', '', '', 2, 24, 2012, 2, 24, 2012, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2835, 'Call with Brynn and Queens', '', '', 0, '', '', '', 3, 20, 2012, 3, 20, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2836, 'Call with Denise', '', '', 0, '', '', '', 3, 9, 2012, 3, 9, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2837, 'Credentialing call with Queens', '', '', 0, '', '', '', 3, 16, 2012, 3, 16, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '# 641 715-3635 Access Code: 10');
INSERT INTO `events` VALUES (2838, 'Aetna call with Dora', '', '', 0, '', '', '', 2, 28, 2012, 2, 28, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2839, 'speak w Josephine re TIN change', '', '', 0, '', '', '', 2, 27, 2012, 2, 27, 2012, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2841, 'Call with NHP to discuss dental claims', '', '', 0, '', '', '', 3, 2, 2012, 3, 2, 2012, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2842, 'Meet w Emily', '', '', 0, '', '', '', 3, 1, 2012, 3, 1, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2844, 'Call Re: aetna and Queens', '', '', 0, '', '', '', 3, 5, 2012, 3, 5, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '605-477- 2100 x 285 -344');
INSERT INTO `events` VALUES (2845, 'speak with NHP about new PC', '', '', 0, '', '', '', 3, 2, 2012, 3, 2, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2846, 'Talk with Gina', '', '', 0, '', '', '', 2, 29, 2012, 2, 29, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2847, 'Meet w Melissa and Lauren', '', '', 0, '', '', '', 3, 1, 2012, 3, 1, 2012, 3, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'bridge line');
INSERT INTO `events` VALUES (2848, 'Call w JOyce', '', '', 0, '', '', '', 3, 2, 2012, 3, 2, 2012, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2849, 'Staff meeting', '', '', 0, '', '', '', 3, 1, 2012, 3, 1, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2850, 'Meet w Melissa and Lauren', '', '', 0, '', '', '', 3, 1, 2012, 3, 1, 2012, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2851, 'Meet w Queens regarding Aetna', '', '', 0, '', '', '', 3, 1, 2012, 3, 1, 2012, 11, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2852, 'Call w HIP', '', '', 0, '', '', '', 3, 2, 2012, 3, 2, 2012, 12, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '    Dial In Number: 646-447-27');
INSERT INTO `events` VALUES (2853, 'Appt w Dr. Leonard (leave at 1 pm for a half day.)', '', '', 0, '', '', '', 3, 15, 2012, 3, 15, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '435 East 61st St.');
INSERT INTO `events` VALUES (2854, 'Meet w Denta group (Emily''s meeting)', '', '', 0, '', '', '', 3, 8, 2012, 3, 8, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2855, 'Dental Call', '', '', 0, '', '', '', 3, 21, 2012, 3, 21, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '212-305-1999');
INSERT INTO `events` VALUES (2856, 'Meet with Courtney', '', '', 0, '', '', '', 3, 6, 2012, 3, 6, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2857, 'Dentist appt', '', '', 0, '', '212-534-3626', '', 3, 13, 2012, 3, 13, 2012, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '35 East 106th St. Bet Mad and');
INSERT INTO `events` VALUES (2858, 'Elderplan call', '', '', 0, '', '', '', 3, 6, 2012, 3, 6, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2859, 'Call with Methodist', '', '', 0, '', '', '', 3, 7, 2012, 4, 7, 2012, 9, 30, 'AM', 0, 0, 'AM', 'w', 0, 2, 'Wed', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2860, 'Speak w Rich Parnell', '', '', 0, '', '', '', 3, 6, 2012, 3, 6, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2861, 'meet w Emily', '', '', 0, '', '', '', 3, 8, 2012, 3, 8, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2862, 'Healthfirst call', '', '', 0, '', '', '', 3, 7, 2012, 3, 7, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2863, 'Call with Wellcare', '', '', 0, '', '', '', 3, 9, 2012, 3, 9, 2012, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2864, 'Meet Helen for lunch', '', '', 0, '', '', '', 3, 13, 2012, 3, 13, 2012, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2865, 'Meet w Cindy from Multiplan', '', '', 0, '', '', '', 3, 13, 2012, 3, 13, 2012, 2, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2866, 'Petrina Vacation', '', '', 0, '', '', '', 4, 26, 2012, 4, 30, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2867, 'Empire call', '', '', 0, '', '', '', 3, 14, 2012, 3, 14, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2868, 'Call Brandi', '', '', 0, '', '', '', 3, 13, 2012, 3, 13, 2012, 5, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '973-699-2943.');
INSERT INTO `events` VALUES (2869, 'Lunch w Helen', '', '', 0, '', '', '', 3, 27, 2012, 3, 27, 2012, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2870, 'Speak w Cindy from Multiplan', '', '', 0, '', '', '', 3, 27, 2012, 3, 27, 2012, 2, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2871, 'Aetna - call', '', '', 0, '', '', '', 3, 14, 2012, 3, 14, 2012, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2872, 'CALL Dr. LUDMAN', '', '', 0, '', '', '', 3, 22, 2012, 3, 22, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2873, 'Cred call w Queens', '', '', 0, '', '', '', 4, 20, 2012, 4, 20, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '# 641 715-3635 Access Code: 10');
INSERT INTO `events` VALUES (2874, 'Dinner w Penny and Amanda', '', '', 0, '', '', '', 4, 11, 2012, 4, 11, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2875, 'VNS meeting', '', '', 0, '', '', '', 3, 22, 2012, 3, 22, 2012, 11, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2876, 'Meet w Petrina about Wellcare', '', '', 0, '', '', '', 3, 20, 2012, 3, 20, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2877, 'Call w Joyce', '', '', 0, '', '', '', 3, 21, 2012, 3, 21, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2878, 'Meet w Emily and Lauren re: Dr. Pipia', '', '', 0, '', '', '', 3, 21, 2012, 3, 21, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2879, 'Dr Manning', '', '', 0, '', '', '', 3, 23, 2012, 3, 23, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2880, 'Staff meeting', '', '', 0, '', '', '', 3, 27, 2012, 3, 27, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2881, 'Speak with Nina', '', '', 0, '', '', '', 3, 22, 2012, 3, 22, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2882, 'Meet w Melissa and Lauren', '', '', 0, '', '', '', 3, 26, 2012, 3, 26, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2883, 'Wellcare meeting', '', '', 0, '', '', '', 3, 28, 2012, 3, 28, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2884, 'Empire Call', '', '', 0, '', '', '', 3, 28, 2012, 3, 28, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2885, 'Talk with Gina', '', '', 0, '', '', '', 3, 26, 2012, 3, 26, 2012, 2, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2886, 'Happy Hr', '', '', 0, '', '', '', 4, 12, 2012, 4, 12, 2012, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2887, 'Meet w Emily', '', '', 0, '', '', '', 3, 27, 2012, 3, 27, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2888, 'Call Tina from Nyack', '', '', 0, '', '', '', 3, 27, 2012, 3, 27, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2889, 'Call with Joyce', 'Regarding Value Options FUP', '', 0, '', '', '', 4, 5, 2012, 4, 5, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2891, 'Call w Brynn', '', '', 0, '', '', '', 4, 5, 2012, 4, 5, 2012, 10, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2892, 'Green Drinks', '', '', 0, '', '', '', 4, 10, 2012, 4, 10, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Pier 66 Maritime');
INSERT INTO `events` VALUES (2893, 'Dress date with Staci', '', '', 0, '', '', '', 4, 19, 2012, 4, 19, 2012, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2894, 'Call w United', '', '', 0, '', '', '', 4, 11, 2012, 4, 25, 2012, 10, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Wed', 0, 1, 'P', '888-844-7278 passcode: 6328273');
INSERT INTO `events` VALUES (2895, 'Shawn''s shower', '', '', 0, '', '', '', 4, 12, 2012, 4, 12, 2012, 12, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2896, 'Meet w Mirna', '', '', 0, '', '', '', 4, 10, 2012, 4, 10, 2012, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2897, 'Call w Joyce', '', '', 0, '', '', '', 4, 5, 2012, 4, 5, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2898, 'call w Gina', '', '', 0, '', '', '', 4, 6, 2012, 4, 6, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2899, 'Appt w Dr. Freeley', '', '', 0, '', '718-389-8585', '', 4, 10, 2012, 4, 10, 2012, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '934 Manhattan Ave');
INSERT INTO `events` VALUES (2900, 'Meet w Emily', '', '', 0, '', '', '', 4, 11, 2012, 4, 11, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2901, 'Nail Appointment (from Dar)', '', '', 0, '', '', '', 5, 10, 2012, 5, 3, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '56th and lex');
INSERT INTO `events` VALUES (2902, 'Meet w Kia Lee', '', '', 0, '', '', '', 4, 10, 2012, 4, 10, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2903, 'Call with Gina', '', '', 0, '', '', '', 4, 10, 2012, 4, 10, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2904, 'Aetna call in', '', '', 0, '', '', '', 4, 10, 2012, 4, 10, 2012, 9, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2905, 'Call with Oxford', '', '', 0, '', '', '', 4, 24, 2012, 4, 24, 2012, 10, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2906, 'Meet w Amy H', '', '', 0, '', '', '', 4, 13, 2012, 4, 13, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2907, 'VNS call', '', '', 0, '', '', '', 4, 16, 2012, 4, 16, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2908, 'Meet w Emily', '', '', 0, '', '', '', 4, 17, 2012, 4, 17, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2909, 'Call w Courtney', '', '', 0, '', '', '', 4, 18, 2012, 4, 18, 2012, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2910, 'Meet with Emily', '', '', 0, '', '', '', 4, 18, 2012, 4, 18, 2012, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2911, 'Appt w Dr. Gillego', 'Breast specialist that Dr. Allen recommended.', '', 0, '212-367- 0134', '', '', 5, 30, 2012, 5, 30, 2012, 1, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '325 W 15th St. bet 8th and 9th');
INSERT INTO `events` VALUES (2912, 'Call Dustin F from the Left forum', '', '', 0, '', '', '', 4, 29, 2012, 4, 29, 2012, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2913, 'Lunch w Libby', '', '', 0, '', '', '', 5, 10, 2012, 5, 10, 2012, 12, 30, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2914, 'APPLY for Unemployment!', '', '', 0, '', '', '', 5, 15, 2012, 5, 16, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2915, 'Morning in Walkill', '', '', 0, '', '', '', 5, 19, 2012, 5, 19, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2916, 'Nail appt', '', '', 0, '', '', '', 5, 10, 2012, 5, 10, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '56th and Lex');
INSERT INTO `events` VALUES (2917, 'Bill McKibben speaking', '', '', 0, '', '', '', 5, 15, 2012, 5, 15, 2012, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Trinity Church, Broadway and W');
INSERT INTO `events` VALUES (2918, 'Potential protest', '', '', 0, '', '', '', 5, 15, 2012, 5, 15, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2919, 'Dar for lunch', '', '', 0, '', '', '', 5, 14, 2012, 5, 14, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2920, 'FINAL DAY AT NYP', '', '', 0, '', '', '', 4, 18, 2012, 4, 18, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2921, 'Philosophy class V', '', '', 0, '', '', '', 4, 18, 2012, 6, 18, 2012, 7, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Wed', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2922, 'Out w Amanda and Chris', '', '', 0, '', '', '', 5, 22, 2012, 5, 22, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2923, 'Jury Summons', '', '', 0, '', '', '', 5, 29, 2012, 5, 29, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2924, 'Training session', '', '', 0, '', '', '', 5, 18, 2012, 5, 18, 2012, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2925, 'Kattia''s shower', '', '', 0, '', '', '', 6, 2, 2012, 6, 2, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2926, 'Nail appt', '', '', 0, '', '', '', 5, 21, 2012, 5, 21, 2012, 3, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2927, 'Training session', '', '', 0, '', '', '', 5, 21, 2012, 5, 21, 2012, 9, 30, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2928, 'Community Meeting - Ferc Pipeline', '', '', 0, '', '', '', 5, 29, 2012, 5, 29, 2012, 6, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '239 West 14th st - bet 7 and 8');
INSERT INTO `events` VALUES (2929, 'Meditation tutorial', '', '', 0, '', '', '', 6, 3, 2012, 6, 3, 2012, 10, 20, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2930, 'Meditation tutorial', '', '', 0, '', '', '', 5, 30, 2012, 5, 30, 2012, 6, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2931, 'Meditation Tutorial', '', '', 0, '', '', '', 6, 20, 2012, 6, 20, 2012, 6, 15, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2932, 'Nuclear Resistance March', '', '', 0, '', '', '', 6, 12, 2012, 6, 12, 2012, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Tompkins Square Park in the Ea');
INSERT INTO `events` VALUES (2933, 'No Fraclking UN Event', '', '', 0, '', '', '', 6, 5, 2012, 6, 5, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '44th St and 1st Ave.');
INSERT INTO `events` VALUES (2934, 'Gave in Notice', '', '', 0, '', '', '', 4, 17, 2012, 4, 17, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2935, 'Appt w Dr. Manning', '', '', 0, '', '', '', 6, 6, 2012, 6, 6, 2012, 10, 45, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2936, 'Lettie''s graduation', '', '', 0, '', '', '', 6, 4, 2012, 6, 4, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2937, 'Meet Donna for Spectra pipeline', 'Meet at Rector St on N train', '', 0, '', '', '', 6, 7, 2012, 6, 7, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2938, 'Appt w Dr. Manning', '', '', 0, '', '', '', 6, 8, 2012, 6, 8, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2939, 'Claim Weekly Benefits', '', '', 0, '', '', '', 6, 18, 2012, 6, 18, 2013, 0, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Mon', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2943, 'Dar''s tournament', '', '', 0, '', '', '', 7, 4, 2012, 7, 4, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2941, 'Claim Weekly benefits', '', '', 0, '', '', '', 6, 18, 2012, 6, 18, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2942, 'Check best buy. Make sure charge is removed', '', '', 0, '', '', '', 6, 22, 2012, 6, 22, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2944, 'Garden cocktails night at BBG', '', '', 0, '', '', '', 8, 1, 2012, 8, 1, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2945, 'Garden Cocktails night at BBG', '', '', 0, '', '', '', 9, 5, 2012, 9, 5, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2946, 'BBG Member movie night', '', '', 0, '', '', '', 8, 29, 2012, 8, 29, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2947, 'gymnastics', '', '', 0, '', '', '', 7, 24, 2012, 7, 24, 2012, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2948, 'Arloe Guthrie plays at the Egg', '', '', 0, '', '', '', 11, 17, 2012, 11, 17, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'theegg.org - upstate ny');
INSERT INTO `events` VALUES (2949, 'Philosophy Get Together', '', '', 0, '', '', '', 10, 19, 2012, 10, 19, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2950, 'David Grey Concert', '', '', 0, '', '', '', 9, 27, 2012, 9, 27, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2951, 'Dinner w Staci and Akeell', 'At Bubby''s', '', 0, '', '', '', 9, 28, 2012, 9, 28, 2012, 7, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2952, 'Fall for Dance', '', '', 0, '', '', '', 9, 29, 2012, 9, 29, 2012, 8, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2953, 'Half Marathon!!!', 'Westchester', '', 0, '', '', '', 10, 7, 2012, 10, 7, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2954, 'Lunch w Sam', '', '', 0, '', '', '', 9, 27, 2012, 9, 27, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2955, 'GIT w Bunker!!!', '', '', 0, '', '', '', 9, 29, 2012, 9, 30, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2956, 'Sabrina Bove @ Caroline''s!', '', '', 0, '', '', '', 10, 8, 2012, 10, 8, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2957, 'Gotham Writing Class!!', '', '', 0, '', '', '', 10, 2, 2012, 12, 2, 2012, 2, 0, 'PM', 5, 0, 'PM', 'w', 0, 1, 'Tue', 0, 1, 'P', '555 8th Ave');
INSERT INTO `events` VALUES (2958, 'Rally in Philly', '', '', 0, '', '', '', 9, 20, 2012, 9, 20, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2959, 'Rally in DC', '', '', 0, '', '', '', 9, 21, 2012, 9, 21, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2960, 'Volunteer!! NYC Film food Fest', '', '', 0, '', '', '', 10, 17, 2012, 10, 21, 2012, 9, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '3rd ave');
INSERT INTO `events` VALUES (2961, 'e waste recycling event', '', '', 0, '', '', '', 10, 2, 2012, 10, 2, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2962, 'East River Crew', '', '', 0, '', '', '', 10, 6, 2012, 10, 6, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '96th St');
INSERT INTO `events` VALUES (2963, 'Mad Toastmaster''s', '', '', 0, '', '', '', 10, 2, 2012, 12, 2, 2012, 12, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'P', 'NY Life building at 51 Park Av');
INSERT INTO `events` VALUES (2964, 'Have Your (Batter) Cake & Eat It, Too: at tthe par', 'Merchant''s House Museum', '', 0, '', '', '', 10, 5, 2012, 10, 5, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Merchant''s House Museum 29 Eas');
INSERT INTO `events` VALUES (2965, 'Uncle D Bday celebration', '', '', 0, '', '', '', 10, 14, 2012, 10, 14, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2966, 'Thanksgiving', '', '', 0, '', '', '', 11, 22, 2012, 11, 22, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2967, 'BRIC Arts Orientation', 'Get there early!', '', 0, '', ' 718-683-5645', '', 10, 20, 2012, 10, 20, 2012, 11, 0, 'AM', 1, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Commuity Media Center located');
INSERT INTO `events` VALUES (2968, 'Videioblogging 101 class @ BRIC arts', '', '', 0, '', '', '', 11, 26, 2012, 11, 26, 2012, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2969, 'Constitution Class', '', '', 0, '', '', '', 10, 4, 2012, 12, 4, 2012, 6, 30, 'PM', 7, 30, 'PM', 'w', 0, 1, 'Thu', 0, 1, 'P', 'The Great Hall of The Cooper U');
INSERT INTO `events` VALUES (2970, 'Bill McKibben event in NYC', '', '', 0, '', '', '', 11, 16, 2012, 11, 16, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2971, 'Videoblogging class', '', '', 0, '', '', '', 11, 7, 2012, 11, 7, 2012, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'BRIC Community Media Center 24');
INSERT INTO `events` VALUES (2972, 'RENEW LIBRARY BOOKS', '', '', 0, '', '', '', 10, 2, 2012, 10, 3, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2973, 'Tickets from Dad', '', '', 0, '', '', '', 11, 17, 2012, 11, 17, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2974, 'Dr.Manning', '', '', 0, '', '', '', 10, 4, 2012, 10, 4, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2975, 'Call Dave Braun', '', '\r\n', 0, '', '', '', 10, 3, 2012, 10, 3, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2976, 'Volunteering at Gotham Registration', '', '', 0, '', '', '', 11, 10, 2012, 11, 10, 2012, 9, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2977, 'Meet Dave Braun', '', '', 0, '', '', '', 10, 10, 2012, 10, 10, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Dumbo - 68 Jay Street , 7th fl');
INSERT INTO `events` VALUES (2978, 'Dinner w Staci and Steph', '', '', 0, '', '', '', 10, 11, 2012, 10, 11, 2012, 7, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2979, 'Dinner w Alex', '', '', 0, '', '', '', 10, 10, 2012, 10, 10, 2012, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2980, 'Election Day!!', '', '', 0, '', '', '', 11, 6, 2012, 11, 6, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2981, 'Big Brother Big sis orientation', 'TUESDAY, NOVEMBER 27 TH, 6:00 PM\r\n\r\nat our Queens location; Queens Library 89-11 Merrick Boulevard.\r\n\r\nDirections: F Train to 169th St.\r\n\r\n', '', 0, 'Leo Ching', ' 646-688-1252 ext', '', 11, 27, 2012, 11, 27, 2012, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '89-11 Merrick Blvd, Qns');
INSERT INTO `events` VALUES (2982, 'Meet with David Liss', '', '', 0, '', '', '', 11, 15, 2012, 11, 15, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2983, 'Friends of Clearwater Meeting', 'tion: DC37 Building 140 Park Pl/ 125 Barclay St. (btwn Greenwich St. & West St.)  E train to WTC, N, R, Q to City Hall, 3 to Park Place.', '', 0, '', '', '', 10, 19, 2012, 10, 19, 2012, 6, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2984, 'Volunteer!! NYC Film food Fest', '', '', 0, '', '', '', 10, 21, 2012, 10, 21, 2012, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2985, 'Talk to David Braun', '', '', 0, '', '', '', 10, 22, 2012, 10, 22, 2012, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2986, 'Dinner w ERica at Eat', '', '', 0, '', '', '', 10, 17, 2012, 10, 17, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2987, 'Film Screening for Fracking Concert', '', '', 0, '', '', '', 11, 8, 2012, 11, 8, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Ethical Culture');
INSERT INTO `events` VALUES (2988, 'Meet with David Liss', '', '', 0, '', '', '', 11, 26, 2012, 11, 26, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2989, 'volunteer with UFA', '', '', 0, '', '', '', 11, 28, 2012, 11, 28, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2990, 'event with UFA', '', '', 0, '', '', '', 11, 29, 2012, 11, 29, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2991, 'JUST FOOD Conference', '', '', 0, '', '', '', 3, 29, 2013, 3, 30, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2992, 'BCAT Open House', '', '', 0, '', '', '', 12, 6, 2012, 12, 6, 2012, 5, 0, 'PM', 8, 0, 'PM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2993, 'Mt David Braun', 'Discuss NY community org list\r\n - csa stuff\r\n - convo with Larysa\r\n', '', 0, '', '', '', 12, 6, 2012, 12, 6, 2012, 4, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2994, 'Dr. Manning', '', '', 0, '', '', '', 12, 3, 2012, 12, 3, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2995, 'Lunch w Libby', '', '', 0, '', '', '', 12, 7, 2012, 12, 7, 2012, 12, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2996, 'Writing Class', '', '', 0, '', '', '', 12, 4, 2012, 12, 4, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2997, 'CALL David  Krooshmaa - biking', '', '', 0, '', '', '', 11, 30, 2012, 11, 30, 2012, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (2998, 'Lunch w Brian', '', '', 0, '', '', '', 12, 6, 2012, 12, 6, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (2999, 'UFA Event', '', '', 0, '', '', '', 12, 11, 2012, 12, 11, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3000, 'Jazz w Elaine', '', '', 0, '', '', '', 12, 10, 2012, 12, 10, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3001, 'UFA Meeting', '', '', 0, '', '', '', 12, 17, 2012, 12, 17, 2012, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', ' 33 Irving Place, New York, NY');
INSERT INTO `events` VALUES (3002, 'Screening - Living Downstream', '', '', 0, '', '', '', 12, 18, 2012, 12, 18, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'a Nacional, 239 West 14th Stre');
INSERT INTO `events` VALUES (3003, 'Court Date for Spectra', '', '', 0, '', '', '', 12, 11, 2012, 12, 11, 2012, 1, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'ourtroom 327 at 80 Centre Stre');
INSERT INTO `events` VALUES (3004, 'Big Brother Big sis orientation by phone', '', '', 0, '', '', '', 12, 7, 2012, 12, 7, 2012, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3005, 'FUP on Prospect Park Stuff', '', '', 0, '', '', '', 12, 17, 2012, 12, 17, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3006, 'Writers group meeting', '', '', 0, '', '', '', 1, 8, 2013, 1, 8, 2013, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3007, '"Swipe it" Lunch', '', '', 0, '', '', '', 12, 17, 2012, 12, 17, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3008, 'Lunch w Jenny', '', '', 0, '', '', '', 12, 19, 2012, 12, 19, 2012, 1, 45, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Bryant Park Grill');
INSERT INTO `events` VALUES (3009, 'Toastmaster''s', '', '', 0, '', '', '', 12, 18, 2012, 12, 18, 2012, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3010, 'Mathew''s Christmas Show', '', '', 0, '', '', '', 12, 19, 2012, 12, 19, 2012, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3011, 'Our Christmas Party!!', '', '', 0, '', '', '', 12, 22, 2012, 12, 22, 2012, 0, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3012, 'Gingerbread Houses', '', '', 0, '', '', '', 12, 2, 2012, 12, 2, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3013, 'Cate and Rob''s party', '', '', 0, '', '', '', 12, 15, 2012, 12, 15, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'DC');
INSERT INTO `events` VALUES (3014, 'DC weekend', '', '', 0, '', '', '', 12, 16, 2012, 12, 16, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3015, 'Dinner with Dar''s family', '', '', 0, '', '', '', 12, 14, 2012, 12, 14, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Brooklyn');
INSERT INTO `events` VALUES (3016, 'Rodeo Bar', '', '', 0, '', '', '', 12, 13, 2012, 12, 13, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3017, 'Final Writing class', '', '', 0, '', '', '', 12, 11, 2012, 12, 11, 2012, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3018, 'Final Philo Class', '', '', 0, '', '', '', 12, 5, 2012, 12, 5, 2012, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3019, 'Manhattan Beach and Dinner w Dad', '', '', 0, '', '', '', 12, 10, 2012, 12, 10, 2012, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3020, 'Honduras', '', '', 0, '', '', '', 1, 1, 2013, 1, 4, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3021, 'Go to DC', '', '', 0, '', '', '', 1, 20, 2013, 1, 20, 2013, 5, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3022, 'DC', '', '', 0, '', '', '', 1, 21, 2013, 1, 23, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3023, 'skiing', '', '', 0, '', '', '', 1, 27, 2013, 1, 27, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3024, 'Fracking Meeting', '', '', 0, '', '', '', 1, 11, 2013, 6, 11, 2013, 10, 0, 'AM', 0, 0, 'AM', 'w', 0, 1, 'Fri', 0, 1, 'P', '68 Jay Street');
INSERT INTO `events` VALUES (3025, 'Water Resources Group', '51 Chambers Street Room 214', '51 Chambers Street Room 214', 0, '212-788-7927', '', '', 1, 10, 2013, 1, 10, 2013, 10, 0, 'AM', 0, 0, 'AM', 'm', 2, 2, 'Thu', 1, 1, 'P', '51 Chambers Street Room 214');
INSERT INTO `events` VALUES (3026, 'Water Resources Group Meeting', 'Run by Lenni Librizzi - llibrizzi@cenyc.org\r\n51 Chambers Street Room 214', '51 Chambers Street Room 214', 0, '212-788-7927', '', '', 1, 10, 2013, 8, 10, 2013, 0, 0, 'AM', 0, 0, 'AM', 'm', 2, 2, 'Thu', 1, 1, 'P', '51 Chambers Street Room 214');
INSERT INTO `events` VALUES (3027, 'registration volunteer - gotham', '', 'git w dana', 0, '', '', '', 1, 14, 2013, 1, 15, 2013, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3028, 'UFA meeting', '', '', 0, '', '', '', 1, 28, 2013, 1, 28, 2013, 6, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '55irving');
INSERT INTO `events` VALUES (3029, 'Left forum at pace', '', '', 0, '', '', '', 6, 7, 2013, 6, 9, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Pace university');
INSERT INTO `events` VALUES (3030, 'Interview at Big Brother, Big Sister', '', '', 0, '', '', '', 1, 10, 2013, 1, 10, 2013, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '28th and 5th');
INSERT INTO `events` VALUES (3031, 'Make Up with Christina', '', '', 0, '', '', '', 2, 13, 2013, 2, 13, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3032, 'Call Prospect Park', '', '', 0, '', '', '', 1, 16, 2013, 1, 16, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3033, 'Toastmaster''s  - Table Topics', '', '', 0, '', '', '', 3, 12, 2013, 3, 12, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3034, 'Toastmaster''s  - Invocator', '', '', 0, '', '', '', 4, 2, 2013, 4, 2, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3035, 'Toastmaster''s  - Evaluator 3', '', '', 0, '', '', '', 3, 26, 2013, 3, 26, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3036, 'Toastmaster''s  - Toastmaster', '', '', 0, '', '', '', 3, 19, 2013, 3, 19, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3037, 'Toastmaster''s  - General Evaluator and backup sp.', '', '', 0, '', '', '', 3, 5, 2013, 3, 5, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3038, 'Toastmaster''s  - Evaluator 3', '', '', 0, '', '', '', 2, 26, 2013, 2, 26, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3039, 'Toastmaster''s  - Woerdmaster', '', '', 0, '', '', '', 2, 19, 2013, 2, 19, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3040, 'Toastmaster''s - Ah Counter', '', '', 0, '', '', '', 2, 12, 2013, 2, 12, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3041, 'Backup speaker', '', '', 0, '', '', '', 2, 12, 2013, 2, 12, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3042, 'Toastmaster''s - Timer', '', '', 0, '', '', '', 1, 29, 2013, 1, 29, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3043, 'Lunch w Joanna', '', '', 0, '', '', '', 1, 28, 2013, 1, 28, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3044, 'Mt Luke Peterson for lunch', '', '', 0, '', '', '', 1, 23, 2013, 1, 23, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3045, 'Mt Joyce P for lunch', '', '', 0, '', '', '', 2, 7, 2013, 2, 7, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'Methodist');
INSERT INTO `events` VALUES (3046, 'Dinner w Jill', '', '', 0, '', '', '', 1, 29, 2013, 1, 29, 2013, 6, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (3047, 'Brinch w Cate and Rob', '', '', 0, '', '', '', 2, 3, 2013, 2, 3, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3048, 'Dinner w Staci', '', '', 0, '', '', '', 1, 25, 2013, 1, 25, 2013, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3049, 'Lunch w/ Petrina', '', '', 0, '', '', '', 1, 31, 2013, 1, 31, 2013, 1, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '');
INSERT INTO `events` VALUES (3050, '350 Rally in DC', '', '', 0, '', '', '', 2, 17, 2013, 2, 17, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3051, 'Loan meeting at bank', '', '', 0, '', '', '', 1, 25, 2013, 1, 25, 2013, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3052, 'Mt Zaza', '', '', 0, '', '', '', 2, 7, 2013, 2, 7, 2013, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3053, 'Natural resources committee hearing', '', '', 0, '', '', '', 1, 23, 2013, 1, 23, 2013, 9, 0, 'AM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Room 1324 Longworth House Offi');
INSERT INTO `events` VALUES (3054, 'Agricultural comm organiztional meeting', '', '', 0, '', '', '', 1, 23, 2013, 1, 23, 2013, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '1300 Longworth House Office Bu');
INSERT INTO `events` VALUES (3055, 'meet w ryan roberts - prudential', '', '', 0, '', '', '', 1, 31, 2013, 1, 31, 2013, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '156 montague bet clinton n hen');
INSERT INTO `events` VALUES (3056, 'Training for legislative visits', 'ohn Haynes Holmes House at 28 East 35th Street, in the Gall', '', 0, '', '', '', 1, 30, 2013, 1, 30, 2013, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'ohn Haynes Holmes House at 28');
INSERT INTO `events` VALUES (3057, 'Meet with David Braun', '', '', 0, '', '', '', 2, 1, 2013, 2, 1, 2013, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3058, 'Date w Staci and Akeel', '', '', 0, '', '', '', 2, 10, 2013, 2, 10, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3059, 'Albany Trip', '', '', 0, '', '', '', 2, 4, 2013, 2, 4, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3060, 'Jenny and Brian for dinner', '', '', 0, '', '', '', 2, 8, 2013, 2, 8, 2013, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3061, 'Joanna and Staci''s showers', '', '', 0, '', '', '', 3, 9, 2013, 3, 9, 2013, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3062, 'Rally in NYC', '', '', 0, '', '', '', 2, 8, 2013, 2, 8, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3063, 'Meet Amanda and Chris for dinner', '', '', 0, '', '', '', 3, 12, 2013, 3, 12, 2013, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3064, 'Lunch w RObert from Red Bus', '', '', 0, '', '', '', 2, 6, 2013, 2, 6, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3065, 'Skiing', '', '', 0, '', '', '', 2, 10, 2013, 2, 10, 2013, 8, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3066, 'Lunch w Petrina', '', '', 0, '', '', '', 2, 5, 2013, 2, 5, 2013, 1, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3067, 'BRIC CLasses', '', '', 0, '', '', '', 2, 12, 2013, 2, 28, 2013, 2, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Tue', 0, 1, 'P', '242 Third Street');
INSERT INTO `events` VALUES (3068, 'BRIC CLasses', '', '', 0, '', '', '', 2, 14, 2013, 2, 29, 2013, 2, 0, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Thu', 0, 1, 'P', '242 Third Street');
INSERT INTO `events` VALUES (3069, 'Members only highlights - Museum of Nat History', '', '', 0, '', '', '', 2, 16, 2013, 2, 16, 2013, 3, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3070, 'Lettie''s Birthday', '', '', 0, '', '', '', 2, 16, 2013, 2, 16, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3071, 'Member invite for new exhibit at Mus of Nat hist', 'Starts at 4, wine reception 6-8\r\nCall to reserve - 212-769-5606', '', 0, '', '', '', 3, 21, 2013, 3, 21, 2013, 4, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3072, 'Get together with Amanda', '', '', 0, '', '', '', 3, 6, 2013, 3, 6, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3073, 'Training session w David', '', '', 0, '', '', '', 2, 20, 2013, 2, 20, 2013, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3074, 'UFA Meeting', '', '', 0, '', '', '', 2, 25, 2013, 2, 25, 2013, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3075, 'Sierra Club Meeting', 'Email from Thelma from NY sierra club', '', 0, '', '', '', 3, 14, 2013, 3, 14, 2013, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3076, 'Occupy Wall Street Meeting', '', '', 0, '', '', '', 2, 22, 2013, 6, 22, 2013, 5, 30, 'PM', 0, 0, 'AM', 'w', 0, 1, 'Fri', 0, 1, 'P', '');
INSERT INTO `events` VALUES (3077, 'FUP w zenni optical', '', '', 0, '', '', '', 2, 26, 2013, 2, 28, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3078, 'Realtor', '', '', 0, '', '', '', 2, 21, 2013, 2, 21, 2013, 5, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3079, 'See house on 111 Shepherd Avenue', '', 'Agent - Adam Sikorskyq', 0, '', '', '', 2, 25, 2013, 2, 25, 2013, 2, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3080, 'PUT APT ON AIRBNB', '', '', 0, '', '', '', 3, 5, 2013, 3, 8, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3081, 'Trinity Alumni bowling nigh', '', '', 0, '', '', '', 3, 7, 2013, 3, 7, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3082, 'Toastmaster''s  - speech 5!', '', '', 0, '', '', '', 5, 28, 2013, 5, 28, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3083, 'Toast - Evaluator 1', '', '', 0, '', '', '', 5, 21, 2013, 5, 21, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3084, 'Toast - Ah counter', '', '', 0, '', '', '', 5, 14, 2013, 5, 14, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3085, 'Toast  - speech 4', '', '', 0, '', '', '', 5, 7, 2013, 5, 7, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3086, 'UFA meeting', '', '', 0, '', '', '', 3, 18, 2013, 3, 18, 2013, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3087, 'Sabrina in town!!', '', '', 0, '', '', '', 5, 24, 2013, 5, 29, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3088, 'Miette Culinary cooking class', '', '', 0, '', '', '', 4, 1, 2013, 4, 1, 2013, 6, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3089, 'Meet Carole and hub for dinner', '', '', 0, '', '', '', 3, 19, 2013, 3, 19, 2013, 7, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3090, 'Training for Big bro, big sis', '', '', 0, '', '', '', 3, 15, 2013, 3, 15, 2013, 12, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3091, 'Meet NIcole and Steff for dinner', '', '', 0, '', '', '', 3, 8, 2013, 3, 8, 2013, 9, 0, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3092, 'Jenne and Andrew in town', '', '', 0, '', '', '', 3, 30, 2013, 3, 30, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3093, 'Volunteer at Just food!', '', '', 0, '', '', '', 3, 29, 2013, 3, 29, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3094, 'Look at houses', '', '', 0, '', '', '', 3, 13, 2013, 3, 13, 2013, 11, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3095, 'Lunch w sam', '', '', 0, '', '', '', 3, 19, 2013, 3, 19, 2013, 3, 0, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', 'Diner');
INSERT INTO `events` VALUES (3096, 'Cash in Savings bond', '', '', 0, '', '', '', 8, 1, 2013, 8, 10, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3097, 'LIBRARY BOOKS DUE', '', '', 0, '', '', '', 3, 21, 2013, 3, 21, 2013, 0, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '');
INSERT INTO `events` VALUES (3098, 'Safe disposal events', 'vciti field  parking lots - Queens - lots e and F', '', 0, '', '', '', 3, 30, 2013, 3, 30, 2013, 10, 0, 'AM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'citi field  parking lots - Que');
INSERT INTO `events` VALUES (3099, 'Cities and Climate Change - What is our future', 'NYU SCPS building - at 7 east 12th st, 5th fl', '', 0, '', '', '', 4, 2, 2013, 4, 2, 2013, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', 'NYU SCPS building - at 7 east');
INSERT INTO `events` VALUES (3100, 'Sierra Club sustainability series', 'Off the grid - Plausible or Pipe Dream', '', 0, '', '', '', 5, 30, 2013, 5, 30, 2013, 6, 30, 'PM', 0, 0, 'AM', 's', 0, 0, '', 0, 1, 'P', '123 East 15th St');
INSERT INTO `events` VALUES (3101, 'Sierra Club sustainability series', 'Trashed - feel better about making less', '', 0, '', '', '', 6, 25, 2013, 6, 25, 2013, 6, 30, 'PM', 0, 0, 'AM', 's', NULL, 0, NULL, NULL, 1, 'P', '123 East 15th St');

-- --------------------------------------------------------

-- 
-- Table structure for table `exercise`
-- 

CREATE TABLE `exercise` (
  `id` varchar(35) NOT NULL default '',
  `weekday` varchar(10) NOT NULL default '',
  `day` tinyint(4) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `year` int(11) NOT NULL default '0',
  `etype` varchar(100) NOT NULL default '',
  `description` text NOT NULL,
  `time` smallint(6) NOT NULL default '0',
  `repetition` smallint(6) NOT NULL default '0',
  `sets` tinyint(4) NOT NULL default '0',
  `user` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the exercise done';

-- 
-- Dumping data for table `exercise`
-- 

INSERT INTO `exercise` VALUES ('14020481120072', 'Saturday', 11, 8, 2007, 'Play Soccer', 'I played 15 minute half of a soccer game with Donaldo''s team. I had to come out because someone hurt my left ankle that has been injure for about three weeks.', 15, 0, 1, 2);
INSERT INTO `exercise` VALUES ('13561381320072', 'Saturday', 11, 8, 2007, 'Abs', 'I did three different types of abs: 2 sets with my legs on top of a chair, 2 sets of lifing legs and putting them on top of the chair, 2 sets of in and out situps.', 30, 30, 6, 2);
INSERT INTO `exercise` VALUES ('14043981220072', 'Sunday', 12, 8, 2007, 'Play Soccer', 'I played a 60 minute game in Red Hook with Don Omar (Luis) team. We won two goals.', 60, 0, 2, 2);
INSERT INTO `exercise` VALUES ('10064281220072', 'Sunday', 12, 8, 2007, 'Night Abs', 'I did 3 sets of the following abs: calf on the chair situps, I did the lifting the legs and dropping them to the chair, and the in and out legs with my upperbody lifted.', 30, 30, 3, 2);
INSERT INTO `exercise` VALUES ('12195781320072', 'Monday', 13, 8, 2007, 'Morning Abs', 'I did the following kinds of abs: Calf on a chair, lifting and dropping legs, and in and out legs with the upperbody lifted.', 45, 30, 3, 2);
INSERT INTO `exercise` VALUES ('22520181320072', 'Monday', 13, 8, 2007, 'Night Abs', 'I did the following abs: Legs bent on top of the chair, leg raises and drop, and in and out legs with upperbody lift like in a sitting position. Each one had 3 sets of 30 repetition each set.', 20, 30, 3, 2);
INSERT INTO `exercise` VALUES ('23553681420072', 'Tuesday', 14, 8, 2007, 'Abs', 'I did the following abs types: legs resting on a chair, lift and drop legs with body laying on the floor, and in and out legs with upper body raised.', 15, 30, 3, 2);
INSERT INTO `exercise` VALUES ('15571281520071', 'Wednesday', 15, 8, 2007, 'Lunch Abs', 'I did the following abs: legs on top of a chair, legs lift and drop, and in and out legs. I did 3 sets of each with 30 repetitions each set.', 60, 30, 3, 2);
INSERT INTO `exercise` VALUES ('0071181520071', 'Wednesday', 15, 8, 2007, 'Night Abs', 'I did the following set of abs: the legs on top of a chair, raising and dropping legs, and in and out legs.', 45, 30, 3, 2);
INSERT INTO `exercise` VALUES ('0113681620071', 'Thursday', 16, 8, 2007, 'Night Abs', 'I did the following set of abs: the legs on top of the chair, and the raises and drops of the legs.', 30, 30, 3, 2);
INSERT INTO `exercise` VALUES ('0151882320072', 'Thursday', 23, 8, 2007, 'Afternoon Soccer', 'I went to play to the nike field and then we went to the chinatown field to play. In the chinatown field I played three ten minute games and in the nike field I played 1 hour. My ankle did not bother me that much, but I still can not run at full speed and tackle with my left ankle.', 90, 2, 1, 2);
INSERT INTO `exercise` VALUES ('0185182320072', 'Thursday', 23, 8, 2007, 'Night Soccer', 'I went to play with Jason and Chip to Chelsea Waterside field. We played with the coed league who were having organize pickup. We started playing about 8:45PM and finished playing about 10:30 PM. My ankle was ok although I wasn''t able to tackle anyone I was able to move more without any problems in my ankle. I was also able to shoot almost with my strength with that foot something I haven''t done for about four weeks and a half.', 95, 0, 1, 2);
INSERT INTO `exercise` VALUES ('0195382320072', 'Thursday', 23, 8, 2007, 'Night Abs', 'I did the seatups with my legs ontop of a chair. I did three sets of 30 repetions each set.', 15, 3, 1, 2);
INSERT INTO `exercise` VALUES ('2392282520072', 'Saturday', 25, 8, 2007, 'Night Soccer', 'I played  about 30 minutes in Donaldo''s team. We won 9 - 0 against this very bad team.', 30, 0, 1, 2);
INSERT INTO `exercise` VALUES ('21583782620072', 'Sunday', 26, 8, 2007, 'Morning Soccer', 'I played in Red Hook with Catrachos. Each half was 35 minutes long and I played for the whole game. We won 1-0.', 70, 0, 1, 2);
INSERT INTO `exercise` VALUES ('22112582820072', 'Tuesday', 28, 8, 2007, 'Night Abs', 'I did four sets of 30 repetitions of the following abs:\r\n1. Legs on top of a chair abs.\r\n2. In and out leg abs.\r\n3. Raise and drop leg abss.', 105, 30, 4, 2);
INSERT INTO `exercise` VALUES ('21564482920072', 'Wednesday', 29, 8, 2007, 'Night Soccer', 'I went to play with some sss coaches in 103rd St. in the Riverside Park. ', 90, 0, 1, 2);
INSERT INTO `exercise` VALUES ('23155082920072', 'Wednesday', 29, 8, 2007, 'Night Abs', 'I did 4 sets of 30 repetition each set of the following abs: Legs on chair abs.', 30, 30, 4, 2);
INSERT INTO `exercise` VALUES ('21513983020072', 'Thursday', 30, 8, 2007, 'Night Soccerr', 'We went to play 10 minute games or two goals on 96th St. & 2nd Ave. with some sss coaches. AJ, Jason, Maxi, Erick, and I.', 70, 0, 1, 2);
INSERT INTO `exercise` VALUES ('14594383120072', 'Friday', 31, 8, 2007, 'Morning abs', 'I did the the following abs:\r\n1. legs resting on chair\r\n2. in and out legs.', 60, 30, 4, 2);
INSERT INTO `exercise` VALUES ('23494583120072', 'Friday', 31, 8, 2007, 'Night Soccer', 'I went to play soccer to chinatown and later we went to play to pier 40, we only played for 34 minutes in chinatown.', 120, 0, 1, 2);
INSERT INTO `exercise` VALUES ('1447409120072', 'Saturday', 1, 9, 2007, 'Morning Soccer', 'I went to play soccer to the park.', 30, 0, 1, 2);
INSERT INTO `exercise` VALUES ('242439120072', 'Saturday', 1, 9, 2007, 'Night Soccer', 'I went to play at Donaldo''s team. We lost 2-0.', 40, 0, 1, 2);
INSERT INTO `exercise` VALUES ('2059419220072', 'Sunday', 2, 9, 2007, 'Night Soccer', 'I played two games with Cuajada''s team. The first game I played about 30 minutes and we tied 1-1. The second game we lost 2-1.', 70, 0, 1, 2);
INSERT INTO `exercise` VALUES ('2221129320072', 'Monday', 3, 9, 2007, 'Morning Abs', 'I did only one type of abs. The legs ontop of the chair.', 30, 30, 4, 2);
INSERT INTO `exercise` VALUES ('2222089420072', 'Tuesday', 4, 9, 2007, 'Night Soccer', 'I went to play soccer in 103 and riverside.', 90, 0, 1, 2);
INSERT INTO `exercise` VALUES ('2225299520072', 'Wednesday', 5, 9, 2007, 'Morning Abs', 'I have only one type of abs: the legs on the chair. I did four sets of 30 repetition each set.', 15, 30, 4, 2);
INSERT INTO `exercise` VALUES ('2228229520072', 'Wednesday', 5, 9, 2007, 'Night Soccer', 'I went to play soccer to 103 St & Riverside. Jason, Liliana and her friend, and Douglas went to play soccer with Michael and I.', 90, 0, 1, 2);
INSERT INTO `exercise` VALUES ('032389620072', 'Thursday', 6, 9, 2007, 'Night Soccer', 'I went to play to 103 St. & Riverside with Jose, Jason R, Kelly, Bianca, Erik, Manuel, and Bret.', 90, 0, 1, 2);
INSERT INTO `exercise` VALUES ('018049820072', 'Saturday', 8, 9, 2007, 'Morning Soccer', 'I went to play soccer to the park. We played 5 on 5 and then we played in a bigger group.', 90, 0, 1, 2);
INSERT INTO `exercise` VALUES ('019559820072', 'Saturday', 8, 9, 2007, 'Night Soccer', 'I went to play soccer with Donaldo''s team. We had two games, the first one we won 4-2 and the third one we won 2-0.', 80, 0, 1, 2);
INSERT INTO `exercise` VALUES ('22294891120072', 'Tuesday', 11, 9, 2007, '', 'I did 6 sets of the following abs: the legs resting on a chair. Each set had 30 repetitions.', 30, 30, 6, 2);
INSERT INTO `exercise` VALUES ('23161091220072', 'Wednesday', 12, 9, 2007, 'Afternoon Soccer', 'I went to play soccer to chinatown. Jose and Luke came to play with me. We played from 3 to 6 pm.', 90, 0, 1, 2);
INSERT INTO `exercise` VALUES ('0450591420072', 'Friday', 14, 9, 2007, 'Afternoon Soccer', 'I went to play soccer to chinatown. I played with Waly, Jessie, Colombia, Rafa, Ecuador, and some other guys. We started to play a little bit late because there some boys playing american football and they didn''t want to leave. The police came and told them they had until next touch down and then they have to leave the field. We didn''t not have a permit, but for the first time we were able to kick someone playing an american sport.', 90, 0, 1, 2);
INSERT INTO `exercise` VALUES ('21003291520072', 'Saturday', 15, 9, 2007, 'Night Soccer', 'I played soccer with Donaldo''s team. We played two games. The first game we won 2-0 and the second we tied 0-0.', 70, 0, 1, 2);
INSERT INTO `exercise` VALUES ('0193391620072', 'Sunday', 16, 9, 2007, 'Night Soccer', 'I played two games in the countries tournament. I played for Honduras. I did not played the first game: we played against Guatemala and we won on penalty kicks. I played against Ecuador who beat Greece and we won 4-1. We played the final against Mexico who beat El Salvador who beat USA and we beat Mexico 3-1.', 50, 0, 1, 2);
INSERT INTO `exercise` VALUES ('21123991820072', 'Tuesday', 18, 9, 2007, 'Morning Abs', 'I did 5 sets of 30 repetitions of the following abs: Legs on top of a chair.', 30, 30, 5, 2);
INSERT INTO `exercise` VALUES ('21335491920072', 'Wednesday', 19, 9, 2007, 'Night Soccer', 'I went to play soccer to 96th St. and 2nd Ave. Lawrence went to play with me.', 60, 0, 1, 2);
INSERT INTO `exercise` VALUES ('0201692120072', 'Friday', 21, 9, 2007, 'Night Soccer', 'I went to play with Conrado''s team in John Jay. We won''t won 5-4. We will be playing next week at the same time with the same team.', 30, 0, 1, 2);
INSERT INTO `exercise` VALUES ('9575192220072', 'Saturday', 22, 9, 2007, 'Morning Soccer', 'I went to play to prospect park. I was working on attacking. I would get the ball and turn and attacked.', 80, 0, 1, 2);
INSERT INTO `exercise` VALUES ('21595092320072', 'Sunday', 23, 9, 2007, 'Morning Soccer', 'I went to play to the park. I was working on turning and taking the ball forward. My running is getting much better I am almsot running at my full speed.', 120, 0, 1, 2);
INSERT INTO `exercise` VALUES ('23254592520072', 'Tuesday', 25, 9, 2007, 'Night Abs', 'I did the abs where you put your legs ontop of a chair. I did 6 sets of 30 repetitions each.', 20, 30, 6, 2);
INSERT INTO `exercise` VALUES ('11574392820072', 'Friday', 28, 9, 2007, 'Night Soccer', 'I played in Conrado''s team in John Jay. We tied 1-1, but since we won the previous game, we made it to the next round. ', 40, 0, 1, 2);
INSERT INTO `exercise` VALUES ('23111810420072', 'Thursday', 4, 10, 2007, 'Night Soccer', 'I played soccer for sss. We lost 13-5. We started working on a new system. We try to group more in the back so there are no space for the other team to shoot. We try to tell where to move to our players.', 20, 0, 1, 2);
INSERT INTO `exercise` VALUES ('15570510620072', 'Saturday', 6, 10, 2007, 'Noon Soccer', 'I went to play soccer in Park Slope. I did not run too much.', 80, 0, 1, 2);
INSERT INTO `exercise` VALUES ('23505210620072', 'Saturday', 6, 10, 2007, 'Night Soccer', 'We play the first playoff game and we lost 3-1. ', 40, 0, 1, 2);
INSERT INTO `exercise` VALUES ('135017101220072', 'Friday', 12, 10, 2007, 'Night Soccer', 'I played with Conrado''s team. We lost the first game 3-2 after being winning 2-1, but I think we can beat that team. They just kick  and push a lot, but we are faster and pass the ball much better.', 40, 0, 1, 2);
INSERT INTO `exercise` VALUES ('00538101320072', 'Saturday', 13, 10, 2007, 'Night Soccer', 'I played for only the second half of the game. We won 3-2, we lost the previous game 3-1. Which in the global we lost 4-5 and we were eliminated. The indoor season is going to start very soon.', 20, 0, 1, 2);
INSERT INTO `exercise` VALUES ('200547101920072', 'Friday', 19, 10, 2007, 'Night Soccer', 'I went to play in Conrado''s team. We lost the second game 4-5 and the previous we lost 2-3. So we are out.', 40, 0, 1, 2);
INSERT INTO `exercise` VALUES ('200728101820072', 'Thursday', 18, 10, 2007, 'Night Soccer', 'I went to play with the SSS soccer team in Chelsea Piers. We won for the first time 13-3. The play is better, is playing more like a team, but we are still making mistakes, like keeping the ball too long, not coming to help back.', 45, 0, 1, 2);
INSERT INTO `exercise` VALUES ('144722102120072', 'Sunday', 21, 10, 2007, 'Morning Soccer', 'I went to play to the park. It was ok. I had a good a run.', 120, 0, 1, 2);
INSERT INTO `exercise` VALUES ('163112102320071', 'Monday', 23, 10, 2007, 'Soccer', 'Soccer practice with Dar', 60, 0, 1, 1);
INSERT INTO `exercise` VALUES ('164738102320071', 'Tuesday', 23, 10, 2007, ' Latent Legs', '', 0, 0, 1, 1);
INSERT INTO `exercise` VALUES ('150604102520072', 'Thursday', 25, 10, 2007, 'Night Soccer', 'I went to play with sss team in chelsea piers and we won 7-6. The game was very good and Chip score in the last minute of the game. I scored two goals.', 45, 0, 1, 2);
INSERT INTO `exercise` VALUES ('110332102920076', 'Monday', 29, 10, 2007, 'Kwanddo', '', 50, 0, 1, 6);
INSERT INTO `exercise` VALUES ('120644102820072', 'Sunday', 28, 10, 2007, 'Night Soccer', 'I when to play to prospect park. I stayed there for two hours.', 120, 0, 1, 2);
INSERT INTO `exercise` VALUES ('13060111120072', 'Thursday', 1, 11, 2007, 'Night Soccer', 'I went to play with SSS in Chelsea Piers and we won 15-5.', 25, 0, 1, 2);
INSERT INTO `exercise` VALUES ('223743111020072', 'Saturday', 10, 11, 2007, 'Night Soccer', 'I went to play in Donaldo''s team. This was our first indoor game. We lost 3-0.', 40, 0, 1, 2);
INSERT INTO `exercise` VALUES ('22383611820072', 'Thursday', 8, 11, 2007, 'Night Soccer', 'I went to play with Super soccer stars. We won 14-4. ', 30, 0, 1, 2);
INSERT INTO `exercise` VALUES ('212355112220072', 'Thursday', 22, 11, 2007, 'Afternoon Soccer', 'I went to play soccer in the park with my Michael and some other people who showed up to play.', 150, 0, 1, 2);
INSERT INTO `exercise` VALUES ('212529112320072', 'Friday', 23, 11, 2007, 'Morning Soccer', 'I went to play soccer with Freddy and Aldubin, who came to play from NJ and Michael. We played 3 on 3 for about 2 hours.', 120, 0, 1, 2);
INSERT INTO `exercise` VALUES ('937131720081', 'Monday', 7, 1, 2008, 'Aerobic', 'trampoline', 30, 0, 1, 1);
INSERT INTO `exercise` VALUES ('937511720081', 'Monday', 7, 1, 2008, 'Other', 'Handstands, biceps and shoulders', 0, 10, 3, 1);
INSERT INTO `exercise` VALUES ('815194120081', 'Tuesday', 1, 4, 2008, 'Cardio', 'Trampoline', 35, 0, 1, 1);
INSERT INTO `exercise` VALUES ('816584120081', 'Tuesday', 1, 4, 2008, 'Stomach/ Back', 'Roll outs\r\nBall leg and arm lifts (back)\r\nBall crunches\r\nPush ups', 15, 0, 1, 1);
INSERT INTO `exercise` VALUES ('22560091620082', 'Tuesday', 16, 9, 2008, 'Abdominals', 'I did 3 sets of in and out legs abdominals, up and down legs with body upper body laying on the floor and alternate up and down legs with upper body up.', 30, 30, 3, 2);
INSERT INTO `exercise` VALUES ('21083092620082', 'Friday', 26, 9, 2008, 'Abdominals', 'I did 3 sets of 30 repetitions of up and down legs together and in and out abs.', 15, 30, 3, 2);
INSERT INTO `exercise` VALUES ('7530610120082', 'Wednesday', 1, 10, 2008, 'Abs', 'I did three set of 30 repetitions of the following abs:\r\nin and out, legs up and down, and leg up and down and vice versa.', 20, 30, 3, 2);
INSERT INTO `exercise` VALUES ('20355010520082', 'Sunday', 5, 10, 2008, 'Training with the Ball', 'I did running with the ball, juggling the ball, heading,  and stepping over the ball 4 sets of 20 repetitions, the same was done for toe tops, and going forward and backwards without touching the ball.', 60, 20, 4, 2);
INSERT INTO `exercise` VALUES ('105321101020082', 'Friday', 10, 10, 2008, 'Seat Ups', 'I did seat ups with foot resting on the ball and the others with in and out legs.', 20, 3, 2, 2);
INSERT INTO `exercise` VALUES ('105532101120082', 'Saturday', 11, 10, 2008, 'Seat Ups', 'I did the seat ups with foot resting on the ball and then the in and out feet.', 20, 20, 5, 2);
INSERT INTO `exercise` VALUES ('222125101220082', 'Sunday', 12, 10, 2008, 'Abs', 'I did abs with legs on top of the ball and lifting chest up and down. I did the ball pressed by my thighs and feet and up and down, and in and out with legs on top of the ball.', 30, 20, 5, 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `exhibitions`
-- 

CREATE TABLE `exhibitions` (
  `id` bigint(20) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `description` varchar(200) default NULL,
  `smonth` tinyint(4) default NULL,
  `sday` tinyint(4) default NULL,
  `syear` int(11) default NULL,
  `emonth` tinyint(4) NOT NULL default '0',
  `eday` tinyint(4) NOT NULL default '0',
  `eyear` int(11) NOT NULL default '0',
  `shour` tinyint(4) default NULL,
  `sminute` tinyint(4) default NULL,
  `sampm` char(2) default NULL,
  `ehour` tinyint(4) default NULL,
  `eminute` tinyint(4) default NULL,
  `eampm` char(2) default NULL,
  `type` char(1) NOT NULL default '',
  `notes` tinytext,
  `website` varchar(100) default NULL,
  `phone` varchar(20) default NULL,
  `price` smallint(6) default NULL,
  `days` varchar(50) default NULL,
  `location` varchar(50) default NULL,
  `place` varchar(60) default NULL,
  `place_id` bigint(20) default NULL,
  `user_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `exhibitions`
-- 

INSERT INTO `exhibitions` VALUES (1, 'I am just testing', 'nothing to describe here', 8, 22, 2008, 8, 31, 2008, 10, 30, 'PM', 12, 0, 'AM', 'd', 'I am just testing to see if it works.', 'nowebsite.com', '212.877.7171', 10, 'All Days', 'Greenpoint', '', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `food`
-- 

CREATE TABLE `food` (
  `id` varchar(35) NOT NULL default '',
  `ftype` varchar(50) NOT NULL default '',
  `description` text NOT NULL,
  `cooked` varchar(50) NOT NULL default '',
  `meal_id` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the food eaten at certain time';

-- 
-- Dumping data for table `food`
-- 

INSERT INTO `food` VALUES ('0234481420072', 'Drink', 'I had a vitamin water.', 'Raw', '81420072');
INSERT INTO `food` VALUES ('0234581420072', 'Protein', 'I had a bacon and egg on a roll.', 'Fried', '81420072');
INSERT INTO `food` VALUES ('0234681420072', 'Protein', 'I had two eggs and sausage on a roll.', 'Fried', '81420072');
INSERT INTO `food` VALUES ('0244381420072', 'Drink', 'I had muscle drink for lunch.', 'Raw', '81420072');
INSERT INTO `food` VALUES ('0251981420072', 'Protein', 'I had a chicken fajita for lunch.', 'Grilled', '81420072');
INSERT INTO `food` VALUES ('0273181420072', 'Protein', 'I had meat for dinner.', 'Grilled', '81420072');
INSERT INTO `food` VALUES ('0273281420072', 'Starch', 'I had yellow rice for dinner.', 'Boiled', '81420072');
INSERT INTO `food` VALUES ('0273381420072', 'Vegetable', 'I had beans for dinner.', 'Boiled', '81420072');
INSERT INTO `food` VALUES ('23254582720072', 'Protein', 'I had two eggs on a roll and water to drink.', 'Fried', '82720072');
INSERT INTO `food` VALUES ('23254682720072', 'Protein', 'I had a burger with monterrey jack cheese and water. I also ate an apple.', 'Grilled', '82720072');
INSERT INTO `food` VALUES ('23254782720072', 'Starch', 'I had pasta with shrimp on nicole''s tomatoe sauce.', 'Souteed', '82720072');
INSERT INTO `food` VALUES ('23262382720072', 'Fruit', 'I had an apple as a snack.', 'Raw', '82720072');
INSERT INTO `food` VALUES ('19135782820072', 'Protein', 'I had two eggs on a roll and water.', 'Fried', '82820072');
INSERT INTO `food` VALUES ('19173182820072', 'Protein', 'I had lamb over rice with lettuce and tomatoes, white and barbecue sauce. I had two nectarines and water.', 'Fried', '82820072');
INSERT INTO `food` VALUES ('19203982820072', 'Fruit', 'I had a large mango as snack.', 'Raw', '82820072');
INSERT INTO `food` VALUES ('19510882820072', 'Starch', 'I had pasta with nicole''s tomatoe sauce for afternoon snack. ', 'Souteed', '82820072');
INSERT INTO `food` VALUES ('22271282820072', 'Starch', 'Dinner had the following: rice, potatoes, red pepper, and beef. And water.', 'Boiled', '82820072');
INSERT INTO `food` VALUES ('14221982920072', 'Fruit', 'I had a peach.', 'Raw', '82920072');
INSERT INTO `food` VALUES ('14222082920072', 'Starch', 'I had lamb over rice with lettuce and tomatoes. I had water as a drink.', 'Fried', '82920072');
INSERT INTO `food` VALUES ('22115282920072', 'Starch', 'I had grilled chicken with rice. I had water as the drink.', 'Grilled', '82920072');
INSERT INTO `food` VALUES ('23144882920072', 'Fruit', 'I had a mango as dessert.', 'Raw', '82920072');
INSERT INTO `food` VALUES ('21542183020072', 'Protein', 'I had two eggs sunny side up on a roll with water as a drink.', 'Fried', '83020072');
INSERT INTO `food` VALUES ('21542283020072', 'Starch', 'I had spagghetti with meatballs and macaroni and ground beef.', 'Baked', '83020072');
INSERT INTO `food` VALUES ('21542383020072', 'Sweet', 'I had a redbull and a waffler candy.', 'Raw', '83020072');
INSERT INTO `food` VALUES ('21565383020072', 'Protein', 'I had fried rice with beef stew and boiled with water as a drink.', 'Fried', '83020072');
INSERT INTO `food` VALUES ('15002683120072', 'Protein', 'I had two boiled eggs with beans and 6 tortillas.', 'Boiled', '83120072');
INSERT INTO `food` VALUES ('23523983120072', 'Starch', 'I had a slice of pizza.', 'Fried', '83120072');
INSERT INTO `food` VALUES ('23561683120072', 'Protein', 'I had mondongo. It had potatoes, green plantain, tomatoes, etc.', 'Boiled', '83120072');
INSERT INTO `food` VALUES ('23561783120072', 'Starch', 'I had nachos with ground beef, sour cream, jalapenos, grilled chicken, beans, etc.', 'Fried', '83120072');
INSERT INTO `food` VALUES ('1449179120072', 'Starch', 'I had a Omelette sandwich from burger king: it had bacon, sausage, and eggs. I had orange juice with it.', 'Fried', '9120072');
INSERT INTO `food` VALUES ('1517329120072', 'Starch', 'I had two tomales.', 'Boiled', '9120072');
INSERT INTO `food` VALUES ('244139120072', 'Protein', 'I had chicken with rice and corn on a cob and two slices of wonder bread.', 'Fried', '9120072');
INSERT INTO `food` VALUES ('1446529220072', 'Protein', 'I had omelette and sweet plaintain on the oven. ', 'Fried', '9220072');
INSERT INTO `food` VALUES ('2223319320072', 'Protein', 'I had rice and meat.', 'Fried', '9320072');
INSERT INTO `food` VALUES ('2224199320072', 'Protein', 'I had vegetables and sirloin steak.', 'Fried', '9320072');
INSERT INTO `food` VALUES ('2225479420072', 'Starch', 'I had a nacatamal de pollo', 'Boiled', '9420072');
INSERT INTO `food` VALUES ('2226259420072', 'Protein', 'I had stew goat and rice.', 'Boiled', '9420072');
INSERT INTO `food` VALUES ('2231109520072', 'Protein', 'I had rice and two boiled eggs with six tortillas.', 'Boiled', '9520072');
INSERT INTO `food` VALUES ('2231119520072', 'Protein', 'I had three chicken thighs with rice and four tortillas.', 'Boiled', '9520072');
INSERT INTO `food` VALUES ('1420469620072', 'Protein', 'I had a chicken parmigiana wrap. As a drink I had muscle milk.', 'Grilled', '9620072');
INSERT INTO `food` VALUES ('034339620072', 'Protein', 'I had grilled chicken with white rice and black beans. To drink I had water.', 'Grilled', '9620072');
INSERT INTO `food` VALUES ('2050219720072', 'Protein', 'I had a sunny side up egg on a roll and I as a drink I had sports water.', 'Fried', '9720072');
INSERT INTO `food` VALUES ('2051009720072', 'Starch', 'I had two slices of pizza and orange juice.', 'Fried', '9720072');
INSERT INTO `food` VALUES ('2052069720072', 'Protein', 'I had a pork burrito: it had pernil, beans, yellow rice, and soure cream. As a drink I had orchata.', 'Grilled', '9720072');
INSERT INTO `food` VALUES ('119439720072', 'Protein', 'I had a 6 oz beef burger with avocado, moshrooms, lettuce, cheddar cheese, and tomatoes, pickle and cole slaw. I had water and banana shake as drinks.', 'Grilled', '9720072');
INSERT INTO `food` VALUES ('024169820072', 'Fruit', 'I had a banana and drank some water.', 'Raw', '9820072');
INSERT INTO `food` VALUES ('024179820072', 'Protein', 'I had grilled chicken and sausages, and some rice with lettuce and tomatoes. I had grape soda as a drink.', 'Grilled', '9820072');
INSERT INTO `food` VALUES ('024189820072', 'Protein', 'I had grilled beef and rice with lettuce, cucumbers, and tomatoes. I had water to drink.', 'Grilled', '9820072');
INSERT INTO `food` VALUES ('026279820072', 'Fruit', 'I had about one quarter of a small watermelon.', 'Raw', '9820072');
INSERT INTO `food` VALUES ('1215329920072', 'Starch', 'I had a nacatamal.', 'Boiled', '9920072');
INSERT INTO `food` VALUES ('1215339920072', 'Starch', 'I had pizza and nachos with cheese. I also had a sprite as a drink.', 'Fried', '9920072');
INSERT INTO `food` VALUES ('1217149920072', 'Protein', 'I had beef shishkabud with a coca cola can of soda.', 'Grilled', '9920072');
INSERT INTO `food` VALUES ('1217159920072', 'Starch', 'I had doritos chips: Cool Ranch.', 'Fried', '9920072');
INSERT INTO `food` VALUES ('12184891020072', 'Fruit', 'I had a bananna.', 'Raw', '91020072');
INSERT INTO `food` VALUES ('12184991020072', 'Fruit', 'I had a bananna and a nectarine.', 'Raw', '91020072');
INSERT INTO `food` VALUES ('1160591020072', 'Fruit', 'I had a nectarine.', 'Raw', '91020072');
INSERT INTO `food` VALUES ('1175791020072', 'Starch', 'I had two slices of pizza.', 'Fried', '91020072');
INSERT INTO `food` VALUES ('1175891020072', 'Protein', 'I had two chicken thighs and pasta. I had water to drink.', 'Boiled', '91020072');
INSERT INTO `food` VALUES ('23032091220072', 'Fruit', 'I had a jamba juice: squeezed oranges. and I had a bananna and a plum.', 'Raw', '91220072');
INSERT INTO `food` VALUES ('23064491220072', 'Fruit', 'I had a bananna and a plum.', 'Raw', '91220072');
INSERT INTO `food` VALUES ('23064591220072', 'Vegetable', 'I had a crunch veggie wrap and a Odwalla drink: Super Protein Pumpkin.', 'Raw', '91220072');
INSERT INTO `food` VALUES ('23064691220072', 'Starch', 'I had nachos with ground beef, mozzarella cheese, black beans, and spanish olives.', 'Grilled', '91220072');
INSERT INTO `food` VALUES ('23084291120072', 'Fruit', 'I had a pear and a bananna.', 'Raw', '91120072');
INSERT INTO `food` VALUES ('23084391120072', 'Fruit', 'I had a pear and a bananna.', 'Raw', '91120072');
INSERT INTO `food` VALUES ('23084491120072', 'Protein', 'I had lamb over rice with water.', 'Fried', '91120072');
INSERT INTO `food` VALUES ('23122791120072', 'Starch', 'I had a nacatamales and a piece of chicken.', 'Fried', '91120072');
INSERT INTO `food` VALUES ('0401591420072', 'Starch', 'I had a nacatamal for lunch.', 'Boiled', '91420072');
INSERT INTO `food` VALUES ('0401691420072', 'Protein', 'I had roasted nuts. I had a small vitamin water as a drink.', 'Roasted', '91420072');
INSERT INTO `food` VALUES ('0401791420072', 'Protein', 'I had rice with guandules with cecina meat. I had water as a drink.', 'Roasted', '91420072');
INSERT INTO `food` VALUES ('0420491320072', 'Starch', 'I had a nacatamal for lunch.', 'Boiled', '91320072');
INSERT INTO `food` VALUES ('0420591320072', 'Protein', 'I had grilled fish with yellow rice.', 'Boiled', '91320072');
INSERT INTO `food` VALUES ('11051391520072', 'Protein', 'I had scramble eggs with cheese and tortillas.', 'Fried', '91520072');
INSERT INTO `food` VALUES ('11051491520072', 'Starch', 'I had a nacatamal.', 'Fried', '91520072');
INSERT INTO `food` VALUES ('11051591520072', 'Starch', 'I had two nacatamales. I had a beer.', 'Fried', '91520072');
INSERT INTO `food` VALUES ('11051691520072', 'Protein', 'I had a piece of meat, a sausage, and a piece of chicken with rice, beans and pico de gallo from Xiomara''s birthday.  I had a beer.', 'Grilled', '91520072');
INSERT INTO `food` VALUES ('0240591620072', 'Protein', 'I had grilled beef and a grilled piece of chicken with rice and beans and pico de gallo and a nacatamal. I had water as the drink.', 'Grilled', '91620072');
INSERT INTO `food` VALUES ('0240691620072', 'Starch', 'I had a slice of pizza and a piece of cake for Alexander Boris'' Birthday.', 'Fried', '91620072');
INSERT INTO `food` VALUES ('0240791620072', 'Protein', 'I had grilled beef and piece of chicken. It pico de gallo and I had water as the drink. I also had a nacatamal and a masapan.', 'Grilled', '91620072');
INSERT INTO `food` VALUES ('12201191720072', 'Starch', 'I had a plain bagel with cream cheese and I had a nutrament (360 caloriest 90 fat calories ).', 'Raw', '91720072');
INSERT INTO `food` VALUES ('12201291720072', 'Protein', 'I had a salad with lettuce, oranges, nuts, raisins, small tomatoes, and avocado, with italian dressing. I had water to drink.', 'Raw', '91720072');
INSERT INTO `food` VALUES ('23250891720072', 'Starch', 'I had a muffin and a granola bar with a vitamin water 2.5 * 50 calories. 2.5 * 13 g of sugar.', 'Baked', '91720072');
INSERT INTO `food` VALUES ('23250991720072', 'Protein', 'I had a beef with rice. I had water as a drink.', 'Fried', '91720072');
INSERT INTO `food` VALUES ('21153491820072', 'Protein', 'I had rice, baked zitti, and steak. I had a energy drink. I had a water energy.', 'Fried', '91820072');
INSERT INTO `food` VALUES ('21153591820072', 'Drink', 'I had a red bull and a Vanilla Cream Filled Wafers.', 'Raw', '91820072');
INSERT INTO `food` VALUES ('21153691820072', 'Starch', 'I had a nacatamal and water.', 'Boiled', '91820072');
INSERT INTO `food` VALUES ('23220191920072', 'Starch', 'I had a plain bagel with cream cheese not toasted. I had a nutrament to drink.', 'Baked', '91920072');
INSERT INTO `food` VALUES ('23220291920072', 'Protein', 'I had a pear and a vegetable wrap from starbucks. I had water to drink.', 'Raw', '91920072');
INSERT INTO `food` VALUES ('23220391920072', 'Fruit', 'I had two bananas and a nectarine.', 'Raw', '91920072');
INSERT INTO `food` VALUES ('23220491920072', 'Starch', 'I had lasagna, a nacatamal, and a piece of chicken with 6 tortillas. I had water to drink.', 'Baked', '91920072');
INSERT INTO `food` VALUES ('15194392120072', 'Fruit', 'I had a pear and a banana.', 'Raw', '92120072');
INSERT INTO `food` VALUES ('15194492120072', 'Vegetable', 'I had a very crunch veggie wrap and a fruit and cheese. I had water to drink.', 'Raw', '92120072');
INSERT INTO `food` VALUES ('15194592120072', 'Sweet', 'I had a vanilla cone from a truck.', 'Raw', '92120072');
INSERT INTO `food` VALUES ('15194692120072', 'Protein', 'I had grill beef and rice. I also had a lentil soup. I had water to drink.', 'Grilled', '92120072');
INSERT INTO `food` VALUES ('15215492020072', 'Fruit', 'I had two bananas.', 'Raw', '92020072');
INSERT INTO `food` VALUES ('15215592020072', 'Fruit', 'I had a nectarine, a banana, and a bagel with cream cheese. I had water to drink.', 'Raw', '92020072');
INSERT INTO `food` VALUES ('20424092020072', 'Starch', 'I had two nacatamales. I had a beer to drink.', 'Boiled', '92020072');
INSERT INTO `food` VALUES ('20424192020072', 'Protein', 'I had pork chops, rice and beans. I had water to drink.', 'Grilled', '92020072');
INSERT INTO `food` VALUES ('10032592220072', 'Starch', 'I had two nacatamales and water to drink, and I had a nectarine.', 'Boiled', '92220072');
INSERT INTO `food` VALUES ('10032692220072', 'Protein', 'I had olives with cheese, bread and crackers. I also had a glass of wine. I had a small pepper with cheese and ham.', 'Raw', '92220072');
INSERT INTO `food` VALUES ('10032792220072', 'Protein', 'I had pasta with meatballs and sausages with red sauce. I had soda to drink.', 'Baked', '92220072');
INSERT INTO `food` VALUES ('10032892220072', 'Sweet', 'I had cookies, a piece of cake, and I had a piece of an apple pie.', 'Baked', '92220072');
INSERT INTO `food` VALUES ('22100792320072', 'Protein', 'I had fried eggs with tomatoes, unions, red peppers and 4 tortillas. I had water to drink.', 'Fried', '92320072');
INSERT INTO `food` VALUES ('22100892320072', 'Protein', 'I had a nutrament. I had 2 chinese cookies. I had a filled blueberry and cream pie. I had water to drink.', 'Raw', '92320072');
INSERT INTO `food` VALUES ('22100992320072', 'Protein', 'I had a small burger and I had two fried meatballs with a salad: lettuce, peppers, tomatoes. I also had a piece of italian sausage and I had water to drink.', 'Grilled', '92320072');
INSERT INTO `food` VALUES ('22101092320072', 'Sweet', 'I had chocolate from russia brought by Nicole. I had water to drink.', 'Baked', '92320072');
INSERT INTO `food` VALUES ('12145092420072', 'Starch', 'I had a plain bagel with cream cheese not toasted. I had a nutrament to drink.', 'Baked', '92420072');
INSERT INTO `food` VALUES ('20310392420072', 'Vegetable', 'I had turkey sub with avocado, lettuce and tomatoes. I had a protein pumkin drink from starbucks.', 'Raw', '92420072');
INSERT INTO `food` VALUES ('22320792420072', 'Protein', 'I had rice with grill beef. I had a wonder bread. I had water to drink.', 'Grilled', '92420072');
INSERT INTO `food` VALUES ('22362292520072', 'Starch', 'I had rice and beef ribs. I had water to drink.', 'Baked', '92520072');
INSERT INTO `food` VALUES ('22362392520072', 'Sweet', 'I had half of cinnabom. I had a vitamin water to drink: energy.', 'Baked', '92520072');
INSERT INTO `food` VALUES ('22362492520072', 'Protein', 'I had rice and grilled beef.  I had cheese and a quarter of an avocado. I had water to drink.', 'Grilled', '92520072');
INSERT INTO `food` VALUES ('23005492520072', 'Starch', 'I had a piece of cheese with two pieces of bread.', 'Raw', '92520072');
INSERT INTO `food` VALUES ('12035692620072', 'Starch', 'I had a plain bagel with cream cheese and I had a nutrament.', 'Baked', '92620072');
INSERT INTO `food` VALUES ('13233292820072', 'Drink', 'I had a jamba juice. I had a Acai anti-oxidants. Size 16.', 'Raw', '92820072');
INSERT INTO `food` VALUES ('16475292820072', 'Fruit', 'I had two pear to eat today. I had a chicken salad. It had corn, olives, avocado, chicken, and olive oil.', 'Raw', '92820072');
INSERT INTO `food` VALUES ('16483392820072', 'Sweet', 'I ate about four bars of different chocolates. I had water to drink.', 'Raw', '92820072');
INSERT INTO `food` VALUES ('11584592920072', 'Protein', 'I had a two eggs sunny side up on a roll. I had a lemon zinger tea.', 'Fried', '92920072');
INSERT INTO `food` VALUES ('12062792720072', 'Starch', 'I had a roast beef bagel sandwich with lettuce and tomatoes. I also had a plain bagel with cream cheese and I had a vitamin water.', 'Raw', '92720072');
INSERT INTO `food` VALUES ('12062892720072', 'Protein', 'I had New Orlean Style BBQ Shrimp. I had a cabarnet savignon glass of wine: santa rosa. ', 'Grilled', '92720072');
INSERT INTO `food` VALUES ('12082492820072', 'Protein', 'I had a plain texan hamburger: it had an egg and a piece of meat with the burger bread. I had a strawberry, banana smoothie.', 'Grilled', '92820072');
INSERT INTO `food` VALUES ('12090392920072', 'Fruit', 'I had a pear.', 'Raw', '92920072');
INSERT INTO `food` VALUES ('10034210220072', 'Protein', 'I had a souteed of potatoes, beets, pear, apples, and sweet potatoes with broccoli, some green leaves, etc.', 'Souteed', '10220072');
INSERT INTO `food` VALUES ('18544610220072', 'Drink', 'I had a super protein pumkin drink from starbucks.', 'Raw', '10220072');
INSERT INTO `food` VALUES ('23145210220072', 'Starch', 'I had two nacatamales. I had water to drink.', 'Boiled', '10220072');
INSERT INTO `food` VALUES ('23155410220072', 'Protein', 'I had beef with string beans and red pepper and rice and a piece of cheese. I had water to drink. ', 'Souteed', '10220072');
INSERT INTO `food` VALUES ('23444710220072', 'Protein', 'I had four corn tortillas with a piece of cheese.', 'Raw', '10220072');
INSERT INTO `food` VALUES ('13221510320072', 'Starch', 'I had a not toasted plain bagel with cream cheese. I had a nutrament to drink.', 'Raw', '10320072');
INSERT INTO `food` VALUES ('13221610320072', 'Protein', 'I had a turkey wrap. I had Naked Protein drink: pineapple, coconut, orange, and bananas: 500 Caloriest. 70 Calories from fat.', 'Raw', '10320072');
INSERT INTO `food` VALUES ('23532710320072', 'Protein', 'I had chicken and rice. I had water to drink.', 'Boiled', '10320072');
INSERT INTO `food` VALUES ('23532810320072', 'Protein', 'I had one third of a small avocado with four tortillas. I had water to drink.', 'Raw', '10320072');
INSERT INTO `food` VALUES ('18274210420072', 'Starch', 'I had a not toasted plain bagel with cream cheese. I had a nutrament drink.', 'Baked', '10420072');
INSERT INTO `food` VALUES ('18281910420072', 'Starch', 'I a roastbeef sandwich on a bagel. I had a vitamin water.', 'Raw', '10420072');
INSERT INTO `food` VALUES ('18292210420072', 'Protein', 'I had rice and meatballs. I had water to drink.', 'Boiled', '10420072');
INSERT INTO `food` VALUES ('23093610420072', 'Protein', 'I had rice and grilled beef with six tortillas. I had water to drink.', 'Grilled', '10420072');
INSERT INTO `food` VALUES ('21414110720072', 'Starch', 'I had a pumkin bread and a hot chocolate from starbucks.', 'Baked', '10720072');
INSERT INTO `food` VALUES ('21414210720072', 'Starch', 'I had a large slice of pizza and a muscle drink.', 'Baked', '10720072');
INSERT INTO `food` VALUES ('21423510720072', 'Starch', 'I had half of a spinach calzone and half of a sausage calzone. I had water to drink.', 'Baked', '10720072');
INSERT INTO `food` VALUES ('16465010920072', 'Drink', 'I had a soup that had chicken, beans, and other vegetables. I had part of a VitaZest drink.', 'Boiled', '10920072');
INSERT INTO `food` VALUES ('16465110920072', 'Starch', 'I had half of a quesadilla and I had sweet potatoes fries. I had part of a VitaZest drink.', 'Baked', '10920072');
INSERT INTO `food` VALUES ('23511410920072', 'Protein', 'I had beef and rice. I had water to drink.', 'Fried', '10920072');
INSERT INTO `food` VALUES ('23511510920072', 'Protein', 'I had rice and chicken. I had water to drink and a banana milkshake.', 'Fried', '10920072');
INSERT INTO `food` VALUES ('171439101020072', 'Protein', 'I had gyro and a bottle of water.', 'Grilled', '101020072');
INSERT INTO `food` VALUES ('01625101020072', 'Protein', 'I had rice and beef stew. I had water to drink.', 'Fried', '101020072');
INSERT INTO `food` VALUES ('215924101420072', 'Starch', 'I had 6 tortillas with mozarella cheese. I had water to drink.', 'Raw', '101420072');
INSERT INTO `food` VALUES ('215925101420072', 'Protein', 'I had a burger with monterrey jack cheese, lettuce and tomatoes. I had apple juice to drink.', 'Grilled', '101420072');
INSERT INTO `food` VALUES ('215926101420072', 'Starch', 'I had a piece of a sandwich with mozarella cheese and mushrooms.', 'Raw', '101420072');
INSERT INTO `food` VALUES ('215927101420072', 'Vegetable', 'I had a england clam chowder soup with a piece of bread. I had water to drink.', 'Boiled', '101420072');
INSERT INTO `food` VALUES ('115528101520072', 'Protein', 'I had two boiled eggs. I had water to drink.', 'Boiled', '101520072');
INSERT INTO `food` VALUES ('115529101520072', 'Starch', 'I had a plain bagel with cream cheese. I had a banana nutrament to drink.', 'Raw', '101520072');
INSERT INTO `food` VALUES ('115530101520072', 'Vegetable', 'I had a mozarella salad: lettuce, red pepper, tomatoes, cucumber, carrot, and mozarella cheese, with italian dressing. I had a energy vitaminwater to drink.', 'Raw', '101520072');
INSERT INTO `food` VALUES ('31451101720072', 'Starch', 'I had a slice of pizza. I had water to drink.', 'Baked', '101720072');
INSERT INTO `food` VALUES ('31452101720072', 'Protein', 'I had a chicken fajita in a panini. I had muscle builder drink.', 'Grilled', '101720072');
INSERT INTO `food` VALUES ('31453101720072', 'Protein', 'I had rice with mexican sausage and black beans. I had water to drink.', 'Boiled', '101720072');
INSERT INTO `food` VALUES ('125043101620072', 'Starch', 'I had a plain bagel with cream cheese. I have a vanilla nutrament to drink.', 'Baked', '101620072');
INSERT INTO `food` VALUES ('125044101620072', 'Protein', 'I had a grilled beef gyro with tomatoes, and sour cream sauce. I had water to drink.', 'Grilled', '101620072');
INSERT INTO `food` VALUES ('204237101620072', 'Protein', 'I had rice and mexican sausage with bean and mexican cream. I had water to drink.', 'Fried', '101620072');
INSERT INTO `food` VALUES ('122938102420072', 'Starch', 'I had a plain bagel with cream cheese. I had a small hot chocolate to drink.', 'Baked', '102420072');
INSERT INTO `food` VALUES ('122939102420072', 'Vegetable', 'I had a greek salad with Italian dressing and yogurt with bananas. I had water to drink.', 'Raw', '102420072');
INSERT INTO `food` VALUES ('01459102420072', 'Protein', 'I had ground beef with rice and 4 tortillas. I had a glass of coca cola  to drink.', 'Fried', '102420072');
INSERT INTO `food` VALUES ('183900102520072', 'Starch', 'I had roll with cream cheese and I had a hot chocolate to drink.', 'Baked', '102520072');
INSERT INTO `food` VALUES ('183936102520072', 'Vegetable', 'I had greek salad. I had a passion fruit juice to drink.\r\n', 'Raw', '102520072');
INSERT INTO `food` VALUES ('150442102620072', 'Starch', 'I had roll with butter and I had a small hot chocolate.', 'Baked', '102620072');
INSERT INTO `food` VALUES ('150443102620072', 'Protein', 'I had a chicken fajita panini and I had a muscle drink.', 'Grilled', '102620072');
INSERT INTO `food` VALUES ('120902102920072', 'Starch', 'I had a pear, a bagel with cream cheese and a hot chocolate.', 'Baked', '102920072');
INSERT INTO `food` VALUES ('120903102920072', 'Protein', 'I had orange marinated pork with olives, raisins, and walnuts. It had a vegetable stew on the side. I had water to drink.', 'Grilled', '102920072');
INSERT INTO `food` VALUES ('13124811220072', 'Starch', 'I had a bagel with cream cheese and a hot chocolate.', 'Baked', '11220072');
INSERT INTO `food` VALUES ('13034511520072', 'Starch', 'I had a walnuts and raisins bread with strawberry jam and yogurt cheese. I had a small apple and a small pear.', 'Baked', '11520072');
INSERT INTO `food` VALUES ('13034611520072', 'Vegetable', 'I had a salad with fetta cheese, cherry tomatoes, cucumbers, sprouts, and lettuce with Italina dressing.', 'Raw', '11520072');
INSERT INTO `food` VALUES ('124232111420072', 'Starch', 'I had poppyseed bagel with cream cheese and small hot chocolate.', 'Baked', '111420072');
INSERT INTO `food` VALUES ('124233111420072', 'Vegetable', 'I had a lettuce salad with red peppers, carrots, cucumbers, and small balls of mozarella cheese. I had water to drink.', 'Raw', '111420072');
INSERT INTO `food` VALUES ('100148112620071', 'Starch', 'Peanut Butter and Jelly sandwich', '', '112620071');
INSERT INTO `food` VALUES ('100149112620071', '', '', '', '112620071');
INSERT INTO `food` VALUES ('100150112620071', '', '', '', '112620071');
INSERT INTO `food` VALUES ('110142113020071', 'Protein', '6 slices prosciutto', 'Raw', '113020071');
INSERT INTO `food` VALUES ('110229113020071', 'Vegetable', 'Mashed turnip - with butter and milk', 'Baked', '113020071');
INSERT INTO `food` VALUES ('10031412320071', 'Protein', 'Omlette w veges and cheese', 'Souteed', '12320071');
INSERT INTO `food` VALUES ('9134112420071', 'Protein', '2 eggs', 'Boiled', '12420071');
INSERT INTO `food` VALUES ('9144612320071', 'Starch', 'Ham and swiss on a bagel', '', '12320071');
INSERT INTO `food` VALUES ('9154812320071', 'Starch', 'muffin', 'Baked', '12320071');
INSERT INTO `food` VALUES ('9162612320071', '', 'some salad and potato salad', '', '12320071');
INSERT INTO `food` VALUES ('9171012320071', 'Protein', 'Yogurt drink', '', '12320071');
INSERT INTO `food` VALUES ('9201412320071', 'Fruit', 'apple', '', '12320071');

-- --------------------------------------------------------

-- 
-- Table structure for table `games`
-- 

CREATE TABLE `games` (
  `id` bigint(20) NOT NULL auto_increment,
  `team_id` bigint(20) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `day` tinyint(4) NOT NULL default '0',
  `year` int(11) NOT NULL default '0',
  `hour` tinyint(4) NOT NULL default '0',
  `minute` tinyint(4) NOT NULL default '0',
  `ampm` char(2) NOT NULL default '',
  `score` varchar(15) NOT NULL default '',
  `team_name` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the games of the team that were and will be played' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `games`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `giftideas`
-- 

CREATE TABLE `giftideas` (
  `id` bigint(20) NOT NULL auto_increment,
  `c_id` bigint(20) NOT NULL default '0',
  `type` varchar(50) NOT NULL default '',
  `information` varchar(200) NOT NULL default '',
  `year` int(11) NOT NULL default '0',
  `user_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the gift ideas' AUTO_INCREMENT=19 ;

-- 
-- Dumping data for table `giftideas`
-- 

INSERT INTO `giftideas` VALUES (1, 27, 'birthday', 'Tickets to a children''s show', 2008, 2);
INSERT INTO `giftideas` VALUES (2, 7, 'birthday', 'Tickects to Enrique Iglesias and Aventura', 2008, 2);
INSERT INTO `giftideas` VALUES (3, 25, 'birthday', 'White Soccer Cleats', 2008, 2);
INSERT INTO `giftideas` VALUES (4, 2, 'birthday', 'City Dance tickets', 2008, 2);
INSERT INTO `giftideas` VALUES (5, 99, 'birthday', 'Movie:Max Payne and Dinner: Tacos Nuevo Mexico', 2008, 2);
INSERT INTO `giftideas` VALUES (6, 16, 'birthday', 'Cake', 2008, 2);
INSERT INTO `giftideas` VALUES (7, 15, 'birthday', 'Cake and Cookies', 2008, 2);
INSERT INTO `giftideas` VALUES (8, 0, 'Christmas', 'City Dance Tickets', 2008, 2);
INSERT INTO `giftideas` VALUES (9, 0, 'Christmas', 'City Dance Tickets', 2008, 2);
INSERT INTO `giftideas` VALUES (10, 0, 'Christmas', 'Soccer Classes', 2008, 2);
INSERT INTO `giftideas` VALUES (11, 0, 'Christmas', 'House Robe Not But For The Bath', 2008, 2);
INSERT INTO `giftideas` VALUES (12, 0, 'Christmas', 'Ana Gabriel Tickets', 2008, 2);
INSERT INTO `giftideas` VALUES (13, 0, 'Christmas', 'trip  to Dr. manning', 2008, 1);
INSERT INTO `giftideas` VALUES (14, 0, 'Christmas', 'Voice Recorder', 2008, 2);
INSERT INTO `giftideas` VALUES (15, 0, 'Christmas', 'Reading Device', 2008, 2);
INSERT INTO `giftideas` VALUES (16, 0, 'Christmas', 'Brain Quest', 2008, 2);
INSERT INTO `giftideas` VALUES (17, 0, 'Christmas', 'Bull Riding Tickets', 2008, 2);
INSERT INTO `giftideas` VALUES (18, 0, 'Christmas', 'Wintuk Tickets', 2009, 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `goals`
-- 

CREATE TABLE `goals` (
  `id` bigint(20) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `description` tinytext,
  `month` tinyint(4) default NULL,
  `day` tinyint(4) default NULL,
  `year` int(11) default NULL,
  `hour` tinyint(4) default NULL,
  `minute` tinyint(4) default NULL,
  `ampm` char(2) default NULL,
  `role_id` bigint(20) NOT NULL default '0',
  `user_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds all the goals that belong to a role' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `goals`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `holidays`
-- 

CREATE TABLE `holidays` (
  `id` bigint(20) NOT NULL auto_increment,
  `title` varchar(30) NOT NULL default '',
  `day` tinyint(4) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `description` tinytext NOT NULL,
  `dname` varchar(8) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the holidays' AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `holidays`
-- 

INSERT INTO `holidays` VALUES (1, 'Christmas', 25, 12, '', '');
INSERT INTO `holidays` VALUES (2, 'New Year', 1, 1, '', '');
INSERT INTO `holidays` VALUES (3, 'Thanksgiving', 5, 11, '', 'Thursday');

-- --------------------------------------------------------

-- 
-- Table structure for table `income`
-- 

CREATE TABLE `income` (
  `id` bigint(20) NOT NULL auto_increment,
  `month` tinyint(4) NOT NULL default '0',
  `year` int(11) NOT NULL default '0',
  `monthly` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `type` char(1) NOT NULL default 'I',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the amount of many made in a specific month' AUTO_INCREMENT=1220084 ;

-- 
-- Dumping data for table `income`
-- 

INSERT INTO `income` VALUES (1, 5, 2007, 3450, 2, 'I');
INSERT INTO `income` VALUES (2, 6, 2007, 2293, 2, 'I');
INSERT INTO `income` VALUES (3, 11, 2007, 2985, 2, 'I');
INSERT INTO `income` VALUES (4, 1, 2008, 3000, 9, 'I');
INSERT INTO `income` VALUES (5, 1, 2008, 2900, 2, 'I');
INSERT INTO `income` VALUES (6, 2, 2008, 2900, 2, 'I');
INSERT INTO `income` VALUES (7, 2, 2008, 2200, 4, 'I');
INSERT INTO `income` VALUES (8, 4, 2008, 3100, 1, 'I');
INSERT INTO `income` VALUES (9, 10, 2008, 34, 1, 'I');
INSERT INTO `income` VALUES (10, 12, 2008, 2800, 1, 'I');
INSERT INTO `income` VALUES (1220082, 12, 2008, 22, 1, 'O');
INSERT INTO `income` VALUES (1220083, 1, 2009, 60, 1, 'I');

-- --------------------------------------------------------

-- 
-- Table structure for table `logins`
-- 

CREATE TABLE `logins` (
  `uname` varchar(12) NOT NULL default '',
  `logins` bigint(20) NOT NULL default '0',
  `ltime` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`uname`)
) TYPE=MyISAM COMMENT='holds the records of the times a user has loged in';

-- 
-- Dumping data for table `logins`
-- 

INSERT INTO `logins` VALUES ('darsal09', 317, '6/12/2012');
INSERT INTO `logins` VALUES ('admin09', 35, '11/19/2008');
INSERT INTO `logins` VALUES ('angelven', 16, '1/28/2010');
INSERT INTO `logins` VALUES ('nicole', 1784, '3/23/2013');
INSERT INTO `logins` VALUES ('andres', 4, '2/19/2008');
INSERT INTO `logins` VALUES ('jena01', 9, '12/27/2007');
INSERT INTO `logins` VALUES ('michael', 5, '12/8/2007');
INSERT INTO `logins` VALUES ('117calyer', 6, '12/1/2008');
INSERT INTO `logins` VALUES ('hubertbuck', 1, '4/5/2008');
INSERT INTO `logins` VALUES ('kaletsa', 1, '4/13/2008');
INSERT INTO `logins` VALUES ('sabrina', 4, '4/25/2008');

-- --------------------------------------------------------

-- 
-- Table structure for table `majorcategory`
-- 

CREATE TABLE `majorcategory` (
  `id` bigint(20) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `budget` int(11) NOT NULL default '0',
  `description` tinytext NOT NULL,
  `user_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds all the major categories about finances' AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `majorcategory`
-- 

INSERT INTO `majorcategory` VALUES (1, 'Apartment', 2400, 'The money spent in the apartment and what is left goes to savings.', 1);
INSERT INTO `majorcategory` VALUES (2, 'Personal', 0, 'All the personal expenses will go here.', 1);
INSERT INTO `majorcategory` VALUES (3, 'Wedding', 0, '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `meal`
-- 

CREATE TABLE `meal` (
  `id` varchar(35) NOT NULL default '',
  `meal` varchar(30) NOT NULL default '',
  `day` tinyint(4) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `year` int(11) NOT NULL default '0',
  `weekday` varchar(10) NOT NULL default '',
  `user` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the meals ';

-- 
-- Dumping data for table `meal`
-- 

INSERT INTO `meal` VALUES ('81420072', 'Day', 14, 8, 2007, 'Tuesday', 2);
INSERT INTO `meal` VALUES ('82720072', 'Day', 27, 8, 2007, 'Monday', 2);
INSERT INTO `meal` VALUES ('82820072', 'Day', 28, 8, 2007, 'Tuesday', 2);
INSERT INTO `meal` VALUES ('82920072', 'Day', 29, 8, 2007, 'Wednesday', 2);
INSERT INTO `meal` VALUES ('83020072', 'Day', 30, 8, 2007, 'Thursday', 2);
INSERT INTO `meal` VALUES ('83120072', 'Day', 31, 8, 2007, 'Friday', 2);
INSERT INTO `meal` VALUES ('9120072', 'Day', 1, 9, 2007, 'Saturday', 2);
INSERT INTO `meal` VALUES ('9220072', 'Day', 2, 9, 2007, 'Sunday', 2);
INSERT INTO `meal` VALUES ('9320072', 'Day', 3, 9, 2007, 'Monday', 2);
INSERT INTO `meal` VALUES ('9420072', 'Day', 4, 9, 2007, 'Tuesday', 2);
INSERT INTO `meal` VALUES ('9520072', 'Day', 5, 9, 2007, 'Wednesday', 2);
INSERT INTO `meal` VALUES ('9620072', 'Day', 6, 9, 2007, 'Thursday', 2);
INSERT INTO `meal` VALUES ('9720072', 'Day', 7, 9, 2007, 'Friday', 2);
INSERT INTO `meal` VALUES ('9820072', 'Day', 8, 9, 2007, 'Saturday', 2);
INSERT INTO `meal` VALUES ('9920072', 'Day', 9, 9, 2007, 'Sunday', 2);
INSERT INTO `meal` VALUES ('91020072', 'Day', 10, 9, 2007, 'Monday', 2);
INSERT INTO `meal` VALUES ('91220072', 'Day', 12, 9, 2007, 'Wednesday', 2);
INSERT INTO `meal` VALUES ('91120072', 'Day', 11, 9, 2007, 'Tuesday', 2);
INSERT INTO `meal` VALUES ('91420072', 'Day', 14, 9, 2007, 'Friday', 2);
INSERT INTO `meal` VALUES ('91320072', 'Day', 13, 9, 2007, 'Thursday', 2);
INSERT INTO `meal` VALUES ('91520072', 'Day', 15, 9, 2007, 'Saturday', 2);
INSERT INTO `meal` VALUES ('91620072', 'Day', 16, 9, 2007, 'Sunday', 2);
INSERT INTO `meal` VALUES ('91720072', 'Day', 17, 9, 2007, 'Monday', 2);
INSERT INTO `meal` VALUES ('91820072', 'Day', 18, 9, 2007, 'Tuesday', 2);
INSERT INTO `meal` VALUES ('91920072', 'Day', 19, 9, 2007, 'Wednesday', 2);
INSERT INTO `meal` VALUES ('92120072', 'Day', 21, 9, 2007, 'Friday', 2);
INSERT INTO `meal` VALUES ('92020072', 'Day', 20, 9, 2007, 'Thursday', 2);
INSERT INTO `meal` VALUES ('92220072', 'Day', 22, 9, 2007, 'Saturday', 2);
INSERT INTO `meal` VALUES ('92320072', 'Day', 23, 9, 2007, 'Sunday', 2);
INSERT INTO `meal` VALUES ('92420072', 'Day', 24, 9, 2007, 'Monday', 2);
INSERT INTO `meal` VALUES ('92520072', 'Day', 25, 9, 2007, 'Tuesday', 2);
INSERT INTO `meal` VALUES ('92620072', 'Day', 26, 9, 2007, 'Wednesday', 2);
INSERT INTO `meal` VALUES ('92820072', 'Day', 28, 9, 2007, 'Friday', 2);
INSERT INTO `meal` VALUES ('92920072', 'Day', 29, 9, 2007, 'Saturday', 2);
INSERT INTO `meal` VALUES ('92720072', 'Day', 27, 9, 2007, 'Thursday', 2);
INSERT INTO `meal` VALUES ('10220072', 'Day', 2, 10, 2007, 'Tuesday', 2);
INSERT INTO `meal` VALUES ('10320072', 'Day', 3, 10, 2007, 'Wednesday', 2);
INSERT INTO `meal` VALUES ('10420072', 'Day', 4, 10, 2007, 'Thursday', 2);
INSERT INTO `meal` VALUES ('10720072', 'Day', 7, 10, 2007, 'Sunday', 2);
INSERT INTO `meal` VALUES ('10920072', 'Day', 9, 10, 2007, 'Tuesday', 2);
INSERT INTO `meal` VALUES ('101020072', 'Day', 10, 10, 2007, 'Wednesday', 2);
INSERT INTO `meal` VALUES ('101420072', 'Day', 14, 10, 2007, 'Sunday', 2);
INSERT INTO `meal` VALUES ('101520072', 'Day', 15, 10, 2007, 'Monday', 2);
INSERT INTO `meal` VALUES ('101720072', 'Day', 17, 10, 2007, 'Wednesday', 2);
INSERT INTO `meal` VALUES ('101620072', 'Day', 16, 10, 2007, 'Tuesday', 2);
INSERT INTO `meal` VALUES ('102420072', 'Day', 24, 10, 2007, 'Wednesday', 2);
INSERT INTO `meal` VALUES ('102520072', 'Day', 25, 10, 2007, 'Thursday', 2);
INSERT INTO `meal` VALUES ('102620072', 'Day', 26, 10, 2007, 'Friday', 2);
INSERT INTO `meal` VALUES ('102920072', 'Day', 29, 10, 2007, 'Monday', 2);
INSERT INTO `meal` VALUES ('11220072', 'Day', 2, 11, 2007, 'Friday', 2);
INSERT INTO `meal` VALUES ('11520072', 'Day', 5, 11, 2007, 'Monday', 2);
INSERT INTO `meal` VALUES ('111420072', 'Day', 14, 11, 2007, 'Wednesday', 2);
INSERT INTO `meal` VALUES ('112620071', 'Night', 26, 11, 2007, 'Monday', 1);
INSERT INTO `meal` VALUES ('113020071', 'Breakfast', 30, 11, 2007, 'Friday', 1);
INSERT INTO `meal` VALUES ('12320071', 'Breakfast', 3, 12, 2007, 'Monday', 1);
INSERT INTO `meal` VALUES ('12420071', 'Breakfast', 4, 12, 2007, 'Tuesday', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `monthly`
-- 

CREATE TABLE `monthly` (
  `id` int(11) NOT NULL auto_increment,
  `e_id` int(11) NOT NULL default '0',
  `month` tinyint(2) NOT NULL default '0',
  `day` tinyint(2) NOT NULL default '0',
  `year` smallint(4) NOT NULL default '0',
  `type` char(1) NOT NULL default '',
  `user_id` varchar(20) NOT NULL default '',
  `title` varchar(100) NOT NULL default '',
  `time` varchar(8) NOT NULL default '',
  UNIQUE KEY `id` (`id`)
) TYPE=MyISAM COMMENT='holds information about event occurence ' AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `monthly`
-- 

INSERT INTO `monthly` VALUES (1, 65, 12, 5, 2006, 'w', '1', 'Cashiering Implementation Mtg', '2:30 PM');
INSERT INTO `monthly` VALUES (2, 79, 1, 11, 2007, 'w', '1', 'Appointment', '6:00 PM');

-- --------------------------------------------------------

-- 
-- Table structure for table `people`
-- 

CREATE TABLE `people` (
  `id` bigint(20) NOT NULL auto_increment,
  `g_id` bigint(20) NOT NULL default '0',
  `c_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the contact ids for the gift idea people' AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `people`
-- 

INSERT INTO `people` VALUES (1, 10, 27);
INSERT INTO `people` VALUES (2, 8, 6);
INSERT INTO `people` VALUES (3, 8, 8);
INSERT INTO `people` VALUES (4, 8, 33);
INSERT INTO `people` VALUES (5, 11, 5);
INSERT INTO `people` VALUES (6, 12, 6);
INSERT INTO `people` VALUES (7, 14, 5);
INSERT INTO `people` VALUES (8, 15, 5);
INSERT INTO `people` VALUES (9, 16, 27);
INSERT INTO `people` VALUES (10, 17, 8);
INSERT INTO `people` VALUES (11, 17, 16);
INSERT INTO `people` VALUES (12, 18, 27);

-- --------------------------------------------------------

-- 
-- Table structure for table `places`
-- 

CREATE TABLE `places` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(60) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `food_type` varchar(50) default NULL,
  `description` tinytext,
  `location` varchar(50) default NULL,
  `a_id` int(11) default NULL,
  `phone` varchar(18) default NULL,
  `visited` varchar(10) default NULL,
  `rating` tinyint(1) default NULL,
  `price` char(1) default NULL,
  `website` varchar(60) default NULL,
  `open` tinytext,
  `note` tinytext,
  `user_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the places for the calendar' AUTO_INCREMENT=280 ;

-- 
-- Dumping data for table `places`
-- 

INSERT INTO `places` VALUES (1, 'R', 'Il Fornetto', 'italian', 'Italian restaurant and caterer.  Waterfront dining area.', 'Sheepshead Bay', 198, '718-332-8494', 'y', 3, 'M', 'ilfornettoRestaurant.com', '', 'A very good dining area.  It has a good waterfront dining area for a romatic dinner.', 2);
INSERT INTO `places` VALUES (2, 'R', 'Grimaldi''s', 'italian', 'Coal Brick - Oven Pizzeria.  ', 'DUMBO', 197, '718-858-4300', 'y', 5, 'M', '', 'Mon - Thur 11:30 AM - 11:00 PM\r\nFriday 11:30 AM - 12:00 PM\r\nSaturday 12:00 PM - 12:00 AM\r\nSunday 12:00 PM - 11:00 PM', 'One of the best pizzeria places in New York City.  I highly recommended.', 2);
INSERT INTO `places` VALUES (4, 'T', 'The Pavillion Theater', '', 'A theater in 15 St. and Prospect Park West.', 'Park Slope', 6, '', 'y', 4, 'H', '', '', 'It is close to my house.  One stop away from where I live in the F train.', 2);
INSERT INTO `places` VALUES (5, 'R', 'SottoVocce Cafe/Lounge', 'italian', 'A cafe/lounge. Good Italian food, their brunch special is very good.', 'Park Slope', 7, '718-369-9322', 'y', 4, 'M', '', '', 'I love their brunch specials.', 2);
INSERT INTO `places` VALUES (6, 'R', 'Trattoria Mulino', 'italian', 'Italian food restaurant open for lunch and dinner.', NULL, 8, '718-398-9001', 'y', 3, 'M', '', '7 days', '', 2);
INSERT INTO `places` VALUES (7, 'O', 'George Minichiello Real Estate Ltd.', '', 'A real estate located in sheepsheadbay brooklyn.', '', 9, '718.648.1000', 'n', 3, '', '', '', 'Nicole''s father''s business.', 2);
INSERT INTO `places` VALUES (8, 'O', 'Imagine Early Learning Centers, LCC', '', 'A place where I coached soccer before the summer started.', 'Upper East Side', 10, '212-410-2077', 'n', 0, '', 'Imagenelc.com', '', 'Maryann Gaggi is the director of the program.  her email is maryann@Imageneelc.com', 2);
INSERT INTO `places` VALUES (9, 'O', 'Super Soccer Stars', '', 'The place where I work.  We teach soccer to kids age 2-14.', 'Upper West Side', 38, '212-877-7171', 'n', 3, '', 'supersoccerstars.com', 'Monday - Friday 9:00 AM - 5:00 PM', 'I am a coach for super soccer stars.', 2);
INSERT INTO `places` VALUES (10, 'R', 'Copper Chimney', 'indian', 'Delicious Indian food served in a cozy location\r\n', 'Grammarcy', 380, '212-213-5742', 'y', 4, 'M', '', '', 'Went with Jo and Jackie', 1);
INSERT INTO `places` VALUES (11, 'S', 'Estadio Mitchell Athletic Complex', '', '', 'Long Island', 31, '914.760.8995', 'n', 3, '', 'goldstarssport.com', '', '', 2);
INSERT INTO `places` VALUES (12, 'T', 'Miller Theatre ( Columbia University )', '', 'They concerts that are not expensive.', NULL, 16, '212-854-7799', 'n', 0, 'L', 'millertheatre.com', '', '', 2);
INSERT INTO `places` VALUES (13, 'R', 'Home', 'other', 'Wonderful food, service and location. Twist on food', 'West Village', 381, '212-243-9579', 'y', 5, 'M', '', '', 'Went with Joanna', 1);
INSERT INTO `places` VALUES (14, 'R', 'Casa Mono', 'other', 'Incredible tapas restaurant', 'Union Square', 382, '212-253-2773', 'y', 4, 'M', '', '', '', 1);
INSERT INTO `places` VALUES (15, 'R', 'Bubby''s', 'american', 'Southern comfort food with 10 different types of lemonade and lots of homemade pies', 'Tribeca', 383, '212-219-0666', 'y', 4, 'M', '', '', 'Has a yearly pie eating contest', 1);
INSERT INTO `places` VALUES (16, 'R', 'Amy Ruth''s', 'american', 'Quintessential Harlem', 'Harlem', 384, '212-280-8779', 'y', 4, 'L', '', '', 'Loved it- Went with Tim after lights exhibit', 1);
INSERT INTO `places` VALUES (17, 'O', 'Chelsea Bed and Breakfast', '', 'Wonderful bed and breakfast in Manhattan. ', 'Chelsea', 0, '', 'y', 4, 'H', '', '', 'Stayed with Dar July 3 2006', 1);
INSERT INTO `places` VALUES (18, 'R', 'The Chocolate Room', 'other', 'Chocolate, dessert, wine bar.Enter a world of chocolate, from bonbons to brownies to fondue, inside the cozy Chocolate Room.', 'Park Slope', 385, '718-783-2900', 'n', 4, '', '', '', 'Sounds enticing', 1);
INSERT INTO `places` VALUES (19, 'B', 'Stonehome wine bar', '', 'voted one of the best in Time out', 'Clinton Hill', 386, '718-624-9443', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (20, 'B', 'Ceol Pub and Grill', '', 'Has Irish food and events', 'Clinton Hill', 387, '347-643-9911', 'n', 4, '', '', '347-643-9911', '', 1);
INSERT INTO `places` VALUES (21, 'R', 'Dervish', 'other', 'Turkish - different style Turkish cuisine', 'Broadway', 0, '', 'y', 4, 'M', '', '', 'went with Elaine a couple times', 1);
INSERT INTO `places` VALUES (22, 'R', 'S''mac', 'american', 'Mac and cheese - all types - An emporium of macaroni-and-cheese, all eleven varieties (from high-end fromage to All-American) served up in skillets.', 'Lower East Side', 388, '212-358-7912', 'y', 4, 'L', '', '', 'Went once - really yummy', 1);
INSERT INTO `places` VALUES (23, 'R', 'Max Brenner''s chocolate bar', 'american', 'Chocolate all around', 'Union Square', 0, '', 'y', 3, 'M', '', '', '', 1);
INSERT INTO `places` VALUES (24, 'O', '3 R living', '', 'Store that uses recycled goods', 'Park Slope', 0, '718-832-0951', 'n', 4, '', '3rliving.com', '', 'In park slope', 1);
INSERT INTO `places` VALUES (25, 'R', 'Candle Cafe', 'other', 'Uses organic products ', 'Upper East Side', 20, '212-472-0970', 'n', 4, '', 'candlecafe.com', '', '', 1);
INSERT INTO `places` VALUES (26, 'O', 'Living Planet (clothing)', '', 'Clothing using sustainable materials', NULL, 21, '', 'n', 0, '', 'thelivingplanet.net', '', '', 1);
INSERT INTO `places` VALUES (27, 'B', 'Sunny''s', '', 'Live music bar in red hook - reccoed in the L', 'Red Hook', 391, '(718) 625-8211', 'n', 3, '', '', '', '', 1);
INSERT INTO `places` VALUES (28, 'R', 'Pioneer BBq', '', 'red Hook BBq', 'Red Hook', 392, '(718) 624-0700', 'n', 3, '', '', '', '', 1);
INSERT INTO `places` VALUES (29, 'B', 'Bait and Tackle', '', 'Red Hook bar (live music??)', 'Red Hook', 393, '(718) 797-4892', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (30, 'R', 'Babbo''s', 'italian', 'Italian restaurant w regional recipes from pork article in NYT.Tasting menu reccoed in   AMNY as  a top NY tasting menu', 'West Village', 394, '(212) 777-0303', 'y', 3, 'M', '', '', 'Went with Jo and Jackie. Good. ', 1);
INSERT INTO `places` VALUES (31, 'R', 'ICI', 'american', 'Seasonal Organic foods - fireplace in winter and garden in summer ', 'Fort Greene', 395, '718-789-2778', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (32, 'R', 'Olea', '', 'Near BAM - Southern European', 'Fort Greene', 389, '718-643-7003', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (33, 'R', 'Room4Desert', '', 'Swirled concoctions in a glass - not open anymore, but Will Goldfarb who ran it said would open another spot', '', 0, '', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (34, 'R', 'Taste Restaurant and Wine Bar', 'american', 'Staff helps pair your food with wine. Food to share', 'UES', 34, '212-717-9798', 'y', 5, 'M', '', '', 'Dar and I went for his birthday (2008). We LOVED it, and they did an incredible pairing with the wine. ', 1);
INSERT INTO `places` VALUES (35, 'R', 'Alta', '', 'Impressive Ambience, Love the food. \r\nTapas', 'West Village', 390, '212-505-7777', 'y', 5, 'M', '', '', 'visited w Jo, Jack, Dar, Dave, and Adam to order the complete menu', 1);
INSERT INTO `places` VALUES (36, 'O', 'Bakla-Wha', '', 'NYC ice cream-- this is a food', 'Astoria', 0, '', 'n', 5, '', 'http://www.5boroughsicecream.com/baklawha.html', '', '', 1);
INSERT INTO `places` VALUES (37, 'T', 'The Eagle Theater', '', 'Chai, samosas, and Bollywood', 'Jackson Heights', 396, '718) 205-2800', 'n', 5, '', '', '', '', 1);
INSERT INTO `places` VALUES (38, 'M', 'Francis M Naumann Fine Art', '', '', '', 440, '212-472-6800', 'n', 5, '', '', '', '', 1);
INSERT INTO `places` VALUES (39, 'R', 'BB King Blues Club', '', 'Harlem Gospel Choir headlines 1:30  pm sunday brunch', 'Midtown', 397, '212-997-4144', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (40, 'M', 'International Center of Photography', '', '', '', 0, '212-857-0000', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (41, 'R', 'Green Field', 'other', 'A Brazilian buffet.  It is all about meat, the waiters come out with meat asking you if you want to have some. You can have as much as you want.', 'Corona', 25, '718-672-1892', 'y', 4, 'M', 'greenfieldchurrascaria.com', '', 'Nice place.  You take the 7 Train to 111th St. and walk towards Northern Blvd it is a few blocks away from it.', 2);
INSERT INTO `places` VALUES (42, 'R', 'Ole Restaurant', 'other', 'Spaniard restaurant.  Has good entertainment apparently.', 'Murray Hill', 26, '212-725-1953', 'n', 0, 'M', 'olerestaurant.com', 'Lunch  :: Mon-Fri: 11-3 PM, Sat-Sun: 12-3 PM\r\nDinner :: Sun-Thu: 4-11 PM, Fri-Sat: 4 PM-1AM  ', 'Entertainment: Tue: Rat Pack Night with Ray Marco, Wed: Flamenco/Sevillanos Show, Thu: Danny singing in 10 different languages, Fri/Sat: Carmen Castro.', 2);
INSERT INTO `places` VALUES (43, 'B', 'Bar None', '', 'On Tuesdays have Karaeoke.', 'Lower East Side', 398, '(212) 777-6663', 'n', 5, '', '', '', '', 1);
INSERT INTO `places` VALUES (44, 'B', 'Off the Wagon', '', 'Beer pong!', 'West Village', 399, '(212) 533-4487', 'n', 5, '', '', '', '', 1);
INSERT INTO `places` VALUES (45, 'R', 'Peter Luger', 'american', 'A very old steakhouse. One of the best, if not the best steakhouse in New York. Cash only.', 'Williamsburg', 27, '718.387.7400', 'y', 5, 'H', 'peterluger.com', '', 'It is a very nice, old fashion place today.  Great environment.', 2);
INSERT INTO `places` VALUES (46, 'R', 'Uncle Jack''s Steakhouse', '', 'Claimes to be New York''s best steakhouse.  It is between 34-35 St.', '', 28, '212-244-0005', 'n', 0, '', 'unclejacks.com', '', '', 2);
INSERT INTO `places` VALUES (47, 'R', 'Organic Grill', '', '', 'Lower East Side', 400, '2124777177', 'n', 3, '', 'theorganicgrill.com/', '', '', 1);
INSERT INTO `places` VALUES (48, 'R', 'Pure Juice and Take-Away', '', 'get the Malomars and lasagna--also -have a restaurant - pure food and wine', 'Lower East Side', 401, '212-477-7151', 'n', 4, '', 'http://www.purefoodandwine.com/purejuice.html', '', '', 1);
INSERT INTO `places` VALUES (49, 'B', 'Telephone Bar and Grill', '', 'Movies on Tuesday nights.  ', 'Lower East Side', 402, '212-529-5000', 'n', 3, '', '', '', '', 1);
INSERT INTO `places` VALUES (50, 'O', 'Friends of Historic New Utrecht', '', 'Learn about Brooklyn''s early history', '', 0, '718-256-7173', 'n', 3, '', 'www.historicnewutrecht.org', '', '', 1);
INSERT INTO `places` VALUES (51, 'R', 'Blue Green Organic Juice cafe', '', 'Raw foods - supposed to be very good', 'DUMBO', 403, '(718) 722-7541.', 'n', 3, '', 'www.theplantindumbo.com', '', '', 1);
INSERT INTO `places` VALUES (52, 'R', 'El Bulli', '', 'Really neat chef -Chef Adria', 'Spain', 0, '', 'n', 4, '', 'www.elbulli.com', '', '', 1);
INSERT INTO `places` VALUES (53, 'O', 'Greenjeans', '', 'Psrk slope team who sell products made from recycled items.', 'Park Slope', 0, '718-907-5835', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (54, 'O', 'Mooshoes', '', 'Socially conscious clothing', 'Lower East Side', 0, '212-254-6512', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (55, 'O', 'Steven Alan', '', 'Sells loomstate - organic cottonclothing', 'TriBeCa', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (56, 'R', 'Cafe Taci', '', 'Taci opera night -Fri and Sat - vocalists sing', 'Little Italy', 0, '212-678-5345', 'n', 0, '', '', 'Singing - Friday and Sat. ', '', 1);
INSERT INTO `places` VALUES (57, 'R', 'Ceol', '', 'Irish bar with events, beer, and food', 'Fort Greene', 404, '347-643-9911', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (58, 'O', 'Un monde a vie', '', 'Shop for the woman selling jam in Canada - in Lachina - Monte Mamon', 'Montreal', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (59, 'R', 'Kittichai', '', '', 'Manhattan', 0, '', 'n', 0, '', '', '', 'shown on NY show', 1);
INSERT INTO `places` VALUES (60, 'R', 'three tarts bakery', '', '', '', 0, '', 'n', 3, '', '', '', 'Shown on NY tv channel', 1);
INSERT INTO `places` VALUES (61, 'R', 'RAW', '', 'raw food place in NY', '', 0, '', 'n', 3, '', '', '', '', 1);
INSERT INTO `places` VALUES (62, 'B', 'SOB''s Basement Bonga', '', '', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (63, 'C', 'West side Pistol Range', '', 'Pistol Range', '', 0, '212-243-9448', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (64, 'R', 'Relish', 'american', 'Railcar old fashioned diner in BKLYN', '', 0, '718-963-4546', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (65, 'R', 'Dinner at natural gourmet institute', '', 'Chef students present a four course meal', '', 0, '2126455170 x 0', 'n', 0, 'M', '', 'Every Friday, res required', '', 1);
INSERT INTO `places` VALUES (66, 'B', 'Bar None', '', 'Beer pong every night and free comedy on Thursdays', 'LES', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (67, 'R', 'Le Cirque', '', 'Fancy restaurant - ry to go during restaurant week. ', '', 0, '', 'n', 0, 'H', '', '', '', 1);
INSERT INTO `places` VALUES (68, 'R', 'Blossom', '', 'Local produce used, hearty vegeterian\r\n', 'Chelsea', 0, '212-627-1144', 'n', 0, 'M', 'blossomnyc.com', '', '', 1);
INSERT INTO `places` VALUES (69, 'R', 'Momofuku Ssäm Bar', '', 'In the L mag  - sounds DEELISH', 'Lower East Side', 0, '212-254-3500', 'y', 3, '', '', 'Open till 2 AM', 'Pork Buns and Raw scallops. Went with Joanna. It was a bit trendy for us but good - had good homemade pickles', 1);
INSERT INTO `places` VALUES (70, 'B', 'Retrosexual', '', 'Free rock bands on Thursdays', 'Lower East Side', 0, '212-334-6740', 'n', 0, '', '', 'Free band on Thursdays', '', 1);
INSERT INTO `places` VALUES (71, 'B', 'Easy', '', 'sunday nigths - have games, music, etc', 'Williamburg', 0, '718-599-4444', 'n', 0, '', '', '6 pm to 2 am.  sunday nights', '', 1);
INSERT INTO `places` VALUES (72, 'C', 'The Hope Lounge', '', 'Blue grass bands', 'Williamsburg', 0, '718-218-7191', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (73, 'B', 'Alligator Lounge', '', 'Comedy and Improv nights  - Tuesday?', 'Williamsburg', 0, '718-599-4440', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (74, 'B', 'Pete''s candy store', '', 'Bingo night', 'Williamsburg', 0, '718-302-3770', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (75, 'C', 'Turtle Bay', '', 'Comedy shows - LU', 'LES', 0, '212-223-4224', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (76, 'B', 'Orchard Lounge', '', '', 'LES', 0, '212-254-4090', 'n', 0, '', '', 'Weekly comedy show on Tuesday', '', 1);
INSERT INTO `places` VALUES (77, 'C', 'Pickle Tickle at the Orchard Lounge', '', '', 'LES', 0, '212-254-4090', 'n', 0, '', '', 'Tuesday night comedy show', '', 1);
INSERT INTO `places` VALUES (78, 'B', 'Lakeside Lounge', '', 'Voted by l mag as best live music bar', 'LES', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (79, 'B', 'Alligator Lounge, Crocidile Lounge, Capones', '', 'bars with free food', '', 0, '', 'n', 3, '', '', '', '', 1);
INSERT INTO `places` VALUES (80, 'B', 'The Brooklyn Ale House', '', '', 'Brooklyn', 0, '', 'n', 3, '', '', '', '', 1);
INSERT INTO `places` VALUES (81, 'B', 'Old town Bar', '', 'Hisotical Bar', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (82, 'B', 'The Brooklyn Ale House', '', '', 'Williamsburg', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (83, 'B', 'Trout Bar and Grill', '', 'Outdoor bar area in Bklyn on the way home from soccer', 'Brooklyn', 0, '', 'n', 3, '', '', '', '', 1);
INSERT INTO `places` VALUES (84, 'R', '360', '', 'Really good three course meal  - written up in the L', 'Red Hook', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (85, 'B', 'South 4th Bar and Grill', '', 'Good hang out bar in Willamsburg', 'Willamsburg', 0, '', 'n', 3, '', '', '', '', 1);
INSERT INTO `places` VALUES (86, 'R', 'Mole', '', 'Really good Mexican hole.', 'Lower  East Side', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (87, 'M', 'Brooklyn Historical Society', '', 'Brooklyn heights historicaL building', '', 0, '', 'n', 3, '', '', '', '', 1);
INSERT INTO `places` VALUES (88, 'M', 'DUMBO galleries', '', '', '111 front street', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (89, 'M', 'National Academy museum', '', '', '', 0, '', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (90, 'O', 'Juvenex spa', '', 'Relly relaxing spa - -', '', 0, '6467331330', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (91, 'R', 'Veritas', 'american', 'expensive, price fixed, soooo good', 'Grammercy Park', 0, '', 'y', 5, 'H', '', '', '', 3);
INSERT INTO `places` VALUES (92, 'R', 'Chiles and chocolate', '', 'oaxacan kithchen - looks deliciuous - uses chile n chocolate in lots of dishes', 'Park sloppe', 0, '7182307700', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (93, 'R', 'Candle 79', '', 'Delicious vegan food - get the peanut butter bliss', 'Upper East Side', 0, '212-537-7179', 'n', 4, '', '', '', 'Reco AM nY', 1);
INSERT INTO `places` VALUES (94, 'R', 'Angelica Kitchen', '', 'Freshly harvested vege cuisine with a variety of influences', 'East Village', 0, '212-228-2909', 'n', 0, '', '', '', 'Reco From AMNY', 1);
INSERT INTO `places` VALUES (95, 'R', 'Ronnybrook MilkBar', '', '', 'West Village', 0, '212-741-6455', 'n', 4, '', '', '8a-7p Mon thru Fri\r\n10a -6p sat and saun', '', 1);
INSERT INTO `places` VALUES (96, 'R', 'Thai Cafe', 'thai', 'A place we order food near our new apartment in Greenpoint', 'Greenpoint', 42, '718.383.3562', 'n', 3, 'M', '', '', 'very good food.', 2);
INSERT INTO `places` VALUES (97, 'R', 'Pio Pio', '', 'Great Peruvian Restaurant', 'Upper west side', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (98, 'R', 'Tea and Sympathy', '', '', 'SOHO', 0, '', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (99, '', 'Supreme Trading Company', '', '', 'Williamburg', 0, '718-559-4224', 'n', 0, '', '', '', 'Was in AMNY in highlght on Wburg', 1);
INSERT INTO `places` VALUES (100, 'B', 'larry Lawrence', '', 'nice bar with Patio in AMNY highlight of the burg', 'Williamsburg', 0, '', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (101, 'R', 'Marlow and Sons', '', 'Groceries and restaurant - amny', 'Williamsburg', 0, '718-384-1441', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (102, 'R', 'Juliette', '', 'French Bistro reccoed in AMNY', 'Williamsburg', 0, '718-388-9222', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (103, 'R', 'Zenkichi', '', 'Homestyle Japanese cooking reccoed in AMNY', 'Williamsburg', 0, '718-388-8985', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (104, 'M', 'Roebling Hall', '', 'One of the original galleries in the Burg', 'Williamsburg', 0, '718-599-5352', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (105, 'R', 'GoodEnough to Eat', '', 'Yummy , homey brunch place reccoed by AMNY', 'west side', 0, '212-496-0163', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (106, 'R', 'Clinton St Baking Co', '', 'Yummy brunch place reccoed in AMNY - get the wild blueberry pancakes w maple butter', 'Brooklyn', 0, '646-602-6263', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (107, 'R', 'Tom''s Restaurant', '', 'old fashioned place with every different type of pancake and flavoed butters to go along. Reccoed in AMNY', 'Prospect Heights', 0, '718-636-9738', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (108, 'R', 'Norma''s', '', 'Blueberry pcakes w devonshire cream - or lemony griddle cakes - reccoed in AMNY for brunch', 'Mid west side', 0, '212-496-6280', 'n', 0, 'H', '', '', 'Is in the Le Parker Merridian Hotel', 1);
INSERT INTO `places` VALUES (109, 'R', 'Sarabeth''s', '', 'Get the buttermilk pancakes and Lemon Ricotta cakes - reccoed in AMNY for brunch', 'West Side', 0, '212-496-6280', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (110, 'B', 'Sweeps UP', '', 'Reccoed in the "L" as a cool bar that''s not overcrowded', 'Williamsburg', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (111, 'R', 'Allen and Delancey', 'american', 'Reccoed in AMNY - pistachio cake\r\nRestaurant Reccoed in the L  - gw', 'LES', 0, '212-253-5400', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (112, 'T', 'Miller Theater at Columbia University', '', 'Has various events throughtout the year including lectures and plays', 'Columbia University', 0, '212-854-7799', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (113, 'R', 'Momotuku Saam', '', 'pork belly buns, pinapple bunois, dashi, ssam, rice cakes', 'LES', 0, '21-254-3500', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (114, 'R', 'Saul', '', 'Baked alaska reccoed in the L', 'Brooklyn', 0, '', 'n', 0, '', '', '', 'Get the baked alaska', 1);
INSERT INTO `places` VALUES (115, 'B', 'The Gutter', '', 'Bowling in Greenpoint', 'Greenpoint', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (116, 'R', '', '', '', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (117, 'B', 'The Sixth Ward', '', 'Reccoed in the L', 'LES', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (118, 'R', 'Water''s Edge', 'other', '', 'Long Island City', 196, '718.482.0033', 'y', 4, 'H', 'watersedgenyc.com', '', 'price-fixed menu.', 2);
INSERT INTO `places` VALUES (119, 'R', 'One if by land - two if by sea', '', 'it is between 7th Ave. and W 4th St.', 'West Village', 49, '212.255.8649', 'n', 0, '', 'oneifbyland.com', '', '', 2);
INSERT INTO `places` VALUES (120, 'R', 'Hill Country', '', 'Deelish BBQ reccoed in the L', 'Mid west side', 0, '212-255-4549', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (121, 'R', 'Nita Nita', '', 'supposed to have good brunch', 'Williamsburg', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (122, 'B', 'Bluestockings', '', 'Fair trade cafe', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (123, 'R', 'Counter', '', 'Deelish vege Cuisine', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (124, 'R', 'Gobo', '', 'World Vegetarian cuisine', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (125, 'T', 'Brooklyn Center for the Performing Arts', '', 'Has events regularly - check for events', 'Brooklyn College', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (126, 'R', 'Pio Pio', '', 'Deelish Peruvian restaurant. They have a few in the city. ', 'Upper West Side', 0, '212-665-300', 'y', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (127, 'M', 'Wykoff Farmhouse', '', 'Examrooklyn farm', 'Brooklyn', 0, '', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (128, 'B', 'Sound Fix', '', 'Bar w live music in GP', 'Greenpoint', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (129, 'B', 'Jimmy''s # 43', '', 'Bar w great food', 'LES', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (130, 'B', 'B61', '', '', 'Red Hook', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (131, 'O', 'Blue Marble', '', '"Green" ice cream - ', 'Brooklyn', 0, '718-858-1100', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (132, 'R', 'Little Cupcake', '', '', 'Bay Ridge', 0, '718-680-4465', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (133, 'O', 'Le Bay Market', '', 'Carribean market in Brooklyn sounds good!', 'Brooklyn', 141, '', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (134, 'R', 'Thai Cafe', 'thai', 'Thai food in Greenpoint.', 'Greenpoint', 140, '', 'y', 3, 'M', '', '', 'I love their food.', 2);
INSERT INTO `places` VALUES (135, 'R', 'Per Lei', '', 'Enirco is chef and has a few restaurants on the UES', '', 143, '', 'n', 3, '', '', '', '', 1);
INSERT INTO `places` VALUES (136, 'O', 'Michael Kessler  Stained Glass', '', 'Custom stained glass; met guy in Philadelphia, said he made them himself', '', 0, '610-331-7739', 'n', 4, '', 'mjkglassman@aol.com', '', '', 1);
INSERT INTO `places` VALUES (137, 'B', 'Iona', '', 'Great Soccer Bar', '', 144, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (138, 'B', 'Cafe Katja', '', 'Homemade pickles and drinks', 'LES', 195, '', 'n', 4, '', 'LES', '', '', 1);
INSERT INTO `places` VALUES (139, 'R', 'Spur tree', '', 'Really good mojitos and jerk chicken. (read about it)', 'LES', 146, '', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (140, 'B', 'Blackmountain Wine House', '', 'Yummy wine bar', 'Park Slope', 147, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (141, 'B', 'Black Rabbit Bar', '', 'Has a great snug booth', 'Greenpoint', 148, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (142, 'O', 'Brooklyn Flea Market', '', '', 'Forte Greene', 201, '', 'n', 4, '', '', 'Sundays?', 'Read about Flea Market in the L', 1);
INSERT INTO `places` VALUES (143, 'O', 'Manhattan flea market', '', 'Flea market', 'NoLita', 202, '', 'n', 0, '', '', 'Saturday and Sunday', 'Saw in the L mag', 1);
INSERT INTO `places` VALUES (144, 'O', 'Go Yoga', '', 'For meditation and Yoga', 'Greenpoint', 203, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (145, 'O', 'The Blask Rabbit', '', 'Great 19th Cenrury style bar. ', 'Greenpoint', 204, '', 'n', 0, '', '', '', 'Reccoed in the L mag', 1);
INSERT INTO `places` VALUES (146, 'B', 'Hotel Delmano', '', 'Reccoed in the L as an old fashioned place to get a drink', 'Williamsburg', 235, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (147, 'B', 'Rooftop Bar', '', 'Reccoed in the L as a rooftop bar', 'Midtown', 236, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (148, 'R', 'Elettaria', '', 'Reccoed in the L - try the quimby fizz, or zombie punch; ramos fizz, crab resala and saag paneer, ', 'Chelsea', 237, '212-677-3833', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (149, 'O', 'Repop furniture', '', '95% recycled furniture - add in the L', '', 238, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (150, 'R', 'Nadine''s Restaurant', '', 'A diner in Pittsburgh that came in Guy''s Big Bite show. They make good roast beef, and good sandwiches.', 'Pittsburgh', 406, '(412) 481 - 1793', 'n', 0, '', '', '', '', 2);
INSERT INTO `places` VALUES (151, 'B', 'Cafe Cornichon', '', 'Reccoed in the L - Jun 18 08. \r\nGood wine bar w lots of space good cheeses and changing daily specials', 'Williamsburg', 407, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (152, 'B', 'The Richardson', '', ' Reccoed in the L as Try the scottish dew. Has a classic cocktails', 'Greenpoint', 408, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (153, 'R', 'Perry Street', '', 'Go for lunch-- reccoed in the L-- a dozen choices for 24 dollars w dessert', '', 409, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (154, 'R', ' PDT and Crif Dogs', '', 'At this speakeasy-style cocktail lounge — entry is by appointment and through a phone booth in Crif Dogs — some of the city’s most obsessive barmen wield a Jerry Thomas-esque prowess for drink creation and mustache grooming. As fall descends on the city, ', '', 410, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (155, 'O', 'Mixona unthderwear boutique', '', 'Underwear boutique reccoed in the L July 16', 'Mott St', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (156, 'O', 'Laina Jane underwear boutique', '', 'Reccoed in the L mag July 16th for underwear shopping', 'Christopher St', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (157, 'O', 'La Perla', '', 'The ''dames of upscale'' underwear shopping-- as reccoed in the L mag July 16th', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (158, 'O', 'Fuego (store)', '', 'Reccoed in L  - sells recycled bags - check out', 'Williamsburg', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (159, 'O', 'City Foundry', '', 'Antiques location reccoed in the L onAtlantic Ave. (Also look at Bob and Judi''s collectibles on 5th ave - for  ahwole bunch of stuff. )', 'Boerum Hill', 418, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (160, 'O', 'Moo Shoes (store)', '', 'Vegan Shoes and Access', 'LES', 419, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (161, 'R', 'Cendrillon', '', 'Asian Grill an Merienda Bar', 'Village', 420, '212-343-9012', 'n', 0, '', '', '', 'Have card, but can''t remember when I was there. ', 1);
INSERT INTO `places` VALUES (162, 'R', 'I tre Merli', 'italian', 'Really delicious lobster salad, etc. ', 'West Village', 0, '', 'y', 4, 'M', '', '', 'Went with Elaine for dinner in March 2009', 1);
INSERT INTO `places` VALUES (163, 'B', 'Safe Haven Bar and Grill', '', 'Reccoed in the L mag - homey and authentic, local menu and beers', '', 421, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (164, 'B', 'Ellis Bar', '', 'Has southwestern Cuisine and Bluegrass on Monday nights!; quiz night tues\r\n', 'Park Slope', 422, '', 'n', 0, '', '', '', 'try tequila passion  and bunt lemon and vanilla patron martini', 1);
INSERT INTO `places` VALUES (165, 'R', 'Centolire', 'italian', 'Heard chef on NPR in jan 2009. Wrote a book called dirty dishes :)', 'Upper East Side', 475, '212.734.7711', 'y', 4, 'M', '', '', 'Went with Staci in May 2010. Food was really good and the bread was INCREDIBLE!  - Almost like a potato-y italian bread. ', 1);
INSERT INTO `places` VALUES (166, 'R', 'Halfsteak', 'american', 'Tom Colicchio''s restaurant', '', 424, '', 'n', 0, 'M', '', '', 'Read about in Sky Mag', 1);
INSERT INTO `places` VALUES (167, 'B', 'The Harrison', '', '', '', 426, '212-274-9310', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (168, 'R', 'Broadway East', '', 'Reccoed with 4 Ls in L mag March 26 2008. Mysore Thali and Peking style snow dried tofu really good. ', 'Lower East Side', 428, '212-228-3100', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (169, 'O', 'NYC Bikes', '', 'Bike surghop in williamsb', 'Williamsburg', 429, '718-599-2409', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (170, 'C', 'Little Branch', '', 'Club has jazz. LU cafe A', 'West Village', 430, '212-929-4360', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (171, '', 'The Moxie Spot', '', 'Kid friendly place with good food and good prices', 'Brooklyn Heights', 0, '', 'n', 0, '', '', '', 'Read about in Bklyn paper', 1);
INSERT INTO `places` VALUES (172, 'O', 'Holistic Wellness Consulting', '', 'nutrition consulting etc. \r\nLU Institute for Integrative Nutrition', '', 431, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (173, 'R', 'Aurora', 'italian', 'Reccoed in WG - spot in the neighborhood - Good food at good prices', 'Williamsburg', 432, '', 'n', 0, 'L', '', '', '', 1);
INSERT INTO `places` VALUES (174, 'R', 'Santorini', 'greek', 'WG reccoed  - greek restaurant in BBurg', 'Williamsburg', 433, '', 'n', 0, 'M', '', '', '', 1);
INSERT INTO `places` VALUES (175, 'O', 'Skybox', '', 'Check out this place for aerial skills. Reccoed in WG paper', 'Willamsburg', 434, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (176, 'O', 'Ceramics at the Mudpit', '', '6-9 week classes in wheelthrowing, etc. Late night classes, etc.', 'Greenpoint', 435, '718-218-9424', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (177, 'O', '3rd Ward (miscellaneous crafting)', '', 'Reccoed in WG - all sorts of crafts and craft classes.', 'Williamsburg', 436, '718-715-4961', 'n', 0, '', 'www.3rdwared.com', '', '', 1);
INSERT INTO `places` VALUES (178, 'O', '(Knitting at) Yarn Factory', '', 'reccoed in WG - knitting in the hood - ', '347 Bedford Ave', 0, '718-384-8430', 'n', 0, '', 'www.theyarntree.com', '', '', 1);
INSERT INTO `places` VALUES (179, 'R', 'Cafe des Artistes', '', 'reccoed in the L mag as the best art in a restaurant or bar. Check out', 'Upper west side', 437, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (180, 'R', 'Wilfie and Nell', 'other', 'Reccoed in L mag w 4 Ls - restaurant pub. Scotch eggs, grilled cheese, ', 'West Village', 438, '212-242-2990', 'n', 0, 'L', '', '', '', 1);
INSERT INTO `places` VALUES (181, 'O', 'Brooklyn Bowl', '', 'Music, bowling and drinks', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (182, 'R', 'PAyard  Patisserie and Bistro', '', 'Tasting menu record in AM NY as one of the Best in NY.  Menu changes nightly.', 'Upper East Side', 439, '212-717-5252', 'n', 0, 'M', '', '', '', 1);
INSERT INTO `places` VALUES (183, 'R', 'wd -50', '', 'Reccoed  in AMNY as a place with. a top  tasting menu. Avant Carde fare for an adventurous palate.', '', 441, '212-477-2900', 'n', 0, 'H', '', '', '', 1);
INSERT INTO `places` VALUES (184, 'R', 'Tailor', '', 'Record in ANY as a top NY tastingmenu. Have a sweet tasting menu, salty tasting menu,', 'West Village', 442, '212-334-5182', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (185, 'O', 'Free Dental Screening @ N Y  college of technology', '', 'Free dental clinic reccoed in L mag-called Dental Hygiene Clinic', '', 443, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (186, '', 'NYC Free Clinic', '', 'NYU docs-med students otter physicals, lab services, radiology ''etc..Discussed in L mag', '', 444, '', 'n', 0, '', 'med-NYU. edulnycfreeclinic', 'Saturday from 9Â am 12pm', '', 1);
INSERT INTO `places` VALUES (187, '', 'Nye dept of health', '', 'Test for SIDS', '', 0, '', 'n', 0, '', 'hafnyc. org', '', '', 1);
INSERT INTO `places` VALUES (188, 'R', 'Fish Market', '', 'Reccoed in AMNY for new eats-sound good-get roasted lobster soup', 'south Street', 445, '212-233-3301', 'n', 0, 'L', '', '', '', 1);
INSERT INTO `places` VALUES (189, 'R', 'Le Petit Belge', '', 'Reccoed in A MNY -Belgian shop with waffles J f -try Liege waffle', '', 446, '212-807-7027', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (190, 'R', 'Abigail late& Wine bar', 'american', 'Comfort flairs food with an artisinal flairF--    rescoed in AMNY', '', 447, '212-777-1286', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (191, 'R', 'Stan''s place', '', 'New Orleans restaurant in Brooklyn', '', 448, '718-596-3110', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (192, 'R', 'Taralucci e Vino', 'italian', 'Really yummy italian restaurant. Not overly pricy, with a great flair. All food was delicious!', 'Chelsea', 450, '', 'y', 4, 'M', '', '', 'Went with Elaine and Jenn', 1);
INSERT INTO `places` VALUES (193, 'R', 'Red Hook Lobster Pound', '', 'Fresh Lobster from Maine. Read in Brooklyn paper 2009', 'Red Hook', 451, '646-326-7650', 'n', 0, '', '', 'Fri-Sun', '', 1);
INSERT INTO `places` VALUES (194, 'R', 'Petit Oven', 'other', 'Reccoed in Brooklyn!! paper - locavore restaurant', 'Bay Ridge', 0, '', 'n', 0, '', '', 'Wed- Sun\r\nWed tasting menu - 25$ in summer', '', 1);
INSERT INTO `places` VALUES (195, 'R', 'Fez Cafe', '', 'Morocan restaurant in Bklyn - reccoed in Brooklyn!! paper\r\n', 'Park Slope', 452, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (196, 'B', 'Mayahuel', '', '5 L rating in L mag - great Tequila bar - puts it in sangria, tea, etc. Woopsy Daisy, Slight Detour and Loop Tonic recommended', 'East Village', 453, '', 'n', 0, 'M', '', '', '', 1);
INSERT INTO `places` VALUES (197, 'R', 'Pier I cafe', '', 'reccoed in Brooklyn! paper-- good summer spot - outdoor space', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (198, 'R', 'Eddie;s Sweet Shop', '', 'Reccoed in GP Star paper as one of the best ice cream shops - old fashioned and home made', 'Queens', 454, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (199, '', 'Max and Mina''s', '', 'Reccoed in Greenpoint Star (2009) as one of the best ice cream shops - Blooomingdsle uses thier ice cream as well. ', 'Flushing, Queens', 455, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (200, 'R', 'Broadway East', 'chinese', 'Rated with 4 Ls in L mag. ', 'Chinatown', 456, '', 'n', 0, '', '', '', 'Reccoes  - Oyster Gratin, Mysore Thali,', 1);
INSERT INTO `places` VALUES (201, 'O', 'Brooklyn Fare', '', 'In the Renaissance builing - Moe Issa wanted to serve high quality prepared food Chef Cesar serves a 4 course meanl  Thurs, Fri and Sat. 70 dollars per person. watch the cooking', '', 457, '718-243-0050', 'n', 0, '', '', 'Mon-Sat 7am-9pm, Sun 7am-7pm', '', 1);
INSERT INTO `places` VALUES (202, '', 'Anything cheesecake', '', 'Guy started place because he had to bring cheesecake to a party. Makes his own blends - find out if he has recipes', 'Brooklyn', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (203, '', 'Walter Foods', '', 'Read about in Brooklyn!! paper, summer 09', 'Williamsburg', 458, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (204, 'O', 'Mast Brothers Chocolate', '', 'Chocolatier-  only place that goes from bean to bar. ', 'Williamsburg', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (205, '', 'Economy Candy', '', '72 year old candy shop stocked with favorites!', 'Lower East Side', 0, '', 'n', 0, '', '', '', 'Reccoed in Brooklyn!! Paper July 2009', 1);
INSERT INTO `places` VALUES (206, 'M', 'Bartow-Pell Mansion Museum', '', 'Historic house in the bronx', '', 0, '', 'n', 0, '', 'bartowpellmansionmuseum.org', '', '', 1);
INSERT INTO `places` VALUES (207, 'B', 'Superdive', '', 'Reccoed in L mag w 4 L''s - could get a keg of beer at the table...', 'LES', 459, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (208, 'O', 'Hawthorne Valley Farm', '', 'Biodynamic farm reccoed in June 24 issue of L mag (2009) for a visit in the Hudson Valley. balanced farming method', 'Upstate NY', 0, '', 'n', 0, '', 'hawthornevalleyfarm.org', '', '', 1);
INSERT INTO `places` VALUES (209, '', 'Sailing on the Hudson with Sloop', '', 'Reccoed in L mag for a day trip  - could take voyages with the sloop - 3 hour cruises all the way up the Hudson. ', '', 0, '', 'n', 0, '', 'Clearwater.org', '', '', 1);
INSERT INTO `places` VALUES (210, 'R', 'http://www.desserttruck.com/', '', 'Dessert truck - has great bread pudding - on throwdown w Bobby Flay. Closed currently but opening again. ', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (211, 'M', 'Coney Island History Project', '', 'Read about in Brooklyn Rail. Charles Denson started  - has loads of history about Coney - and you can listen to audio online. ', 'Coney Island', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (212, 'R', 'Braeburn', 'american', '4 L''s in the L mag. ', 'village', 461, '212-255-0696', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (213, 'CH', 'Mick Margo Boutique', '', 'Reccoed in L mag', '', 462, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (214, 'CH', 'Castor and Pollux Boutique', '', 'Reccoed in L Mag  - Laurel Pinson', 'West Village', 463, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (215, 'CH', 'Plum Boutique', '', 'Reccoed in L mag - Laurel Pinson', '', 464, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (216, 'CH', 'Orange Marmalade', '', 'Shop with cute hats,etc.  (met group in McCarren Park wearing knit hats sold there)', 'Williamsburg', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (217, 'R', 'Salt', '', 'Dar and I went  - as a card deck recco- small restaurant - incredible food. A new favorite!!', 'SOHO', 0, '', 'y', 0, 'M', '', '', '', 1);
INSERT INTO `places` VALUES (218, 'R', 'The New French', '', 'Went with Jen and Nicole - from the card deck. Cozy restaurant where you could see the kitchen. Was delicious', 'West Village/ Tribeca', 466, '212-307-7357', 'y', 4, '', '', '', 'Had Oxtail--very good!', 1);
INSERT INTO `places` VALUES (219, 'R', 'Out of the Kitchen', '', 'Good spot for quick but yummy food. A spot from the cards. Right near Pier 40', 'Tribeca', 0, '', 'y', 3, 'L', '', '', '', 1);
INSERT INTO `places` VALUES (220, 'R', 'Recipe', '', 'Pretty good - visited with Stacy and Cate', 'UWS', 0, '', 'y', 3, 'M', '', '', '', 1);
INSERT INTO `places` VALUES (221, 'R', 'The Harrison', '', 'Reccoed in the L -  4 Ls -\r\n  BBQ pulled pork reccoed, Duck breast and Leg, fried bread', 'Greenwich village', 469, '212-274-9310', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (222, 'R', 'Bouillabaisse 126 (Korhogo 126)', '', 'Reccoed in the L with 4 Ls. Great space and great food. Kedjeou, pea soup, roasted chicken amazing. ', 'Carroll Gardens', 470, '718-855-4405', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (223, 'R', 'Tailor', 'asian', 'Reccoed in the L mag with 4 Ls. Passionfruit char. ', 'Greenwich village', 471, '212-334-5182', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (224, 'R', 'Tortilla Flats', 'mexican', 'Tex Mex reccoed reccoed in the L  - cheap, cheesy food. ', 'West Village', 0, '', 'n', 0, 'L', '', '', '', 1);
INSERT INTO `places` VALUES (225, 'R', 'Grand Sichuan', 'chinese', 'Reccoed in L mag w 4 Ls. ', 'West Village', 472, '212-645-0222', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (226, 'C', 'Zebulon', '', 'Wb location with music every night that is usually pretty good. Jazz/ Afrobeat. Reccoed in the L Best of 2009', 'Williamsburg', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (227, 'B', 'Loki Lounge', '', 'Bar with pool', 'Park Slope', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (228, 'CH', 'Viola''s Smart Shop (underwear shop)', '', '', 'Yorkville', 473, '212-535-1830', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (229, 'R', 'Amy Ruth''s restaurant', '', '', 'Harlem', 0, '', 'n', 0, '', '', '', 'Went with Tim after our Harlem church day', 1);
INSERT INTO `places` VALUES (230, 'B', 'Maracuja Bar and Grill', '', 'Reccoed in the L mag - Good food and exotic patio. ', 'Williamsburg', 474, '', 'n', 0, '', '', '', 'Great for an event! ', 1);
INSERT INTO `places` VALUES (231, 'R', 'Le Barricou', '', 'French restaurant reccoed in the L mag. French style country cooking.', 'Williamsburg', 0, '', 'n', 0, '', '', '', 'Has live jazz music and a fireplace .', 1);
INSERT INTO `places` VALUES (232, 'B', 'Hudson Terrace', '', 'Great spot on the far west side with an awesome rooftop and pretty good bar snacks. ', 'Hells Kitchen West', 0, '', 'y', 0, 'M', '', '', 'Sliders are awesome. Went with WNYC gals and Dar for Cinco de Mayo', 1);
INSERT INTO `places` VALUES (233, 'R', 'Kaz au Nou', 'other', 'Reccoed in L mag June 2010. French - Guadalupan restaurant that was a cozy neighborhood spot. May have a bit of a wait now. BYO', 'Prospect Heights', 479, '', 'n', 0, 'L', '', '', 'Perhaps try sweet potato cod fritters', 1);
INSERT INTO `places` VALUES (234, 'R', 'Kaz an Nou', '', 'Reccoed in the L - 4 L''s ', 'Prospect Heights', 482, '', 'n', 0, '', '', '', 'Try lamb lasagna; spicy chocolate cake and mango mousse. ', 1);
INSERT INTO `places` VALUES (235, 'B', 'Pinkerton', '', 'Wine bar reccoed in L mag', 'Williamsburg', 483, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (236, 'R', 'Bees Knees', 'american', 'Working farm with a cafe. Sounds deelish. Can order items like ice cream ahead. ', 'Preston Hollow, NY', 484, '518-239-6234', 'n', 0, 'M', '', 'Lunch on Saturdays only.', 'Reccoed in NYtimes November 21, 2010', 1);
INSERT INTO `places` VALUES (237, 'R', 'The ten bells', '', 'spot from the cards that we didnt get to go. dark romantic spot -duck rillettes reccoed\r\n', 'LES', 485, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (238, 'R', 'The E U', '', 'Spot from the cards that we didn''t get to head but sounds really good - butternut squash risotto reccoed and Sticky toffee pudding', 'East village', 486, '212-254-2900', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (239, 'R', 'Marion''s', '', 'spot from the cards - Mango bread and macadamia nut pudding w candied ginger ice cream. ', 'NOHO', 487, '212-475-7621', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (240, 'R', 'Kif', '', 'Moroccan restaurant from the dining cards - wanted to viis - recco grilled merguez and red pepper coulis  - chicken tagine w olives, etc. ', 'Fort Greene', 0, '718-852-7273', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (241, 'R', 'Fiore', '', 'Italian restaurant we didn''t get to visit from the dining cards - recco poipetti brasati. Lovely backyard garden', 'Williamsburg', 0, '718-782-8222', 'n', 4, '', '', '', 'Go for the garden. Cash only', 1);
INSERT INTO `places` VALUES (242, 'O', 'Lush - body shop', '', 'Sells bath and body products that are packaged in recycled tubs as well as shampoo bars', '', 0, '', 'n', 0, '', '', '', 'Reccoed in the L magazine', 1);
INSERT INTO `places` VALUES (243, '', '', '', 'Events - company based in Williamsburg showcasing young singers', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (244, 'R', 'Lodge', '', 'Adirondacks feel to this spot. Great food - turkey meatloaf, trout w shrimp hush puppies', 'Williamsburg', 489, '', 'n', 4, '', '', '', '', 1);
INSERT INTO `places` VALUES (245, 'O', 'Lumber City', '', '"city" of lumber - everything you need for DIY projects reccoed in Williamsburg paper', 'Williamsburg', 490, '718-486-0001', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (246, 'O', 'Randall''s Island Wetlands', '', '', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (247, 'R', 'Socarrat', '', 'Reccoed in L amg - 4 L''s. Fantastic paella', 'Chelsea', 492, '212-462-1000', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (248, 'B', 'Char No 4', '', 'Reccoed in L mag\r\n', '', 493, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (249, 'B', 'Madam Geneva', '', 'Reccoed for cocktails and bar fare - cocktails sound very impressive', 'West Village', 494, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (250, 'B', 'Arlo and Esme', '', 'Reccoed in L mag - relaxed and comforting but can dance there on weekends', 'East Village', 495, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (251, 'R', 'Red Egg', 'asian', 'Reccoed in L mag - July 9. Try Shanghai steamed dumplings and peking duck, and coconut pudding', 'Chinatown', 496, '212-966-1723', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (252, 'B', 'The Clover Club', '', 'reccoed in L mag July 9th', '', 497, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (253, 'R', 'Batch', '', 'Great place for sweets', 'West Village', 498, '212-929-0250', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (254, 'R', 'Habana Outpost', '', 'restaurant runs on solar panels, catches rainwater, etc. ', 'Fort Greene', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (255, 'C', 'Music Hall of Williamsburg', '', '', 'Willaimsburg', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (256, 'R', 'Colonie Of Dreams', '', 'Reccoed in the L mag', 'Brooklyn Heights', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (257, 'R', 'Cafe Habana - the Habana outpost', 'mexican', 'solar powered mexican/ cuban restaurant. ', '', 499, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (258, 'R', 'Gusto Organics', 'american', '', 'Chelsea?', 500, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (259, 'B', 'Hank''s Saloon', '', 'Laid back barn reccoed in AM NY', '', 501, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (260, 'C', 'The Bell House', '', 'Good spot for live music', 'Prospect park', 502, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (261, 'C', 'Sound Fix', '', 'Stand up comedy on certain nights - reccoed in AMNY', 'Williamsburg', 503, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (262, 'B', 'Eighty one', '', 'really great bar snacks reccoed in AMNY - like dorito encrusted olives', 'Upper west side', 504, '212-873-8181', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (263, 'C', 'El Morocco', '', 'Salsa dancing', '', 505, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (264, 'R', 'Soda Shop', 'other', 'Tribeca luncheonette - with a great egg cream!', 'tribeca', 506, '212-571-1100', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (265, 'R', 'Pies and Thighs`', '', 'Great spot for brunch!! Many reccoes including NY mag. Best cake donuts and great biscuits and gravy', 'Williamsburg', 507, '347-282-6005', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (266, 'R', 'Freeman''s', '', 'Great brunch spot\r\n - NY mag recco  - great roast pork sammies', 'downtown', 508, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (267, 'R', 'Tre', 'italian', 'from the cards but have not visited -  relaxing spot for good dinner convo - marinated skirt steak w kale sounds good', 'Lower east side', 509, '212-353-3353', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (268, 'O', 'Brooklyn Flee', '', 'Lots of stuff! go there and the Lutheran church of the messiah', '', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (269, 'R', 'La Bernadin', 'other', 'Reccoed in AMNY for great French food. Expensive though', 'Midtown west', 510, '', 'n', 0, 'H', '', '', '', 1);
INSERT INTO `places` VALUES (270, 'B', 'Pinkerton', '', 'Reccoed with 3 Ls in L mag', 'Williamsburg', 511, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (271, 'O', 'Poet''s house', '', 'poetry cafe', 'Financial district - west side', 512, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (272, 'R', 'Wild Ginger', 'other', 'Vegan restaurant in Manhattan and Brooklyn recoed by Aunt Fran''s friend Charlene', 'multipe locations', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (273, 'O', '.alphaengraving', '', 'Place where I got items engraved for Amanda''s shower??', 'Herald Square', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (274, 'C', 'The Living Room', '', 'Music spot', 'LES', 0, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (275, 'R', 'Ed''s Lobster Cart', '', 'Sounds yummy. ', 'Financial District', 513, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (276, 'R', 'The Dutch', '', 'Reccoed in NY Mag', 'Village', 514, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (277, 'B', 'Brooklyn Farmacy and Soda Fountain', '', 'Maple Egg Cream', 'Carrol Gardens', 515, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (278, 'B', 'Terroir', '', '', 'Murray Hill', 516, '', 'n', 0, '', '', '', '', 1);
INSERT INTO `places` VALUES (279, 'B', 'Silver Lining', '', '', '', 517, '', 'n', 0, '', '', '', 'Cocktail bar', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `priorities`
-- 

CREATE TABLE `priorities` (
  `id` bigint(20) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `description` tinytext,
  `month` tinyint(4) default NULL,
  `day` tinyint(4) default NULL,
  `year` int(11) default NULL,
  `user_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds all the priorities of a specific day' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `priorities`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `project`
-- 

CREATE TABLE `project` (
  `id` int(11) NOT NULL auto_increment,
  `category` varchar(20) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` tinytext NOT NULL,
  `note` tinytext NOT NULL,
  `importance` varchar(7) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the projects for the calendar' AUTO_INCREMENT=106 ;

-- 
-- Dumping data for table `project`
-- 

INSERT INTO `project` VALUES (1, 'HealthTalks', 'work on events', 'I have to make sure events are editable and deletable.', 'I already worked on showing them on the primary calendar. Nicole has to check them.', 'blue', 2);
INSERT INTO `project` VALUES (2, 'HealthTalks', 'Work on projects', 'I need to finish projects by deleting them as well.', 'I am already working on projects but need to finish deleting.', 'orange', 2);
INSERT INTO `project` VALUES (3, 'HealthTalks', 'Work on Todo', 'The todo should not show up until the date specified in start date, and then it should show up according to its type. It should drop out of the todo monthly, weekly, etc, after the end date has passed. In the actual date it should show up in the calendar.', 'Make sure you develop the keeping record table where you link the todo with the specific date.', 'blue', 2);
INSERT INTO `project` VALUES (4, 'HealthTalks', 'Appointments', 'The appointment button in main should open the event adding page with the event type selected as appointment.', '', 'blue', 2);
INSERT INTO `project` VALUES (5, 'HealthTalks', 'Change occurence in events', 'The options in occurence should "One Time" and "Recurring".  When Reccurring is selected then all the options on one page should be displayed.  ', 'Keep the select way I have it in.', 'blue', 2);
INSERT INTO `project` VALUES (6, 'HealthTalks', 'Adding information in the database.', 'When adding information, once inserted the page should be closed by itself unless there is a problem inserted, or connection to the database was unsuccessful.', '', 'blue', 2);
INSERT INTO `project` VALUES (7, 'HealthTalks', 'Secondary calendar events', 'Events that have a start and an end date but not an actual date.', 'These events need to show in the secondary calendar and an event list that will be created.', 'yellow', 2);
INSERT INTO `project` VALUES (8, 'Writing', 'Ecuador and Chevron (from podcast)', 'Chevron dumped waste in Ecuador and did not pay to have it cleaned appropriately so that damage was caused. Research this and use it.', 'Heard on against the grain podcast. Look up for information', 'yellow', 1);
INSERT INTO `project` VALUES (9, 'Writing', 'Publicity campaign - Coke in India', 'I think this is about the way coke was marketed in India. ', 'Against the grain podcast? ', 'yellow', 1);
INSERT INTO `project` VALUES (10, 'Writing', 'Transport between boroughs', 'Transportation between boroughs and cities should not be so stinky. People from Bklyn want to go to Queens. Territoriality', '', 'yellow', 1);
INSERT INTO `project` VALUES (11, 'Writing', 'Garbage and environment', 'So much plastic is wasted with throwing everything away in plastic bags. Use biodgradeable. Also, why not give incentive for not using plastic bags and give them to stores to incentivise customers. Also, taxes should be added to plastic bags to get people', '', 'yellow', 1);
INSERT INTO `project` VALUES (12, 'Writing', 'Garbage and envoroment', 'Write letter about the sheer amount of trash in the city, sending it to other states, and how we should really push for waste reduction and incentivise companies to do this', '', 'yellow', 1);
INSERT INTO `project` VALUES (13, 'Writing', 'Recycling', 'Letter to Bloomberg di NYC recycling - how some people are not very good at it, it is not enforced enough, many businesses do not engage in it. Should be higher fines, more policing and incentives. Garbage people should be given ability to ticket.', '', 'yellow', 1);
INSERT INTO `project` VALUES (14, 'Environment', 'Look up the Alliance for Democracy Polaris institute', 'Woman on NPR who talked about water bottles said to look into this', '', 'yellow', 1);
INSERT INTO `project` VALUES (15, 'Environment', 'Look into public nuisance laws', 'California is suing car companies based on public nuissance laws because they are creating an environmental nuissance', '', 'yellow', 1);
INSERT INTO `project` VALUES (16, 'Finance', 'Change Bank account deposits', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (17, 'Writing', 'Close extra bank accounts', 'Chase, Compass', '', 'blue', 1);
INSERT INTO `project` VALUES (18, 'Writing', 'Change Sallie Mae', 'Put on Wamu account', '', 'blue', 1);
INSERT INTO `project` VALUES (19, 'Writing', 'Children', 'Paper - Virtually all of us want children. People discuss who will work once they have children. But little discussion on whether everyone Should have children, and that the world can''t sustain us all having kids', '', 'yellow', 1);
INSERT INTO `project` VALUES (20, 'HealthTalks', 'Go over bank model for pulling bills.', 'This model can be used for pulling information from the calendar to an external calendar.', '', 'yellow', 2);
INSERT INTO `project` VALUES (21, 'Political involvemen', 'Complete resume', 'draft resume and show to Chris Spina', '', 'yellow', 1);
INSERT INTO `project` VALUES (22, 'Writing', 'GIT w local policticians', 'Anthony Weiner, other congressional figures, or Cymbowitz, local figures', 'Determine next steps\r\n', 'yellow', 1);
INSERT INTO `project` VALUES (23, 'Political involvemen', 'Update 2 papers from school', 'EMRs and universal health insurance', '', 'yellow', 1);
INSERT INTO `project` VALUES (24, 'Finance', 'Ensure loan rates are correct', 'Look at other loan information and determine whether Sallie Mae is charging correctly', '', 'orange', 1);
INSERT INTO `project` VALUES (25, 'Finance', 'Check other banks for overdraft and ATM charges', 'Check banks in NY. ', '', 'yellow', 1);
INSERT INTO `project` VALUES (26, 'Finance', 'Add savings account for travel', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (27, 'Finance', 'Determine method for savings spending track', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (28, 'Finance', 'Research investments', 'Look in investment folder and research. Determine next investment opps. ', '', 'yellow', 1);
INSERT INTO `project` VALUES (29, 'Finance', 'Look at what B Walker recommended and ensure completion', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (30, 'Sentimental Items', 'Finish cutting picture frames', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (31, 'Sentimental Items', 'Categorize home videos', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (32, 'Writing', 'Organize pics saved on computer', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (33, 'Sentimental Items', 'Categorize scraps', 'Keep all? What are next steps? Put with pictures? ', '', 'yellow', 1);
INSERT INTO `project` VALUES (34, 'Writing', 'GIt w/ Local politicians', 'A Weiner, S Cymbrowitz, etc. ', 'Determine next steps', 'yellow', 1);
INSERT INTO `project` VALUES (35, 'Russia', 'Russian Language', 'Look for  Russian tapes for beginners', '', 'yellow', 1);
INSERT INTO `project` VALUES (36, 'Russia', 'Russian Language', 'Look into New Paltz weekend classes and other language classes', '', 'yellow', 1);
INSERT INTO `project` VALUES (37, 'Russia', 'Vaccinations', 'Determine what vaccines are needed for Russia', '', 'yellow', 1);
INSERT INTO `project` VALUES (38, 'Finance', 'Visa', 'Get visa information and apply', '', 'yellow', 1);
INSERT INTO `project` VALUES (39, 'Russia', 'Buy travel pack', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (40, 'Russia', 'Figure out month of trip', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (41, 'Russia', 'Finish travel book and map tour', '', '', 'orange', 1);
INSERT INTO `project` VALUES (42, 'Russia', 'read travel websites', 'Map information from websites to travel book information', '', 'yellow', 1);
INSERT INTO `project` VALUES (43, 'Family History', 'Interviews', 'Int. Basil and Uncle Tony', 'Look into using equipment from Story Corp', 'yellow', 1);
INSERT INTO `project` VALUES (44, 'Family History', 'Interviews', 'Interview AF, Aunt Nella. Make list of others to interview', '', 'yellow', 1);
INSERT INTO `project` VALUES (45, 'Soccer', 'I need to take two pictures for TOLUCA', 'Testing colors.', 'Just trying to see how it works.', 'blue', 2);
INSERT INTO `project` VALUES (46, 'Soccer', 'The Game is 5 PM', 'Testing Colors two.', 'Testing Colors.', 'blue', 2);
INSERT INTO `project` VALUES (47, 'Finance', 'Look into investing in Chinese Solar company', 'On forbes Billionaire list, man who started solar company is richest man in China. Possibly invest in this company', '', 'yellow', 1);
INSERT INTO `project` VALUES (48, 'Environment', 'Experiment', 'Put a lung outside of a power plant or other plant to figure out how black the lung gets over the course of the year. ', '', 'yellow', 1);
INSERT INTO `project` VALUES (49, 'Environment', 'Research websites', 'localfoodswheel.com\r\nlocavores.com\r\nthreestonehearth.com', '', 'yellow', 1);
INSERT INTO `project` VALUES (50, 'Secondary calendar', 'Look up these sites for sec. cal', 'Free Sundays at Kingsborough\r\n\r\nCafe science (columbia University)\r\n\r\nthe coooper union (events)\r\nN\r\nNY Historical Society\r\n\r\nDeitch Gallery\r\n\r\nNY Society for ethical culture\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (51, 'Political involvemen', 'Write to guy who wrote Tom Delay documentary', 'Possibly work with him on something', '', 'yellow', 1);
INSERT INTO `project` VALUES (52, 'Environment', 'Start environment  al group', 'Develop charter, agenda, ideas, etc. ', '', 'yellow', 1);
INSERT INTO `project` VALUES (53, 'Political involvemen', 'Lookup Goosite legislation.com', 'Dave Grinnell was on against the grain - looked at legislastive process and wanted to create website for good legislation. Email:\r\nLukewarm36@hotmail.com', '', 'yellow', 1);
INSERT INTO `project` VALUES (54, 'Environment', 'GIT w', 'Do show - or advertise on show start of environ group, or put across environ idea on his show. ', '', 'yellow', 1);
INSERT INTO `project` VALUES (55, 'Writing', 'Allowable trash', 'Private homes are allowed 6 items, apts not restriceted. \r\nWhy no restrictions', '', 'yellow', 1);
INSERT INTO `project` VALUES (56, 'Website and Videos', 'Getting paid for your videos', 'Metacafe - pays when video has been viewed a certain amount of times. TurnHere and ExpertVillage.com', '', 'yellow', 1);
INSERT INTO `project` VALUES (57, 'Super Kicker', 'Registration', 'I need to develop the registration  for private classes, after school, and birthday parties.', 'I will need to know the information that will be asked to the parents, and that will be kept on the internet.', 'orange', 2);
INSERT INTO `project` VALUES (58, 'Environment', 'Healthpage -', 'Measure like the stock m arket - eg. Mercury in fish , lead in water, pollution in air', '', 'yellow', 1);
INSERT INTO `project` VALUES (59, 'Classes to take', 'Language classes', 'Italian, Russian', '', 'yellow', 1);
INSERT INTO `project` VALUES (60, 'Classes to take', 'Take grammar class', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (61, 'Classes to take', 'Join local ACHE', 'Take a healthcare class or two', '', 'yellow', 1);
INSERT INTO `project` VALUES (62, 'Classes to take', 'Look up toastmasters', 'Speaking program', '', 'yellow', 1);
INSERT INTO `project` VALUES (63, 'Classes to take', 'NYRR deep water running - nyrr.org', 'Exercize', '', 'yellow', 1);
INSERT INTO `project` VALUES (64, 'Classes to take', 'Raw food made easy - naturalgourmetschool.com', 'Cooking class', '', 'yellow', 1);
INSERT INTO `project` VALUES (65, 'Classes to take', 'Raw food made easy - naturalgourmetschool.com', 'Cooking class', '', 'yellow', 1);
INSERT INTO `project` VALUES (66, 'Classes to take', 'Pub;ic Health', 'look into taking law, [ublic health/ public policy classes', '', 'yellow', 1);
INSERT INTO `project` VALUES (67, 'Environment', 'Look into garbages in airport for recycling', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (68, 'Writing', 'Make plan for uninsured interviews', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (69, 'Political involvemen', 'Documentary on Tom DelaY.', 'Maybe get involved with the guy who wrote it', '', 'yellow', 1);
INSERT INTO `project` VALUES (70, 'Writing', 'Write HC stuff (eg about mom''s experience)', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (71, 'Writing', '"A day in the life of" a poor person', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (72, 'Writing', '25 Birthdays', '-25 - Party at home, w Dar in Bryant Park, then out to dinner. First w/o Mom. @4 - Work, Trapeze, to pizza. 23 - dinner at kennedy''s 22 - Seattle, 10- catskills', '', 'yellow', 1);
INSERT INTO `project` VALUES (73, 'Writing', '2 saturdays w Darwin (before May 12)', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (74, 'Writing', 'Mom''s crazy HC experience', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (75, 'Writing', 'Healthcare competition', 'Call " So this is competition", " How is this competition?"I have one health plan avail with my company. How is that competition or any notion of choice? Many companies similar.\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (76, 'Writing', 'Healthcare incentives', '"It used to be that docs were completely trusted . We don''t often think of incentives of docs we go visit, how they are being paid, whether they make $ by sending you for certain tests\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (77, 'Organizing', 'Pictures', 'Pictures - book em/ crop and print/ frame', '', 'yellow', 1);
INSERT INTO `project` VALUES (78, 'Organizing', 'Travel', 'Put travel lists on computer and then on email\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (79, 'Organizing', 'Addresses', 'Put all addys on computer\r\nClean emal addys/ transfer to PDAs and Addy list\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (80, 'Organizing', 'Christmas cards', 'make christmas card list\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (81, 'Organizing', 'google docs', 'Update excel todo sheet - including a)better list of categories and summaries of books erad, b) addy list with information about pps c) resolution list (?? Not sure)\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (82, 'Organizing', 'Scraps', 'Deal with scraps and cards in room shoe box\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (83, 'Organizing', 'Cleaning', 'Make list of all cleaning needs and frequency\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (84, 'Organizing', 'Space', 'Make spot in basement for a) computer b)reuse project work(products to make into useful things) c)clothing alterations (clothing to be used in projects) d)health care research e)make file area for finance f) file for articles and project work\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (85, 'Organizing', 'Other', 'Find out about talking at Midwood di Trinity\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (86, 'Organizing', 'Computer', 'reorganize Computer\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (87, 'Organizing', 'Cleanu[p', 'Go through unused clothing\r\nGo through unused jewelry\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (88, 'Health Care', 'Latin American HC research council', 'was on against the grain', '', 'yellow', 1);
INSERT INTO `project` VALUES (89, 'Environment', 'Research', 'How much energy does it take to turn on a light vs. shutting it off immediately. What is time that you should shut', '', 'yellow', 1);
INSERT INTO `project` VALUES (90, 'Environment', 'Research', 'How does the cycle of trees storing and releasing carbod work? Is there an overall benefit?', '', 'yellow', 1);
INSERT INTO `project` VALUES (91, 'Family History', 'Getting italian citizenship', '1. contact italian embassy\r\n2 - Italian immigration specialist - 718-256-7277- available on mondays', '', 'yellow', 1);
INSERT INTO `project` VALUES (92, 'Environment', 'Researc', 'Stanislaw Burzynski MD, PhD - mentioned on your own health and fitness - LU - related cancer to the environment', '', 'yellow', 1);
INSERT INTO `project` VALUES (93, 'Environment', 'Electricity and power information', 'www.askpsc.com\r\ncleanairny.org\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (94, 'Environment', 'G warming', 'Religious groups and global warming - \r\nAlso - Reverand Richard... policy directorfor evangelicals, on GRIST radionews supports policies for environment. Also, rep senator who said he supports gas tax', 'Science Friday dec 2006', 'yellow', 1);
INSERT INTO `project` VALUES (95, 'Health Care', 'Healthcare', 'Latin American healthcare research council', 'On against the grain - look up policies', 'yellow', 1);
INSERT INTO `project` VALUES (96, 'Environment', 'Farms and Food research', 'Just food\r\nCAFOs\r\nAgaston research foundation - research project growing food in elementary schools -Danielle Hollar @ Agaston institute (NYt art)\r\n\r\n', '', 'yellow', 1);
INSERT INTO `project` VALUES (97, 'Environment', 'Glob warming', 'Anne Vick - works with AL Gore and does presentations', 'Contact her', 'yellow', 1);
INSERT INTO `project` VALUES (98, 'Environment', 'Research inerface company', 'Tile company where slogan is one planet, zero waste. resarch what they have done to better their environ', '', 'yellow', 1);
INSERT INTO `project` VALUES (99, 'Environment', 'Create Dear abbey column for environmentalism', 'Dear abby woman had left for environmentalism, create column for environment - like " if I want to switch from bleach to an alternative..."', '', 'yellow', 1);
INSERT INTO `project` VALUES (100, 'Secondary calendar', 'add eastern mountain sports', '', '', 'yellow', 1);
INSERT INTO `project` VALUES (101, 'Russia', 'Call Deb - Aun t maries'' friend', '21-689-0859', '', 'yellow', 1);
INSERT INTO `project` VALUES (102, 'Healthtalks.net', 'Address in Places', 'I have to make sure that addresses are shown in the places.', 'It is not saving the address and it is not getting the id to make sure it has done it.', 'blue', 8);
INSERT INTO `project` VALUES (103, 'Writing', 'Bellvue Literary Review', 'www.blreview.org\r\nWriting to be limited to 5000 words - ', '', 'yellow', 1);
INSERT INTO `project` VALUES (104, 'HealthTalks', 'Work on Places', 'I need to work on the view part to sort them by city and to create other options like to view them by location name/borough, type of restaurants, food type, etc.', '', 'orange', 2);
INSERT INTO `project` VALUES (105, 'Writing', 'test project', 'test test', '', 'blue', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `pullingevents`
-- 

CREATE TABLE `pullingevents` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `description` tinytext NOT NULL,
  `a_id` int(11) NOT NULL default '0',
  `location` varchar(30) NOT NULL default '',
  `price` varchar(10) NOT NULL default '',
  `person` varchar(60) NOT NULL default '',
  `phone` varchar(18) NOT NULL default '',
  `note` tinytext NOT NULL,
  `recurrence` tinyint(4) NOT NULL default '0',
  `type` varchar(30) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the events that will be pulled' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `pullingevents`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `roles`
-- 

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `description` tinytext,
  `user_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds all the roles of a specific user' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `roles`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `spences`
-- 

CREATE TABLE `spences` (
  `id` varchar(35) NOT NULL default '',
  `title` varchar(150) NOT NULL default '',
  `day` tinyint(4) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `year` int(11) NOT NULL default '0',
  `payment` varchar(10) NOT NULL default '',
  `amount` double NOT NULL default '0',
  `description` tinytext NOT NULL,
  `type` bigint(20) NOT NULL default '0',
  `sc_id` bigint(20) default NULL,
  `user` bigint(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the journal of the spent money';

-- 
-- Dumping data for table `spences`
-- 

INSERT INTO `spences` VALUES ('202754113020072', 'November unlimited card', 30, 11, 2007, '', 76, '', 2, 3, 2);
INSERT INTO `spences` VALUES ('9525112420072', 'December Metrocard', 4, 12, 2007, '', 76, '', 2, 3, 2);
INSERT INTO `spences` VALUES ('13331912520072', 'Breakfast', 5, 12, 2007, '', 1.75, 'I had a bagel with cream cheese and a small hot chocolate from the cart on 87 st and Lexington.', 3, 4, 2);
INSERT INTO `spences` VALUES ('9555512320071', 'Food', 3, 12, 2007, '', 10, 'Bagel Sandwich', 5, 9, 1);
INSERT INTO `spences` VALUES ('9363512520072', 'December Rent', 5, 12, 2007, '', 750, 'I already gave Nicole a check for $750 for the month of December 2007 rent.', 1, 1, 2);
INSERT INTO `spences` VALUES ('10141712420071', 'take out Lunch and snack', 4, 12, 2007, '', 10, 'Salad and nut packages', 5, 9, 1);
INSERT INTO `spences` VALUES ('10150812520071', 'Saturday Market', 5, 12, 2007, '', 120, 'Meat, Cheese , Milk, veges', 4, 8, 1);
INSERT INTO `spences` VALUES ('13352312520072', 'Peanuts', 5, 12, 2007, '', 0.75, 'I had Planters Honey Roasted Peanuts.', 3, 13, 2);
INSERT INTO `spences` VALUES ('13362912420072', 'Greek Salad', 4, 12, 2007, '', 8, 'I had a greek salad from the cafeteria downstairs on the third floor.', 3, 5, 2);
INSERT INTO `spences` VALUES ('23114112520072', 'Lunch', 5, 12, 2007, '', 4.28, 'I had a crab cake.', 3, 5, 2);
INSERT INTO `spences` VALUES ('9460812520071', 'Dinner take out', 5, 12, 2007, '', 12, 'Still not cooking  - moving in - got burger and shake', 5, 9, 1);
INSERT INTO `spences` VALUES ('13080212620072', 'I had a vitaminWater drink.', 6, 12, 2007, '', 2, 'I had a vitamin water.', 3, 13, 2);
INSERT INTO `spences` VALUES ('13105012620072', 'bagel and hot chocolate', 6, 12, 2007, '', 2, 'I had a plain bagel with cream cheese and I had small hot chocolate. I gave the cart guy a .25 cents tip.\r\n', 3, 4, 2);
INSERT INTO `spences` VALUES ('13135012720072', 'Pumpkin Soup', 7, 12, 2007, '', 4.95, 'I had a pumkin soup from the cafe down on the third floor.', 3, 5, 2);
INSERT INTO `spences` VALUES ('13151812720072', 'Slice of pizza and sprite.', 7, 12, 2007, '', 3.75, 'I bought a slice of pizza and a sprite zero drink.', 3, 5, 2);
INSERT INTO `spences` VALUES ('13165412720072', 'Texan Chilli', 7, 12, 2007, '', 3.79, 'I had a texan chilli from goodburger', 3, 13, 2);
INSERT INTO `spences` VALUES ('13185412620072', 'Tape from paragon', 6, 12, 2007, '', 5.98, 'I bought two pack of tape to tape my shinguards.', 7, 14, 2);
INSERT INTO `spences` VALUES ('16154212820072', 'Honey', 8, 12, 2007, '', 14.25, 'I went to the market and bought to small buckwheat honey and a cream honey.', 1, 10, 2);
INSERT INTO `spences` VALUES ('16164612820072', 'Eggnog and Eggs', 8, 12, 2007, '', 8.5, 'I got eggs and eggnog from the market.', 1, 10, 2);
INSERT INTO `spences` VALUES ('16172512820072', 'Fruit Stollen', 8, 12, 2007, '', 6, 'I bought a fruit stollen bread.', 1, 10, 2);
INSERT INTO `spences` VALUES ('1212812720072', 'Given to Nicole', 7, 12, 2007, '', 60, 'I gave Nicole $60 for groceries.', 1, 10, 2);
INSERT INTO `spences` VALUES ('1280512920072', 'Food from Christina', 9, 12, 2007, '', 24.5, 'I went to buy food for the two of us. Nicole had an order of perogies and I had a the pork loin and a vegetable soup.', 9, 19, 2);
INSERT INTO `spences` VALUES ('1301412720072', 'Thai Cafe', 7, 12, 2007, '', 24.75, 'We order food from Thai Cafe: Nicole ordered some chicken and I order the grilled half chicken, a coconut milk with moushroom soup and I role with shrimp.', 9, 19, 2);
INSERT INTO `spences` VALUES ('14265412920072', 'Thai Cafe', 9, 12, 2007, '', 30.3, 'Michael and I ordered food from the thai cafe. We order beef with curry and grilled half chicken, two soups: coconut milks, and an order of shrimps.', 9, 19, 2);
INSERT INTO `spences` VALUES ('14280012820072', 'Yumy Taco', 8, 12, 2007, '', 17, 'Michael and I ordered food from Yummy Taco, I ordered the mexican steak: E7.', 9, 19, 2);
INSERT INTO `spences` VALUES ('14513512920072', 'Real Estate Broker', 9, 12, 2007, '', 750, 'I gave Nicole the $750 to pay the real estate broker for finding our apartment.', 1, 1, 2);
INSERT INTO `spences` VALUES ('21100312920072', 'Sahara', 9, 12, 2007, '', 48, 'Nicole and I went to eat at Sahara.', 9, 19, 2);
INSERT INTO `spences` VALUES ('153118121120071', 'Lunch', 11, 12, 2007, '', 4, 'taco and chocolate', 5, 9, 1);
INSERT INTO `spences` VALUES ('153153121020071', 'Lunch', 10, 12, 2007, '', 8, 'Take out chinese - chicken and broc\r\n', 5, 9, 1);
INSERT INTO `spences` VALUES ('17291112920071', 'Food', 9, 12, 2007, '', 15, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('173249121120071', 'Laura''s wedding', 11, 12, 2007, '', 60, 'Rental car gas, airport food, etc.\r\n\r\n ', 10, 20, 1);
INSERT INTO `spences` VALUES ('173334121120071', 'Laura''s Wedding', 11, 12, 2007, '', 50, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('90513121320071', 'lunch', 13, 12, 2007, '', 8, 'Peanut butter and raisins', 4, 8, 1);
INSERT INTO `spences` VALUES ('90612111320071', 'Donation to America Farmland trust', 13, 11, 2007, '', 25, '', 11, 22, 1);
INSERT INTO `spences` VALUES ('90642121320071', 'Donation to America Farmland trust', 13, 12, 2007, '', 25, '', 11, 22, 1);
INSERT INTO `spences` VALUES ('231159121320072', 'Bagel and hot chocolate', 13, 12, 2007, '', 1.75, 'I had a plain bagel with cream cheese and a small hot chocolate.', 3, 4, 2);
INSERT INTO `spences` VALUES ('231332121320072', 'Red Bull', 13, 12, 2007, '', 2.5, 'I had a red bull when I was going to wps in 86 St and Broadway.', 3, 13, 2);
INSERT INTO `spences` VALUES ('231538121220072', 'Greek Salad', 12, 12, 2007, '', 6.95, 'I got a greek salad to eat from the cafeteria downstairs in the third floor in the y.', 3, 5, 2);
INSERT INTO `spences` VALUES ('231645121320072', 'Orange Pineapple juice', 13, 12, 2007, '', 1.75, 'I had an orange pineapple juice drink form downstairs in the third floor.', 3, 5, 2);
INSERT INTO `spences` VALUES ('145138121420072', 'Closet Rod, Brackets and screws', 14, 12, 2007, '', 18.35, 'I went to buy a closet rod, some brackets to secure a shelf and screws. I wen to the hardware store on manhattan avenue between norman ave. and Meserole St. ', 1, 24, 2);
INSERT INTO `spences` VALUES ('145331121420072', 'Bagel and Hote Chocolate', 14, 12, 2007, '', 2, 'I had a plain bagel with cream cheese and a small hot chocolate. I got it from the kart on 87th St. between lexington and 3rd ave.', 3, 4, 2);
INSERT INTO `spences` VALUES ('145443121420072', 'Oranges', 14, 12, 2007, '', 1, 'I had 3 orange for a dollar from the guy that has a fruit stand on 89 or 90 street and lexington.', 3, 13, 2);
INSERT INTO `spences` VALUES ('145615121420072', 'Hamburger Deluxe', 14, 12, 2007, '', 6, 'I finally got a Hamburger deluxe from this place between Meserole and Calyer St. on Manhattan Ave.', 3, 5, 2);
INSERT INTO `spences` VALUES ('211357121420072', 'Soap', 14, 12, 2007, '', 2.5, 'I bought 5 little boxes of tide soap.', 1, 23, 2);
INSERT INTO `spences` VALUES ('211436121420072', 'Washing clothes', 14, 12, 2007, '', 6, 'I spent $6 to wash the clothes.', 1, 23, 2);
INSERT INTO `spences` VALUES ('211527121420072', 'Drying Clothes', 14, 12, 2007, '', 1.75, 'I spent 1.75 in the drying machine to dry the clothes.', 1, 23, 2);
INSERT INTO `spences` VALUES ('211815121420072', 'Michael Christmas present', 14, 12, 2007, '', 73, 'I spent $73 to get a ticket for Michael to go to the professional bull riders in madison square garden. I bought one for myself so I spent $73 as well.', 12, 25, 2);
INSERT INTO `spences` VALUES ('212257121420072', 'Bull Riders Ticket', 14, 12, 2007, '', 63, 'I got myself and Michael a ticket to see the bull riders for christmas. Each ticket was $63.', 12, 26, 2);
INSERT INTO `spences` VALUES ('212921121420072', 'Humberger and Chicken and Rice soup', 14, 12, 2007, '', 10.5, 'I bought a bacon cheeseburger with a chicken and rice soup from a place in the corner of columbus and 86th st.', 3, 27, 2);
INSERT INTO `spences` VALUES ('20326121620072', 'Water Bottle', 16, 12, 2007, '', 20, 'I got an aluminum water bottle from 3r living in park slope brooklyn.', 12, 26, 2);
INSERT INTO `spences` VALUES ('20435121620072', 'Gyro and Hot Chocolate', 16, 12, 2007, '', 4.75, 'I had a gyro and a hot chocolate in  a place downtown brooklyn before the BKF birthday: Bijou', 3, 4, 2);
INSERT INTO `spences` VALUES ('20546121620072', 'Angus Cheese Burger', 16, 12, 2007, '', 5, 'I had an angus cheese burger from McDonald in downtown brooklyn after BKF birthday: Bijou', 3, 5, 2);
INSERT INTO `spences` VALUES ('20717121620072', 'Erasmus high school', 16, 12, 2007, '', 3, 'I paid $3 to get in the erasmus high school in Church and Bedford.', 7, 28, 2);
INSERT INTO `spences` VALUES ('20806121620072', 'Turtle Neck Shirts', 16, 12, 2007, '', 20, 'I got Miguel turtle neck shirts from Models.', 12, 25, 2);
INSERT INTO `spences` VALUES ('21010121620072', 'Fried Chicken and Gatorade', 16, 12, 2007, '', 5.5, 'I got three pieces of chicken with a biscuit and an orange gatorade.', 9, 29, 2);
INSERT INTO `spences` VALUES ('21109121620072', 'Abbey', 16, 12, 2007, '', 10, 'I had a cider and a drink for nicole', 9, 30, 2);
INSERT INTO `spences` VALUES ('21149121620072', 'Abbey', 16, 12, 2007, '', 12, 'I had a jose cuervo tequila and one for dave for his birthday.', 9, 30, 2);
INSERT INTO `spences` VALUES ('21234121620072', 'Abbey', 16, 12, 2007, '', 17, 'I bought two lemon drop for nicole and dave.', 9, 30, 2);
INSERT INTO `spences` VALUES ('140421121620072', 'Adidas Jacket', 16, 12, 2007, '', 30, 'I bought an adidas jacket that was half price off in modells.', 12, 26, 2);
INSERT INTO `spences` VALUES ('140653121620072', 'Karla''s Christmas Present', 16, 12, 2007, '', 21.66, 'I got Karla''s a chain with a stone hanging from macys.', 12, 25, 2);
INSERT INTO `spences` VALUES ('141157121620072', 'Diana''s Christmas present', 16, 12, 2007, '', 9.99, 'I got Diana an 8 piece set that includes: bib, scratch, mittens, hat, short sleeve bodysuit, all in one, vest, cardigan, trousers with feet.', 12, 25, 2);
INSERT INTO `spences` VALUES ('141315121620072', 'Linda''s Christmas present', 16, 12, 2007, '', 25, 'I got Linda a gift card from Dr. Jays Ladies.', 12, 25, 2);
INSERT INTO `spences` VALUES ('141401121620072', 'Xiomara''s Gift Card present', 16, 12, 2007, '', 25, 'I got Xiomara gift card from Dr. Jays Ladies as a present for christmas.', 12, 25, 2);
INSERT INTO `spences` VALUES ('141713121620072', 'Colgate Toothpaste', 16, 12, 2007, '', 5.4, 'I got a toothpaste from Harrico Pharmacy in Manhattan avenue in greenpoint.', 1, 31, 2);
INSERT INTO `spences` VALUES ('141933121620072', 'Muscle Milk drink', 16, 12, 2007, '', 2.5, 'I got a muscle milk drink as a snack from Harrico Pharmacy in manhattan ave. in greenpoint brooklyn.', 3, 13, 2);
INSERT INTO `spences` VALUES ('142510121520072', 'Chicharron', 15, 12, 2007, '', 5, 'I got chicharron to eat when I went to play soccer in Donaldo''s team.', 9, 29, 2);
INSERT INTO `spences` VALUES ('193309121720072', 'Toilet Paper', 17, 12, 2007, '', 1.08, 'I got four rolls of toilet paper for .99 cents.', 1, 31, 2);
INSERT INTO `spences` VALUES ('193411121720072', 'Pio Pio Peruvian Restaurant', 17, 12, 2007, '', 11, 'I got a whole chicken and a small order of yellow rice.', 9, 19, 2);
INSERT INTO `spences` VALUES ('193606121720072', 'Tangerines and Cookies', 17, 12, 2007, '', 6.48, 'I got two tangerines for $0.99 and I got a bag of sugar cookies.', 3, 13, 2);
INSERT INTO `spences` VALUES ('193849121720072', 'Greek Salad', 17, 12, 2007, '', 6.95, 'I got a greek salad with italian dressing. I got it from the cafe downstair on the third floor in the Y.', 3, 5, 2);
INSERT INTO `spences` VALUES ('183705121820072', 'Bagel and Nutrament', 18, 12, 2007, '', 4, 'I had a bagel with cream cheese and a nutrament as drink.', 3, 5, 2);
INSERT INTO `spences` VALUES ('93236121920072', 'Alta', 19, 12, 2007, '', 89, 'Nicole, Joana and her husband, Adam, Jackie and her boyfriend, David, and I went to Alta on 64 West 10 St btn 6 and 5 Ave. A tapas place. We got the whole menu for $350 plus drinks.', 9, 29, 2);
INSERT INTO `spences` VALUES ('93344121920072', 'Starbucks', 19, 12, 2007, '', 4.06, 'I got a tall hot chocolate and a expresso brownie.', 3, 13, 2);
INSERT INTO `spences` VALUES ('122308121920072', 'Salmon', 19, 12, 2007, '', 9.45, 'I got a piece of salmon with lettuce and tomatoes and two slices of lemon.', 3, 5, 2);
INSERT INTO `spences` VALUES ('05057122020072', 'Hamburger', 20, 12, 2007, '', 7.35, 'I had a cheeseburger from a place in lexington between 85 & 86 St.', 3, 27, 2);
INSERT INTO `spences` VALUES ('05146122020072', 'Gatorade', 20, 12, 2007, '', 2.35, 'I got a very expensive small gatorade, don''t do it again!!!!', 3, 13, 2);
INSERT INTO `spences` VALUES ('185525122020072', 'Red Bull', 20, 12, 2007, '', 2.5, 'I had a drink in the 59 St.: Columbus Circle station. ', 3, 13, 2);
INSERT INTO `spences` VALUES ('185743122020072', 'Black Bean Soup', 20, 12, 2007, '', 4.95, 'I got a black bean soup for lunch from downstairs in the third floor.', 3, 5, 2);
INSERT INTO `spences` VALUES ('185912122020072', 'Bagel and Hot Chocolate', 20, 12, 2007, '', 2, 'I got a raisin bagel with cream cheese and a hot chocolate.', 3, 4, 2);
INSERT INTO `spences` VALUES ('230345122120072', '2 by 4 piece of wood and hand saw', 21, 12, 2007, '', 11, 'I got a hand saw and I got a 8'' 2x4 piece of wood.', 1, 24, 2);
INSERT INTO `spences` VALUES ('230432122120072', 'Bathroom chade', 21, 12, 2007, '', 5, 'I got a shade for the bathroom and the braces to hold it.', 1, 24, 2);
INSERT INTO `spences` VALUES ('230605122120072', 'January Metrocard', 21, 12, 2007, '', 76, 'I got a metrocard early because it is changing prices.', 2, 3, 2);
INSERT INTO `spences` VALUES ('230742122120072', 'Sesame seed bagel with cream cheese and hot chocolate', 21, 12, 2007, '', 1.75, 'I got a sesame seed bagel with cream cheese and a small hot chocolate.', 3, 4, 2);
INSERT INTO `spences` VALUES ('230851122120072', 'Four Tangerines', 21, 12, 2007, '', 1.98, 'I got four tangerines. They were 2 for $0.99.', 3, 13, 2);
INSERT INTO `spences` VALUES ('231112122120072', 'Clove Ornaments for Nicole''s Aunts', 21, 12, 2007, '', 16.35, 'I got clove ornaments for nicole''s aunts. I got three different shapes: star, moon, and flower like shape.', 12, 25, 2);
INSERT INTO `spences` VALUES ('231550122120072', 'Retrieving Archive from Liz and Botshon', 21, 12, 2007, '', 150, 'I hired Susan Esterhay to take over my paper''s case. She had to try to get the papers from Liz and Botshon that now belong to wilens and baker. It was not sucessful, so I have to try to get the papers from INS.', 14, 34, 2);
INSERT INTO `spences` VALUES ('231748122120072', 'Retrieving applications copies from INS', 21, 12, 2007, '', 350, 'I have to get copies of receipts from ins so that I don''t have to go to Honduras to get the papers. We just sent the papers; we are waiting for the results.', 14, 34, 2);
INSERT INTO `spences` VALUES ('232239122120072', 'Teeth Cleaning', 21, 12, 2007, '', 35, 'I went to the dentist to do a cleaning, but I wasn''t able to do it because I was coughin too much. I am suppose to reschedule which I haven''t done yet.', 13, 32, 2);
INSERT INTO `spences` VALUES ('133036122220072', 'Hot Chocolate and Bread', 22, 12, 2007, '', 4.2, 'I had a hot chocolate and a bread from a place close to Marymount School.', 3, 4, 2);
INSERT INTO `spences` VALUES ('133141122220072', 'Tangerines', 22, 12, 2007, '', 1, 'I got 6 tangerines for a dollar in greenpoint.', 3, 13, 2);
INSERT INTO `spences` VALUES ('235804122220072', 'Gave Nicole for Groceries', 22, 12, 2007, '', 100, 'I gave Nicole $100 for groceries.', 1, 10, 2);
INSERT INTO `spences` VALUES ('235920122220072', 'Kattia Gift', 22, 12, 2007, '', 75, 'I gave my mother $75 for Kattia''s gift.', 12, 25, 2);
INSERT INTO `spences` VALUES ('00202122220072', 'Tacos Nuevos Mexico', 22, 12, 2007, '', 38, 'Nicole and I went to Tacos Nuevos Mexico for dinner. I got the steak special and tripe soup (sopa de mondongo) and a taco al pastor.', 9, 29, 2);
INSERT INTO `spences` VALUES ('00326122220072', 'Christmas food', 22, 12, 2007, '', 35, 'I gave my mother $35 for christmas food. I don''t know if that is enough, but I gave her that money.', 12, 25, 2);
INSERT INTO `spences` VALUES ('206401620082', 'January Rent paid', 6, 1, 2008, '', 750, 'I already gave Nicole the rent for the house and other expenses.', 1, 1, 2);
INSERT INTO `spences` VALUES ('207351620082', 'January card bought', 6, 1, 2008, '', 76, 'I already bought the metrocard for the month of january.', 2, 3, 2);
INSERT INTO `spences` VALUES ('211001620082', 'Groceries for the family brunch', 6, 1, 2008, '', 229, 'I spent $200 in the family brunch. I used my $100 gift card to buy the groceries for Trader Joe''s and I used my $100 american express check to paid $65 and I used the other $35 dollars to get the clothe rack to dry the clothes. I also spent $29 from my de', 1, 10, 2);
INSERT INTO `spences` VALUES ('2228171620082', 'Nachos', 6, 1, 2008, '', 8, 'I got michael and I two nachos and cheese.', 9, 29, 2);
INSERT INTO `spences` VALUES ('2230021620082', 'Pumkin Loaf', 6, 1, 2008, '', 3, 'I got a pumkin loaf from starbucks.', 9, 29, 2);
INSERT INTO `spences` VALUES ('2231451520082', 'Taxi and Entrance', 5, 1, 2008, '', 18, 'I had to take a taxi from jay street to church and bedford and I paid $15 and I paid $3 for entrance.', 7, 28, 2);
INSERT INTO `spences` VALUES ('938441620081', 'Metrocard', 6, 1, 2008, '', 76, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('1215531720082', 'Salad', 7, 1, 2008, '', 6.95, 'I got a salad from downstairs in the 3rd floor. I got a salad with the following Ingredients: romain lettuce, small tomatoes, walnuts, oranges, and italian dressing.', 3, 5, 2);
INSERT INTO `spences` VALUES ('2344121720082', 'Nutrament', 7, 1, 2008, '', 2, 'I had a nutrament.', 3, 4, 2);
INSERT INTO `spences` VALUES ('2349131720082', 'Tangerines and Gatorades', 7, 1, 2008, '', 4, 'I have some tangerines after work and I had a gatorade after the game we had in Long Island were we won against a Catracho''s team.', 3, 13, 2);
INSERT INTO `spences` VALUES ('1553341920082', 'Salad', 9, 1, 2008, '', 6.95, 'I got a salad to eat with a bread and italian dressing.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1554361820082', 'Tangerines', 8, 1, 2008, '', 1, 'I got three tangerines for a dollar.', 3, 13, 2);
INSERT INTO `spences` VALUES ('1555391820082', 'Tangerines', 8, 1, 2008, '', 1.48, 'I got two tangerines and a clementine.', 3, 13, 2);
INSERT INTO `spences` VALUES ('1556181920082', 'Tangerines', 9, 1, 2008, '', 1, 'I got 7 tangerines for a dollar in greenpoint ave. by the train station.', 3, 13, 2);
INSERT INTO `spences` VALUES ('1558031820082', 'Chicken Fajita Panini and Muscle drink', 8, 1, 2008, '', 11.45, 'I got chicken fajita panini and a muscle drink for dinner when I was comming to the office.', 3, 27, 2);
INSERT INTO `spences` VALUES ('16005811020082', 'Chicken Fajita Panini', 10, 1, 2008, '', 5.95, 'I got a chicken fajita to drink.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1602461920082', 'Hot Chocolate and Bagel with cream cheese', 9, 1, 2008, '', 2, 'I got a bagel with cream cheese and a hot chocolate.', 3, 4, 2);
INSERT INTO `spences` VALUES ('16032611020082', 'Bagel with cream cheese and hot chocolate', 10, 1, 2008, '', 2, 'I got a bagel with cream cheese and a small hot chocolate.', 3, 4, 2);
INSERT INTO `spences` VALUES ('18585711020089', 'January Rent paid.', 10, 1, 2008, '', 1500, 'The check was sent to the landlord before we went on vacation.', 20, 39, 9);
INSERT INTO `spences` VALUES ('13105311120082', 'Hot Chococalte and Bagel', 11, 1, 2008, '', 1.75, 'I got a hot chocolate and a plain bagel with cream cheese.', 3, 4, 2);
INSERT INTO `spences` VALUES ('19102611120082', 'Tangerines', 11, 1, 2008, '', 1, 'I got 7 tangerines for $1.', 3, 13, 2);
INSERT INTO `spences` VALUES ('22494711420082', 'Salad', 14, 1, 2008, '', 6.95, 'I got a salad from downstairs. It had raisins, small tomatoes, romaine lettuce, and nuts.', 3, 5, 2);
INSERT INTO `spences` VALUES ('22501611620082', 'Burger', 16, 1, 2008, '', 6.23, 'I got a beef burger with lettuce and tomatoes.', 3, 5, 2);
INSERT INTO `spences` VALUES ('22510811620082', 'Hot Chococalte and Bagel', 16, 1, 2008, '', 1.75, 'I got a hot chocolate and a plain bagel with cream cheese.', 3, 4, 2);
INSERT INTO `spences` VALUES ('22540411420082', 'Tangerines', 14, 1, 2008, '', 1, 'I got 7 tangerines for a dollar.', 3, 13, 2);
INSERT INTO `spences` VALUES ('22542911620082', 'Tangerines', 16, 1, 2008, '', 1, 'I got 3 tangerines for a dollar.', 3, 13, 2);
INSERT INTO `spences` VALUES ('22564811520082', 'Mexican Tamales', 15, 1, 2008, '', 6, 'I got 5 tamales and an arroz con leche in Kingshighway station in the q train.', 9, 29, 2);
INSERT INTO `spences` VALUES ('22580511520082', 'Chiropractor', 15, 1, 2008, '', 75, 'I paid with a check for chiropractor appointment. I also paid $145 for nicole''s appointment because she got pills.', 13, 36, 2);
INSERT INTO `spences` VALUES ('23001611220082', 'Super Estrellas', 12, 1, 2008, '', 3, 'I paid $3 to get in to play in Donaldo''s team.', 7, 28, 2);
INSERT INTO `spences` VALUES ('23021411620082', 'Toilet paper', 16, 1, 2008, '', 2, 'I got toilet paper.', 1, 31, 2);
INSERT INTO `spences` VALUES ('23034111620082', 'Other expenes', 16, 1, 2008, '', 450, 'In total we are suppose to expend $1200 per month.', 1, 0, 2);
INSERT INTO `spences` VALUES ('0031011820082', 'Bagel and Hot Chocolate', 18, 1, 2008, '', 1.75, 'I got a raisin bagel with cream cheese and a small hot chocolate from the vendor cart in 87 and Lexington.', 3, 4, 2);
INSERT INTO `spences` VALUES ('0042111920082', 'Mix Nuts', 19, 1, 2008, '', 3, 'I got a mix nuts for $3 in the corner of 86 and Lexington Ave.', 3, 13, 2);
INSERT INTO `spences` VALUES ('0055711820082', 'Salad and Fruit Salad', 18, 1, 2008, '', 10.95, 'I got a salad and a fruit salad from the 92Y cafe.', 3, 5, 2);
INSERT INTO `spences` VALUES ('0074111620082', 'Mix Nuts', 16, 1, 2008, '', 3, 'I got mix nuts from the corner of 86 and Lexington.', 3, 13, 2);
INSERT INTO `spences` VALUES ('12361512020081', 'food', 20, 1, 2008, '', 50, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('21154312220082', 'Tangerines', 22, 1, 2008, '', 1, 'I got two tangerines for a dollar.', 3, 13, 2);
INSERT INTO `spences` VALUES ('21160312220082', 'Churros', 22, 1, 2008, '', 1, 'I got two churros for a dollar.', 3, 13, 2);
INSERT INTO `spences` VALUES ('21200912220082', 'Regular Slice and Sprite', 22, 1, 2008, '', 3.75, 'It got a regular slice and bottle of sprite.', 3, 5, 2);
INSERT INTO `spences` VALUES ('21255612120082', 'Muffin and Passion Fruit Juice', 21, 1, 2008, '', 3.15, 'I got a muffin and a passion fruit juice.', 3, 5, 2);
INSERT INTO `spences` VALUES ('21300811920082', 'Cake and Candles', 19, 1, 2008, '', 23, 'I got linda a tres leches cake and candles.', 12, 35, 2);
INSERT INTO `spences` VALUES ('17315212420082', 'Toilet paper', 24, 1, 2008, '', 4, 'I got two packs of four rolls of toilet paper.', 1, 31, 2);
INSERT INTO `spences` VALUES ('17341112420082', 'Vegetables', 24, 1, 2008, '', 7.77, 'I got four sweet peppers, two cans of beans, a box of raisins, etc.', 1, 10, 2);
INSERT INTO `spences` VALUES ('17350112420082', 'Spanish Lunch', 24, 1, 2008, '', 8.75, 'I got a spanish lunch: pernil with rice and beans and vitamin water to drink.', 3, 5, 2);
INSERT INTO `spences` VALUES ('17380412120082', 'Zip Car to Long Island', 21, 1, 2008, '', 9, 'I paid Jose $9 for renting the car for last week and this week.', 7, 38, 2);
INSERT INTO `spences` VALUES ('11514312820082', 'Musculin Salad', 28, 1, 2008, '', 6.95, 'I got a musculin salad from downstairs with Italian dressing.', 3, 5, 2);
INSERT INTO `spences` VALUES ('11543512820082', 'Lunch with Joanna, Adam and Nicole', 28, 1, 2008, '', 22, 'Joanna and Adam came to visit us to our new apartment and we took them to eat polish food right on bedford ave. ', 9, 29, 2);
INSERT INTO `spences` VALUES ('11573912820082', 'Costillas con Arroz y abuichuelas', 28, 1, 2008, '', 7, 'I got ribs in sauce with rice and beans from a place right off the 7 train to get to the g train that sells spanish food.', 9, 19, 2);
INSERT INTO `spences` VALUES ('9561912920082', 'Laundry', 29, 1, 2008, '', 8.5, 'Soap, Washing, and Drying.', 1, 23, 2);
INSERT INTO `spences` VALUES ('8132312920082', 'Chicken Fajita Panini and Muscle drink', 29, 1, 2008, '', 11.33, 'I had a chicken fajita and a muscle drink from a place in 87 st. and Colombus ave.', 3, 5, 2);
INSERT INTO `spences` VALUES ('8145912820082', 'Croissant', 28, 1, 2008, '', 2, 'I got a croissant.', 3, 13, 2);
INSERT INTO `spences` VALUES ('8152512920082', 'Tangerines', 29, 1, 2008, '', 1, 'I got a tangerines 2 for a dollar.', 3, 13, 2);
INSERT INTO `spences` VALUES ('8154812820082', 'Tangerines', 28, 1, 2008, '', 1, 'I got 4 tangerines for a dollar.', 3, 13, 2);
INSERT INTO `spences` VALUES ('8163912920082', 'Vanilla Creme', 29, 1, 2008, '', 3.25, 'I got a vanilla creme from starbucks.', 3, 13, 2);
INSERT INTO `spences` VALUES ('8191012920082', 'Water''s Edge', 29, 1, 2008, '', 125, 'Nicole and I went to Water''s Edge in LIC for dinner and I paid for dinner because Nicole paid for Brunch last Sunday in One If By Land and Two If By Sea (75). The total includes regular tip, captain tip, and coat person.', 9, 29, 2);
INSERT INTO `spences` VALUES ('12222713020082', 'Hot Chocolate and sesame seed bagel with creamcheese', 30, 1, 2008, '', 1.75, 'I got a sesame seed bagel with creamcheese and a small hot chocolate.', 3, 4, 2);
INSERT INTO `spences` VALUES ('12231113020082', 'Salad', 30, 1, 2008, '', 8.95, 'I got a salad and added avocado to it. I had to paid two dollar extra for that.', 3, 5, 2);
INSERT INTO `spences` VALUES ('0190113120082', 'Nutrament', 31, 1, 2008, '', 2, 'I got a nutrament as breakfast.', 3, 4, 2);
INSERT INTO `spences` VALUES ('0194813120082', 'Chicken Fajita Panini', 31, 1, 2008, '', 6.45, 'I got a chicken fajita.', 3, 5, 2);
INSERT INTO `spences` VALUES ('0210313120082', 'Bread with Ham and Sausage filled and gatorade', 31, 1, 2008, '', 8, 'I got a a bread filled with ham and some kind of sausage and a gatorade.', 3, 27, 2);
INSERT INTO `spences` VALUES ('0213713120082', 'Redbull', 31, 1, 2008, '', 2.5, 'I got a redbull.', 3, 13, 2);
INSERT INTO `spences` VALUES ('022422120082', 'February Rent', 1, 2, 2008, '', 750, 'The february rent is already paid.', 1, 1, 2);
INSERT INTO `spences` VALUES ('023122120082', 'House Bills', 1, 2, 2008, '', 450, 'Money for the house bills are paid.', 1, 0, 2);
INSERT INTO `spences` VALUES ('106342120082', 'Greek Salad', 1, 2, 2008, '', 6.95, 'I got a greek salad.', 3, 5, 2);
INSERT INTO `spences` VALUES ('107222120082', 'Bagel and Hot Chocolate', 1, 2, 2008, '', 1.75, 'I got a sesame seed bagel with cream cheese and a small hot chocolate.', 3, 4, 2);
INSERT INTO `spences` VALUES ('323022220082', 'House Warm Up Party Groceries', 2, 2, 2008, '', 88.97, 'I went to buy ribs and other things needed for the party.', 1, 24, 2);
INSERT INTO `spences` VALUES ('324042220082', 'Wine', 2, 2, 2008, '', 22, 'I got two bottles of wine: Trapiche Malbec.', 1, 24, 2);
INSERT INTO `spences` VALUES ('325012120082', 'Gave Nicole for Groceries', 1, 2, 2008, '', 60, 'I gave Nicole $60 for groceries for our house warm up party.', 1, 24, 2);
INSERT INTO `spences` VALUES ('1303182420081', 'metrocard', 4, 2, 2008, '', 76, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('1306182420081', 'Brunch with Jenne', 4, 2, 2008, '', 35, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1308172120081', 'Dinner', 1, 2, 2008, '', 10, 'take out From Christina''s ', 5, 9, 1);
INSERT INTO `spences` VALUES ('1707382420081', 'Raisins', 4, 2, 2008, '', 4, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('1538092520082', 'Pizza', 5, 2, 2008, '', 2.25, 'I got a slice of pizza.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1539082420082', 'Musculin Salad', 4, 2, 2008, '', 6.95, 'I got a salad.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1539352420082', 'Carrot Cake', 4, 2, 2008, '', 2, 'I got a carrot cake.', 3, 13, 2);
INSERT INTO `spences` VALUES ('1201232620082', 'Bagel and Hot Chocolate', 6, 2, 2008, '', 1.75, 'I had a plain bagel with cream cheese and a hot chocolate.', 3, 4, 2);
INSERT INTO `spences` VALUES ('1201522620082', 'Musculin Salad', 6, 2, 2008, '', 6.95, 'I had a musculin salad.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1432582720081', 'Lunch', 7, 2, 2008, '', 5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1905262720081', 'Lunch', 7, 2, 2008, '', 5, 'Gyro', 5, 9, 1);
INSERT INTO `spences` VALUES ('1802572820082', 'Orange Dream Machine', 8, 2, 2008, '', 7, 'I had an orange dream machine from Jamba Juice.', 3, 4, 2);
INSERT INTO `spences` VALUES ('1804472720082', 'Chicken Fajita Panini', 7, 2, 2008, '', 7, 'I got a chicken fajita and a soda.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1808152820082', 'Musculin Salad', 8, 2, 2008, '', 6.95, 'I got a musculin salad.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1810162620082', 'Mango-A-Go-Go', 6, 2, 2008, '', 6, 'I got a mango-a-go-go from Jamba Juice.', 3, 13, 2);
INSERT INTO `spences` VALUES ('1812022920082', 'Turkey Avocado Sandwich and Vanilla Creme', 9, 2, 2008, '', 10, 'I got a turkey avocado sandwich and vanilla creme from starbucks.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1815532720082', 'Dallas BBQ', 7, 2, 2008, '', 40, 'Nicole and I went out with the sss coaches that play in Chelsea Piers soccer team. We went to Dallas BBQ.', 9, 29, 2);
INSERT INTO `spences` VALUES ('051462920082', 'Super Estrellas', 9, 2, 2008, '', 3, 'I paid $3 to get in to play soccer with Super Estrellas in Church and Bedford Ave. Erasmus Ave.', 7, 28, 2);
INSERT INTO `spences` VALUES ('1609422920082', 'Wash, Dry and Soup', 9, 2, 2008, '', 10, 'Nicole and I went to do the laundry, at the end I ended up paying for the laundry because there was no change for a $20 bill that nicole had.', 1, 24, 2);
INSERT INTO `spences` VALUES ('16102821120082', 'Sala', 11, 2, 2008, '', 6.95, 'I had a greek salad.', 3, 5, 2);
INSERT INTO `spences` VALUES ('16115421120082', 'Carrot cake and VitaminWater', 11, 2, 2008, '', 3.5, 'I had a vitamin water and a carrot cake.', 3, 13, 2);
INSERT INTO `spences` VALUES ('10202921220082', 'Chicken Fajita Panini', 12, 2, 2008, '', 7, 'I got a chicken fajita.', 3, 27, 2);
INSERT INTO `spences` VALUES ('10213321120082', 'Gatorade', 11, 2, 2008, '', 3.75, 'I got a slice of pizza and a gatorade.', 3, 13, 2);
INSERT INTO `spences` VALUES ('16282122920084', 'Rent', 29, 2, 2008, '', 300, '', 21, 0, 4);
INSERT INTO `spences` VALUES ('16323021520084', 'Gas', 15, 2, 2008, '', 120, '', 21, 44, 4);
INSERT INTO `spences` VALUES ('16335821520084', 'Electric-Power', 15, 2, 2008, '', 100, '', 21, 44, 4);
INSERT INTO `spences` VALUES ('16343621520084', 'T-Mobil', 15, 2, 2008, '', 60, '', 21, 44, 4);
INSERT INTO `spences` VALUES ('22315121520082', 'Toilet paper', 15, 2, 2008, '', 2, 'I got two rolls of toilet paper.', 1, 24, 2);
INSERT INTO `spences` VALUES ('22445221320082', 'Hot Chocolate and Bagel with cream cheese', 13, 2, 2008, '', 1.75, 'I got a hot chocolate and a bagel with cream cheese.', 3, 4, 2);
INSERT INTO `spences` VALUES ('22454021420082', 'Hot Chococalte and Bagel', 14, 2, 2008, '', 1.75, 'I got a hot chocolate and a bagel with cream cheese.', 3, 4, 2);
INSERT INTO `spences` VALUES ('22490021520082', 'Bagel with cream cheese and a hot chocolate', 15, 2, 2008, '', 1.75, 'I got a hot chocolate and a bagel with cream cheese.', 3, 4, 2);
INSERT INTO `spences` VALUES ('22573121220082', 'Salad', 12, 2, 2008, '', 6.95, 'I got a salad.', 3, 5, 2);
INSERT INTO `spences` VALUES ('23024621220082', 'Mexican Tamales', 12, 2, 2008, '', 6, 'I got tamales and atole.', 9, 19, 2);
INSERT INTO `spences` VALUES ('23044021520082', 'My Mother''s Birthday dinner', 15, 2, 2008, '', 100, 'We went for dinner to Pollos Mario in Roosevelt Ave. It was just Andres, my mother and I.', 9, 29, 2);
INSERT INTO `spences` VALUES ('23190121420082', 'Bistec with rice and beans', 14, 2, 2008, '', 5, 'I got a bistec with rice and beans.', 9, 29, 2);
INSERT INTO `spences` VALUES ('12430422220081', 'water and salad', 22, 2, 2008, '', 8, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('12432622120081', 'snack', 21, 2, 2008, '', 5, 'chocolate', 5, 9, 1);
INSERT INTO `spences` VALUES ('15151622120081', 'Lunch', 21, 2, 2008, '', 14, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('20491222320082', 'given to lettie', 23, 2, 2008, '', 300, 'I gave lettie the money.', 22, 0, 2);
INSERT INTO `spences` VALUES ('14405622520082', 'Spanish Lunch', 25, 2, 2008, '', 6, 'I got a pernil with yello rice and beans.', 3, 5, 2);
INSERT INTO `spences` VALUES ('16190422620082', 'Chicken Soup', 26, 2, 2008, '', 2.5, 'I got a chicken soup from the spanish place close to 7 and G train.', 3, 5, 2);
INSERT INTO `spences` VALUES ('16193922620082', 'Tangerines', 26, 2, 2008, '', 1, 'I got three tangerines for $1.', 3, 13, 2);
INSERT INTO `spences` VALUES ('2214253520082', 'Greek Salad', 5, 3, 2008, '', 6.95, 'I got a greek salad with a piece of bread.', 3, 5, 2);
INSERT INTO `spences` VALUES ('2215293520082', 'Pumkin Loaf and Vanilla Creme', 5, 3, 2008, '', 4.95, 'I got a pumkin loaf and a vanilla cream from Starbucks.', 3, 13, 2);
INSERT INTO `spences` VALUES ('1923233720082', 'Vegetarian Chili and Yogurt', 7, 3, 2008, '', 12, 'I got a vegetarian chili and a yogurt.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1924023720082', 'Sprite and Wafflers', 7, 3, 2008, '', 2.4, 'I got a sprite and a waffler.', 3, 13, 2);
INSERT INTO `spences` VALUES ('12053131020082', 'Orange Mango Passion', 10, 3, 2008, '', 4.5, 'I got an orange mango passion juice from Jamba juice.', 3, 4, 2);
INSERT INTO `spences` VALUES ('12062031020082', 'Soup and Yogurt', 10, 3, 2008, '', 8.7, 'I got a soup and a yogurt for lunch.', 3, 5, 2);
INSERT INTO `spences` VALUES ('0522131620082', 'Apartment money', 16, 3, 2008, '', 1200, 'I put the money in the bank at the end of february for the month of march.', 1, 0, 2);
INSERT INTO `spences` VALUES ('22470131720082', 'Yogurt & Bagel', 17, 3, 2008, '', 6, 'I got a yogurt with cranola and bananas.', 3, 5, 2);
INSERT INTO `spences` VALUES ('22502031720082', 'Muffin & VitaminWater', 17, 3, 2008, '', 3.5, 'I got a carrot muffin and an energy vitamin water.', 3, 13, 2);
INSERT INTO `spences` VALUES ('22511431720082', 'Metrocard', 17, 3, 2008, '', 76, 'I got a metrocard. I only paid $76.', 2, 0, 2);
INSERT INTO `spences` VALUES ('21323131920082', 'Yogurt & Bagel', 19, 3, 2008, '', 6, 'I got a vanilla yogurt with cranola and banana. and I had a plain bagel with cream cheese.', 3, 5, 2);
INSERT INTO `spences` VALUES ('21330731920082', 'Pizza', 19, 3, 2008, '', 2.25, 'I got a regular slice of pizza.', 3, 13, 2);
INSERT INTO `spences` VALUES ('16420232020082', 'Yogurt', 20, 3, 2008, '', 4, 'I got yogurt with cranola and banana.', 3, 5, 2);
INSERT INTO `spences` VALUES ('0204832120082', 'Yogurt and Bagel', 21, 3, 2008, '', 6, 'I got a yogurt with cranola and banana, and a not toasted bagel with cream cheese.', 3, 5, 2);
INSERT INTO `spences` VALUES ('0224632120082', 'Redbull and Waffler', 21, 3, 2008, '', 3.5, 'I got a redbull and vanilla waffler.', 3, 13, 2);
INSERT INTO `spences` VALUES ('0250932020082', 'Long Island Team', 20, 3, 2008, '', 80, 'I paid Jose $80 for the enrollment of the team for last season. I paid $100 but he only took $80 because I missed a few games.', 7, 37, 2);
INSERT INTO `spences` VALUES ('0255632020082', 'Car Rental', 20, 3, 2008, '', 5, 'I paid Jose $5 that I owed him from car rental to get to Long Island.', 7, 38, 2);
INSERT INTO `spences` VALUES ('18330832520082', 'Yogurt and Bagel', 25, 3, 2008, '', 6, 'I got a yogurt with cranola and bananas and a plain bagel with cream cheese.', 3, 5, 2);
INSERT INTO `spences` VALUES ('18335732420082', 'Pizza', 24, 3, 2008, '', 2.25, 'I got a slice a regular slice of pizza.', 3, 5, 2);
INSERT INTO `spences` VALUES ('18350032420082', 'Fruit and Muffin', 24, 3, 2008, '', 5, 'I got a fruit salad and a muffin.', 3, 13, 2);
INSERT INTO `spences` VALUES ('19500632620082', 'Bagel and Hot Chocolate', 26, 3, 2008, '', 2, 'I got a plain bagel with cream cheese and a hot chocolate.', 3, 4, 2);
INSERT INTO `spences` VALUES ('19540832620082', 'Yogurt and Bagel', 26, 3, 2008, '', 6, 'I got a not toasted plain bagel and a yogurt with cronola and banana.', 3, 5, 2);
INSERT INTO `spences` VALUES ('17043232720082', 'Pernil, Rice and Beans', 27, 3, 2008, '', 7, 'I got a spanich lunch: Pernil with rice and beans.', 3, 5, 2);
INSERT INTO `spences` VALUES ('17063231820082', 'March Chiropractic', 18, 3, 2008, '', 75, 'I went to the chiropractic.', 13, 36, 2);
INSERT INTO `spences` VALUES ('12521732820082', 'Yogurt and Wrap', 28, 3, 2008, '', 10.25, 'I got a yogurt with granola and bananas. I also got a garden wrap.', 3, 5, 2);
INSERT INTO `spences` VALUES ('0141833120081', 'groceries', 31, 3, 2008, '', 50, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('12150233120082', 'Bagel', 31, 3, 2008, '', 1, 'I got a plain bagel with cream cheese.', 3, 4, 2);
INSERT INTO `spences` VALUES ('12381133120082', 'Salmon and Fruit Salad', 31, 3, 2008, '', 15.45, 'I got a salmon and a fruit salad.', 3, 5, 2);
INSERT INTO `spences` VALUES ('2116514120081', 'Lunch', 1, 4, 2008, '', 8.5, 'Chicken salad', 5, 9, 1);
INSERT INTO `spences` VALUES ('21232033120082', 'Turkey Sandwich', 31, 3, 2008, '', 6.05, 'I got a turkey sandwich from starbucks.', 3, 27, 2);
INSERT INTO `spences` VALUES ('2125314120082', 'Protein Drink and Tangerines', 1, 4, 2008, '', 4.5, 'I got a milk muscle protein drink and I got three tangerines for a dollar.', 3, 27, 2);
INSERT INTO `spences` VALUES ('2128464120082', 'Pernil & Sprite', 1, 4, 2008, '', 7.5, 'I got pernil with white rice and beans and I got a sprite to drink.', 3, 13, 2);
INSERT INTO `spences` VALUES ('21295633020082', 'March Money', 30, 3, 2008, '', 300, 'I gave my mother march''s money for the house.', 22, 0, 2);
INSERT INTO `spences` VALUES ('2132534120082', 'House money', 1, 4, 2008, '', 1200, 'I put the house money in the bank on Saturday March 29, 2008. I also put the $600 that I owed Nicole from the trip to South Carolina. I also paid for the CSA: I wrote a $580 check to Greenpoint Williamsburg CSA. The Total put in the bank was $1800 + $580 ', 1, 0, 2);
INSERT INTO `spences` VALUES ('2146344120081', 'Rent', 1, 4, 2008, '', 1500, '', 4, 45, 1);
INSERT INTO `spences` VALUES ('809374220081', 'Cab', 2, 4, 2008, '', 10, 'Cab ride to early meeting', 6, 50, 1);
INSERT INTO `spences` VALUES ('811094220081', 'CSA payment', 2, 4, 2008, '', 600, 'Payment for the year of CSA', 4, 8, 1);
INSERT INTO `spences` VALUES ('2136354220082', 'Bagel and Yogurt', 2, 4, 2008, '', 5.7, 'I got a plain bagel with cream cheese and a yogurt with granola, bananas, and kiwi.', 3, 5, 2);
INSERT INTO `spences` VALUES ('2137074220082', 'Pizza', 2, 4, 2008, '', 2.25, 'I got a regular slice of pizza.', 3, 13, 2);
INSERT INTO `spences` VALUES ('1532154320082', 'Spanish Lunch', 3, 4, 2008, '', 6, 'I got pernil with white rice and beans.', 3, 5, 2);
INSERT INTO `spences` VALUES ('2311074320081', 'Groceries', 3, 4, 2008, '', 21, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('1251124420082', 'April''s card', 4, 4, 2008, '', 81, 'I bought a monthly metrocard. Now is $81.', 2, 3, 2);
INSERT INTO `spences` VALUES ('1252424420082', 'Muffin, Soup, and Yogurt', 4, 4, 2008, '', 11, 'I got a Muffin, a soup, and yogurt with granola and bananas.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1422384420081', 'Lunch at Chipotle', 4, 4, 2008, '', 10.85, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('2354304420082', 'Torta & Gatorade', 4, 4, 2008, '', 9, 'I got a gatorade and a mexican torta al pastor.', 3, 27, 2);
INSERT INTO `spences` VALUES ('030154520082', 'Christina''s Restaurant', 5, 4, 2008, '', 20, 'Nicole and I went to eat at Christina''s Restaurant.', 9, 29, 2);
INSERT INTO `spences` VALUES ('032144620082', 'Vanilla Icecream', 6, 4, 2008, '', 2, 'I got a vanilla ice cream cone.', 3, 13, 2);
INSERT INTO `spences` VALUES ('034194520082', 'Shishkabab', 5, 4, 2008, '', 5, 'I got a beef shishkabab. An ices and a dollar of churros.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1149214720082', 'Bagel and Purfe', 7, 4, 2008, '', 5.7, 'I got a plain bagel with cream cheese not toasted and I got a yogurt with granola and bananas.', 3, 5, 2);
INSERT INTO `spences` VALUES ('1151044620082', 'Adrienne and Rob', 6, 4, 2008, '', 40, 'Nicole and I were invited to Adrienne and Rob engagement party in Neshanic Valley Golf in New Jersey. We gave them $80 together as their gift with a greeting card.', 12, 25, 2);
INSERT INTO `spences` VALUES ('1339274720081', 'Haircut', 7, 4, 2008, '', 40, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('1339524720081', 'Dinner out w Dar', 7, 4, 2008, '', 30, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1341554520081', 'Botanic Gardens', 5, 4, 2008, '', 20, '40 dollars charged on CC', 5, 49, 1);
INSERT INTO `spences` VALUES ('1343564520081', 'Market', 5, 4, 2008, '', 100, 'Fish - 10\r\nVeges - 15\r\nFruit - 5\r\nJam - 10\r\nHOney - 5\r\nMilk/ yogurt ice cream - 50', 4, 8, 1);
INSERT INTO `spences` VALUES ('1344424720081', 'New DVD Player', 7, 4, 2008, '', 200, 'Dar paid for our apt. ', 4, 60, 1);
INSERT INTO `spences` VALUES ('1346134420081', 'Dinner w Penny', 4, 4, 2008, '', 25, 'Put all on my cc but paid only for my meal', 5, 9, 1);
INSERT INTO `spences` VALUES ('1109524720082', 'E7: Mexican Steak with Mexican Rice', 7, 4, 2008, '', 11, 'I got a E7 from Yummy Taco and a sangria.', 3, 27, 2);
INSERT INTO `spences` VALUES ('1729334820082', 'Tangerines', 8, 4, 2008, '', 1, 'I got three tangerines for one dollar.', 3, 13, 2);
INSERT INTO `spences` VALUES ('1732524820082', 'Toilet paper', 8, 4, 2008, '', 2, 'I got a pack of charmin toilet paper.', 1, 31, 2);
INSERT INTO `spences` VALUES ('1652264920081', 'Drink', 9, 4, 2008, '', 2, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1701504720081', 'Mangoes', 7, 4, 2008, '', 3, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('12061841120081', 'Lunch out', 11, 4, 2008, '', 16, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17233841120081', 'laudry', 11, 4, 2008, '', 3, '', 4, 57, 1);
INSERT INTO `spences` VALUES ('14395841520081', 'Lunch', 15, 4, 2008, '', 5.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('14410041520081', 'Food during return flight', 15, 4, 2008, '', 20, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('14414541220081', 'Food  during flight', 12, 4, 2008, '', 20, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('16483141520081', 'Bank fee', 15, 4, 2008, '', 3, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('14330141720081', 'Vitamins', 17, 4, 2008, '', 75, '', 24, 56, 1);
INSERT INTO `spences` VALUES ('14344241720081', 'Lost metrocard', 17, 4, 2008, '', 5, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('16470441620081', 'Dinner', 16, 4, 2008, '', 50, 'At Momofuku', 5, 9, 1);
INSERT INTO `spences` VALUES ('16472941720081', 'Homeless donation', 17, 4, 2008, '', 1, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('13530842320081', 'Appointment for Dar and I', 23, 4, 2008, '', 186, '', 24, 53, 1);
INSERT INTO `spences` VALUES ('13543142320081', 'lunch', 23, 4, 2008, '', 5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('13550842320081', 'Shirt from earth day fest', 23, 4, 2008, '', 20, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('18041842720081', 'Trip to NJ', 27, 4, 2008, '', 7, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('18045042820081', 'taxi to la guardia', 28, 4, 2008, '', 25, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('18051042820081', 'Lunch', 28, 4, 2008, '', 9, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1104105120081', 'Give to Homeless', 1, 5, 2008, '', 2, '', 11, 22, 1);
INSERT INTO `spences` VALUES ('1717015220081', 'Lunch', 2, 5, 2008, '', 9, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1446595520081', 'Lunch', 5, 5, 2008, '', 8, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1447345520081', 'Vitamins', 5, 5, 2008, '', 90, 'For Darwin and I', 24, 56, 1);
INSERT INTO `spences` VALUES ('0284351120082', 'House mone y for April', 11, 5, 2008, '', 300, 'I gave my mother for the month of May, $300.00.', 22, 0, 2);
INSERT INTO `spences` VALUES ('2327425120082', 'House expenses', 1, 5, 2008, '', 1200, 'I gave the money to Nikki to sent the rent and the rest I put in the folder that we have about our apartment.', 1, 0, 2);
INSERT INTO `spences` VALUES ('2329195320082', 'Metrocard', 3, 5, 2008, '', 81, 'Nicole lent me money to buy the metrocard because I did not have my debit. So she used her credit card and I owe her $200 from her christmas gift. So in total I owe her $281.', 2, 0, 2);
INSERT INTO `spences` VALUES ('23301851920082', 'Chicken Fajita and Coconut drink', 19, 5, 2008, '', 8.95, 'I got a chicken fajita and a coconut drink.', 3, 27, 2);
INSERT INTO `spences` VALUES ('23312651620082', 'Chris birthday party', 16, 5, 2008, '', 30, 'Nicole and I spent $30 in two ciders and vovka drinks.', 9, 30, 2);
INSERT INTO `spences` VALUES ('23321551620082', 'Chris birthday gift', 16, 5, 2008, '', 50, 'I got chris two soccer books. One about Maradona and another about soccer fitness.', 12, 35, 2);
INSERT INTO `spences` VALUES ('1032146420082', 'June Metrocard', 4, 6, 2008, '', 81, 'I got my monthly metrocard with my debit/checking card.', 2, 3, 2);
INSERT INTO `spences` VALUES ('21524961720082', 'June Chiropractic Appointment', 17, 6, 2008, '', 270, 'I paid for the chiropractic and some pills for Nicole and me. I also ordered some glutamin pills and Dr. Manning will mail it to me because he did not have them. I already paid for them.', 13, 36, 2);
INSERT INTO `spences` VALUES ('0211672120082', 'July 2008 Rent', 21, 7, 2008, '', 1200, 'I sent the rent check from my check account. I gave Nicole $1000 to save on the ING account.', 1, 0, 2);
INSERT INTO `spences` VALUES ('0323871420082', 'July 2008 Metrocard', 14, 7, 2008, '', 81, 'I bought the metrocard with my debit card.', 2, 0, 2);
INSERT INTO `spences` VALUES ('035217920082', 'Total Air 90 Cleats', 9, 7, 2008, '', 24.5, 'I bought this cleats that were 75% off in Rehoboth Beach in Delaware while Nicole, her family, and I were in vacation for a week.', 7, 16, 2);
INSERT INTO `spences` VALUES ('0385371320082', 'Took Mario to eat to Christina restaurant', 13, 7, 2008, '', 80, 'I took Mario out to eat to a polish restaurant in Greenpoint: Christina Restaurant. Nicole joined us almost at the end of dinner.', 12, 35, 2);
INSERT INTO `spences` VALUES ('0404461520082', 'Michael Birthday', 15, 6, 2008, '', 250, 'I took Michael to Peter Luger in South Williamsburg, where the best steak in NY is served.', 12, 35, 2);
INSERT INTO `spences` VALUES ('0425572020082', 'Emilio''s team', 20, 7, 2008, '', 5, 'I had to paid for referee in this team that Mario took me to play in Ferris Point Park in the Bronx.', 7, 61, 2);
INSERT INTO `spences` VALUES ('0470071420082', 'Ashram Dial', 14, 7, 2008, '', 150, 'I went to see Ashram Dial to ask him some question about the possibility to get a paper faster and what should I do for the paper that about to become to an end. Should I respond to National Visa center or not? He said to wait until they send me a letter ', 14, 62, 2);
INSERT INTO `spences` VALUES ('17035772120082', 'Raisin bagels with cream cheese', 21, 7, 2008, '', 2, 'I got a raisin bagel with cream cheese and an tropicana orange juice.', 3, 4, 2);
INSERT INTO `spences` VALUES ('17050172120082', 'Spanish Lunch', 21, 7, 2008, '', 8, 'I got bbq chicken with white rice and abichuelas from the place in by the 7 and G train.', 3, 5, 2);
INSERT INTO `spences` VALUES ('2231228520082', 'Dr Manning', 5, 8, 2008, '', 54, 'I paid $54 and Nicole paid $200, so in total we paid $254.00 including our pills.', 13, 36, 2);
INSERT INTO `spences` VALUES ('23055281720082', 'August 2008 house money', 17, 8, 2008, '', 1200, 'I pay the rent with my checking account and paid $1500, because I owed Nicole $1000 for my savings and then I added $500 in the apartment folder, and I still owed the apartment $375.', 1, 0, 2);
INSERT INTO `spences` VALUES ('23082881320082', 'August 2008 Metrocard', 13, 8, 2008, '', 81, 'Nicole got me the metrocard and I paid her $80 for it.', 2, 0, 2);
INSERT INTO `spences` VALUES ('2150209820081', 'Dessert', 8, 9, 2008, '', 9.5, 'To bring home', 5, 9, 1);
INSERT INTO `spences` VALUES ('2150469820081', 'Drink', 8, 9, 2008, '', 2, 'Iced tea', 5, 0, 1);
INSERT INTO `spences` VALUES ('10120091020081', 'Drink', 10, 9, 2008, '', 1.5, 'Seltzer', 5, 9, 1);
INSERT INTO `spences` VALUES ('1012539920081', 'snack', 9, 9, 2008, '', 9.5, 'Candy', 5, 9, 1);
INSERT INTO `spences` VALUES ('1013249920081', 'Appt', 9, 9, 2008, '', 75, '', 24, 53, 1);
INSERT INTO `spences` VALUES ('10043191320081', 'Lunch', 13, 9, 2008, '', 10, 'Pizza in Jersey', 5, 9, 1);
INSERT INTO `spences` VALUES ('15220591520081', 'Lunch', 15, 9, 2008, '', 13, 'soup and salad and chocolate', 5, 9, 1);
INSERT INTO `spences` VALUES ('11332491320081', 'Snack', 13, 9, 2008, '', 10, 'Candy', 5, 9, 1);
INSERT INTO `spences` VALUES ('11341991220081', 'NJ transit', 12, 9, 2008, '', 12.25, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('11385691020081', 'snack', 10, 9, 2008, '', 2.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('11393591620081', 'Beer', 16, 9, 2008, '', 20, 'Penny''s bday', 5, 9, 1);
INSERT INTO `spences` VALUES ('11400491620081', 'Cab to Penny''s bday', 16, 9, 2008, '', 8, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('11405491620081', 'Mark Bar', 16, 9, 2008, '', 14, 'Drinks', 5, 49, 1);
INSERT INTO `spences` VALUES ('11422591220081', 'Thai food', 12, 9, 2008, '', 19, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('11451082720081', 'Lunch', 27, 8, 2008, '', 9.7, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('11462191620081', 'Cake for Aunt Marie''s', 16, 9, 2008, '', 22, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('11470391120081', 'Enid''s', 11, 9, 2008, '', 15, 'credit card is 38.50', 5, 9, 1);
INSERT INTO `spences` VALUES ('11474391220081', 'Nutrients', 12, 9, 2008, '', 27.59, 'wilner chemists', 24, 53, 1);
INSERT INTO `spences` VALUES ('11485891220081', 'Dry Cleaning', 12, 9, 2008, '', 47.39, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('18095491620081', 'lunch', 16, 9, 2008, '', 8, 'w jack', 5, 9, 1);
INSERT INTO `spences` VALUES ('9343491620081', 'Bar', 16, 9, 2008, '', 5, 'After Trinity event', 5, 9, 1);
INSERT INTO `spences` VALUES ('10432791720081', 'snack', 17, 9, 2008, '', 10.11, 'visa pmt', 5, 9, 1);
INSERT INTO `spences` VALUES ('14303491920081', 'Breakfast', 19, 9, 2008, '', 6, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('19221091920081', 'snack', 19, 9, 2008, '', 8, 'Snack plus fruit to bring home\r\ncash.', 5, 9, 1);
INSERT INTO `spences` VALUES ('19231291920081', 'single use metrocard', 19, 9, 2008, '', 10.5, 'cash', 6, 12, 1);
INSERT INTO `spences` VALUES ('19240991920081', 'DVD', 19, 9, 2008, '', 2.5, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('13070092220081', 'Dinner', 22, 9, 2008, '', 45, 'At Dupont burger', 5, 9, 1);
INSERT INTO `spences` VALUES ('13071092220081', 'Dinner', 22, 9, 2008, '', 45, 'At Dupont burger', 5, 9, 1);
INSERT INTO `spences` VALUES ('9402892420081', 'Tickets for Broadway show', 24, 9, 2008, '', 220, '55*4 - tics for dad, JJ, Dar, me\r\nShow w Jessica Fletcher', 5, 49, 1);
INSERT INTO `spences` VALUES ('9531592320081', 'Dinner w Dar', 23, 9, 2008, '', 110, 'Dinner before show', 5, 9, 1);
INSERT INTO `spences` VALUES ('9543592420081', 'Dermatologist', 24, 9, 2008, '', 15, '', 24, 56, 1);
INSERT INTO `spences` VALUES ('17265692420081', 'Lunch w Ngina', 24, 9, 2008, '', 13, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17270692420081', 'seltzer', 24, 9, 2008, '', 1, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17285092420081', 'Subway', 24, 9, 2008, '', 1, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('17300092420081', 'Library fine', 24, 9, 2008, '', 13, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('20583392720081', 'Snacks', 27, 9, 2008, '', 13, 'Sausage and pepper sandwich;\r\nPolish cake', 5, 9, 1);
INSERT INTO `spences` VALUES ('21280492720081', 'shoes - salvation army', 27, 9, 2008, '', 9, 'paid in  cash\r\ntotal bill 14.39', 5, 52, 1);
INSERT INTO `spences` VALUES ('21313692720081', 'Salvation Army books and movie', 27, 9, 2008, '', 5.39, '\r\nPaid in cash\r\ntotal bill 14.39 (clothing is other $)', 5, 59, 1);
INSERT INTO `spences` VALUES ('21325592820081', 'Duane Reade', 28, 9, 2008, '', 19.8, 'Shower caddy, pens and notebook', 5, 59, 1);
INSERT INTO `spences` VALUES ('21332892720081', 'Ice cream', 27, 9, 2008, '', 3.2, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('21395792720081', 'Dry Cleaning', 27, 9, 2008, '', 27.28, 'dar''s shirt and my coat', 5, 52, 1);
INSERT INTO `spences` VALUES ('17193792920081', 'Canning jars', 29, 9, 2008, '', 17, 'paid in cash', 5, 59, 1);
INSERT INTO `spences` VALUES ('17200192920081', 'snack', 29, 9, 2008, '', 3.5, 'chocolate bar', 5, 9, 1);
INSERT INTO `spences` VALUES ('15543993020081', 'snack', 30, 9, 2008, '', 5, 'chocolate covered ginger', 5, 9, 1);
INSERT INTO `spences` VALUES ('9233210220081', 'Monthly', 2, 10, 2008, '', 82, 'Monthly card plus 1 dollar for bus', 6, 12, 1);
INSERT INTO `spences` VALUES ('9490110120081', 'cab ride', 1, 10, 2008, '', 8, 'from train to yatch club', 6, 50, 1);
INSERT INTO `spences` VALUES ('9492910120081', 'snack', 1, 10, 2008, '', 5, 'cookies', 5, 9, 1);
INSERT INTO `spences` VALUES ('9502393020081', 'snack', 30, 9, 2008, '', 5.99, 'on credit card\r\nchocolate ginger', 5, 9, 1);
INSERT INTO `spences` VALUES ('9542410120081', 'dinner - Chipotle', 1, 10, 2008, '', 11, 'credit card\r\nChipotle - ', 5, 9, 1);
INSERT INTO `spences` VALUES ('17032410220081', 'Lunch', 2, 10, 2008, '', 8.69, 'crepe\r\npaid by credit', 5, 9, 1);
INSERT INTO `spences` VALUES ('17040710320081', 'Lunch', 3, 10, 2008, '', 12.83, 'Mambo Italiano - credit', 5, 9, 1);
INSERT INTO `spences` VALUES ('17063510220081', 'Canning Jars', 2, 10, 2008, '', 23.16, 'Render 2  - Hardware store\r\nCredit\r\nJars', 5, 59, 1);
INSERT INTO `spences` VALUES ('14425610620081', 'Rental  Car for sa', 6, 10, 2008, '', 80, 'Visa (cc)\r\nfor alumni weekend', 10, 20, 1);
INSERT INTO `spences` VALUES ('14435192520081', 'Flight to SA', 25, 9, 2008, '', 303, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('14443210320081', 'Dress from banana rep', 3, 10, 2008, '', 130, 'visa (cc)', 5, 52, 1);
INSERT INTO `spences` VALUES ('14465810420081', 'lunch, etc', 4, 10, 2008, '', 18.39, 'Lunch and  a few apt items.\r\n', 5, 9, 1);
INSERT INTO `spences` VALUES ('142540101420081', 'Lunch w Margaret', 14, 10, 2008, '', 8, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('115219101520081', 'Appointment plus 35 dollars of pills', 15, 10, 2008, '', 110, 'cash', 24, 53, 1);
INSERT INTO `spences` VALUES ('112235101720081', 'Eggs', 17, 10, 2008, '', 1.5, 'Breakfast\r\nCash', 5, 9, 1);
INSERT INTO `spences` VALUES ('112344101620081', 'Soup and Pierogies', 16, 10, 2008, '', 11, 'Dinner - from Christina''s and  chinese place.\r\ncash', 5, 0, 1);
INSERT INTO `spences` VALUES ('110558101920081', 'The Garden: Brunch with Felicia and Nina.', 19, 10, 2008, '', 69.03, 'The groceries for brunch with Felicia and Chris, Nina and David.', 4, 8, 1);
INSERT INTO `spences` VALUES ('160641101820081', 'Misc', 18, 10, 2008, '', 3, 'At concert?\r\nCash', 5, 49, 1);
INSERT INTO `spences` VALUES ('161052101520081', 'Cupcakes', 15, 10, 2008, '', 4.99, 'cash\r\nCupcakes from supermarket', 5, 59, 1);
INSERT INTO `spences` VALUES ('161237101720081', 'Celebration', 17, 10, 2008, '', 34.26, 'cash\r\n450 restaurant - after work', 5, 49, 1);
INSERT INTO `spences` VALUES ('161420101220081', 'Airport food', 12, 10, 2008, '', 5.34, 'CC\r\nCharley''s steakery\r\nDinner', 10, 20, 1);
INSERT INTO `spences` VALUES ('161523101020081', 'Airport food', 10, 10, 2008, '', 8.75, 'Burger King - lunch', 10, 20, 1);
INSERT INTO `spences` VALUES ('161707101120081', 'Souveniers', 11, 10, 2008, '', 63.62, 'CC\r\nHat for Dar, book, shirt, \r\nFrom Trinity Bookstore', 10, 20, 1);
INSERT INTO `spences` VALUES ('161805101220081', 'Paloma Blanca', 12, 10, 2008, '', 12.33, 'CC\r\n\r\nLunch w friends', 10, 20, 1);
INSERT INTO `spences` VALUES ('161833101120081', 'Boudros', 11, 10, 2008, '', 46.75, 'Dinner', 10, 20, 1);
INSERT INTO `spences` VALUES ('161903101020081', 'Airport food', 10, 10, 2008, '', 3.52, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('162024101220081', 'Taxi', 12, 10, 2008, '', 26, 'CC\r\n\r\nTaxi home from airport', 10, 20, 1);
INSERT INTO `spences` VALUES ('16230810720081', 'Rosa Mexicano', 7, 10, 2008, '', 68.33, 'CC\r\n\r\nw staci - staci gave me 34 dollars', 5, 9, 1);
INSERT INTO `spences` VALUES ('163633102120081', 'Downpayment for surpirse party', 21, 10, 2008, '', 500, 'Cash\r\n\r\nPoloaise Terrace - ', 11, 21, 1);
INSERT INTO `spences` VALUES ('133734102720081', 'Pantyhose', 27, 10, 2008, '', 6, 'Cash: 1 pantyhose.', 5, 52, 1);
INSERT INTO `spences` VALUES ('222149102920081', 'Drink', 29, 10, 2008, '', 5, 'cash\r\nUHF ', 5, 49, 1);
INSERT INTO `spences` VALUES ('223741102920081', 'Dress from Dalaga', 29, 10, 2008, '', 99.99, 'credit - visa\r\n\r\nDress and spandex pants ', 5, 52, 1);
INSERT INTO `spences` VALUES ('231037102920081', 'chocolate bar', 29, 10, 2008, '', 4.5, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('231121102920081', 'chocolate bar', 29, 10, 2008, '', 4, 'for lunch from novellos\r\ncash', 5, 9, 1);
INSERT INTO `spences` VALUES ('145634103020081', 'Breakfast for cashier''s office', 30, 10, 2008, '', 15.5, 'from carrot top\r\ncash', 5, 9, 1);
INSERT INTO `spences` VALUES ('171639102620081', 'Sunglasses', 26, 10, 2008, '', 39.66, 'CC\r\nfrom Alter in GP', 5, 59, 1);
INSERT INTO `spences` VALUES ('171737102320081', 'Dinner Silent H', 23, 10, 2008, '', 99.6, 'CC\r\nVisa\r\n', 5, 9, 1);
INSERT INTO `spences` VALUES ('171832102520081', 'Seltzer and Donut', 25, 10, 2008, '', 3.5, 'Cash for train ride to gram''s', 5, 9, 1);
INSERT INTO `spences` VALUES ('171919102420081', 'Diner w Staci', 24, 10, 2008, '', 38, 'Cash at an Italian restaurant uptown', 5, 9, 1);
INSERT INTO `spences` VALUES ('172008102720081', 'Bet w Dar', 27, 10, 2008, '', 10, 'Cash\r\nLost bet', 5, 59, 1);
INSERT INTO `spences` VALUES ('172148103020081', 'Take out for Dar', 30, 10, 2008, '', 7.5, 'cash', 5, 9, 1);
INSERT INTO `spences` VALUES ('172601101520081', 'Canning Pot', 15, 10, 2008, '', 36.84, 'Debit card\r\nBought canning pot, returned, got ironing board instead - have a few dollars left', 5, 59, 1);
INSERT INTO `spences` VALUES ('172635101020081', 'denny''s', 10, 10, 2008, '', 13, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('91540103020081', 'ice cream', 30, 10, 2008, '', 4, 'cash\r\nw staci and jen', 5, 9, 1);
INSERT INTO `spences` VALUES ('143408103120081', 'Obama Campaign', 31, 10, 2008, '', 25, 'CC', 11, 22, 1);
INSERT INTO `spences` VALUES ('9343911120081', 'Monthly metrocard', 1, 11, 2008, '', 81, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('12110511420081', 'Pants hemmed', 4, 11, 2008, '', 18, 'From NYP', 5, 52, 1);
INSERT INTO `spences` VALUES ('13021211620081', 'Pizza - Dinner', 6, 11, 2008, '', 6.25, 'cash - ', 5, 9, 1);
INSERT INTO `spences` VALUES ('9233911920081', 'Tea with felicia', 9, 11, 2008, '', 11, 'lunch\r\ncash', 5, 9, 1);
INSERT INTO `spences` VALUES ('92455103120081', 'Pills from Wilner chemists', 31, 10, 2008, '', 36.39, 'visa', 24, 56, 1);
INSERT INTO `spences` VALUES ('9261711620081', 'Gap', 6, 11, 2008, '', 24, 'underwear', 5, 52, 1);
INSERT INTO `spences` VALUES ('9271511620081', 'Aldo''s', 6, 11, 2008, '', 49.98, 'AMEX - CC', 5, 52, 1);
INSERT INTO `spences` VALUES ('93126103020081', 'Neo Japanese restaurant', 30, 10, 2008, '', 58.62, 'Visa - CC\r\n\r\nGot cash from Stacy - 35 dollars', 5, 9, 1);
INSERT INTO `spences` VALUES ('93452103120081', 'WIlner for Dar', 31, 10, 2008, '', 17.1, 'Livaplex for Dar\r\n\r\nVisa CC', 24, 56, 1);
INSERT INTO `spences` VALUES ('9360811420081', 'The Garden', 4, 11, 2008, '', 38.62, 'Groceries\r\nVisa CC', 5, 59, 1);
INSERT INTO `spences` VALUES ('9372111920081', 'Taxi', 9, 11, 2008, '', 5, 'Get to brunch', 6, 50, 1);
INSERT INTO `spences` VALUES ('9384211720081', '765 Food Market', 7, 11, 2008, '', 5.43, 'Snack', 5, 9, 1);
INSERT INTO `spences` VALUES ('9401411820081', 'Brenan and Carr', 8, 11, 2008, '', 6, 'Cash\r\nDinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('172032111020081', 'snack', 10, 11, 2008, '', 3.25, 'Cash\r\nPineapple', 5, 9, 1);
INSERT INTO `spences` VALUES ('183104111020081', 'Lunch', 10, 11, 2008, '', 8.65, 'Cash\r\n\r\n - ', 5, 9, 1);
INSERT INTO `spences` VALUES ('155842111020081', 'Second Payment for hall for Dad''s party', 10, 11, 2008, '', 2000, 'Paid 2000 dollars to polonaise terrace', 11, 21, 1);
INSERT INTO `spences` VALUES ('104031111120081', 'Five Leaves - drink w cookbook group', 11, 11, 2008, '', 23, 'Cash\r\nDrink and snack', 5, 9, 1);
INSERT INTO `spences` VALUES ('94649111220081', 'Chipotle', 12, 11, 2008, '', 10.25, 'Dinner between work and CB1 meeting', 5, 9, 1);
INSERT INTO `spences` VALUES ('94920111220081', 'Library fees', 12, 11, 2008, '', 3, 'overdue books', 5, 59, 1);
INSERT INTO `spences` VALUES ('95203101220081', 'Cab home from airport', 12, 10, 2008, '', 26, 'trip to Texas', 10, 20, 1);
INSERT INTO `spences` VALUES ('170305111320081', 'Library fines', 13, 11, 2008, '', 9, 'books overdue and new card', 5, 59, 1);
INSERT INTO `spences` VALUES ('170416111320081', 'Ice Cream', 13, 11, 2008, '', 4.5, 'Cash', 5, 9, 1);
INSERT INTO `spences` VALUES ('170457111320081', 'Seltzer', 13, 11, 2008, '', 2, 'cash', 5, 9, 1);
INSERT INTO `spences` VALUES ('135521111320081', 'Dinner - Mexican', 13, 11, 2008, '', 15, 'w staci\r\ncash\r\n', 5, 9, 1);
INSERT INTO `spences` VALUES ('154323111720081', 'Ice', 17, 11, 2008, '', 6.5, 'cash\r\nNovello''s\r\nIce for hurt foot, and snack', 5, 59, 1);
INSERT INTO `spences` VALUES ('150837112520081', 'Potato Salad', 25, 11, 2008, '', 2, 'Cash', 5, 9, 1);
INSERT INTO `spences` VALUES ('150911112520081', 'Mangos', 25, 11, 2008, '', 5, 'cash', 5, 9, 1);
INSERT INTO `spences` VALUES ('123234112620081', 'Cheese', 26, 11, 2008, '', 6, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('18040912120081', 'Monthly Metrocard', 1, 12, 2008, '', 81, 'visa - cc', 6, 12, 1);
INSERT INTO `spences` VALUES ('18043812120081', 'Oranges', 1, 12, 2008, '', 2, 'cash - from st stand', 5, 9, 1);
INSERT INTO `spences` VALUES ('19402912120081', 'Bread', 1, 12, 2008, '', 6.4, 'cash\r\nle pain quitoden\r\n', 5, 9, 1);
INSERT INTO `spences` VALUES ('19411512120081', 'duane read snacks', 1, 12, 2008, '', 7.37, 'visa\r\ncc\r\nChocolate and peanut butter', 5, 9, 1);
INSERT INTO `spences` VALUES ('21263912120082', 'House Rent', 1, 12, 2008, 'Check', 1200, 'House Money. I paid by check.', 1, 0, 2);
INSERT INTO `spences` VALUES ('212751121120082', 'Metrocard', 11, 12, 2008, 'Debit', 81, 'I bought the metrocard with my debit card.', 2, 3, 2);
INSERT INTO `spences` VALUES ('15341012420081', 'Lunch', 4, 12, 2008, 'Cash', 8.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('15355812420081', 'Stamps', 4, 12, 2008, 'Credit', 8.5, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('12315012320081', 'Chocolate and Mozart balls', 3, 12, 2008, 'Cash', 5.5, 'Snacks', 5, 9, 1);
INSERT INTO `spences` VALUES ('12322912420081', 'Almond Joy and Ice Cream', 4, 12, 2008, 'Cash', 5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('12524612920081', 'Fruit', 9, 12, 2008, 'Cash', 13.5, 'fruit stand at Columbia', 5, 9, 1);
INSERT INTO `spences` VALUES ('12533312620081', 'Final payment for party', 6, 12, 2008, 'Check', 3300, 'Check for party room', 11, 21, 1);
INSERT INTO `spences` VALUES ('9414312520081', 'Naulo Nails', 5, 12, 2008, 'Credit', 67.5, 'Nails and Toes for the party', 5, 59, 1);
INSERT INTO `spences` VALUES ('9421912520081', 'Naulo Nail Tip', 5, 12, 2008, 'Cash', 20, 'Tip for nails and waxing', 5, 59, 1);
INSERT INTO `spences` VALUES ('9441112520081', 'Bagel', 5, 12, 2008, 'Cash', 9.77, 'Bagel for me and OJ for homeless person', 5, 9, 1);
INSERT INTO `spences` VALUES ('94524112120081', 'The Oyster Bar', 21, 11, 2008, 'Credit', 62.73, 'Dinner w Staci', 5, 9, 1);
INSERT INTO `spences` VALUES ('9470512320081', 'Staples', 3, 12, 2008, 'Credit', 19.49, 'Dvd-Rs', 5, 59, 1);
INSERT INTO `spences` VALUES ('94754112020081', 'The Diamond Bar', 20, 11, 2008, 'Credit', 15, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('95017112420081', 'CVS Pharmacy', 24, 11, 2008, 'Credit', 8.65, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('95108111320081', 'Red Mango', 13, 11, 2008, 'Cash', 3.95, 'Ice Cream', 5, 9, 1);
INSERT INTO `spences` VALUES ('95246111720081', 'Real Pro Parking', 17, 11, 2008, 'Credit', 16, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('9534012220081', 'The Garden', 2, 12, 2008, 'Credit', 81.97, 'Groceries, TP, etc.', 4, 8, 1);
INSERT INTO `spences` VALUES ('9542712520081', 'Library Fines', 5, 12, 2008, 'Cash', 7.75, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('95540112820081', 'A&S Fine Foods', 28, 11, 2008, 'Cash', 30.32, 'Lunch in Jersey', 5, 9, 1);
INSERT INTO `spences` VALUES ('95907112520081', 'Duane Reade', 25, 11, 2008, 'Credit', 20.25, 'Advil, etc. ', 5, 59, 1);
INSERT INTO `spences` VALUES ('10003512520081', 'Hunan Delight', 5, 12, 2008, 'Cash', 11.7, 'Chinese food dinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('10014512620081', 'Rite Aid', 6, 12, 2008, 'Credit', 17.32, '2 listicks for party', 5, 59, 1);
INSERT INTO `spences` VALUES ('10025512320081', 'Payless', 3, 12, 2008, 'Credit', 34.48, '2 prs shoes. ', 5, 52, 1);
INSERT INTO `spences` VALUES ('10460512420081', 'Aldo', 4, 12, 2008, 'Credit', 50, 'Flats', 5, 52, 1);
INSERT INTO `spences` VALUES ('14110612320081', '$ for toll', 3, 12, 2008, 'Cash', 10, 'Given to Ruby for driving me home ', 6, 50, 1);
INSERT INTO `spences` VALUES ('111952121220081', 'Breakfast', 12, 12, 2008, 'Cash', 4.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('215324121320081', 'Waffle at Bryant Park fair', 13, 12, 2008, 'Cash', 5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('100328121620081', 'Christinas', 16, 12, 2008, 'Cash', 22, 'Dinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('100407121620081', 'Magazines', 16, 12, 2008, 'Cash', 30, 'Obama mags', 5, 58, 1);
INSERT INTO `spences` VALUES ('231351121720081', 'Rite Aid - Christmas gifts', 17, 12, 2008, 'Credit', 148.49, 'visa\r\nChristmas gifts for operation santa', 11, 21, 1);
INSERT INTO `spences` VALUES ('23184212920081', 'Molyvos', 9, 12, 2008, 'Credit', 76.94, 'visa\r\ndinner w dar', 5, 9, 1);
INSERT INTO `spences` VALUES ('23190512920081', 'Eggplant sandwich', 9, 12, 2008, 'Cash', 3.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('231920121720081', 'candy', 17, 12, 2008, 'Cash', 1, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('232057121720081', 'Wilner chemists', 17, 12, 2008, 'Credit', 69.3, 'visa\r\nnutrients for dar and I', 24, 56, 1);
INSERT INTO `spences` VALUES ('232151121720081', 'Crumbs', 17, 12, 2008, 'Credit', 12, 'visa\r\nCupcakes', 5, 9, 1);
INSERT INTO `spences` VALUES ('232305121120081', 'Duane Reade', 11, 12, 2008, 'Credit', 11.49, 'Medicine', 5, 59, 1);
INSERT INTO `spences` VALUES ('232412121720081', 'Lunch', 17, 12, 2008, 'Cash', 3.5, 'eggplant sandwich', 5, 9, 1);
INSERT INTO `spences` VALUES ('232454121520081', 'Pointsetta for Larry and Effe', 15, 12, 2008, 'Cash', 35, '2  pointsettas - one for them - 25, one for me 10', 11, 21, 1);
INSERT INTO `spences` VALUES ('232608121420081', 'The garden', 14, 12, 2008, 'Cash', 26.76, '\r\n - visa\r\nDar swiped', 4, 8, 1);
INSERT INTO `spences` VALUES ('23275510620081', 'The garden', 6, 10, 2008, 'Credit', 36.69, 'amex', 4, 8, 1);
INSERT INTO `spences` VALUES ('232926121520081', 'dinner', 15, 12, 2008, 'Cash', 18, 'scallops and knish', 5, 9, 1);
INSERT INTO `spences` VALUES ('233303121220081', 'Lord and Taylor', 12, 12, 2008, 'Credit', 46, '3 suits\r\nreturn 1 for 162, buy 3 others for total of 45', 5, 52, 1);
INSERT INTO `spences` VALUES ('23344512920081', 'Columbia Med Bookstore', 9, 12, 2008, 'Cash', 12.9, 'Pens and highlighter', 5, 59, 1);
INSERT INTO `spences` VALUES ('23370212720081', 'Dunkin Donuts', 7, 12, 2008, 'Cash', 5.19, 'donuts', 5, 9, 1);
INSERT INTO `spences` VALUES ('233736121220081', 'The creek LIC', 12, 12, 2008, 'Credit', 19.27, 'dinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('233928121220081', 'Chipotle', 12, 12, 2008, 'Credit', 22.75, 'visa\r\ndinner\r\n', 5, 9, 1);
INSERT INTO `spences` VALUES ('234052121720081', 'Holiday party', 17, 12, 2008, 'Cash', 25, 'finance holiday party', 5, 49, 1);
INSERT INTO `spences` VALUES ('93720122220081', 'gloves for dar', 22, 12, 2008, 'Cash', 5, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('93738122220081', 'ear muffs', 22, 12, 2008, 'Cash', 4, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('113035122220081', 'Operation Santa', 22, 12, 2008, 'Cash', 20, 'Gift for bag for Leny', 11, 21, 1);
INSERT INTO `spences` VALUES ('145245122320081', 'Grand Central shop for Sabrina', 23, 12, 2008, 'Cash', 10, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('173922122320081', 'Cornelia - for gift from 11th floor', 23, 12, 2008, 'Cash', 20, 'Christmas', 11, 21, 1);
INSERT INTO `spences` VALUES ('173950122320081', 'Gift for Cornelia', 23, 12, 2008, 'Cash', 20, 'for Christmas', 11, 21, 1);
INSERT INTO `spences` VALUES ('1005081320092', 'Coaching Books', 3, 1, 2009, 'Cash', 203, 'I spent $203 in coaching books.', 26, 0, 2);
INSERT INTO `spences` VALUES ('917481520091', 'Seltzer', 5, 1, 2009, 'Cash', 1.25, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('162401123020091', 'Whole Foods', 30, 12, 2009, 'Credit', 18.69, 'visa\r\nPepper pods (big bag)', 5, 63, 1);
INSERT INTO `spences` VALUES ('162743122020091', 'Fabco Shoes', 20, 12, 2009, 'Cash', -6.5, 'refund for return', 5, 52, 1);
INSERT INTO `spences` VALUES ('162946122220091', 'Word', 22, 12, 2009, 'Credit', 75.84, 'Gifts for Dar and operation Santa', 11, 21, 1);
INSERT INTO `spences` VALUES ('163020103120091', 'Wilner Chemists', 31, 10, 2009, 'Credit', 36.39, 'Visa', 24, 53, 1);
INSERT INTO `spences` VALUES ('163121122020091', 'fruit and veggie', 20, 12, 2009, 'Cash', 3.22, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('163252122320081', 'Karmakiss com', 23, 12, 2008, 'Credit', 28.18, 'visa', 5, 59, 1);
INSERT INTO `spences` VALUES ('163337122220081', 'Erb Thai', 22, 12, 2008, 'Cash', 11.9, 'takeout dinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('163612122320081', 'Wilner Chemists', 23, 12, 2008, 'Credit', 25.48, 'nutrients\r\n', 24, 53, 1);
INSERT INTO `spences` VALUES ('163800112320081', 'Mia', 23, 11, 2008, 'Credit', 27.09, 'visa\r\ndinner w staci', 5, 9, 1);
INSERT INTO `spences` VALUES ('163947122020081', 'Big D', 20, 12, 2008, 'Credit', 106.57, 'visa\r\nGifts for operation Santa - xmas', 11, 21, 1);
INSERT INTO `spences` VALUES ('164052122320081', 'Postman books', 23, 12, 2008, 'Credit', 32.46, 'visa\r\ngift for dad', 11, 21, 1);
INSERT INTO `spences` VALUES ('16414311620081', 'the gap', 6, 11, 2008, 'Credit', 24, 'amex\r\nunderwear', 5, 49, 1);
INSERT INTO `spences` VALUES ('164335122420091', 'Rite Aid', 24, 12, 2009, 'Credit', 25.75, 'wrapping and gifts', 11, 21, 1);
INSERT INTO `spences` VALUES ('164541122020081', 'Greenpoint toy center', 20, 12, 2008, 'Credit', 70.63, 'gifts for operation santa', 11, 21, 1);
INSERT INTO `spences` VALUES ('164642123120091', 'MTA', 31, 12, 2009, 'Credit', 81, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('164827121820081', 'Toys R Us', 18, 12, 2008, 'Credit', 204.76, 'gifts for operation santa', 11, 21, 1);
INSERT INTO `spences` VALUES ('165349123020081', 'Toys R Us', 30, 12, 2008, 'Credit', -14.63, 'return', 11, 21, 1);
INSERT INTO `spences` VALUES ('1244151620091', 'Ice Cream', 6, 1, 2009, 'Cash', 8.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1244551620091', 'Dr. Manning', 6, 1, 2009, 'Cash', 170, 'For Dar and I', 24, 53, 1);
INSERT INTO `spences` VALUES ('1205421920091', 'Books for Mathew', 9, 1, 2009, 'Cash', 3, 'From street vendor', 11, 21, 1);
INSERT INTO `spences` VALUES ('1206411920091', 'Planner book', 9, 1, 2009, 'Cash', 1, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('1208201820091', 'Cab ride', 8, 1, 2009, 'Cash', 7, 'Running late for appt . ', 6, 50, 1);
INSERT INTO `spences` VALUES ('20293111020091', 'Cooks mag', 10, 1, 2009, 'Credit', 24.95, 'this is send date, not charge date\r\n\r\namex', 5, 58, 1);
INSERT INTO `spences` VALUES ('2030451920091', 'Bar', 9, 1, 2009, 'Cash', 10, 'Happy hour', 5, 49, 1);
INSERT INTO `spences` VALUES ('2032561920091', 'Junior''s', 9, 1, 2009, 'Credit', 162.12, 'dinner w cousin''s', 5, 9, 1);
INSERT INTO `spences` VALUES ('01503122320091', 'lunch', 23, 12, 2009, 'Cash', 7.53, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('15151911220091', 'Lunch', 12, 1, 2009, 'Cash', 3.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('14471511320091', 'lunch', 13, 1, 2009, 'Cash', 5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('15004711220091', 'magazine', 12, 1, 2009, 'Cash', 6, '', 5, 58, 1);
INSERT INTO `spences` VALUES ('10582911520091', 'cab ride', 15, 1, 2009, 'Cash', 10, 'cab to appt', 6, 50, 1);
INSERT INTO `spences` VALUES ('11120311520091', 'Lunch', 15, 1, 2009, 'Cash', 3.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1131441820091', 'snacks', 8, 1, 2009, 'Cash', 4, 'yoohoo and chocolate', 5, 9, 1);
INSERT INTO `spences` VALUES ('1132581920091', 'cab', 9, 1, 2009, 'Cash', 4, 'to bar', 6, 50, 1);
INSERT INTO `spences` VALUES ('20245511820091', 'Groceries', 18, 1, 2009, 'Cash', 27.75, 'Dar purchased for dinner, etc. ', 4, 8, 1);
INSERT INTO `spences` VALUES ('13563912020091', 'Inaug newspapers', 20, 1, 2009, 'Cash', 4, '', 5, 58, 1);
INSERT INTO `spences` VALUES ('13572212020091', 'cab uptown for inaug speech', 20, 1, 2009, 'Cash', 25, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('17300712020091', 'snack', 20, 1, 2009, 'Cash', 1, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1645491120091', 'apartment', 1, 1, 2009, 'Cash', 1200, '', 25, 0, 1);
INSERT INTO `spences` VALUES ('16465112120091', 'inaug newspapers', 21, 1, 2009, 'Cash', 2, '', 5, 58, 1);
INSERT INTO `spences` VALUES ('12363712220091', 'Lunch', 22, 1, 2009, 'Cash', 7, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('14122212720091', 'Seltzer', 27, 1, 2009, 'Cash', 1.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1425161220091', 'snack', 2, 1, 2009, 'Cash', 1.5, 'nuts', 5, 9, 1);
INSERT INTO `spences` VALUES ('16512112820091', 'soda and snack', 28, 1, 2009, 'Cash', 2.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('16521612920091', 'snack', 29, 1, 2009, 'Cash', 2, 'orange and granola bar from CHONY', 5, 9, 1);
INSERT INTO `spences` VALUES ('15445613020091', 'Take out', 30, 1, 2009, 'Cash', 7, 'snack', 5, 9, 1);
INSERT INTO `spences` VALUES ('15454412920091', 'taxi', 29, 1, 2009, 'Cash', 20, 'cab home on a late night', 6, 50, 1);
INSERT INTO `spences` VALUES ('15474712920091', 'skating in cp', 29, 1, 2009, 'Cash', 20, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('15543913020091', 'dinner', 30, 1, 2009, 'Cash', 5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1736142220091', 'Lunch', 2, 2, 2009, 'Cash', 4, 'Kabob', 5, 9, 1);
INSERT INTO `spences` VALUES ('2200142320091', 'lunch', 3, 2, 2009, 'Cash', 8, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1815272620091', 'taxi', 6, 2, 2009, 'Cash', 7, 'running late to 68th st', 6, 50, 1);
INSERT INTO `spences` VALUES ('2019062820091', 'Pay Amazon CC', 8, 2, 2009, 'Credit', 57.95, 'Pay direct from bank account', 5, 59, 1);
INSERT INTO `spences` VALUES ('2020501820091', 'Certified Check', 8, 1, 2009, 'Check', 400, 'Payment for January sessions', 24, 54, 1);
INSERT INTO `spences` VALUES ('2141092620091', 'lunch at tawa', 6, 2, 2009, 'Cash', 19.44, 'took alex to lunch', 5, 9, 1);
INSERT INTO `spences` VALUES ('2142022820091', 'Raedgast Hall and biergarted', 8, 2, 2009, 'Credit', 35, 'w jenne andrew and dar', 5, 49, 1);
INSERT INTO `spences` VALUES ('21434612320091', 'Sarabeth''s', 23, 1, 2009, 'Credit', 39.94, 'dinner w staci', 5, 9, 1);
INSERT INTO `spences` VALUES ('214836122120081', 'Max Sportswear', 21, 12, 2008, 'Credit', 83, 'visa\r\ngift for dar', 11, 21, 1);
INSERT INTO `spences` VALUES ('2149142620091', 'taxi', 6, 2, 2009, 'Cash', 10, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('2150472420091', 'taxi -to 68th st', 4, 2, 2009, 'Cash', 10, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('21552712520091', 'Rubin Museum lunch', 25, 1, 2009, 'Cash', 30, 'lunch with Nicole', 5, 9, 1);
INSERT INTO `spences` VALUES ('2157001820091', 'Rubin Museum of Art', 8, 1, 2009, 'Cash', 10, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('21590612520091', 'Max Brenner', 25, 1, 2009, 'Credit', 24.59, 'Out w Nic for dinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('22011713020091', 'cvs', 30, 1, 2009, 'Cash', 5.18, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('22044712920091', 'taxi', 29, 1, 2009, 'Credit', 19.4, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('22073712620091', 'Duane Reade', 26, 1, 2009, 'Credit', 10.83, 'visa', 5, 59, 1);
INSERT INTO `spences` VALUES ('2219442820091', 'taxi', 8, 2, 2009, 'Cash', 6.5, 'visa', 6, 50, 1);
INSERT INTO `spences` VALUES ('2220402220091', 'Wilner Chemists', 2, 2, 2009, 'Credit', 44.38, 'pills and ginger chocolate', 24, 53, 1);
INSERT INTO `spences` VALUES ('2226522820091', 'metrocard', 8, 2, 2009, 'Credit', 81, 'visa', 6, 12, 1);
INSERT INTO `spences` VALUES ('1630272920091', 'Scarf for dar', 9, 2, 2009, 'Cash', 5, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('1429232820091', 'Flight fee for using points', 8, 2, 2009, 'Credit', 11, 'visa', 10, 20, 1);
INSERT INTO `spences` VALUES ('14295021320091', 'orange', 13, 2, 2009, 'Cash', 1, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17111621120091', 'dinner', 11, 2, 2009, 'Cash', 4.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17115921220091', 'Pizza', 12, 2, 2009, 'Cash', 3, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('15034621620091', 'Tea', 16, 2, 2009, 'Cash', 7.5, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('11595221920091', 'Dinner', 19, 2, 2009, 'Cash', 18, 'Out w Anathea and Lib', 5, 9, 1);
INSERT INTO `spences` VALUES ('16273022620091', 'lunch', 26, 2, 2009, 'Cash', 6, 'at work', 5, 9, 1);
INSERT INTO `spences` VALUES ('17070822620091', 'candy', 26, 2, 2009, 'Cash', 3, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('2038513720091', 'Lunch w Dad', 7, 3, 2009, 'Cash', 13, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('2150223820091', 'Groceries', 8, 3, 2009, 'Cash', 15, 'Dar bought', 4, 8, 1);
INSERT INTO `spences` VALUES ('2252493820091', 'Rent', 8, 3, 2009, 'Check', 1600, '', 4, 45, 1);
INSERT INTO `spences` VALUES ('9400831020091', 'Food for dinner from Novello''s', 10, 3, 2009, 'Cash', 7.09, 'string beans and orzo to go', 5, 64, 1);
INSERT INTO `spences` VALUES ('16354731220091', 'lunch', 12, 3, 2009, 'Cash', 12, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('13324331620091', 'Lunch', 16, 3, 2009, 'Cash', 3.5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('11091931620091', 'Late Lunch', 16, 3, 2009, 'Cash', 7.5, 'veggie dumplings, pork bun and soup. ', 5, 64, 1);
INSERT INTO `spences` VALUES ('11092131620091', 'Late Lunch', 16, 3, 2009, 'Cash', 7.5, 'veggie dumplings, pork bun and soup. ', 5, 64, 1);
INSERT INTO `spences` VALUES ('13170831720091', 'Dinner at Christina''s', 17, 3, 2009, 'Cash', 27, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('13251621320091', 'Taxi', 13, 2, 2009, 'Cash', 9, 'taxi cab - ', 6, 50, 1);
INSERT INTO `spences` VALUES ('13312621420091', 'Strawberry', 14, 2, 2009, 'Credit', 10, 'Visa\r\nv day gift for Dar', 11, 21, 1);
INSERT INTO `spences` VALUES ('13330222120091', 'Village Purhouse', 21, 2, 2009, 'Credit', 67.61, 'Visa\r\nDrinks for Jackie''s birthday', 5, 49, 1);
INSERT INTO `spences` VALUES ('1334193120091', 'Nothing Fits', 1, 3, 2009, 'Credit', 59, 'Visa\r\nShoes - Boots', 5, 52, 1);
INSERT INTO `spences` VALUES ('13431331820091', 'The Garden Food Market', 18, 3, 2009, 'Credit', 68.01, 'Amex\r\nGroceries\r\n', 4, 8, 1);
INSERT INTO `spences` VALUES ('13483122020091', 'Flatbush Farmhouse', 20, 2, 2009, 'Cash', 86.7, 'Dinner for Jackie''s birthday', 5, 9, 1);
INSERT INTO `spences` VALUES ('13573131120091', 'Novello''s', 11, 3, 2009, 'Credit', 16.1, 'Chase - lunch', 5, 64, 1);
INSERT INTO `spences` VALUES ('1404243120091', 'subway pass', 1, 3, 2009, 'Credit', 81, 'Visa', 6, 12, 1);
INSERT INTO `spences` VALUES ('14115122120091', '99 miles to Philly', 21, 2, 2009, 'Cash', 7.38, 'Late night dinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('1413283620091', 'K23 Cafe', 6, 3, 2009, 'Credit', 14.58, 'Lunch\r\nVisa', 5, 64, 1);
INSERT INTO `spences` VALUES ('14150831620091', 'Chinese food lunch', 16, 3, 2009, 'Cash', 7.41, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('14162231420091', 'I tre Merli', 14, 3, 2009, 'Cash', 33.4, 'Dinner w Elaine', 5, 9, 1);
INSERT INTO `spences` VALUES ('14223921520091', 'Lumiere gift shop', 15, 2, 2009, 'Credit', 28.68, 'Visa\r\nSilver small hoop earrings', 5, 59, 1);
INSERT INTO `spences` VALUES ('14242331220091', 'Taxi  to  SH', 12, 3, 2009, 'Credit', 19.56, 'Taxi', 6, 50, 1);
INSERT INTO `spences` VALUES ('14280012220091', 'Payment to SH', 22, 1, 2009, 'Cash', 1000, 'For 2008 and Jan 2009', 24, 54, 1);
INSERT INTO `spences` VALUES ('143039122020081', 'Poland farm and Fruit', 20, 12, 2008, 'Cash', 23.15, 'Fruit', 5, 64, 1);
INSERT INTO `spences` VALUES ('1434563120091', 'Nine West', 1, 3, 2009, 'Credit', 39.99, 'black Boots\r\n\r\nVisa', 5, 52, 1);
INSERT INTO `spences` VALUES ('16184132020091', 'Novello''s  - lunch', 20, 3, 2009, 'Cash', 5.5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17314031920091', 'Max Brenner', 19, 3, 2009, 'Credit', 32.5, 'Visa\r\nDinner w Rebecca McDonald', 5, 9, 1);
INSERT INTO `spences` VALUES ('17323931820091', 'Urban Rustic', 18, 3, 2009, 'Credit', 21.91, 'Visa\r\n\r\nDinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('13095933120091', 'Breakfast from Bagel Boy', 31, 3, 2009, 'Cash', 5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1608454220091', 'Lunch w Penny at the Wharf', 2, 4, 2009, 'Cash', 20, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('2051194120091', 'Taxi', 1, 4, 2009, 'Cash', 13, 'Home from Dar''s mom', 10, 20, 1);
INSERT INTO `spences` VALUES ('20533033020091', 'drink (reno)', 30, 3, 2009, 'Credit', 2.79, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('20561832120091', 'Natural Garden', 21, 3, 2009, 'Credit', 33.99, 'For Chocolate Party', 5, 65, 1);
INSERT INTO `spences` VALUES ('20585532120091', 'Associated Supermarket', 21, 3, 2009, 'Credit', 39.41, 'chocolate party', 5, 65, 1);
INSERT INTO `spences` VALUES ('21001432820091', 'drink (trip to reno)', 28, 3, 2009, 'Cash', 3, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('21021532220091', 'Park Luncheonette', 22, 3, 2009, 'Cash', 33.47, 'Brunch w Dar', 5, 9, 1);
INSERT INTO `spences` VALUES ('21061232920091', 'Raley''s', 29, 3, 2009, 'Credit', 14.24, 'airport food', 10, 20, 1);
INSERT INTO `spences` VALUES ('21075832920091', 'Badger Pass Food', 29, 3, 2009, 'Credit', 12.61, 'Airport food\r\nVisa', 10, 20, 1);
INSERT INTO `spences` VALUES ('21084833120091', 'cash to Tait', 31, 3, 2009, 'Cash', 90, 'For campsite, food, gas, etc', 10, 20, 1);
INSERT INTO `spences` VALUES ('21104132620091', 'McDonalds (reno)', 26, 3, 2009, 'Credit', 3, 'visa\r\n', 10, 20, 1);
INSERT INTO `spences` VALUES ('21175332920091', 'Food', 29, 3, 2009, 'Cash', 3.5, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('1917064620091', 'iced tea', 6, 4, 2009, 'Cash', 2, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('946004820091', 'Hardboiled eggs', 8, 4, 2009, 'Cash', 1, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('950404420091', 'Liman Restaurant', 4, 4, 2009, 'Credit', 42.91, 'Lunch w Selma\r\nVisa', 5, 9, 1);
INSERT INTO `spences` VALUES ('9520132520091', 'Taxi to airport', 25, 3, 2009, 'Credit', 51.75, 'visa', 10, 20, 1);
INSERT INTO `spences` VALUES ('9530532320091', 'Cambridge Cleaners', 23, 3, 2009, 'Cash', 113, 'Clothing alterations', 5, 52, 1);
INSERT INTO `spences` VALUES ('9552433120091', 'Duane Reade', 31, 3, 2009, 'Credit', 16.47, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('956394720091', 'Spinach pie - dinner', 7, 4, 2009, 'Cash', 6.45, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('9585333120091', 'Metrocard', 31, 3, 2009, 'Credit', 81, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('927024920091', 'banana and egg', 9, 4, 2009, 'Cash', 1, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('12185941320091', 'Breakfast', 13, 4, 2009, 'Cash', 2, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('12192241420091', 'Cab to train-- runnning late', 14, 4, 2009, 'Cash', 10, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('12203241220091', 'Cab ride to airport', 12, 4, 2009, 'Cash', 40, '25 plus 15 tip', 6, 50, 1);
INSERT INTO `spences` VALUES ('13185641320091', 'Novello''s', 13, 4, 2009, 'Credit', 11.36, 'Lunch\r\nVisa', 5, 64, 1);
INSERT INTO `spences` VALUES ('13193733020091', 'ARCO - gas refill', 30, 3, 2009, 'Credit', 20, 'visa\r\ngas ', 10, 20, 1);
INSERT INTO `spences` VALUES ('13205132620091', 'Raley''s', 26, 3, 2009, 'Credit', 15.24, 'Food for trip', 10, 20, 1);
INSERT INTO `spences` VALUES ('13212533020091', 'Homewood mountain skiing', 30, 3, 2009, 'Credit', 39, 'visa\r\n', 10, 20, 1);
INSERT INTO `spences` VALUES ('13221422520091', 'Snack at airport', 25, 2, 2009, 'Cash', 2, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('13224732520091', 'snack at airport', 25, 3, 2009, 'Cash', 2, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('1323264920091', 'Frozen yogurt', 9, 4, 2009, 'Cash', 5.33, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('13242641020091', 'Cambridge cleaners', 10, 4, 2009, 'Cash', 71, 'Dry cleaning', 5, 52, 1);
INSERT INTO `spences` VALUES ('13250441020091', 'the Wharf', 10, 4, 2009, 'Credit', 21.51, 'Dinner w Stacy', 5, 9, 1);
INSERT INTO `spences` VALUES ('13255241220091', 'Passport Photo', 12, 4, 2009, 'Credit', 8.66, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('13271132520091', 'Burger King', 25, 3, 2009, 'Credit', 3.67, 'Airport dinner', 5, 64, 1);
INSERT INTO `spences` VALUES ('13273641020091', 'Easter Chocolates', 10, 4, 2009, 'Cash', 12, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('13290532520091', 'Delta', 25, 3, 2009, 'Credit', 15, 'Bag fee', 10, 20, 1);
INSERT INTO `spences` VALUES ('13300441020091', 'Willner Chemists', 10, 4, 2009, 'Credit', 95.68, 'Supplements for Dar and I ', 24, 53, 1);
INSERT INTO `spences` VALUES ('13313041020091', 'snack', 10, 4, 2009, 'Cash', 1, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('13372941220091', 'Taxi home from airport', 12, 4, 2009, 'Credit', 23.23, 'visa', 10, 20, 1);
INSERT INTO `spences` VALUES ('16400641420091', 'Lunch', 14, 4, 2009, 'Cash', 10, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('10575841520091', 'Breakfast - banana and eggs', 15, 4, 2009, 'Cash', 2, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('19131142720091', 'knish', 27, 4, 2009, 'Cash', 1.5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15465442920091', 'drink', 29, 4, 2009, 'Cash', 1.5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17145943020091', 'Metrocard', 30, 4, 2009, 'Credit', 81, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('17153043020091', 'SH', 30, 4, 2009, 'Cash', 950, 'Cerified check', 24, 54, 1);
INSERT INTO `spences` VALUES ('17154743020091', 'Ice', 30, 4, 2009, 'Cash', 1.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17163342620091', 'New (old) bicycle', 26, 4, 2009, 'Cash', 75, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('1349305720091', 'Breakfast', 7, 5, 2009, 'Cash', 2, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17173233020091', 'Alpaca Petes', 30, 3, 2009, 'Credit', 84.73, 'Alpaca pillow case', 10, 20, 1);
INSERT INTO `spences` VALUES ('17182741620091', 'Airport snack', 16, 4, 2009, 'Cash', 3.19, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17193641520091', 'Afaze', 15, 4, 2009, 'Credit', 16, 'Visa', 5, 52, 1);
INSERT INTO `spences` VALUES ('17222742120091', 'Panda Express - dinner', 21, 4, 2009, 'Credit', 3.41, 'airport dinner\r\nvisa', 10, 20, 1);
INSERT INTO `spences` VALUES ('17232141320091', 'Rush Passport', 13, 4, 2009, 'Credit', 250, 'Passport renewal', 10, 20, 1);
INSERT INTO `spences` VALUES ('17251941620091', 'Burger King - -airport', 16, 4, 2009, 'Credit', 4, 'visa', 10, 20, 1);
INSERT INTO `spences` VALUES ('17275142020091', 'snack', 20, 4, 2009, 'Cash', 2, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('17404142920091', 'Prohealth', 29, 4, 2009, 'Credit', 17.3, 'visa\r\ncards, drink, candy', 5, 59, 1);
INSERT INTO `spences` VALUES ('17413842020091', 'snack', 20, 4, 2009, 'Cash', 4, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('17440941620091', 'ARM distributution center', 16, 4, 2009, 'Credit', 17.32, 'pralines  - gift for Dar', 10, 20, 1);
INSERT INTO `spences` VALUES ('17461942020091', 'ARM distribution Center', 20, 4, 2009, 'Credit', 18.09, 'praline''s  - gift for dar', 10, 20, 1);
INSERT INTO `spences` VALUES ('17471842020091', 'snack', 20, 4, 2009, 'Cash', 2, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('17482242220091', 'Organic Planet', 22, 4, 2009, 'Credit', 14.15, 'AMEX - groceries', 4, 8, 1);
INSERT INTO `spences` VALUES ('17494642320091', 'cold stone creamery', 23, 4, 2009, 'Cash', 9.23, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('18052442920091', 'drugstore', 29, 4, 2009, 'Cash', 17, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('18063842020091', 'mandarin express', 20, 4, 2009, 'Credit', 5.55, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('18075742020091', 'Ice cream', 20, 4, 2009, 'Credit', 3.52, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('10525251320091', 'Lunch - salad', 13, 5, 2009, 'Cash', 6, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('19435552320091', 'Market', 23, 5, 2009, 'Cash', 75, 'cheese, wine, eggs, tp, toothpaste, ', 4, 8, 1);
INSERT INTO `spences` VALUES ('19441952320091', 'Thank you cards', 23, 5, 2009, 'Cash', 10, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('19455651920091', 'appointment', 19, 5, 2009, 'Cash', 100, '', 24, 53, 1);
INSERT INTO `spences` VALUES ('1948555420091', 'Sallie Mae Loans', 4, 5, 2009, 'Debit', 104, 'Direct deposit', 23, 0, 1);
INSERT INTO `spences` VALUES ('20502452120091', 'Paradou', 21, 5, 2009, 'Cash', 138, 'Anniversary dinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('20540551720091', 'Dish Network', 17, 5, 2009, 'Credit', 60.46, 'Amex - Cable', 4, 48, 1);
INSERT INTO `spences` VALUES ('20550751420091', 'Greenpeace', 14, 5, 2009, 'Credit', 15, 'Amex', 11, 22, 1);
INSERT INTO `spences` VALUES ('2055475420091', 'T mobile', 4, 5, 2009, 'Cash', 110, 'Amex', 4, 46, 1);
INSERT INTO `spences` VALUES ('2106324620091', 'Costco', 6, 4, 2009, 'Credit', 297, 'Contacts', 24, 55, 1);
INSERT INTO `spences` VALUES ('21082042320091', 'Time Warner', 23, 4, 2009, 'Credit', 29.95, 'Internet\r\nAmex', 4, 66, 1);
INSERT INTO `spences` VALUES ('2110264420091', 't-mobile', 4, 4, 2009, 'Credit', 117.14, 'Amex', 4, 46, 1);
INSERT INTO `spences` VALUES ('21112041520091', 'Greenpeace', 15, 4, 2009, 'Credit', 15, '', 11, 22, 1);
INSERT INTO `spences` VALUES ('21121941620091', 'One and One internet', 16, 4, 2009, 'Credit', 29.95, 'Web hosting company', 4, 60, 1);
INSERT INTO `spences` VALUES ('9522252620091', 'snack', 26, 5, 2009, 'Cash', 5, 'fruit and candy', 5, 64, 1);
INSERT INTO `spences` VALUES ('12213652620091', 'Watch repair', 26, 5, 2009, 'Cash', 12, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('1224095920091', 'Groceries', 9, 5, 2009, 'Credit', 43.78, 'Laudry Det, vinegar, etc', 4, 8, 1);
INSERT INTO `spences` VALUES ('12254032420091', 'Red Mango', 24, 3, 2009, 'Credit', 5.15, 'ice cream', 5, 64, 1);
INSERT INTO `spences` VALUES ('1012246320091', 'Smorgas Chef', 3, 6, 2009, 'Cash', 22.15, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1013056320091', 'Willner Chemists', 3, 6, 2009, 'Cash', 79.46, 'Nutrients', 24, 53, 1);
INSERT INTO `spences` VALUES ('10135652920091', 'Chipotle', 29, 5, 2009, 'Credit', 11.25, 'Lunch', 5, 9, 1);
INSERT INTO `spences` VALUES ('10171652220091', 'Craftbar', 22, 5, 2009, 'Credit', 49.21, 'dinner\r\n', 5, 9, 1);
INSERT INTO `spences` VALUES ('1020536220091', 'lunch', 2, 6, 2009, 'Cash', 8, 'Chicken and Broc', 5, 64, 1);
INSERT INTO `spences` VALUES ('1022026120091', 'Dry cleaning', 1, 6, 2009, 'Credit', 19.5, 'clean and hem', 5, 52, 1);
INSERT INTO `spences` VALUES ('1812056520091', 'Lunch', 5, 6, 2009, 'Cash', 10, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1012356820091', 'cold cuts', 8, 6, 2009, 'Cash', 5.15, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1013186620091', 'Jill and Jo Bday gifts', 6, 6, 2009, 'Cash', 70, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('13171361020091', 'fruit', 10, 6, 2009, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1008216920091', 'Cab to bus', 9, 6, 2009, 'Cash', 7, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('21345061220091', 'Chipotle', 12, 6, 2009, 'Credit', 8.25, 'lunch', 5, 9, 1);
INSERT INTO `spences` VALUES ('2136016420091', 'NYC Elite Gymnastics', 4, 6, 2009, 'Credit', 26, '', 24, 56, 1);
INSERT INTO `spences` VALUES ('21373661120091', 'Nonna restaurant', 11, 6, 2009, 'Credit', 22.58, 'Dinner out', 5, 9, 1);
INSERT INTO `spences` VALUES ('21384361420091', 'Sette Enoteca', 14, 6, 2009, 'Credit', 52.02, 'Nicole''s bday dinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('2139216520091', 'Patrick Connoway''s', 5, 6, 2009, 'Cash', 58, 'Dinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('21404461420091', 'Gap', 14, 6, 2009, 'Cash', 82.98, 'clothing and bathing suit', 5, 52, 1);
INSERT INTO `spences` VALUES ('21443161320091', 'street fair', 13, 6, 2009, 'Cash', 20, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('13164852920091', 'Crumbs', 29, 5, 2009, 'Credit', 7.5, 'Cupcakes', 5, 64, 1);
INSERT INTO `spences` VALUES ('13172852820091', 'NYC Elite Gymnastics', 28, 5, 2009, 'Credit', 26, '', 24, 56, 1);
INSERT INTO `spences` VALUES ('13193042320091', 'Pasha', 23, 4, 2009, 'Credit', 41.75, 'Dinner', 5, 9, 1);
INSERT INTO `spences` VALUES ('1320385120091', 'Patsy''s', 1, 5, 2009, 'Credit', 69.87, 'Dinner w Dar and Michael after soccer', 5, 9, 1);
INSERT INTO `spences` VALUES ('13225651520091', 'Candy (Hospital gift shop)', 15, 5, 2009, 'Cash', 2.89, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('13314451520091', 'Milkshake', 15, 5, 2009, 'Cash', 3.79, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('13373751520091', 'Dry Cleaning and alterations', 15, 5, 2009, 'Cash', 38, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('13460551820091', 'Pictures for Letti, etc.', 18, 5, 2009, 'Cash', 13.75, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('1347035820091', 'snacks', 8, 5, 2009, 'Cash', 8.62, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('14265752320091', 'Whisk - Kitchen supplies', 23, 5, 2009, 'Credit', 41.13, 'amex\r\n', 4, 60, 1);
INSERT INTO `spences` VALUES ('14273352320091', 'Bedford cheese shop', 23, 5, 2009, 'Credit', 12, 'amex', 4, 8, 1);
INSERT INTO `spences` VALUES ('1428314920091', 'Radioshack', 9, 4, 2009, 'Credit', 20.58, 'headphones\r\n', 5, 59, 1);
INSERT INTO `spences` VALUES ('14300652120091', 'Paradou', 21, 5, 2009, 'Credit', 138.83, 'amex\r\nAnniversary dinner w Dar', 5, 9, 1);
INSERT INTO `spences` VALUES ('14313951520091', 'Taralucci e vino', 15, 5, 2009, 'Credit', 80.11, 'Dinner out w friends', 5, 9, 1);
INSERT INTO `spences` VALUES ('14331142220091', 'Taxi', 22, 4, 2009, 'Credit', 25.87, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('14364242920091', 'SH', 29, 4, 2009, 'Cash', 950, 'Payment through March?', 24, 54, 1);
INSERT INTO `spences` VALUES ('14384461220091', 'Tayloring/ dry cleaning', 12, 6, 2009, 'Credit', 138, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('1441555720091', 'Urban Outfitters', 7, 5, 2009, 'Credit', 13.98, 'underwear', 5, 52, 1);
INSERT INTO `spences` VALUES ('14441312320081', 'Payless shoes', 3, 12, 2008, 'Credit', 34.48, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('14465752620091', 'Watch battery replacement', 26, 5, 2009, 'Cash', 12, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('14475351420091', 'Variazioni', 14, 5, 2009, 'Credit', 197, 'clothing', 5, 52, 1);
INSERT INTO `spences` VALUES ('14495812620081', 'Underwear', 6, 12, 2008, 'Cash', 25, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('14504741620091', 'Gift for Honduras', 16, 4, 2009, 'Credit', 54.12, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('15082912620081', 'Hair styled', 6, 12, 2008, 'Cash', 35, 'Hair done for Dad''s party', 5, 67, 1);
INSERT INTO `spences` VALUES ('10354862420091', 'Breakfast', 24, 6, 2009, 'Cash', 2.5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('10371262220091', 'Cab ride to Chelsea Piers', 22, 6, 2009, 'Cash', 12, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('21513862820091', 'Garden', 28, 6, 2009, 'Cash', 17.73, 'Groceries', 4, 8, 1);
INSERT INTO `spences` VALUES ('21520162820091', 'Laundry', 28, 6, 2009, 'Cash', 7, '', 4, 57, 1);
INSERT INTO `spences` VALUES ('21524262720091', 'Market veggies/ fruit', 27, 6, 2009, 'Cash', 50, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('21532962720091', 'Beer Hall', 27, 6, 2009, 'Cash', 40, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('21543962820091', 'Junior''s', 28, 6, 2009, 'Credit', 28.12, 'For Sam''s bday', 5, 9, 1);
INSERT INTO `spences` VALUES ('21564962520091', 'Duane Reade', 25, 6, 2009, 'Cash', 38.2, 'items for Dar/ medicine', 5, 59, 1);
INSERT INTO `spences` VALUES ('21583362020091', 'Union Hall', 20, 6, 2009, 'Credit', 39.4, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('21593161320091', 'Rite Aid', 13, 6, 2009, 'Cash', 7, 'Hydrocortisone', 5, 67, 1);
INSERT INTO `spences` VALUES ('2200356620091', 'Stamps', 6, 6, 2009, 'Cash', 17.6, '', 4, 60, 1);
INSERT INTO `spences` VALUES ('2201376620091', 'Taxi', 6, 6, 2009, 'Cash', 15, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('22024862520091', 'Aquamarine', 25, 6, 2009, 'Cash', 11.11, 'Lunch w penny', 5, 9, 1);
INSERT INTO `spences` VALUES ('12300762620091', 'Library fee', 26, 6, 2009, 'Cash', 15, '', 23, 69, 1);
INSERT INTO `spences` VALUES ('1021497220091', 'Willner Chemists', 2, 7, 2009, 'Credit', 38.39, '', 24, 56, 1);
INSERT INTO `spences` VALUES ('10224363020091', 'YMCA', 30, 6, 2009, 'Credit', 65.22, '', 24, 56, 1);
INSERT INTO `spences` VALUES ('1023347120091', 'Wichcraft', 1, 7, 2009, 'Credit', 15.58, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1023567120091', 'Crumbs', 1, 7, 2009, 'Credit', 7.5, 'Cupcakes', 5, 9, 1);
INSERT INTO `spences` VALUES ('10245653120091', 'The Garden', 31, 5, 2009, 'Credit', 54.64, 'Groceries', 4, 8, 1);
INSERT INTO `spences` VALUES ('10254822820091', 'Dunkin Donuts', 28, 2, 2009, 'Cash', 9.75, 'ice cream', 5, 64, 1);
INSERT INTO `spences` VALUES ('10273622820091', 'Donuts for CSA', 28, 2, 2009, 'Cash', 25.38, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('10300162920091', 'Metrocard', 29, 6, 2009, 'Credit', 89, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('10303253020091', 'Metrocard', 30, 5, 2009, 'Credit', 81, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('10344233020091', 'Airport food - HMS host', 30, 3, 2009, 'Check', 9.73, 'visa', 10, 20, 1);
INSERT INTO `spences` VALUES ('10352733020091', 'Airport food - creative croissants', 30, 3, 2009, 'Credit', 5.4, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('10360811520081', 'Mollyvos', 5, 11, 2008, 'Cash', 101.28, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('10365752320091', 'Associated', 23, 5, 2009, 'Cash', 24.22, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('10365172120091', 'Banana', 21, 7, 2009, 'Cash', 1, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('10383771920091', 'Duane Reade', 19, 7, 2009, 'Credit', 9.08, 'Shampoo, deoderant', 5, 67, 1);
INSERT INTO `spences` VALUES ('10391872120091', 'CVS', 21, 7, 2009, 'Credit', 10.99, 'Pics for Tait', 11, 21, 1);
INSERT INTO `spences` VALUES ('10395262320091', 'UHF event', 23, 6, 2009, 'Cash', 100, '', 11, 22, 1);
INSERT INTO `spences` VALUES ('10405172020091', 'NYC Elite Gymnastics', 20, 7, 2009, 'Cash', 52, '', 5, 51, 1);
INSERT INTO `spences` VALUES ('1043397620091', 'Crumbs cupcake', 6, 7, 2009, 'Cash', 3.75, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1044057620091', 'Crumbs', 6, 7, 2009, 'Credit', 5.5, 'Amex', 5, 64, 1);
INSERT INTO `spences` VALUES ('10445571120091', 'Juniors', 11, 7, 2009, 'Cash', 16.23, 'Amex', 5, 9, 1);
INSERT INTO `spences` VALUES ('1046127720091', 'Peacefood Cafe', 7, 7, 2009, 'Cash', 6.5, 'Shake', 5, 64, 1);
INSERT INTO `spences` VALUES ('10464971720091', 'MET Museum', 17, 7, 2009, 'Cash', 2, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('10485271520091', 'Good Restaurant', 15, 7, 2009, 'Credit', 60.52, 'Amex\r\nDinner w Jo', 5, 9, 1);
INSERT INTO `spences` VALUES ('10494571020091', 'Beyoglu', 10, 7, 2009, 'Credit', 23.5, 'Amex\r\nTurkish w Elaine and Staci', 5, 9, 1);
INSERT INTO `spences` VALUES ('1050357420091', 'Waldbaum''s', 4, 7, 2009, 'Cash', 29.08, 'Amex\r\n', 4, 8, 1);
INSERT INTO `spences` VALUES ('1055047220091', 'Land Thai Kitchen', 2, 7, 2009, 'Credit', 34.47, 'Amex', 5, 9, 1);
INSERT INTO `spences` VALUES ('1056097620091', 'wichcraft', 6, 7, 2009, 'Credit', 26.44, 'sandwiches in the park', 5, 9, 1);
INSERT INTO `spences` VALUES ('1056517820091', 'Greenwich Produce', 8, 7, 2009, 'Cash', 12.6, '', 5, 65, 1);
INSERT INTO `spences` VALUES ('1057317620091', 'Jamba Juice', 6, 7, 2009, 'Credit', 6.45, 'Amex', 5, 64, 1);
INSERT INTO `spences` VALUES ('10582171920091', 'River Barrel', 19, 7, 2009, 'Credit', 67.35, 'amex', 5, 9, 1);
INSERT INTO `spences` VALUES ('11010462620091', 'DPR Electronics', 26, 6, 2009, 'Credit', 17.99, 'Gift for Dar', 11, 21, 1);
INSERT INTO `spences` VALUES ('16044572220091', 'Duane reade', 22, 7, 2009, 'Cash', 3.25, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('9535772620091', 'Florio''s - Dinner out', 26, 7, 2009, 'Credit', 21, 'Paid total bill 98.08 + 20 dollars. Rest was given to me in cash\r\nDinner out w Alyson and Felicia', 5, 9, 1);
INSERT INTO `spences` VALUES ('12580372520091', ' Fire Island', 25, 7, 2009, 'Cash', 83, 'Gas - 20\r\nFerry (for 3) - 51\r\ntransit from Ferry (for 3)  - 12', 10, 20, 1);
INSERT INTO `spences` VALUES ('14065372820091', 'Boat ride in CP', 28, 7, 2009, 'Cash', 15, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('14110072820091', 'taxi', 28, 7, 2009, 'Cash', 8, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('2200138820091', 'Market', 8, 8, 2009, 'Cash', 75, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('2201058820091', 'Groceries - Garden', 8, 8, 2009, 'Cash', 51.53, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('15101581920091', 'Copy for derm', 19, 8, 2009, 'Cash', 20, '', 24, 56, 1);
INSERT INTO `spences` VALUES ('16155082020091', 'starbucks drink', 20, 8, 2009, 'Credit', 5, 'Visa', 5, 64, 1);
INSERT INTO `spences` VALUES ('16173082020091', 'Driver''s license renewal', 20, 8, 2009, 'Credit', 50, '', 23, 69, 1);
INSERT INTO `spences` VALUES ('16590010120091', 'Lunch and snack', 1, 10, 2009, 'Cash', 12, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('16080510620091', 'Lunch', 6, 10, 2009, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17192010920091', 'lunch', 9, 10, 2009, 'Cash', 10, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17194410920091', 'dinner', 9, 10, 2009, 'Cash', 10, 'Grab and go from grocery stort', 5, 64, 1);
INSERT INTO `spences` VALUES ('101626102020091', 'snack', 20, 10, 2009, 'Cash', 1.5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('101648102020091', 'ices', 20, 10, 2009, 'Cash', 1.5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1635042120101', 'CVS Pharmacy', 1, 2, 2010, 'Credit', 21.85, 'Visa', 5, 67, 1);
INSERT INTO `spences` VALUES ('1351162320101', 'MTA pass', 3, 2, 2010, 'Credit', 89, 'Visa', 6, 12, 1);
INSERT INTO `spences` VALUES ('1351242320101', 'MTA pass', 3, 2, 2010, 'Credit', 89, 'Visa', 6, 12, 1);
INSERT INTO `spences` VALUES ('1352152320101', 'Aquamarine - lunch w Penny', 3, 2, 2010, 'Credit', 10.5, 'Visa', 5, 9, 1);
INSERT INTO `spences` VALUES ('1353112320101', 'Mistake MTA card entry', 3, 2, 2010, 'Cash', -89, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('1353152320101', 'Mistake MTA card entry', 3, 2, 2010, 'Cash', -89, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('1353392320101', 'MTA care', 3, 2, 2010, 'Credit', 89, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('1355342320101', 'Fishtail restaurant - Dinner out', 3, 2, 2010, 'Credit', 45, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1357132320101', 'Perry Street', 3, 2, 2010, 'Credit', 58, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1358002220101', 'Purses from Wash Heights', 2, 2, 2010, 'Cash', 20, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('1359072220101', 'Lunch', 2, 2, 2010, 'Cash', 7, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1359342220101', 'Hat', 2, 2, 2010, 'Cash', 10, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('1613162520101', 'Taxi to and from lunch', 5, 2, 2010, 'Cash', 12, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('1614522520101', 'Lunch at Le Perigord (w fleo)', 5, 2, 2010, 'Cash', 35, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1618002420101', 'Pizza', 4, 2, 2010, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('931082520101', 'Train to NJ', 5, 2, 2010, 'Credit', 16, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('931522620101', 'Bar tips', 6, 2, 2010, 'Cash', 10, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('1003382520101', 'Chock full of nuts classic', 5, 2, 2010, 'Cash', 6.5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1004222520101', 'Dress from Salvation army', 5, 2, 2010, 'Credit', 15, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('1005032320101', 'Cipriani Dolci', 3, 2, 2010, 'Credit', 31.29, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('12273721120101', 'Mail item', 11, 2, 2010, 'Cash', 1, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('12285421020101', 'Pmts for leaving late', 10, 2, 2010, 'Cash', 20, '2 dollars per day', 5, 59, 1);
INSERT INTO `spences` VALUES ('12295821020101', 'Farmer''s market', 10, 2, 2010, 'Cash', 25, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('12310121020101', 'Candy', 10, 2, 2010, 'Cash', 4.08, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('1231452920101', 'The garden', 9, 2, 2010, 'Credit', 115, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('17360421220101', 'Drink', 12, 2, 2010, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('9542621120101', 'Dinner at Spiga', 11, 2, 2010, 'Cash', 59, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('9564321220101', 'Cab home from subway (manhattan beach)', 12, 2, 2010, 'Cash', 8, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('9582421320101', 'Electro', 13, 2, 2010, 'Cash', 40, '', 5, 67, 1);
INSERT INTO `spences` VALUES ('10004521320101', 'Bagels', 13, 2, 2010, 'Cash', 17.55, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('11285921520101', 'Lunch w Dar (indian', 15, 2, 2010, 'Cash', 18, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('11300821520101', 'Personal Training', 15, 2, 2010, 'Credit', 650, '', 24, 56, 1);
INSERT INTO `spences` VALUES ('15372221720101', 'Better Burger lunch', 17, 2, 2010, 'Credit', 7, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15375121520101', 'calendar', 15, 2, 2010, 'Cash', 2, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('17143321820101', 'Earing repair (3 prs)', 18, 2, 2010, 'Cash', 30, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('16020322520101', 'lunch', 25, 2, 2010, 'Cash', 10, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('16022522420101', 'Cab ride home', 24, 2, 2010, 'Cash', 9, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('1515373220101', 'Shoe Shine', 2, 3, 2010, 'Cash', 11, 'Boots', 5, 59, 1);
INSERT INTO `spences` VALUES ('1048583320101', 'Cab to work', 3, 3, 2010, 'Cash', 9, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('10492122720101', 'Farmer''s market', 27, 2, 2010, 'Cash', 80, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('1054353420101', 'WNYC', 4, 3, 2010, 'Credit', 112, '', 11, 22, 1);
INSERT INTO `spences` VALUES ('1501283420101', 'Lunch', 4, 3, 2010, 'Cash', 11, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1514363820101', 'Lunch', 8, 3, 2010, 'Cash', 8, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1515413620101', 'Emilia', 6, 3, 2010, 'Cash', 40, '', 5, 67, 1);
INSERT INTO `spences` VALUES ('912583720101', 'Skytop Steakhouse', 7, 3, 2010, 'Cash', 78.91, 'Wedding trip', 5, 9, 1);
INSERT INTO `spences` VALUES ('1022563220101', 'Dinner  at Giorgio''s of Gramercy', 2, 3, 2010, 'Credit', 74, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('16373322620101', 'Dinner at Bar Stuz', 26, 2, 2010, 'Credit', 122, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1640573120101', 'Chocolate', 1, 3, 2010, 'Cash', 6, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1641353220101', 'Duane Reade', 2, 3, 2010, 'Credit', 12.79, '', 5, 67, 1);
INSERT INTO `spences` VALUES ('17102631220101', 'Lunch w San', 12, 3, 2010, 'Cash', 20, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('10022231520101', 'pizza', 15, 3, 2010, 'Cash', 3, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('10025731620101', 'Taxi', 16, 3, 2010, 'Cash', 9, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('10051931620101', 'Farmer''s market', 16, 3, 2010, 'Cash', 80, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('10054331620101', 'Hat', 16, 3, 2010, 'Cash', 37, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('10081231520101', 'Opera shop clothing', 15, 3, 2010, 'Credit', 40, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('10091131520101', 'Hardware store', 15, 3, 2010, 'Cash', 10, 'hooks,', 4, 60, 1);
INSERT INTO `spences` VALUES ('10093831520101', 'library', 15, 3, 2010, 'Cash', 10, '', 23, 69, 1);
INSERT INTO `spences` VALUES ('10101331620101', 'Apt fees', 16, 3, 2010, 'Cash', 20, '', 23, 69, 1);
INSERT INTO `spences` VALUES ('10103931020101', 'Dinner', 10, 3, 2010, 'Cash', 6, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1012163920101', 'Dinner at Gobo', 9, 3, 2010, 'Cash', 37.57, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1012593120101', 'Willner Chemists', 1, 3, 2010, 'Credit', 63.9, '', 24, 53, 1);
INSERT INTO `spences` VALUES ('10134421720101', 'Goodburger', 17, 2, 2010, 'Cash', 7.35, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('10142221720101', 'shirt from goodwill', 17, 2, 2010, 'Cash', 10, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('1015182920101', 'Groceries from the garden', 9, 2, 2010, 'Credit', 100.82, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('10161622420101', 'Dinner w Dar', 24, 2, 2010, 'Cash', 50.1, 'Trattoria dopo teatro', 5, 9, 1);
INSERT INTO `spences` VALUES ('10254931620101', 'Snack', 16, 3, 2010, 'Cash', 3, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('10261631620101', 'Dr. Manning appt', 16, 3, 2010, 'Cash', 70, '', 24, 53, 1);
INSERT INTO `spences` VALUES ('10263531720101', 'taxi to work', 17, 3, 2010, 'Credit', 8, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('14480631720101', 'Lunch w Penny and Sarah', 17, 3, 2010, 'Credit', 27, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('14583731720101', 'Cake for office', 17, 3, 2010, 'Credit', 6, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('10305631920101', 'taxi to work', 19, 3, 2010, 'Cash', 7, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('10320231820101', 'Snack', 18, 3, 2010, 'Cash', 5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('10325431220101', 'Lunch at Juniors w Sam', 12, 3, 2010, 'Cash', 20, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('10363231720101', 'Dinner w Staci @ Cilatros', 17, 3, 2010, 'Credit', 28, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('10371231820101', 'Duane Reade', 18, 3, 2010, 'Credit', 15.59, '', 5, 67, 1);
INSERT INTO `spences` VALUES ('17010131920101', 'lunch', 19, 3, 2010, 'Cash', 8, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('9524532120101', 'Cookies', 21, 3, 2010, 'Cash', 8, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('9532532120101', 'Candy at Milleridge', 21, 3, 2010, 'Cash', 10, 'Visit to LI', 5, 64, 1);
INSERT INTO `spences` VALUES ('9552731820101', 'Yesica''s baby shower', 18, 3, 2010, 'Cash', 30, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('1020432820101', 'Market', 28, 3, 2010, 'Cash', 40, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('1033932820101', 'Electrolysis', 28, 3, 2010, 'Cash', 80, '', 5, 67, 1);
INSERT INTO `spences` VALUES ('1045032720101', 'cab', 27, 3, 2010, 'Cash', 20, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('1051432720101', 'dinner', 27, 3, 2010, 'Cash', 30, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('13005732320101', 'Shoe repair', 23, 3, 2010, 'Cash', 28, '', 5, 70, 1);
INSERT INTO `spences` VALUES ('13020022720101', 'Century 21', 27, 2, 2010, 'Credit', 230.59, 'Two suits ', 5, 52, 1);
INSERT INTO `spences` VALUES ('1303583320101', 'Sleep doctor copay', 3, 3, 2010, 'Credit', 20, '', 24, 56, 1);
INSERT INTO `spences` VALUES ('13052532720101', 'Frozen yogurt', 27, 3, 2010, 'Cash', 3.9, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('13100121620101', 'Jewelry repair', 16, 2, 2010, 'Cash', 30, '', 5, 70, 1);
INSERT INTO `spences` VALUES ('13300132920101', 'lunch', 29, 3, 2010, 'Cash', 5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('10012732920101', 'Post office', 29, 3, 2010, 'Cash', 14, 'Ticket to Shokan', 5, 59, 1);
INSERT INTO `spences` VALUES ('10160433020101', 'Stamps', 30, 3, 2010, 'Credit', 17.6, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('1505084620101', 'Fruit', 6, 4, 2010, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15095433120101', 'Punch restaurant', 31, 3, 2010, 'Cash', 92.54, 'got dinner for Jen and AF', 5, 9, 1);
INSERT INTO `spences` VALUES ('15111222120101', 'Meal out', 21, 2, 2010, 'Credit', 40.01, 'Jackie''s bday weekend', 10, 20, 1);
INSERT INTO `spences` VALUES ('924504720101', 'taxi to work from train', 7, 4, 2010, 'Cash', 7, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('1052444520101', 'Metrocard', 5, 4, 2010, 'Credit', 89, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('17273641120101', 'Prune', 11, 4, 2010, 'Credit', 25.25, 'Prune - w Jen and Cate', 5, 9, 1);
INSERT INTO `spences` VALUES ('1728414220101', 'Dinner w Dar', 2, 4, 2010, 'Credit', 67, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1729074920101', 'Rio''s', 9, 4, 2010, 'Credit', 41, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17293341120101', 'Dress from Market', 11, 4, 2010, 'Cash', 40, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('17302041220101', 'cvs candy', 12, 4, 2010, 'Credit', 6.79, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17305641120101', 'nytimes', 11, 4, 2010, 'Credit', 9.8, 'MOnthly', 5, 58, 1);
INSERT INTO `spences` VALUES ('11203341420101', 'Taxi to work', 14, 4, 2010, 'Cash', 9, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('10203541520101', 'Breakfast', 15, 4, 2010, 'Cash', 5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17342341420101', 'Duke''s w penny and sarah', 14, 4, 2010, 'Credit', 18.23, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17345241720101', 'Cas for Poconos weekend', 17, 4, 2010, 'Cash', 25, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('17352632020101', 'Il bastartdo', 20, 3, 2010, 'Credit', 65.34, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17364841220101', 'Ann Taylor', 12, 4, 2010, 'Cash', 150.25, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('17373541920101', 'Papyrus', 19, 4, 2010, 'Credit', 32.5, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('17380341520101', 'Giorgio''s of grammercy', 15, 4, 2010, 'Credit', 77.15, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17390241620101', 'Willner Chemists', 16, 4, 2010, 'Cash', 137.78, '', 24, 53, 1);
INSERT INTO `spences` VALUES ('17414441720101', 'horseback riding - pocono trip', 17, 4, 2010, 'Credit', 46, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('18111242320101', 'Birthday weekend with Elaine', 23, 4, 2010, 'Cash', 150, 'Check to Amy', 10, 20, 1);
INSERT INTO `spences` VALUES ('18134842220101', 'fruit', 22, 4, 2010, 'Cash', 5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('937225520101', 'Cab ride to Cornell', 5, 5, 2010, 'Cash', 12, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('938475320101', 'Fruit', 3, 5, 2010, 'Cash', 12, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('939585520101', 'Hudson Terrace bar', 5, 5, 2010, 'Cash', 40, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('15464651720101', 'fruit', 17, 5, 2010, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15080051820101', 'snacks', 18, 5, 2010, 'Cash', 8, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17443052120101', 'Lunch', 21, 5, 2010, 'Cash', 13, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17450651820101', 'NJ transit', 18, 5, 2010, 'Cash', 10, '', 6, 12, 1);
INSERT INTO `spences` VALUES ('17462152120101', 'Pearl Jam Concert', 21, 5, 2010, 'Cash', 180, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('17473642920101', 'Flight to Dallas', 29, 4, 2010, 'Cash', 285.58, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('15432652420101', 'taxi to and from Bridal garden for lunch', 24, 5, 2010, 'Cash', 20, 'Also under wedding. ', 6, 50, 1);
INSERT INTO `spences` VALUES ('15442352420101', 'Breakfast', 24, 5, 2010, 'Cash', 2, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15341252420101', 'Strawberries', 24, 5, 2010, 'Cash', 20, '', 5, 65, 1);
INSERT INTO `spences` VALUES ('15392652420101', 'Radish  -', 24, 5, 2010, 'Cash', 45, 'Food and lunch tin', 5, 64, 1);
INSERT INTO `spences` VALUES ('17114952520101', 'Gristedes', 25, 5, 2010, 'Credit', 21.24, '', 5, 65, 1);
INSERT INTO `spences` VALUES ('14445052720101', 'Lunch w John', 27, 5, 2010, 'Cash', 18.5, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('14451452720101', 'Cab to Cornell', 27, 5, 2010, 'Cash', 9, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('17345853120101', 'Farmer''s Market', 31, 5, 2010, 'Cash', 150, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('1157196420101', 'cab to work', 4, 6, 2010, 'Cash', 6, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('1158026320101', 'drinks and snacks', 3, 6, 2010, 'Cash', 18, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1452016420101', 'lunch', 4, 6, 2010, 'Cash', 8, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('944096920101', 'Dr. Manning for Dar and I', 9, 6, 2010, 'Cash', 160, '', 24, 53, 1);
INSERT INTO `spences` VALUES ('945026920101', 'Dinner w Dar', 9, 6, 2010, 'Cash', 30, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('18062353120101', 'soda', 31, 5, 2010, 'Cash', 2.5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('18072552920101', 'Melody Manner', 29, 5, 2010, 'Credit', 299.7, '2 nights here - ', 10, 20, 1);
INSERT INTO `spences` VALUES ('18170653120101', 'travel food', 31, 5, 2010, 'Credit', 15, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('18173252620101', 'Centolire', 26, 5, 2010, 'Credit', 30, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1818345120101', 'taxi', 1, 5, 2010, 'Credit', 6.75, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('1819206820101', 'lunch', 8, 6, 2010, 'Credit', 7, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1819556620101', 'Rue 57', 6, 6, 2010, 'Credit', 16.46, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('18214252220101', 'Money to Mail gift', 22, 5, 2010, 'Credit', 14.85, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('18223652220101', 'library fees', 22, 5, 2010, 'Cash', 20.2, '', 23, 69, 1);
INSERT INTO `spences` VALUES ('11095161120101', 'Race for the cure for Stephanie M', 11, 6, 2010, 'Credit', 50, '', 11, 22, 1);
INSERT INTO `spences` VALUES ('11183761020101', 'Wharf for lunch', 10, 6, 2010, 'Cash', 13, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1120566120101', 'Duane Reade', 1, 6, 2010, 'Cash', 19.46, '', 5, 67, 1);
INSERT INTO `spences` VALUES ('11223851620101', 'Bar at hotel after Melissa''s wedding', 16, 5, 2010, 'Credit', 19.25, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('1123246920101', 'Tony''s sushi  - for lunch', 9, 6, 2010, 'Credit', 8.11, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15442253120101', 'Groceries', 31, 5, 2010, 'Cash', 7, '', 5, 65, 1);
INSERT INTO `spences` VALUES ('15451353120101', 'Detergent', 31, 5, 2010, 'Cash', 5, '', 5, 65, 1);
INSERT INTO `spences` VALUES ('16291451420101', 'Rental Car for Melissa''s wedding weekend', 14, 5, 2010, 'Cash', 119.22, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('15480061520101', 'fruit', 15, 6, 2010, 'Cash', 1, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('18134761720101', 'cards', 17, 6, 2010, 'Credit', 15.53, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('18142561620101', 'Bus to Nina''s place - NJ transit', 16, 6, 2010, 'Cash', 12.8, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('18144661720101', 'Fruit', 17, 6, 2010, 'Cash', 6, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('18151661620101', 'Junior''s cheesecake for party', 16, 6, 2010, 'Cash', 19.95, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('18155461520101', 'Bar Stuzzichini', 15, 6, 2010, 'Credit', 26.15, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1816306920101', 'Cambridge Dry Cleaners', 9, 6, 2010, 'Credit', 104, '', 5, 70, 1);
INSERT INTO `spences` VALUES ('18171561620101', 'Gelato', 16, 6, 2010, 'Credit', 8, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('18180561620101', 'Tonic East', 16, 6, 2010, 'Credit', 40, 'World cup', 5, 49, 1);
INSERT INTO `spences` VALUES ('18182961320101', 'Chipotle', 13, 6, 2010, 'Credit', 8.5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('18193761420101', 'Radish - sandwich', 14, 6, 2010, 'Credit', 12.52, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('10270661720101', 'Dinner at Giorgio''s', 17, 6, 2010, 'Credit', 84, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('15393162020101', 'cab ride', 20, 6, 2010, 'Cash', 10, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('17073162820101', 'Lunch', 28, 6, 2010, 'Cash', 10, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('9034762920101', 'Gift cert for haircut and massage', 29, 6, 2010, 'Cash', 16, '', 5, 67, 1);
INSERT INTO `spences` VALUES ('15492662920101', 'lunch', 29, 6, 2010, 'Credit', 6, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15495063020101', 'lunch', 30, 6, 2010, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15552762820101', 'Gymnastics lessons - 10', 28, 6, 2010, 'Cash', 600, 'ten lessons', 30, 71, 1);
INSERT INTO `spences` VALUES ('15560961520101', 'snack', 15, 6, 2010, 'Cash', 6, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15581362820101', 'Dinner from Radish', 28, 6, 2010, 'Cash', 22, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1559336620101', 'Aerosoles  -', 6, 6, 2010, 'Credit', 31.98, '2 prs shoes', 5, 52, 1);
INSERT INTO `spences` VALUES ('16005961020101', 'Duane Reade', 10, 6, 2010, 'Credit', 50.36, '', 5, 67, 1);
INSERT INTO `spences` VALUES ('15071263020101', 'Cab ride', 30, 6, 2010, 'Cash', 8, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('1041447120101', 'Drinks', 1, 7, 2010, 'Cash', 15, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('16552663020101', 'Tick tock diner', 30, 6, 2010, 'Credit', 15.19, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('16561662320101', 'Fig and Olive', 23, 6, 2010, 'Cash', 35.67, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1706216320101', 'Benash Deli (dinner)', 3, 6, 2010, 'Cash', 15.16, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17100162720101', 'cafe', 27, 6, 2010, 'Cash', 2.19, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17111562620101', 'Dar''s birthday', 26, 6, 2010, 'Credit', 138.68, 'Radegast beer hall', 5, 49, 1);
INSERT INTO `spences` VALUES ('1711517720101', 'Lunch', 7, 7, 2010, 'Credit', 4, 'Love my soup', 5, 64, 1);
INSERT INTO `spences` VALUES ('17122062620101', 'Organic planet', 26, 6, 2010, 'Credit', 17.34, '', 5, 65, 1);
INSERT INTO `spences` VALUES ('17205762520101', 'Chocolate for Dar''s bday', 25, 6, 2010, 'Credit', 12.41, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('17275762420101', 'Thai restaurant', 24, 6, 2010, 'Cash', 22.95, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1736167220101', 'Food', 2, 7, 2010, 'Credit', 8.05, 'Food for homeless man', 11, 22, 1);
INSERT INTO `spences` VALUES ('1738307220101', 'Stamps', 2, 7, 2010, 'Cash', 11.2, '', 31, 0, 1);
INSERT INTO `spences` VALUES ('1739087720101', 'Ice cream', 7, 7, 2010, 'Credit', 5, 'Baskin robbins', 5, 64, 1);
INSERT INTO `spences` VALUES ('1739367620101', 'Smoothie', 6, 7, 2010, 'Cash', 4.08, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17401562220101', 'Cleaners', 22, 6, 2010, 'Credit', 45, '', 5, 70, 1);
INSERT INTO `spences` VALUES ('17404562020101', 'Roll n Roaster', 20, 6, 2010, 'Cash', 5, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('17442161520101', 'NJ transit', 15, 6, 2010, 'Cash', 13, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('17495761520101', 'starbucks', 15, 6, 2010, 'Cash', 10.12, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17512362220101', 'Sunscreen', 22, 6, 2010, 'Cash', 8, '', 5, 67, 1);
INSERT INTO `spences` VALUES ('17555862120101', 'Duane Reade', 21, 6, 2010, 'Credit', 39.24, '', 5, 67, 1);
INSERT INTO `spences` VALUES ('17584661120101', 'Stamps', 11, 6, 2010, 'Credit', 28398, '', 31, 0, 1);
INSERT INTO `spences` VALUES ('1621097820101', 'Lunch', 8, 7, 2010, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('16120771320101', 'Lunch w penny and robby', 13, 7, 2010, 'Cash', 12, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('16152171420101', 'Lunch', 14, 7, 2010, 'Cash', 5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17400171520101', 'Lunch at Dukes - Penny and Sarah', 15, 7, 2010, 'Credit', 20, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17412171520101', 'Movie ticket deal', 15, 7, 2010, 'Cash', 10, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('18313871020101', 'Burger King-- travel food', 10, 7, 2010, 'Cash', 6, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('18324771420101', 'La Pizza fresca', 14, 7, 2010, 'Credit', 37.15, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('9400171620101', 'bagel', 16, 7, 2010, 'Cash', 1, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17534271920101', 'cab to work', 19, 7, 2010, 'Credit', 10, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('17541371920101', 'lunch', 19, 7, 2010, 'Cash', 10.65, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17543771920101', 'Duane Reade', 19, 7, 2010, 'Credit', 8.74, '', 5, 59, 1);
INSERT INTO `spences` VALUES ('19035263020101', 'Kate''s paperie', 30, 6, 2010, 'Cash', 20.8, 'for Marc Cohn letter', 31, 0, 1);
INSERT INTO `spences` VALUES ('19050571320101', 'macy''s cellar grill', 13, 7, 2010, 'Credit', 20.8, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('19054271620101', 'Wilner', 16, 7, 2010, 'Credit', 80, '', 24, 56, 1);
INSERT INTO `spences` VALUES ('1906127620101', 'qdoba lunch', 6, 7, 2010, 'Credit', 12, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('945357420101', 'Farmer''s market', 4, 7, 2010, 'Cash', 120, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('952338220101', 'lunch', 2, 8, 2010, 'Cash', 3.5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1756548620101', 'cab to work', 6, 8, 2010, 'Cash', 7, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('1057028920101', 'Chai with Libby', 9, 8, 2010, 'Cash', 18, 'Thai rest in WB', 5, 9, 1);
INSERT INTO `spences` VALUES ('1057598920101', 'Lunch', 9, 8, 2010, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('16583481220101', 'MD check up', 12, 8, 2010, 'Credit', 30, '', 24, 56, 1);
INSERT INTO `spences` VALUES ('17345681320101', 'Lunch', 13, 8, 2010, 'Cash', 8, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('1739258520101', 'Penang', 5, 8, 2010, 'Credit', 35, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('17401262220101', 'nine west - shoes', 22, 6, 2010, 'Credit', 25, '', 5, 52, 1);
INSERT INTO `spences` VALUES ('17461872120101', 'Bocca restaurant', 21, 7, 2010, 'Credit', 68.5, 'w dar', 5, 9, 1);
INSERT INTO `spences` VALUES ('17465372320101', 'Movies w dad', 23, 7, 2010, 'Cash', 10, '', 5, 49, 1);
INSERT INTO `spences` VALUES ('1747278320101', 'Lunch w penny and robby', 3, 8, 2010, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17480072320101', 'Lunch', 23, 7, 2010, 'Credit', 11.75, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('1748448320101', 'tea', 3, 8, 2010, 'Credit', 4.3, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('17491773020101', 'Cleaning and hemming', 30, 7, 2010, 'Cash', 147, '', 5, 70, 1);
INSERT INTO `spences` VALUES ('16242581620101', 'Lunch', 16, 8, 2010, 'Cash', 7, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('9111881720101', 'Cab to work', 17, 8, 2010, 'Cash', 9, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('10215781820101', 'cab to work', 18, 8, 2010, 'Cash', 10, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('10221881720101', 'cab to SH', 17, 8, 2010, 'Cash', 20, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('10263181720101', 'Duane Reade', 17, 8, 2010, 'Credit', 23.46, '', 5, 67, 1);
INSERT INTO `spences` VALUES ('15350181820101', 'lunch', 18, 8, 2010, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15383081520101', 'brunch at elmo', 15, 8, 2010, 'Credit', 15.31, '', 5, 9, 1);
INSERT INTO `spences` VALUES ('15385481620101', 'radish', 16, 8, 2010, 'Credit', 21.23, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('16294481920101', 'lunch', 19, 8, 2010, 'Cash', 13, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15205982020101', 'Lunch', 20, 8, 2010, 'Cash', 7, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('15215881820101', 'Crumbs cupcakes for Sam', 18, 8, 2010, 'Cash', 7.5, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('15223881720101', 'grab bag gift for xmas', 17, 8, 2010, 'Credit', 43.55, '', 11, 21, 1);
INSERT INTO `spences` VALUES ('15240073020101', 'Cab to James'' wedding', 30, 7, 2010, 'Credit', 42.5, '', 10, 20, 1);
INSERT INTO `spences` VALUES ('10532982320101', 'Breakfast', 23, 8, 2010, 'Cash', 4, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('9342382620101', 'Dinner', 26, 8, 2010, 'Cash', 10, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('9343882620101', 'Ice cream', 26, 8, 2010, 'Cash', 5, '', 5, 64, 1);
INSERT INTO `spences` VALUES ('9380482720101', 'cab to work', 27, 8, 2010, 'Credit', 9, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('13131783020101', 'cab to work', 30, 8, 2010, 'Cash', 10, '', 6, 50, 1);
INSERT INTO `spences` VALUES ('0291722720111', 'test', 27, 2, 2011, 'Cash', 5, '', 4, 45, 1);
INSERT INTO `spences` VALUES ('21140991220111', 'shop', 12, 9, 2011, 'Cash', 40, '', 4, 8, 1);
INSERT INTO `spences` VALUES ('21143791220111', 'shop', 12, 9, 2011, 'Cash', 40, '', 4, 45, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `subcategories`
-- 

CREATE TABLE `subcategories` (
  `id` bigint(20) NOT NULL auto_increment,
  `c_id` bigint(20) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `description` mediumtext,
  `budget` double default NULL,
  `user_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds all the subcategories of the categories for finances' AUTO_INCREMENT=72 ;

-- 
-- Dumping data for table `subcategories`
-- 

INSERT INTO `subcategories` VALUES (1, 1, 'Rent', NULL, 750, 2);
INSERT INTO `subcategories` VALUES (2, 1, 'Cable', NULL, 25, 2);
INSERT INTO `subcategories` VALUES (3, 2, 'Metrocard', NULL, 81, 2);
INSERT INTO `subcategories` VALUES (4, 3, 'Breakfast', NULL, 62, 2);
INSERT INTO `subcategories` VALUES (5, 3, 'Lunch', NULL, 248, 2);
INSERT INTO `subcategories` VALUES (6, 1, 'Gas', NULL, 15, 2);
INSERT INTO `subcategories` VALUES (7, 1, 'Electricity', NULL, 15, 2);
INSERT INTO `subcategories` VALUES (8, 4, 'Groceries', NULL, 400, 1);
INSERT INTO `subcategories` VALUES (9, 5, 'Meals out', NULL, 150, 1);
INSERT INTO `subcategories` VALUES (10, 1, 'Groceries', NULL, 100, 2);
INSERT INTO `subcategories` VALUES (11, 1, 'Cell Phone', NULL, 40, 2);
INSERT INTO `subcategories` VALUES (12, 6, 'Mass Transit', NULL, 80, 1);
INSERT INTO `subcategories` VALUES (13, 3, 'Snacks', NULL, 15, 2);
INSERT INTO `subcategories` VALUES (14, 7, 'Tape', NULL, 10, 2);
INSERT INTO `subcategories` VALUES (15, 7, 'Indoor Shoes', NULL, 100, 2);
INSERT INTO `subcategories` VALUES (16, 7, 'Cleats', NULL, 100, 2);
INSERT INTO `subcategories` VALUES (17, 7, 'Turfs', NULL, 100, 2);
INSERT INTO `subcategories` VALUES (18, 8, 'Tacos', NULL, 30, 7);
INSERT INTO `subcategories` VALUES (19, 9, 'Take Out', NULL, 50, 2);
INSERT INTO `subcategories` VALUES (20, 10, 'Travel', NULL, 400, 1);
INSERT INTO `subcategories` VALUES (21, 11, 'Gifts', NULL, 100, 1);
INSERT INTO `subcategories` VALUES (22, 11, 'Donations', NULL, 50, 1);
INSERT INTO `subcategories` VALUES (23, 1, 'Laundry', NULL, 20, 2);
INSERT INTO `subcategories` VALUES (24, 1, 'Other', NULL, 50, 2);
INSERT INTO `subcategories` VALUES (25, 12, 'Holidays', NULL, 600, 2);
INSERT INTO `subcategories` VALUES (26, 12, 'Myself', NULL, 0, 2);
INSERT INTO `subcategories` VALUES (27, 3, 'Dinner', NULL, 50, 2);
INSERT INTO `subcategories` VALUES (28, 7, 'Entrance', NULL, 10, 2);
INSERT INTO `subcategories` VALUES (29, 9, 'Eat Out', NULL, 40, 2);
INSERT INTO `subcategories` VALUES (30, 9, 'Bar', NULL, 50, 2);
INSERT INTO `subcategories` VALUES (31, 1, 'Toiletries', NULL, 20, 2);
INSERT INTO `subcategories` VALUES (32, 13, 'Dentist', NULL, 50, 2);
INSERT INTO `subcategories` VALUES (33, 13, 'General Doctor', NULL, 50, 2);
INSERT INTO `subcategories` VALUES (34, 14, 'Susan Esterhay', NULL, 0, 2);
INSERT INTO `subcategories` VALUES (35, 12, 'Birthdays', NULL, 100, 2);
INSERT INTO `subcategories` VALUES (36, 13, 'Chiropractor', NULL, 100, 2);
INSERT INTO `subcategories` VALUES (37, 7, 'Enrollments', NULL, 100, 2);
INSERT INTO `subcategories` VALUES (38, 7, 'Rentals', NULL, 30, 2);
INSERT INTO `subcategories` VALUES (39, 20, 'Rent', NULL, 1500, 9);
INSERT INTO `subcategories` VALUES (40, 20, 'Groceries', NULL, 100, 9);
INSERT INTO `subcategories` VALUES (41, 20, 'Dish Network', NULL, 50, 9);
INSERT INTO `subcategories` VALUES (42, 20, 'Gas', NULL, 50, 9);
INSERT INTO `subcategories` VALUES (43, 20, 'Electricity', NULL, 30, 9);
INSERT INTO `subcategories` VALUES (44, 21, 'Market-Food', NULL, 150, 4);
INSERT INTO `subcategories` VALUES (45, 4, 'Rent', NULL, 1600, 1);
INSERT INTO `subcategories` VALUES (46, 4, 'Phone', NULL, 100, 1);
INSERT INTO `subcategories` VALUES (47, 4, 'Electric', NULL, 50, 1);
INSERT INTO `subcategories` VALUES (48, 4, 'Cable', NULL, 40, 1);
INSERT INTO `subcategories` VALUES (49, 5, 'Entertainment', NULL, 100, 1);
INSERT INTO `subcategories` VALUES (50, 6, 'Gas, rental car, travel', NULL, 50, 1);
INSERT INTO `subcategories` VALUES (51, 5, 'Exercize', NULL, 100, 1);
INSERT INTO `subcategories` VALUES (52, 5, 'Clothing', NULL, 125, 1);
INSERT INTO `subcategories` VALUES (53, 24, 'Chiropractor', NULL, 100, 1);
INSERT INTO `subcategories` VALUES (54, 24, 'SH', NULL, 400, 1);
INSERT INTO `subcategories` VALUES (55, 24, 'Contacts', NULL, 30, 1);
INSERT INTO `subcategories` VALUES (56, 24, 'Other', NULL, 30, 1);
INSERT INTO `subcategories` VALUES (57, 4, 'Laundry', NULL, 25, 1);
INSERT INTO `subcategories` VALUES (58, 5, 'Newspaper', NULL, 20, 1);
INSERT INTO `subcategories` VALUES (59, 5, 'Misc', NULL, 50, 1);
INSERT INTO `subcategories` VALUES (60, 4, 'Misc', NULL, 0, 1);
INSERT INTO `subcategories` VALUES (61, 7, 'Referee', NULL, 5, 2);
INSERT INTO `subcategories` VALUES (62, 14, 'Other Lawyers', NULL, 200, 2);
INSERT INTO `subcategories` VALUES (63, 5, 'Apartment', NULL, 1400, 1);
INSERT INTO `subcategories` VALUES (64, 5, 'Meals In or Snacks', NULL, 50, 1);
INSERT INTO `subcategories` VALUES (65, 5, 'Groceries', NULL, 50, 1);
INSERT INTO `subcategories` VALUES (66, 4, 'Internet', NULL, 30, 1);
INSERT INTO `subcategories` VALUES (67, 5, 'Hygiene', NULL, 50, 1);
INSERT INTO `subcategories` VALUES (68, 23, 'Loan', NULL, 125, 1);
INSERT INTO `subcategories` VALUES (69, 23, 'Fees', NULL, 0, 1);
INSERT INTO `subcategories` VALUES (70, 5, 'Cleaning and Repair', NULL, 40, 1);
INSERT INTO `subcategories` VALUES (71, 30, 'Gymnastics', NULL, 300, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `teams`
-- 

CREATE TABLE `teams` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '',
  `location` varchar(60) NOT NULL default '',
  `place` varchar(100) NOT NULL default '',
  `day` varchar(9) NOT NULL default '',
  `user_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='holds the names of the teams' AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `teams`
-- 

INSERT INTO `teams` VALUES (1, 'Super Soccer Stars', 'Chelsea', 'Chelsea Piers', 'Thursday', 2);
INSERT INTO `teams` VALUES (2, 'Super Estrellas', 'Church & Bedford', 'Kensignton', 'Saturday', 2);
INSERT INTO `teams` VALUES (3, 'Long Island Team', 'Long Island', 'Long Islang', 'Monday', 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `tickle`
-- 

CREATE TABLE `tickle` (
  `tickle_id` bigint(20) NOT NULL auto_increment,
  `id` bigint(20) NOT NULL default '0',
  `type` char(1) NOT NULL default '',
  `month` tinyint(4) NOT NULL default '0',
  `day` tinyint(4) NOT NULL default '0',
  `year` smallint(6) NOT NULL default '0',
  `user` bigint(20) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `amount` tinyint(4) NOT NULL default '0',
  `sequence` char(1) NOT NULL default '',
  `ba` char(1) NOT NULL default '',
  UNIQUE KEY `tickle_id` (`tickle_id`)
) TYPE=MyISAM COMMENT='holds the tickles' AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `tickle`
-- 

INSERT INTO `tickle` VALUES (1, 9, 't', 0, 14, 0, 2, 'Just Testing it', 14, 'D', '+');
INSERT INTO `tickle` VALUES (2, 9, 't', 3, 15, 2007, 2, 'It is just a test', 14, 'D', '+');
INSERT INTO `tickle` VALUES (3, 38, 't', 3, 18, 2007, 2, 'testing', 16, 'D', '+');
INSERT INTO `tickle` VALUES (4, 422, 'u', 11, 24, -1, 1, 'Ensure that presentation is finished', 7, 'D', '-');
INSERT INTO `tickle` VALUES (5, 105, 'u', 0, 1, 0, 1, '', 1, 'D', '+');
INSERT INTO `tickle` VALUES (6, 979, 'u', 0, 8, 0, 1, '', 8, 'D', '+');

-- --------------------------------------------------------

-- 
-- Table structure for table `todo`
-- 

CREATE TABLE `todo` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `note` tinytext,
  `type` char(1) NOT NULL default '',
  `ocurrence` tinyint(1) NOT NULL default '0',
  `smonth` tinyint(2) default NULL,
  `sday` tinyint(2) default NULL,
  `syear` smallint(4) default NULL,
  `month` tinyint(2) default NULL,
  `day` tinyint(2) default NULL,
  `year` smallint(4) default NULL,
  `hour` tinyint(2) default NULL,
  `minute` tinyint(2) default NULL,
  `ampm` char(2) default NULL,
  `emonth` tinyint(2) default NULL,
  `eday` tinyint(2) default NULL,
  `eyear` smallint(4) default NULL,
  `user_id` tinyint(1) NOT NULL default '0',
  `category` varchar(20) default NULL,
  `times` tinyint(6) NOT NULL default '0',
  `cmonth` smallint(6) default NULL,
  PRIMARY KEY  (`title`),
  UNIQUE KEY `id` (`id`)
) TYPE=MyISAM AUTO_INCREMENT=154 ;

-- 
-- Dumping data for table `todo`
-- 

INSERT INTO `todo` VALUES (2, 'Metrocard', 'I have to buy a monthly metrocard.', 'M', 1, 0, 0, 0, 4, 3, 2008, 0, 0, '', NULL, NULL, NULL, 2, 'Play Soccer', -11, NULL);
INSERT INTO `todo` VALUES (5, 'Mop floors', '', 'M', 1, 0, 0, 0, 1, 15, 2007, 0, 0, '', NULL, NULL, NULL, 1, 'Cleaning', 0, NULL);
INSERT INTO `todo` VALUES (7, 'Clean Bathroom', '', 'M', 2, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, NULL, NULL, 1, 'Cleaning', 0, NULL);
INSERT INTO `todo` VALUES (8, 'Chelsea SSS Women Team', 'I am planning to go watch the Super Soccer Stars Ladies play.', 'S', 1, 0, 0, 0, 3, 18, 2009, 6, 0, 'PM', NULL, NULL, NULL, 2, 'Play Soccer', -34, NULL);
INSERT INTO `todo` VALUES (9, 'Invoice to SSS', 'I have to email my invoice to sss at the end of the month with all the classes I taught during that month. Sent it to invoice@supersoccerstars.com', 'M', 2, 0, 0, 0, 1, 1, 2007, 0, 0, '', NULL, NULL, NULL, 2, 'Coach', -8, NULL);
INSERT INTO `todo` VALUES (10, 'Peter Luger Reservations for Michael''s Birthday', '718-387-7400. I already have reservation for Michael. It is under Darwin.\r\n', 'S', 1, 0, 0, 0, 6, 15, 2008, 1, 45, 'PM', NULL, NULL, NULL, 2, 'Play Soccer', -31, NULL);
INSERT INTO `todo` VALUES (11, 'Head Coaches Training', 'It will go all the way to 8:30 PM.', 'S', 1, 0, 0, 0, 3, 16, 2009, 6, 30, 'PM', NULL, NULL, NULL, 2, 'Play Soccer', -26, NULL);
INSERT INTO `todo` VALUES (12, 'Chiropractor', 'Dr. Manning. 718.627.1127', 'S', 1, 0, 0, 0, 4, 21, 2009, 6, 30, 'PM', NULL, NULL, NULL, 2, 'Play Soccer', -22, NULL);
INSERT INTO `todo` VALUES (13, 'Dentist', 'I already paid I have to reschedule for two weeks after December 1st. I had an appointment on April 29, but I did not attend.', 'S', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, NULL, NULL, 2, 'Play Soccer', -26, NULL);
INSERT INTO `todo` VALUES (14, 'All Coaches Training', '', 'S', 1, 0, 0, 0, 3, 23, 2009, 6, 30, 'PM', NULL, NULL, NULL, 2, 'Play Soccer', -12, NULL);
INSERT INTO `todo` VALUES (15, 'Landlord comes to Apartment: leave key under mat', 'Leave kids under mat in the front door.', 'S', 1, 0, 0, 0, 9, 8, 2008, 0, 0, '', NULL, NULL, NULL, 2, 'Play Soccer', -19, NULL);
INSERT INTO `todo` VALUES (16, 'Dr. Moralez', 'I have to make blood test results.', 'S', 1, 0, 0, 0, 0, 0, 0, 1, 0, 'PM', NULL, NULL, NULL, 2, 'Play Soccer', -14, NULL);
INSERT INTO `todo` VALUES (17, 'Premier Training', 'It will be held in the office and we will be talking about the philosophy of premier program.', 'S', 1, 0, 0, 0, 3, 9, 2009, 6, 30, 'PM', NULL, NULL, NULL, 2, 'Play Soccer', -17, NULL);
INSERT INTO `todo` VALUES (19, 'BrooklynPeace.org', 'Look for environ groups on this', 'S', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, NULL, NULL, 1, 'Misc', 0, NULL);
INSERT INTO `todo` VALUES (21, 'Honduras vs Canada', '', 'S', 1, 11, 21, 2006, 10, 11, 2008, 0, 0, '', 11, 21, 2006, 2, 'Play Soccer', -27, NULL);
INSERT INTO `todo` VALUES (23, 'Coaching Training', 'It will be at the office.', 'S', 1, 11, 21, 2006, 12, 16, 2008, 6, 30, 'PM', 11, 21, 2006, 2, 'Play Soccer', -14, NULL);
INSERT INTO `todo` VALUES (140, 'LU Health pervention areas -', 'the prevention institute\r\npraxis projext\r\nNY acadamy of science - center for advancement of collaborative strategies and health ', 'S', 1, 11, 24, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Misc', 1, NULL);
INSERT INTO `todo` VALUES (28, 'Cook a new recipe', '', 'M', 2, 11, 27, 2006, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Misc', 0, NULL);
INSERT INTO `todo` VALUES (29, 'Haircut', 'make this todo only appear at certain intervals throughout the year', 'Y', 3, 12, 5, 2006, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Upkeep', 0, NULL);
INSERT INTO `todo` VALUES (25, 'Review living space', 'Fix broken items, hang pictures, hang other items,etc. ', 'M', 1, 11, 27, 2006, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Apartment funtioning', 0, NULL);
INSERT INTO `todo` VALUES (26, 'Clothing upkeep', 'Clean clothes, hand wash, sew buttons, ', 'M', 1, 11, 27, 2006, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Upkeep', 0, NULL);
INSERT INTO `todo` VALUES (27, 'Choose ride with 5 borough bike club', '', 'M', 1, 11, 27, 2006, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Sports', 0, NULL);
INSERT INTO `todo` VALUES (30, 'Go through clothes and donate unused', 'keep these spaced apart by 3-4 months', 'Y', 2, 11, 27, 2006, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Upkeep', 0, NULL);
INSERT INTO `todo` VALUES (31, 'GO through pictures - Frame, print, send', '', 'Y', 4, 11, 27, 2006, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Upkeep', 0, NULL);
INSERT INTO `todo` VALUES (33, 'Clothes shopping', 'List of needed items and purchase', 'M', 1, 11, 27, 2006, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Upkeep', 0, NULL);
INSERT INTO `todo` VALUES (37, 'Write a letter', '', 'M', 2, 12, 13, 2006, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Pol Involvement', 0, NULL);
INSERT INTO `todo` VALUES (38, 'City Dance II', '', 'S', 1, 12, 1, 2006, 12, 9, 2008, 0, 0, '', 0, 0, 0, 2, 'Play Soccer', -13, NULL);
INSERT INTO `todo` VALUES (39, 'Look up woldwide institute website, look at report', '', 'S', 1, 11, 28, 2006, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Pol Involvement', 0, NULL);
INSERT INTO `todo` VALUES (110, 'Register for Spring Swimming', 'Swimming lessons at the Y in Greenpoint. May 4. call 718.389.3700', 'S', 1, 0, 0, 0, 3, 2, 2009, 0, 0, '', 0, 0, 0, 2, 'Health', -7, NULL);
INSERT INTO `todo` VALUES (41, 'Senior Coaches Council Meeting', 'Meetings for the senior coaches to talk about how to help super soccer stars to be better and recommend other things that will help other coaches as well.', 'M', 1, 12, 1, 2006, 3, 3, 2009, 6, 30, 'PM', 12, 12, 2006, 2, 'Play Soccer', -15, NULL);
INSERT INTO `todo` VALUES (45, 'Fup on order 2604 in ecoist website', '', '', 0, 12, 12, 2006, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 0, NULL);
INSERT INTO `todo` VALUES (48, 'NYT Broken Beck(?)', '', 'S', 1, 12, 23, 2006, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (49, 'Hellobrooklyn.com', '', 'S', 1, 12, 23, 2006, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (50, 'Look up Brooklyn speaks', '', 'S', 1, 12, 23, 2006, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (51, 'Biocycle Magazine', '', 'S', 1, 1, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (52, 'transitcenter.com', 'Promote public transportation - anything I want to get involved in? ', 'S', 1, 1, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Pol Involvement', 0, NULL);
INSERT INTO `todo` VALUES (53, 'look up Big apple guid to eco friendly living', 'www.greenappleguide.com\r\n\r\n', 'S', 1, 1, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (54, 'look up "good magazine"', '', 'S', 1, 1, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (55, 'Look up organizc avenue', '', '', 0, 1, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (56, 'look up organic avenue', '', 'S', 1, 1, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (57, 'Look up " Rock the earth"', '', 'S', 1, 1, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (58, 'readymademag.com', 'Make your own items from recycled items', '', 0, 1, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (60, 'Salami from Esposito pork store', '357 Court St', 'S', 1, 1, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 0, NULL);
INSERT INTO `todo` VALUES (152, 'LU honor societies and clubs in NY', 'Perhaps become a member. For connections, etc. \r\n', 'S', 1, 2, 7, 2013, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 1, NULL);
INSERT INTO `todo` VALUES (62, 'AWJS volunteer - 3-12 mos abroad', 'FOr Jackie or me? ', 'S', 1, 1, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (63, 'Look up Hindenburg', '', 'S', 1, 1, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (65, 'Gynocologist questions', 'Ask about birth control\r\n - Diaphragm\r\nMirena - plastic IUC\r\n - Paraguard Copper IUD contraception - NYTimes science times article from...   studies have shown it to be more than 99 percent effectivfe preventing pregnancy\r\n\r\nProgesta sert - IUD w progeste', 'S', 1, 1, 7, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Cleaning', -1, NULL);
INSERT INTO `todo` VALUES (66, 'Check NYC Ballet site', '', 'W', 1, 1, 14, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Events', 0, NULL);
INSERT INTO `todo` VALUES (67, 'Check Sundays at Kingsborough', '', 'W', 1, 1, 14, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Events', 0, NULL);
INSERT INTO `todo` VALUES (69, 'Check American Ballet Theater', '', 'W', 1, 1, 14, 2007, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Cleaning', 0, NULL);
INSERT INTO `todo` VALUES (70, 'Premier Training II', '', 'S', 1, 2, 3, 2007, 3, 26, 2009, 6, 30, 'PM', 2, 3, 2007, 2, 'Play Soccer', -11, NULL);
INSERT INTO `todo` VALUES (71, 'Call Italian Embassy for citizenship', 'Try to get Italian Embassy.', 'S', 1, 1, 23, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Misc', 0, NULL);
INSERT INTO `todo` VALUES (74, 'Berkley podcast courses', 'Berkley has 59 complete courses by podcast', 'S', 1, 2, 11, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (75, 'Podcasts - Stanford continuing studies weblog', '', 'S', 1, 2, 11, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (76, 'Look up "history of buttons'' and AOL not on TV', 'Heard on show to be v ery interesting', 'S', 1, 2, 11, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 0, NULL);
INSERT INTO `todo` VALUES (77, 'LU  - Managingconception.com', '', 'S', 1, 2, 19, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (78, 'LU - THe frap - for posting stories', 'From Marie - possibly get paid? ', 'S', 1, 2, 19, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (79, 'LU- Learning leaders', '', 'S', 1, 2, 19, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (80, 'LU - Scientists and eingineers for America', 'Global warming group', 'S', 1, 2, 19, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (81, 'Get a distiller', '', 'S', 1, 2, 22, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Upkeep', 0, NULL);
INSERT INTO `todo` VALUES (94, 'Join eatlocalchallenge.com', '', 'S', 1, 6, 10, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Food', 1, NULL);
INSERT INTO `todo` VALUES (95, 'event for cookforthecure.com', '', 'S', 1, 6, 10, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 1, NULL);
INSERT INTO `todo` VALUES (84, 'LU oneworld.net', 'Coalition of over 1600 nonprofits w headlines and breaking news', 'S', 1, 3, 15, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (85, 'LU Globalclimatecampaign.org', 'seems to be related to greenpoint  power plant. See if it is a group to join. ', 'S', 1, 3, 15, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (86, 'PrePare for policy group', '', 'S', 1, 3, 23, 2007, 3, 28, 2007, 0, 0, '', 3, 23, 2007, 1, 'Cleaning', 0, NULL);
INSERT INTO `todo` VALUES (87, 'SSS Team @ Chelsea Piers', 'I am going to play soccer with some of the sss coaches.', 'S', 1, 3, 23, 2007, 11, 15, 2007, 8, 0, 'PM', 0, 0, 0, 2, 'Play Soccer', -37, NULL);
INSERT INTO `todo` VALUES (88, 'LU climate 411 blog', '', 'S', 1, 3, 25, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (89, 'LU organizing solutions', 'www.airset.com\r\nwww.backpackit.com\r\n - see what they have offer', 'S', 1, 4, 1, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (90, 'Donate to ride for the climate.com', '', 'S', 1, 5, 7, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 0, NULL);
INSERT INTO `todo` VALUES (91, 'LU Noimpactman.org', '', 'S', 1, 5, 15, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 0, NULL);
INSERT INTO `todo` VALUES (92, 'skyscaper musueum  sustainability', '', 'S', 1, 6, 3, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (93, 'Look for skyscaper museum event - green building', '', 'S', 1, 6, 10, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Misc', 1, NULL);
INSERT INTO `todo` VALUES (97, 'Get an energy audit', 'Look for energy star label   NYSERDA website', 'S', 1, 6, 10, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 1, NULL);
INSERT INTO `todo` VALUES (98, 'haircut -- jaclyn smith on bfravo - haircut', '', 'S', 1, 6, 10, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (99, 'Join Slow food usa', '', 'S', 1, 7, 4, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Misc', 1, NULL);
INSERT INTO `todo` VALUES (100, 'LU AAAS', 'C;imate change group', 'S', 1, 7, 4, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (101, 'LU green building conference in SF - yearly', '', 'S', 1, 7, 4, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (102, 'LU sustainable planet film festival', 'sustainable-planet.net', 'S', 1, 7, 24, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 1, NULL);
INSERT INTO `todo` VALUES (104, 'BIS Training Prep', '', 'S', 1, 8, 2, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 3, 'BIS', 1, NULL);
INSERT INTO `todo` VALUES (105, 'Call Aeroflot ticket office', '', 'S', 1, 8, 6, 2007, 8, 6, 2007, 0, 0, 'AM', 8, 6, 2007, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (106, 'Look up carolina chocolate drops', 'Band from r2r', 'S', 1, 8, 5, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 1, NULL);
INSERT INTO `todo` VALUES (107, 'Dinner Rehearsal', 'I have to go to the dinner rehearsal for Joana''s wedding.', 'S', 1, 9, 29, 2007, 11, 16, 2007, 5, 0, 'PM', 9, 29, 2007, 2, 'Play Soccer', -9, NULL);
INSERT INTO `todo` VALUES (108, 'Adrienne and Rob Wedding', 'The West Loft\r\n336 W 37th st.\r\nNew York, NY ', 'S', 1, 9, 29, 2007, 5, 30, 2009, 4, 0, 'PM', 9, 29, 2007, 2, 'Play Soccer', -17, NULL);
INSERT INTO `todo` VALUES (109, 'Play Soccer', 'sdfdf', 'S', 1, 0, 0, 0, 9, 28, 2007, 1, 38, 'PM', 0, 0, 0, 6, 'Play Soccer', 0, NULL);
INSERT INTO `todo` VALUES (111, 'Painting the new appartment 1', '', 'S', 1, 10, 3, 2007, 11, 25, 2007, 0, 0, '', 10, 7, 2007, 2, 'Play Soccer', -5, NULL);
INSERT INTO `todo` VALUES (112, 'Meet with Susan to apply for FIOA', 'I have apply for the FIOA to get the papers back from INS.', 'S', 1, 10, 12, 2007, 11, 30, 2007, 1, 0, 'PM', 10, 12, 2008, 2, 'Play Soccer', -6, NULL);
INSERT INTO `todo` VALUES (113, 'Honduras vs Guatemala', 'The Semifinals.', 'S', 1, 10, 23, 2007, 3, 20, 2008, 8, 0, 'PM', 10, 23, 2007, 2, 'Play Soccer', -11, NULL);
INSERT INTO `todo` VALUES (114, 'voy  a  ir  al  hospital  com  mima', 'voy a ir al  hospital com  mi mama  que  se va aser una endoscopia', 'S', 1, 10, 24, 2007, 11, 20, 2007, 11, 0, 'AM', 0, 0, 0, 7, '', 1, NULL);
INSERT INTO `todo` VALUES (115, 'emma tiene  una  sita  en  el  hospital', '', 'S', 1, 10, 24, 2007, 12, 10, 2007, 7, 0, 'AM', 0, 0, 0, 7, '', 1, NULL);
INSERT INTO `todo` VALUES (116, 'Lup  - Werecycle.com', '', 'S', 1, 10, 29, 2007, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (117, 'LU transalt.org', 'info on biking, etc. ', 'S', 1, 1, 23, 108, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (118, 'U www.nyc.gov/nycwasteless', 'Use this for either starting a project or doing somethign- like collect electronics forrecycling, etc. ', 'S', 1, 1, 25, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (119, 'LU helpusa.org', 'Helps the homeless. Also look up red cross for donations, etc.', 'S', 1, 2, 29, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (120, 'Decide - should we get apt insurance??', '', 'S', 1, 3, 4, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (121, 'LU Sustainable Health Institute', 'jeff Faucett on your own health and fitness  - ', 'S', 1, 3, 21, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (122, 'LU recycline.com', '', 'S', 1, 3, 23, 108, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (123, 'LU GWAPP', 'Dewey M Thompson\r\n\r\nGreenpoint Waterfront Association for Parks & Planning\r\n\r\nwww.gwapp.org\r\n\r\n917-586-9399', 'S', 1, 3, 30, 108, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (124, 'talk to sabrina', '', 'M', 4, 3, 30, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 4, NULL);
INSERT INTO `todo` VALUES (125, 'LU earthhour.org', 'shutting the lights campaign', 'S', 1, 4, 3, 108, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (126, 'LU new reports for EIA - environmental agency', 'www.eia-globa.org / (illegal logging)', 'M', 1, 4, 3, 108, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (127, 'The Welcome Cheer', 'Welcoming the parents.', 'S', 1, 7, 1, 2008, 7, 1, 2008, 8, 0, 'AM', 0, 0, 0, 11, 'Inter Mini Groups', 0, NULL);
INSERT INTO `todo` VALUES (128, 'Harmony Playground', 'Free play in the harmony playground.', 'S', 1, 4, 13, 108, 7, 1, 2008, 9, 0, 'AM', 0, 0, 0, 11, 'Inter Mini Groups', 0, NULL);
INSERT INTO `todo` VALUES (129, 'Carolina''s Comedy Show', '', 'S', 1, 5, 31, 2008, 6, 18, 2008, 0, 0, '', 5, 31, 2008, 2, 'Play Soccer', -1, NULL);
INSERT INTO `todo` VALUES (130, 'LU Drum Major Institute', 'This was in the Nation -  progressive policy think tank in NYC - perhaps for work, perhaps just to follow?\r\nAndrea Batista Schlesinger  - director wrote in March? 2008 of the nation\r\n', 'S', 1, 4, 24, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Cleaning', 0, NULL);
INSERT INTO `todo` VALUES (131, 'LU - 350.0rg', 'Grassroots climate movement', 'S', 1, 4, 24, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (132, 'LU - Unnaturalcauses.org', '', 'S', 1, 4, 24, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (133, 'LU - Brooklyn-usa.org', 'Brooklyn website - tourism, history, etc. \r\n', 'S', 1, 4, 24, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (134, 'Added Value (red hook farm)', 'Red Hook Farm', 'S', 1, 4, 25, 108, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (135, 'LU info on gardening movement', 'Green gorrilas / bette midler\r\nmark legee ??\r\nInfo from against the grain on the gardening movement', 'S', 1, 5, 20, 108, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (136, 'LU processedworld.com and victory gardens', '', 'S', 1, 5, 20, 108, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (137, 'LU - Organicconsumers.org/madccow.html', 'From - Animal, Vegetable, Miracle\r\nInformation about Mad cow', 'S', 1, 5, 25, 108, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Misc', 0, NULL);
INSERT INTO `todo` VALUES (138, 'LU www.cityfarmer.org', 'or Urbangardeninghelp.com\r\nInformation on gardening in the city, from Animal, vegetable,. Miracle', 'S', 1, 5, 25, 108, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (139, 'LU - Rocky Mountain Institute Podcasts', '', 'S', 1, 10, 17, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (141, 'LU Midnight run', 'Organization that brings clothing to homeless -and food, etc. ', 'S', 1, 11, 24, 2008, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, '', 1, NULL);
INSERT INTO `todo` VALUES (142, 'Check out onegreenworld.com for plant purchases', 'Reccoed in the L mag for edible plant purchase', 'S', 1, 3, 7, 2009, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Food', 1, NULL);
INSERT INTO `todo` VALUES (143, 'Jesse and David Wedding', 'Nicole''s friend''s wedding.', 'S', 1, 9, 19, 2009, 9, 19, 2009, 9, 0, 'AM', 9, 19, 2009, 2, 'Wedding', 0, NULL);
INSERT INTO `todo` VALUES (144, 'Roller blading group in central park', 'Thursdays at 7 pm - 6 mile loop....www.skatecity.com --columbus circle entrance', 'S', 1, 8, 12, 2009, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Cleaning', 0, NULL);
INSERT INTO `todo` VALUES (145, 'See a show/ concert', '', 'M', 1, 10, 6, 2009, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Events', 1, NULL);
INSERT INTO `todo` VALUES (146, 'Go to a Museum', '', 'M', 1, 10, 6, 2009, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Events', 1, NULL);
INSERT INTO `todo` VALUES (147, 'LU - Littleton Immigration Integration Initiative', 'Read about in Nation Mag - 7/14 2008. They offer counseling on healthcare and countless other matters, citizenship training and English language training to all comers, regardless of documentation', 'S', 1, 12, 14, 2009, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 1, NULL);
INSERT INTO `todo` VALUES (148, 'LU NYC environmental meetup', '', 'S', 1, 3, 28, 2010, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Pol Involvement', 1, NULL);
INSERT INTO `todo` VALUES (149, 'Dinner with Amanda & Chris', 'Nikki and I are having dinner with Amanda and Chris.', 'S', 1, 12, 7, 2011, 12, 7, 2011, 7, 0, 'PM', 0, 0, 0, 2, 'Friends', 1, NULL);
INSERT INTO `todo` VALUES (151, 'LU Foodsystemsnyc.org', '', 'S', 1, 12, 7, 2012, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Research', 1, NULL);
INSERT INTO `todo` VALUES (153, 'Dance or gymnastics team to join', 'Is there a team that I can join to practice?', 'S', 1, 2, 7, 2013, 0, 0, 0, 0, 0, 'AM', 0, 0, 0, 1, 'Sports', 1, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `todorecords`
-- 

CREATE TABLE `todorecords` (
  `id` int(11) NOT NULL default '0',
  `todo_id` int(11) NOT NULL default '0',
  `month` tinyint(2) NOT NULL default '0',
  `day` tinyint(2) NOT NULL default '0',
  `year` smallint(4) NOT NULL default '0',
  `user_id` varchar(15) NOT NULL default '',
  UNIQUE KEY `id` (`id`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `todorecords`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `user` varchar(10) NOT NULL default '',
  `password` varchar(15) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `status` tinyint(4) NOT NULL default '0',
  `usertype` tinyint(4) NOT NULL default '0',
  UNIQUE KEY `user_id` (`user_id`,`user`)
) TYPE=MyISAM COMMENT='holds all users using the calendar' AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (2, 'darsal09', 'soccer', 'Darwin Salgado', 'inter09@terra.com', 1, 0);
INSERT INTO `users` VALUES (1, 'nicole', 'nicole', 'Nicole Minichiello', 'vincenzamarie@gmail.com', 1, 0);
INSERT INTO `users` VALUES (3, 'jena01', 'jena01', 'Jena Jamal', 'jena.jamal@gmail.com', 1, 0);
INSERT INTO `users` VALUES (4, 'andres', 'futbol', 'Andres Bustillos', 'bustillos_andres@yahoo.com', 1, 0);
INSERT INTO `users` VALUES (5, 'lettie', 'mathew', 'Lettie Salgado', 'velasquez_leticia@yahoo.com', 1, 0);
INSERT INTO `users` VALUES (6, 'angelven', '23494523', 'adriana ponce', 'adriana_ny2001@hotmail.com', 1, 0);
INSERT INTO `users` VALUES (7, 'michael', 'kattia', 'Michael Velasquez', 'velasquez_michael@yahoo.es', 1, 0);
INSERT INTO `users` VALUES (8, 'admin09', 'soccer09', 'Darwin Salgado', 'admin@healthtalks.net', 1, 1);
INSERT INTO `users` VALUES (9, '117calyer', 'soccer09', 'Nicole- Darwin', 'vincenzamarie@gmail.com;inter09@terra.com', 1, 0);
INSERT INTO `users` VALUES (10, 'hubertbuck', 'salty3003', 'hubert buck', 'itsabuck@yahoo.com', 1, 0);
INSERT INTO `users` VALUES (11, 'kaletsa', 'soccer09', 'Kattia Salgado', 'puny09@aol.com', 1, 0);
INSERT INTO `users` VALUES (12, 'Sabrina', 'sabrina', 'Sabrina Lea', 'lea@yahoo.com', 1, 0);
