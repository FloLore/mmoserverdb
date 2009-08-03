/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006 - 2009 The swgANH Team

---------------------------------------------------------------------------------------
*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Use schema swganh
--

USE swganh;

--
-- Definition of table `draft_craft_batches`
--

DROP TABLE IF EXISTS `draft_craft_batches`;
CREATE TABLE `draft_craft_batches` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'is the batch id of the schematic referred to in draft schematics',
  `list_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT ' the list id of the draft_craft_item_attribute_lnk',
  `expGroup` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'the link to the experiment group in draft_experiment_groups',
  PRIMARY KEY (`id`,`list_id`),
  KEY `fk_draft_craft_batches_expGroup` (`expGroup`),
  KEY `Index_3` (`list_id`),
  CONSTRAINT `fk_draft_craft_batches_expGroup` FOREIGN KEY (`expGroup`) REFERENCES `draft_experiment_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `draft_craft_batches`
--

/*!40000 ALTER TABLE `draft_craft_batches` DISABLE KEYS */;
INSERT INTO `draft_craft_batches` (`id`,`list_id`,`expGroup`) VALUES
 (1044,57,1),
 (1180,96,1),
 (1171,364,5),
 (1177,367,5),
 (1177,373,6),
 (1177,371,8),
 (1177,369,9),
 (1177,370,10),
 (1177,372,11),
 (2,286,20),
 (28,250,20),
 (29,251,20),
 (30,252,20),
 (31,253,20),
 (32,297,20),
 (33,304,20),
 (34,328,20),
 (744,361,20),
 (41,214,23),
 (1073,63,23),
 (890,175,30),
 (930,179,30),
 (954,183,30),
 (56,336,31),
 (890,173,31),
 (930,177,31),
 (954,181,31),
 (1171,362,34),
 (1177,365,34),
 (1177,368,37),
 (1171,363,38),
 (1177,366,38),
 (888,239,42),
 (890,1,42),
 (930,176,42),
 (936,212,42),
 (954,180,42),
 (1440,118,42),
 (1441,115,42),
 (1442,110,42),
 (1443,107,42),
 (1445,116,42),
 (1446,119,42),
 (1447,120,42),
 (1448,111,42),
 (1449,103,42),
 (1450,112,42),
 (1451,106,42),
 (1452,108,42),
 (1453,117,42),
 (1454,109,42),
 (2,285,44),
 (32,298,44),
 (33,305,44),
 (34,332,44),
 (964,4,44),
 (965,101,44),
 (966,40,44),
 (967,86,44),
 (968,41,44),
 (969,5,44),
 (970,121,44),
 (971,42,44),
 (972,43,44),
 (973,44,44),
 (974,45,44),
 (975,46,44),
 (976,47,44),
 (977,48,44),
 (978,27,44),
 (979,28,44),
 (980,122,44),
 (981,29,44),
 (982,30,44),
 (983,6,44),
 (984,123,44),
 (985,49,44),
 (986,31,44),
 (987,32,44),
 (988,33,44),
 (989,87,44),
 (990,34,44),
 (991,50,44),
 (992,51,44),
 (993,62,44),
 (994,64,44),
 (995,7,44),
 (996,124,44),
 (997,85,44),
 (998,8,44),
 (999,125,44),
 (1000,65,44),
 (1001,84,44),
 (1002,66,44),
 (1003,67,44),
 (1004,68,44),
 (1006,70,44),
 (1007,71,44),
 (1008,72,44),
 (1009,73,44),
 (1010,74,44),
 (1011,75,44),
 (1014,77,44),
 (1015,79,44),
 (1016,80,44),
 (1017,81,44),
 (1018,9,44),
 (1019,10,44),
 (1020,89,44),
 (1021,35,44),
 (1022,126,44),
 (1023,90,44),
 (1024,91,44),
 (1025,36,44),
 (1026,127,44),
 (1027,92,44),
 (1028,93,44),
 (1029,94,44),
 (1030,37,44),
 (1031,38,44),
 (1032,83,44),
 (1033,95,44),
 (1034,11,44),
 (1035,82,44),
 (1036,39,44),
 (1037,12,44),
 (1057,269,44),
 (1090,291,44),
 (1092,292,44),
 (2,352,49),
 (32,299,49),
 (33,306,49),
 (34,335,49),
 (132,341,58),
 (133,343,59),
 (140,114,59),
 (141,150,59),
 (142,344,59),
 (160,169,59),
 (161,171,59),
 (269,130,59),
 (270,138,59),
 (274,140,59),
 (275,155,59),
 (279,132,59),
 (280,142,59),
 (284,144,59),
 (285,157,59),
 (289,146,59),
 (290,159,59),
 (294,148,59),
 (295,161,59),
 (300,78,59),
 (304,136,59),
 (305,163,59),
 (306,166,59),
 (308,350,59),
 (1114,386,60),
 (1115,232,60),
 (1116,395,60),
 (1117,235,60),
 (1118,389,60),
 (1119,396,60),
 (1120,405,60),
 (1122,399,60),
 (1123,236,60),
 (1124,390,60),
 (1125,402,60),
 (1126,409,60),
 (1127,412,60),
 (1128,393,60),
 (1129,408,60),
 (1558,97,60),
 (1560,241,60),
 (1562,245,60),
 (1563,499,60),
 (1564,248,60),
 (1565,502,60),
 (1566,459,60),
 (1568,462,60),
 (1570,254,60),
 (1571,504,60),
 (1572,256,60),
 (1573,506,60),
 (1574,464,60),
 (1576,300,60),
 (1578,307,60),
 (1579,509,60),
 (1580,311,60),
 (1581,513,60),
 (1582,315,60),
 (1589,2,60),
 (1606,205,60),
 (1606,394,60),
 (1613,261,60),
 (1614,324,60),
 (1615,517,60),
 (1616,467,60),
 (1617,479,60),
 (1618,521,60),
 (1619,471,60),
 (1622,483,60),
 (1624,487,60),
 (1630,265,60),
 (1631,374,60),
 (1632,475,60),
 (1636,208,60),
 (1640,224,60),
 (1641,491,60),
 (1646,495,60),
 (1651,281,60),
 (1652,378,60),
 (1653,293,60),
 (1654,382,60),
 (407,229,61),
 (1455,416,61),
 (1456,415,61),
 (1457,414,61),
 (1458,434,61),
 (1459,433,61),
 (1460,432,61),
 (1461,437,61),
 (1462,436,61),
 (1463,435,61),
 (1464,422,61),
 (1465,421,61),
 (1466,420,61),
 (1467,431,61),
 (1468,430,61),
 (1469,429,61),
 (1476,428,61),
 (1477,427,61),
 (1478,426,61),
 (1479,419,61),
 (1480,418,61),
 (1481,417,61),
 (1482,425,61),
 (1483,424,61),
 (1484,423,61),
 (1505,128,61),
 (1521,446,61),
 (1522,443,61),
 (1523,440,61),
 (1543,413,61),
 (1558,98,61),
 (1560,242,61),
 (1562,246,61),
 (1563,500,61),
 (1564,249,61),
 (1565,503,61),
 (1566,460,61),
 (1568,463,61),
 (1570,255,61),
 (1571,505,61),
 (1572,257,61),
 (1573,507,61),
 (1574,465,61),
 (1576,301,61),
 (1578,308,61),
 (1579,510,61),
 (1580,312,61),
 (1581,514,61),
 (1582,316,61),
 (1589,201,61),
 (1613,262,61),
 (1614,320,61),
 (1615,518,61),
 (1616,468,61),
 (1617,480,61),
 (1618,522,61),
 (1619,472,61),
 (1622,484,61),
 (1624,488,61),
 (1630,266,61),
 (1631,375,61),
 (1632,476,61),
 (1636,209,61),
 (1640,225,61),
 (1641,492,61),
 (1646,496,61),
 (1651,282,61),
 (1652,379,61),
 (1653,294,61),
 (1654,383,61),
 (150,347,63),
 (305,164,63),
 (306,167,63),
 (308,351,63),
 (308,349,64),
 (1114,388,64),
 (1115,234,64),
 (1119,398,64),
 (1120,407,64),
 (1122,401,64),
 (1123,238,64),
 (1124,392,64),
 (1125,404,64),
 (1126,411,64),
 (1486,18,64),
 (1488,19,64),
 (1489,456,64),
 (1490,20,64),
 (1493,21,64),
 (1497,455,64),
 (1521,444,64),
 (1522,441,64),
 (1523,438,64),
 (1524,22,64),
 (1526,453,64),
 (1527,357,64),
 (1528,451,64),
 (1531,449,64),
 (1532,457,64),
 (1534,25,64),
 (1537,447,64),
 (1539,359,64),
 (1558,100,64),
 (1560,244,64),
 (1576,303,64),
 (1578,310,64),
 (1579,512,64),
 (1580,314,64),
 (1581,516,64),
 (1582,318,64),
 (1589,260,64),
 (1606,213,64),
 (1613,264,64),
 (1614,325,64),
 (1615,520,64),
 (1616,470,64),
 (1617,482,64),
 (1618,524,64),
 (1619,474,64),
 (1622,486,64),
 (1624,490,64),
 (1630,268,64),
 (1631,377,64),
 (1632,478,64),
 (1636,211,64),
 (1640,227,64),
 (1641,494,64),
 (1646,498,64),
 (1651,284,64),
 (1652,381,64),
 (1653,296,64),
 (1654,385,64),
 (133,342,65),
 (140,113,65),
 (141,149,65),
 (142,345,65),
 (144,346,65),
 (146,88,65),
 (147,151,65),
 (148,133,65),
 (149,152,65),
 (150,348,65),
 (152,134,65),
 (153,153,65),
 (160,168,65),
 (161,170,65),
 (269,129,65),
 (270,137,65),
 (274,139,65),
 (275,154,65),
 (279,131,65),
 (280,141,65),
 (284,143,65),
 (285,156,65),
 (289,145,65),
 (290,158,65),
 (294,147,65),
 (295,160,65),
 (300,76,65),
 (304,135,65),
 (305,162,65),
 (306,165,65),
 (1058,184,65),
 (1059,13,65),
 (1060,270,65),
 (1061,287,65),
 (1063,354,65),
 (1064,271,65),
 (1065,272,65),
 (1066,3,65),
 (1067,355,65),
 (1068,288,65),
 (1069,185,65),
 (1070,186,65),
 (1071,187,65),
 (1072,14,65),
 (1075,188,65),
 (1076,273,65),
 (1077,202,65),
 (1079,189,65),
 (1081,356,65),
 (1082,289,65),
 (1083,274,65),
 (1084,190,65),
 (1086,275,65),
 (1087,191,65),
 (1089,290,65),
 (1093,192,65),
 (1094,15,65),
 (1095,276,65),
 (1096,16,65),
 (1097,277,65),
 (1098,193,65),
 (1099,194,65),
 (1100,195,65),
 (1101,196,65),
 (1102,197,65),
 (1103,198,65),
 (1104,199,65),
 (1105,200,65),
 (1106,278,65),
 (1107,279,65),
 (1108,17,65),
 (1109,280,65),
 (1157,231,65),
 (1158,104,65),
 (1159,102,65),
 (1160,105,65),
 (1161,240,65),
 (132,339,67),
 (132,337,68),
 (132,338,69),
 (132,340,70),
 (320,353,71),
 (407,228,71),
 (161,172,72),
 (1114,387,72),
 (1115,233,72),
 (1119,397,72),
 (1120,406,72),
 (1122,400,72),
 (1123,237,72),
 (1124,391,72),
 (1125,403,72),
 (1126,410,72),
 (1558,99,72),
 (1560,243,72),
 (1562,247,72),
 (1563,501,72),
 (1566,461,72),
 (1572,258,72),
 (1573,508,72),
 (1574,466,72),
 (1576,302,72),
 (1578,309,72),
 (1579,511,72),
 (1580,313,72),
 (1581,515,72),
 (1582,317,72),
 (1589,259,72),
 (1613,263,72),
 (1614,321,72),
 (1615,519,72),
 (1616,469,72),
 (1617,481,72),
 (1618,523,72),
 (1619,473,72),
 (1622,485,72),
 (1624,489,72),
 (1630,267,72),
 (1631,376,72),
 (1632,477,72),
 (1636,210,72),
 (1640,226,72),
 (1641,493,72),
 (1646,497,72),
 (1651,283,72),
 (1652,380,72),
 (1653,295,72),
 (1654,384,72),
 (407,230,73),
 (1521,445,75),
 (1522,442,75),
 (1523,439,75),
 (1524,23,75),
 (1526,454,75),
 (1527,358,75),
 (1528,452,75),
 (1531,450,75),
 (1532,458,75),
 (1534,26,75),
 (1537,448,75),
 (1539,360,75),
 (890,174,76),
 (930,178,76),
 (954,182,76),
 (1005,69,76),
 (1039,59,76),
 (1040,55,76),
 (1041,53,76),
 (1042,58,76),
 (1043,54,76),
 (1045,61,76),
 (1046,60,76),
 (1047,52,76),
 (1048,56,76),
 (1130,207,76),
 (1131,219,76),
 (1132,223,76),
 (1133,221,76),
 (1134,222,76),
 (1135,215,76),
 (1136,217,76),
 (1137,218,76),
 (1138,216,76),
 (1139,220,76),
 (1550,525,20),
 (1551,526,20),
 (1623,527,60),
 (1623,528,61),
 (1623,529,72),
 (1623,530,64),
 (1626,531,60),
 (1626,532,61),
 (1626,533,72),
 (1626,534,64),
 (1633,535,60),
 (1633,536,61),
 (1633,537,72),
 (1633,538,64),
 (1642,539,60),
 (1642,540,61),
 (1642,541,72),
 (1642,542,64),
 (1647,543,60),
 (1647,544,61),
 (1647,545,72),
 (1647,546,64),
 (1567,547,60),
 (1567,548,61),
 (1567,549,72),
 (1569,550,60),
 (1569,551,61),
 (1575,552,60),
 (1575,553,61),
 (1575,554,72),
 (1585,555,60),
 (1585,556,61),
 (1585,557,72),
 (1585,558,64),
 (1586,559,60),
 (1586,560,61),
 (1586,561,72),
 (1586,562,64),
 (1620,563,60),
 (1620,564,61),
 (1620,565,72),
 (1620,566,64),
 (1629,567,60),
 (1629,568,61),
 (1629,569,72),
 (1629,570,64),
 (1635,571,60),
 (1635,572,61),
 (1635,573,72),
 (1635,574,64),
 (1639,575,60),
 (1639,576,61),
 (1639,577,72),
 (1639,578,64),
 (1643,579,60),
 (1643,580,61),
 (1643,581,72),
 (1643,582,64),
 (1645,583,60),
 (1645,584,61),
 (1645,585,72),
 (1645,586,64),
 (1648,587,60),
 (1648,588,61),
 (1648,589,72),
 (1648,590,64),
 (1555,591,60),
 (1555,592,61),
 (1555,593,72),
 (1555,594,64),
 (1557,595,60),
 (1557,596,61),
 (1557,597,72),
 (1557,598,64),
 (1594,599,60),
 (1594,600,61),
 (1594,601,72),
 (1594,602,64),
 (1577,603,60),
 (1577,604,61),
 (1577,605,72),
 (1577,606,64),
 (1583,607,60),
 (1583,608,61),
 (1583,609,72),
 (1583,610,64),
 (1592,611,60),
 (1592,612,61),
 (1592,613,72),
 (1592,614,64),
 (1655,615,60),
 (1655,616,61),
 (1655,617,72),
 (1655,618,64),
 (1561,619,60),
 (1561,620,61),
 (1561,621,72),
 (1561,622,64),
 (1588,623,60),
 (1588,624,61),
 (1588,625,72),
 (1588,626,64),
 (1591,627,60),
 (1591,628,61),
 (1591,629,72),
 (1591,630,64),
 (1656,631,60),
 (1656,632,61),
 (1656,633,72),
 (1656,634,64),
 (1554,635,60),
 (1554,636,61),
 (1554,637,72),
 (1554,638,64),
 (1556,639,60),
 (1556,640,61),
 (1556,641,72),
 (1556,642,64),
 (1559,643,60),
 (1559,644,61),
 (1559,645,72),
 (1559,646,64),
 (1593,647,60),
 (1593,648,61),
 (1593,649,72),
 (1593,650,64),
 (1540,651,64),
 (1540,652,75),
 (752,653,20),
 (1525,663,75),
 (783,662,23),
 (752,656,23),
 (760,657,23),
 (776,658,20),
 (783,661,13),
 (776,660,23),
 (1541,664,64),
 (1541,665,75),
 (1538,666,64),
 (1538,667,75),
 (1535,668,64),
 (1535,669,75),
 (1529,670,64),
 (1529,671,75),
 (787,672,20),
 (787,673,23),
 (820,674,20),
 (820,675,23),
 (790,676,20),
 (790,677,23),
 (792,678,20),
 (792,679,23),
 (798,680,20),
 (798,681,23),
 (800,682,20),
 (800,683,23),
 (808,684,20),
 (808,685,23),
 (809,686,20),
 (809,687,23),
 (818,688,20),
 (818,689,23),
 (821,690,23),
 (824,691,13),
 (832,692,13),
 (753,693,20),
 (753,694,23),
 (866,695,23),
 (866,696,13),
 (839,697,23),
 (839,698,13),
 (840,699,23),
 (840,700,13),
 (775,701,20),
 (775,702,23);
/*!40000 ALTER TABLE `draft_craft_batches` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
