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

use swganh;

--
-- Definition of table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
CREATE TABLE `buildings` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `oX` float NOT NULL default '0',
  `oY` float NOT NULL default '0',
  `oZ` float NOT NULL default '0',
  `oW` float NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `type_id` int(11) NOT NULL default '1',
  `planet_id` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fk_static_buildings_planet_planet` (`planet_id`),
  KEY `fk_st_build_type_type` (`type_id`),
  CONSTRAINT `buildings_ibfk_1` FOREIGN KEY (`planet_id`) REFERENCES `planet` (`planet_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `buildings_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `building_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `buildings_ibfk_3` FOREIGN KEY (`planet_id`) REFERENCES `planet` (`planet_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `buildings_ibfk_4` FOREIGN KEY (`type_id`) REFERENCES `building_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buildings`
--

/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` (`id`,`oX`,`oY`,`oZ`,`oW`,`x`,`y`,`z`,`type_id`,`planet_id`) VALUES 
 (2,0,0.707108,0,-0.707105,2097.7,30,2526.1,1,5),
 (61,0,-0.468594,0,0.883413,4980.01,-192,6709.7,1,5),
 (88,0,0.900447,0,-0.434965,-5189.98,6,4258.01,1,5),
 (108,0,0.764842,0,0.644217,4872.64,4.17,-4621.54,1,5),
 (56919,0,0.422132,0,0.906534,-5792.44,6,4420.11,2,5),
 (79371,0,0.710912,0,-0.703281,-5433.6,6,4266.47,2,5),
 (79372,0,0.004203,0,0.999991,-5379.72,6,4199.2,2,5),
 (79411,0,0.708097,0,0.706115,-5373.01,6,4405.97,2,5),
 (189372,0,0.942755,0,0.333487,-4086.24,130.5,-136.034,3,2),
 (189544,0,0.937508,0,0.347963,-5124.14,6.22857,4256.63,4,5),
 (468317,0,0.761611,0,-0.648035,-830.1,86.0519,-2056.05,5,9),
 (474323,0,0.999942,0,0.010805,-5886.87,6,4301.56,6,5),
 (479722,0,-0.435683,0,0.9001,7366.54,97.8349,135.031,7,6),
 (479815,0,1,0,0,-1133.77,77.2,4519.39,8,6),
 (479843,0,1,0,0,-1145.66,77.2,4552.74,9,6),
 (479845,0,1,0,0,-1119.62,77.2,4553.21,9,6),
 (479848,0,0.707107,0,0.707106,-1117.53,77.2,4506.89,9,6),
 (479850,0,0.707107,0,-0.707106,-1153.97,77.2,4507.21,9,6),
 (529322,0,-0.652136,0,0.758102,7105.73,74.2809,-4093,10,1),
 (529373,0,0,0,1,-139.2,25.692,-352.987,11,1),
 (568747,0,0.946042,0,0.324043,3646.9,1,2166.06,12,4),
 (568754,0,-0.328769,0,0.94441,3662.9,1,2186.3,13,4),
 (568775,0,0.707107,0,0.707106,3610.6,1.22169,2182.63,14,4),
 (568956,0,0.414778,0,0.909923,3301.58,128.837,-4889.83,15,4),
 (733359,0,0.07493,0,0.997189,2243.54,37.8508,3553.28,16,3),
 (733396,0,0.589467,0,0.807793,-6926.46,19.502,688.623,17,3),
 (800097,0,0,0,1,299,45,3742,61,42),
 (800122,0,1,0,0,299,45,3995,73,42),
 (800143,0,1,0,0,385,45,3920,48,42),
 (800153,0,0,0,1,385,45,3839,54,42),
 (800163,0,0,0,1,196,45,3986,56,42),
 (800180,0,1,0,0,447,45,3973,6,42),
 (800187,0,0,0,1,194,45,3855,1,42),
 (800205,0,0,0,1,177,45,3770,47,42),
 (800230,0,1,0,0,55,45,3814,82,42),
 (800529,0,-0.707107,0,0.707107,260,45,3883,4,42),
 (800531,0,1,0,0,49.7,45,3947.5,55,42),
 (800541,0,0.707107,0,0.707107,468,45,3775,49,42),
 (800549,0,0.707107,0,0.707107,468,45,3748,49,42),
 (800557,0,0.707107,0,0.707107,468,45,3721,49,42),
 (800565,0,0.707107,0,0.707107,468,45,3697,49,42),
 (800573,0,0,0,1,409,45,3751,2,42),
 (800613,0,-0.5373,0,0.843391,338,45,-1736,15,42),
 (800654,0,0.707107,0,0.707107,3129,40,-3821,72,42),
 (800702,0,0,0,1,3138,40,-3871,83,42),
 (800850,0,0.241922,0,0.970296,3131,42,-3827,89,42),
 (926472,0,0.432613,0,0.90158,-1159.95,12,-3590.73,18,8),
 (1026824,0,0.646043,0,0.763301,-1376.15,12,-3576.23,19,8),
 (1027887,0,0.813878,0,0.581036,-1373.19,26,-3869.04,20,8),
 (1027931,0,-0.592536,0,0.805544,-1352.69,26,-3862.26,20,8),
 (1028167,0,0.937647,0,0.34759,-1103.51,12,-3671.37,21,8),
 (1028287,0,0.374821,0,0.927097,-1037.7,10,-3520.4,20,8),
 (1028309,0,0.054177,0,0.998531,-1008.66,10,-3508.7,20,8),
 (1028320,0,0.183165,0,0.983082,-1024.36,10,-3512.19,20,8),
 (1028378,0,0.998915,0,0.046575,-1014.53,10,-3559.48,20,8),
 (1028400,0,-0.496189,0,0.868214,-968.123,10,-3522.7,20,8),
 (1028411,0,-0.044192,0,0.999023,-994.529,10,-3508.27,20,8),
 (1028422,0,-0.217456,0,0.97607,-980.259,10,-3512.01,20,8),
 (1028444,0,-0.684707,0,0.728819,-964.353,10,-3539.8,20,8),
 (1028455,0,0.999058,0,-0.043394,-986.182,10,-3563.3,20,8),
 (1028466,0,0.91973,0,-0.392552,-970.623,10,-3556.04,20,8),
 (1028477,0,0.999135,0,0.04158,-1001.3,10,-3562.18,20,8),
 (1028489,0,-0.014204,0,0.999899,-998.888,10,-3535.97,22,8),
 (1028544,0,0.94441,0,0.328769,-1249.38,12,-3592.93,23,8),
 (1028554,0,-0.328017,0,0.944672,-1176.43,12,-3501.66,24,8),
 (1028574,0,0.431176,0,0.902268,-1254.28,12,-3514.36,25,8),
 (1028590,0,-0.329522,0,0.944148,-1119.08,12,-3526.12,26,8),
 (1028644,0,0.986156,0,0.165823,-1404.26,12,-3668.77,27,8),
 (1076941,0,0.956802,0,-0.290741,3383.24,5.00981,-4594.67,28,8),
 (1082874,0,0.945266,0,0.326302,3432.35,5,-4818.13,27,8),
 (1105845,0,0.883932,0,-0.467616,3290.75,5,-4759.32,29,8),
 (1105879,0,0.466913,0,0.884304,3242.09,5,-4621.38,30,8),
 (1106368,0,-0.700285,0,0.713864,3618.98,5,-4801.09,19,8),
 (1106500,0,0.900447,0,-0.434966,3441.84,5,-5020.99,30,8),
 (1106534,0,0.942755,0,0.333487,3396.63,5,-5026.66,20,8),
 (1106549,0,1,0,0,-5326.9,40.0104,-4472.01,31,8),
 (1106560,0,0.198669,0,0.980067,-5337.01,39.9599,-4421.51,31,8),
 (1106573,0,0.92388,0,-0.382683,-5290.17,40,-4457.04,31,8),
 (1134470,0,0.020795,0,0.999784,-5090.55,75,-6599.31,20,8),
 (1134481,0,0.025793,0,0.999667,-5074.62,75,-6601.41,20,8),
 (1134492,0,0.999646,0,-0.026589,-5089.94,75,-6628.44,20,8),
 (1134518,0,-0.695564,0,0.718464,-5094.97,74.8292,-6491.68,20,8),
 (1134531,0,0.030792,0,0.999526,-5125.6,74.8911,-6519.22,21,8),
 (1134557,0,0.999135,0,-0.041581,-5172.13,75,-6571.71,27,8),
 (1134573,0,0.012391,0,0.999923,-5226.09,75,-6471.88,20,8),
 (1144098,0,-0.700283,0,0.713866,1590.02,11,3225.23,21,8),
 (1144120,0,0.42522,0,0.90509,1569.76,11,3270.66,22,8),
 (1144133,0,-0.537432,0,0.843307,1566.5,11,3180.19,22,8),
 (1153485,0,0.000797,0,1,1561.08,7,3064.85,24,8),
 (1153495,0,0.771247,0,0.636536,1703.77,7,3021.77,28,8),
 (1153557,0,0.014202,0,0.999899,1377.15,7,3030.39,23,8),
 (1153580,0,0.019202,0,0.999816,1321.35,7,3291.25,32,8),
 (1153595,0,0.720277,0,0.693686,1424.92,7,3293.94,29,8),
 (1153623,0,0.999978,0,0.006595,1600.09,7,2952.77,22,8),
 (1153933,0,0.999965,0,-0.008408,1356.32,11,3215.94,22,8),
 (1153959,0,1,0,0,1357.71,11,3156.29,22,8),
 (1153972,0,0.010799,0,0.999942,1419.72,11,3159.12,22,8),
 (1153985,0,0.004204,0,0.999991,1419,11,3189.15,22,8),
 (1153998,0,0.999987,0,-0.005,1390.74,11,3123.92,21,8),
 (1154020,0,0.010792,0,0.999942,1418.82,11,3216.85,22,8),
 (1154120,0,0.700562,0,0.713591,3780.99,11.6173,2391.21,22,8),
 (1154176,0,0.706261,0,0.707952,1302.74,7,3380.29,25,8),
 (1154207,0,0.999987,0,-0.005,1357.01,11,3186.92,22,8),
 (1156883,0,0.716809,0,0.69727,1486.36,7,2992.32,20,8),
 (1156894,0,-0.697825,0,0.716268,1465.44,7,3002,20,8),
 (1156905,0,-0.694235,0,0.719749,1466.76,7,2981.68,20,8),
 (1156929,0,-0.697851,0,0.716243,1509.34,7,3007.5,20,8),
 (1156940,0,-0.704978,0,0.709229,1508.95,7,2986.4,20,8),
 (1156951,0,-0.697851,0,0.716243,1466.09,7,3023.19,20,8),
 (1156973,0,-0.697851,0,0.716243,1509.45,7,3026.17,20,8),
 (1156984,0,-0.697851,0,0.716243,1465.52,7,3044.57,20,8),
 (1156995,0,0.713314,0,0.700845,1485.05,7,3033.94,20,8),
 (1157006,0,-0.697851,0,0.716243,1507.36,7,3046.21,20,8),
 (1157629,0,0.999442,0,-0.033403,1225.89,4,3232.99,20,8),
 (1157640,0,0.999442,0,-0.033403,1210.07,4,3232.18,20,8),
 (1157651,0,-0.693111,0,0.720831,1249.85,4,3231.15,22,8),
 (1157664,0,0.72374,0,0.690073,1212.41,4,3289.04,22,8),
 (1157685,0,0.0292,0,0.999574,1235.21,4,3285.61,20,8),
 (1157696,0,0.0292,0,0.999574,1251.03,4,3286.42,20,8),
 (1157716,0,0.732924,0,0.680311,1197.19,4,3265.38,20,8),
 (1157727,0,0.732924,0,0.680311,1198.13,4,3249.57,20,8),
 (1165379,0,0.696705,0,0.717356,-5059.46,75,-6581.2,20,8),
 (1177465,0,0.90687,0,0.42141,-5984.78,89.9019,-6301.07,33,8),
 (1187869,0,0.898261,0,-0.439463,3339.59,5,-4931.94,21,8),
 (1187891,0,0.438747,0,0.898611,3337.65,5,-4882.29,22,8),
 (1187917,0,0.896759,0,-0.44252,3289.78,5,-4943.88,22,8),
 (1187984,0,-0.326302,0,0.945265,3306.02,5,-4872.27,22,8),
 (1187997,0,0.94441,0,0.328769,3238.98,5,-4895.7,21,8),
 (1188032,0,0.94441,0,0.328769,3244.88,5,-4823.83,22,8),
 (1188045,0,0.945525,0,0.32555,3227.5,5,-4845.78,22,8),
 (1189173,0,0.000797,0,1,-3967.14,22.3141,6239.76,34,8),
 (1189385,0,0.873327,0,-0.487134,3322.76,5,-4553.21,20,8),
 (1189418,0,0.478377,0,0.878155,3297.76,5,-4540.64,20,8),
 (1189571,0,0.474332,0,0.880346,3340.03,5,-4704.02,25,8),
 (1189630,0,0.476432,0,0.879211,3466,5,-4675.41,23,8),
 (1213343,0,-0.000796,0,1,131.753,52,-5356.34,22,8),
 (1213884,0,0.893106,0,0.449846,1616.93,11,3267.29,20,8),
 (1213898,0,0.702713,0,0.711473,1609.91,11,3292.66,20,8),
 (1223845,0,0.938582,0,0.345056,-1198.05,12,-3671.43,35,8),
 (1233038,0,0.696707,0,0.717356,1305.65,7,3456.02,30,8),
 (1233971,0,0.999888,0,-0.015,1536.53,7,3374.25,35,8),
 (1250066,0,0.764586,0,-0.644522,-2563.45,5.70915,2097.69,36,8),
 (1250080,0,0.764586,0,-0.644522,-2560.02,5.86962,2119.15,37,8),
 (1250087,0,-0.084898,0,0.99639,-2574.71,5.51833,2139.94,38,8),
 (1254761,0,0.135381,0,0.990794,-3099.14,5,2289.62,30,8),
 (1255884,0,0.976244,0,-0.216675,-2883.93,5,2485.18,20,8),
 (1255895,0,0.202788,0,0.979223,-2862.64,5,2483.23,20,8),
 (1255906,0,0.937646,0,-0.347591,-2908.45,5,2557.79,20,8),
 (1255919,0,0.335734,0,0.941957,-2904.34,5,2517.01,20,8),
 (1255930,0,0.937091,0,-0.349084,-2895.22,5,2570.16,20,8),
 (1255941,0,-0.396422,0,0.918068,-2879.73,5,2512.13,20,8),
 (1255985,0,0.779711,0,0.62614,-3014.8,5,2423.07,23,8),
 (1255995,0,0.956802,0,-0.29074,-2896.15,5,2424.78,39,8),
 (1256003,0,-0.633289,0,0.773915,-2840.48,5,1991.22,24,8),
 (1256014,0,0.990327,0,-0.138751,-3057.8,5,2061.43,25,8),
 (1256055,0,0.803179,0,0.595738,-3001.22,5,2172.17,27,8),
 (1259938,0,0.997189,0,-0.07493,5368.94,-196.627,6420.34,36,5),
 (1259966,0,0.999862,0,0.016592,-2875.9,5,2379.39,20,8),
 (1259977,0,0.998988,0,-0.044985,-2858.41,5,2379.98,20,8),
 (1259988,0,0.973666,0,-0.227979,-2841.57,5,2385.07,20,8),
 (1260047,0,-0.652136,0,0.758102,5385.73,-197.069,6443.1,37,5),
 (1260054,0,0.758103,0,0.652135,5346.18,-197.302,6437.12,38,5),
 (1261013,0,0.138753,0,0.990327,-3084.98,5,2213.22,35,8),
 (1261452,0,0.795602,0,0.60582,-3009.21,5,1960.51,21,8),
 (1261567,0,0.7956,0,0.605822,-2989.61,5,2005.64,22,8),
 (1261580,0,-0.605821,0,0.795601,-2968.96,5,1932.29,22,8),
 (1261651,0,0.877581,0,-0.479429,-2828.78,5,2079.61,19,8),
 (1270138,0,-0.269034,0,0.963131,3308.56,5,-4520.44,20,8),
 (1270160,0,-0.27865,0,0.960393,3333.88,5,-4533.4,20,8),
 (1278956,0,-0.592535,0,0.805544,-1347.82,26,-3875.5,20,8),
 (1278968,0,0.81388,0,0.581033,-1368.33,26,-3882.29,20,8),
 (1278979,0,-0.592536,0,0.805544,-1338.6,26,-3889.86,20,8),
 (1278991,0,0.81388,0,0.581033,-1359.11,26,-3896.64,20,8),
 (1279918,0,1,0,0,-1134.33,98,-3910.56,40,8),
 (1279956,0,-0.281921,0,0.959438,3439.72,5,-4714.58,24,8),
 (1280129,0,-0.316834,0,0.948481,3499.61,5,-4743.36,22,8),
 (1281533,0,-0.324797,0,0.945784,3384.98,5,-4837.42,22,8),
 (1289932,0,0.99999,0,0.004372,-5307.39,8.46101,2653.08,40,8),
 (1311472,0,0.991562,0,-0.129634,-2997.94,5,1913.58,20,8),
 (1331932,0,0.707107,0,-0.707106,-2976,30.6897,2908,36,0),
 (1331943,0,0.707107,0,-0.707106,-2977,30.7801,2923,37,0),
 (1331950,0,-0.707107,0,0.707107,-2977,30.5743,2893,38,0),
 (1365875,0,1,0,0,-4207,3,-2430,41,1),
 (1365889,0,0.707107,0,0.707106,-4261,3,-2408,42,1),
 (1365985,0,-0.514477,0,0.857504,-593.845,3,2537.4,43,1),
 (1365992,0,0.908966,0,-0.416871,-634.838,3,2444.7,44,1),
 (1366003,0,0.707107,0,-0.707107,1576.43,4,-6427.89,44,1),
 (1366010,0,0,0,1,1549.92,4,-6358.19,14,1),
 (1366017,0,0,0,1,1609.77,4,-6358.11,43,1),
 (1380122,0,0.707107,0,-0.707106,-4189,3,-2408,45,1),
 (1392854,0,0.900447,0,-0.434966,-62.9569,18,-1632.11,46,2),
 (1392889,0,0.707107,0,-0.707106,628.491,6,3054.08,44,2),
 (1392896,0,0.707107,0,0.707106,567.516,6,3060.57,43,2),
 (1392907,0,0.707107,0,-0.707106,-2163,20,2328,45,7),
 (1393860,0,1,0,0,1787,12,2673,47,5),
 (1393871,0,0.707104,0,0.707109,1678.01,12,2707.02,2,5),
 (1396866,0,0.707127,0,-0.707087,1738,12,2614,48,5),
 (1396879,0,0.85554,0,-0.517737,1673,25,2758.73,49,5),
 (1400845,0,0.714421,0,0.699716,62.9695,52,-5357.85,50,8),
 (1400856,0,-0.693111,0,0.720831,3897.22,33,2351.35,50,8),
 (1414856,0,-0.256311,0,0.966594,-850.49,79.5,1609.07,12,3),
 (1414867,0,0,0,1,3245,24,-3442,12,3),
 (1418871,0,0.761612,0,0.648034,2420.63,291.909,-3941.25,51,5),
 (1419009,0,-0.15438,0,0.988011,5145.21,350,-1431.36,47,5),
 (1495845,0,0.999388,0,-0.034993,-5073.51,75,-6627.8,50,8),
 (1499417,0,1,0,0,-5115.27,75,-6623.95,22,8),
 (1512719,0,0,0,1,4032.56,37,-6234.47,52,9),
 (1528395,0,0.422132,0,0.906534,-1075.31,12,-3628.47,22,8),
 (1627780,0,-0.493228,0,0.8699,-6449.35,82.3105,-400.525,53,9),
 (1650509,0,0.893821,0,0.448423,1876.47,12,2469.61,49,5),
 (1650526,0,0.70711,0,0.707103,1836,12,2614,54,5),
 (1650536,0,0,0,1,1787,12,2565,55,5),
 (1650611,0,0,0,1,1949.39,12,2759.7,6,5),
 (1661364,0,0.70711,0,0.707103,1953,12,2620,56,5),
 (1661379,0,0.707109,0,0.707104,1831,12,2774,49,5),
 (1677390,0,1,0,0,-5708.49,6,4231.96,47,5),
 (1685071,0,-0.471328,0,0.881958,1603.75,25,2503.2,49,5),
 (1685119,0,0.261909,0,0.965093,5124.44,350,-1546.92,49,5),
 (1685231,0,0,0,1,4731.27,330,-1275.48,55,5),
 (1688849,0,0,0,1,-5496,6,4586,57,5),
 (1692066,0,1,0,0,-5456.75,6,4102.58,54,5),
 (1692076,0,1,0,0,-5369.55,6,4122.24,48,5),
 (1692086,0,1,0,0,-5452,6,3996.5,55,5),
 (1692099,0,0.938444,0,0.345432,-4795.27,5.94832,4238.79,58,5),
 (1696443,0,0.707107,0,-0.707106,2912.27,101.196,1105.67,59,5),
 (1697350,0,0.907837,0,-0.419322,-4875.36,6,4029.96,6,5),
 (1697358,0,0.938444,0,0.345432,-5017.76,6,4162.44,56,5),
 (1697373,0,-0.345432,0,0.938444,-5063.83,6,4101.58,47,5),
 (1713368,0,1,0,0,-336.992,35,4840,60,9),
 (1714781,0,0.999946,0,0.010403,4873.68,360,-1363.51,49,5),
 (1717465,0,0.708667,0,0.705543,4656.21,3.75,-4893.96,47,5),
 (1717500,0,1,0,0,4918.33,3.75,-4928.94,56,5),
 (1717526,0,1,0,0,4721.93,3.75,-4984.49,54,5),
 (1717538,0,-0.357693,0,0.933839,4917.88,3.75,-4790.08,48,5),
 (1717548,0,1,0,0,4805.16,3.75,-5000.29,55,5),
 (1717558,0,0.707388,0,-0.706826,5025.73,3.75,-4931.87,6,5),
 (1719359,0,0.96639,0,0.257081,4853.55,3.75,-4829.54,49,5),
 (1722452,0,0.696707,0,0.717356,2540.96,295.999,-3883.65,9,5),
 (1725383,0,0.943519,0,0.331317,-86.9467,18,-1638.26,60,2),
 (1726353,0,-0.049184,0,0.99879,2369.26,325.034,-4100.48,9,5),
 (1726355,0,0.080709,0,0.996738,2121.41,294.134,-4185.77,9,5),
 (1726357,0,0.920439,0,-0.390885,2173.73,362.117,-3693.49,9,5),
 (1726359,0,-0.256311,0,0.966595,1904.91,395.093,-4023.55,9,5),
 (1726361,0,0.954865,0,-0.297042,1710.48,385,-3670.99,9,5),
 (1726363,0,0.964674,0,-0.263446,2341.59,392.203,-3556.2,9,5),
 (1726365,0,0.877582,0,0.479427,2555.66,352.257,-3646.77,9,5),
 (1741358,0,0.92388,0,-0.382683,5034.04,-189.438,6741.06,49,5),
 (1741437,0,0.38591,0,0.922536,5101.25,-192,6639.5,56,5),
 (1741453,0,0.384073,0,0.923303,5099.73,-192,6775.97,54,5),
 (1741463,0,0.372686,0,0.927957,5129.66,-192,6805.07,55,5),
 (1741473,0,-0.394384,0,0.918946,5210.54,-192,6811.69,47,5),
 (1741484,0,0.92548,0,-0.378797,5196.08,-192,6737.05,2,5),
 (1741502,0,0.92388,0,-0.382683,5168.15,-192,6701.08,48,5),
 (1741512,0,0.996157,0,-0.087586,5331.81,-192,6551.56,6,5),
 (1741535,0,0.761613,0,-0.648033,5295.29,-192,6664.33,61,5),
 (1845352,0,1,0,0,-698.36,8,-6751.94,21,8),
 (1855460,0,1,0,0,-210,28,-4570,62,0),
 (1855473,0,1,0,0,-275.584,28,-4719.76,63,0),
 (1855491,0,0.707109,0,0.707104,-500,28,-4500,64,0),
 (1855499,0,0.707106,0,0.707108,-260,28,-4390,65,0),
 (1855509,0,-0.707106,0,0.707108,-160,28,-4390,66,0),
 (1855519,0,-0.707106,0,0.707107,40,28,-4440,67,0),
 (1855529,0,0,0,1,-90,28,-4440,68,0),
 (1855544,0,0.70711,0,-0.707104,-462,28,-4673,69,0),
 (1855671,0,0.756336,0,-0.654183,-51.2918,28,-4734.8,70,0),
 (1855720,0,-0.461426,0,0.887179,5238.46,5,1600.2,71,0),
 (1855736,0,0.300293,0,0.953847,5194.72,5,1619.31,72,0),
 (1855740,0,0.886811,0,0.462132,5254.95,5,1577.07,72,0),
 (1855744,0,0.953847,0,-0.300293,5212.96,5,1547.85,72,0),
 (1865359,0,0.707109,0,-0.707105,-5526.88,-150,-34.0225,47,5),
 (1935436,0,1,0,0,-5463.2,21,-2742.12,65,0),
 (1935446,0,1,0,0,-5417.33,21,-2742.57,66,0),
 (1935456,0,0.70711,0,0.707104,-5521.28,21,-2679.1,67,0),
 (1935466,0,1,0,0,-5502.01,21,-2820.06,63,0),
 (1935513,0,0.707107,0,0.707107,-5690.55,21,-2697.69,64,0),
 (1935522,0,0,0,1,-5516.62,21,-2568.65,69,0),
 (1935565,0,0,0,1,-210,28,-4320,63,0),
 (1935683,0,-0.382683,0,0.92388,-4975,21,-2230,70,0),
 (1935818,0,-0.382683,0,0.92388,-5147.56,21,-2518.43,69,0),
 (1935829,0,0.92388,0,-0.382683,-4978.13,20.8173,-2479.82,68,0),
 (1945387,0,0.841901,0,0.539632,4647.31,330,-1406.47,73,5),
 (1945494,0,1,0,0,1400,0,600,74,31),
 (1945561,0,1,0,0,1400,0,1000,74,31),
 (1945628,0,1,0,0,1250,0,1000,74,31),
 (1945695,0,1,0,0,1900,0,600,74,31),
 (1945762,0,1,0,0,2050,0,600,74,31),
 (1945829,0,1,0,0,2050,0,1000,74,31),
 (1945896,0,1,0,0,1900,0,1000,74,31),
 (1945963,0,1,0,0,2550,0,600,74,31),
 (1946030,0,1,0,0,2700,0,600,74,31),
 (1946097,0,1,0,0,2700,0,1000,74,31),
 (1946164,0,1,0,0,2550,0,1000,74,31),
 (1946231,0,1,0,0,1400,0,1900,75,31),
 (1946298,0,1,0,0,1400,0,2300,75,31),
 (1946365,0,1,0,0,1250,0,2300,75,31),
 (1946432,0,1,0,0,1900,0,1900,75,31),
 (1946499,0,1,0,0,2050,0,1900,75,31),
 (1946566,0,1,0,0,2050,0,2300,75,31),
 (1946633,0,1,0,0,1900,0,2300,75,31),
 (1946700,0,1,0,0,2550,0,1900,75,31),
 (1946767,0,1,0,0,2700,0,1900,75,31),
 (1946834,0,1,0,0,2700,0,2300,75,31),
 (1946901,0,1,0,0,2550,0,2300,75,31),
 (1946968,0,1,0,0,1400,0,3200,76,31),
 (1947035,0,1,0,0,1400,0,3600,76,31),
 (1947102,0,1,0,0,1250,0,3600,76,31),
 (1947169,0,1,0,0,1900,0,3200,76,31),
 (1947236,0,1,0,0,2050,0,3200,76,31),
 (1947303,0,1,0,0,2050,0,3600,76,31),
 (1947370,0,1,0,0,1900,0,3600,76,31),
 (1947437,0,1,0,0,2550,0,3200,76,31),
 (1947504,0,1,0,0,2700,0,3200,76,31),
 (1947571,0,1,0,0,2700,0,3600,76,31),
 (1947638,0,1,0,0,2550,0,3600,76,31),
 (1955353,0,0.946042,0,-0.324043,-642.058,13,-6862.95,20,8),
 (1955364,0,0.661411,0,0.750024,-687.551,9.88735,-6831.07,20,8),
 (1955375,0,0.963665,0,0.267115,-683.277,10,-6857.27,20,8),
 (2125378,0,0.717911,0,0.696135,1352.27,13,2768.32,61,5),
 (2125454,0,0.138754,0,0.990327,1383.2,13,2668.87,49,5),
 (2365391,0,0,0,1,-208.674,28,-4148.13,77,0),
 (2365428,0,0.707108,0,-0.707106,-5587.17,21,-2627.92,77,0),
 (2365761,0,-0.707107,0,0.707107,6871.66,315,-5783.68,65,0),
 (2365793,0,-0.140331,0,0.990104,6858.25,330,-5426.32,67,0),
 (2365803,0,0.774419,0,-0.632673,6938.44,330,-5587.7,69,0),
 (2365901,0,0.707108,0,-0.707105,6883.65,315,-5720.02,64,0),
 (2365921,0,1,0,0,6707.19,314.724,-5619.36,63,0),
 (2365939,0,0,0,1,6707.19,314.822,-5524.36,66,0),
 (2595358,0,0.999987,0,-0.005,1486.72,7,3195.32,22,8),
 (2625352,0,0.948383,0,0.317127,-5237.26,21,-2538.78,78,0),
 (2635352,0,0.884675,0,0.466209,-6493.96,118.627,874.673,79,2),
 (2665363,0,0.71442,0,0.699717,-6364.36,120,927.306,80,2),
 (2665661,0,0.999987,0,-0.004998,-6382.96,120,958.853,40,2),
 (2665668,0,0.999987,0,-0.004998,-6367.61,120,958.912,40,2),
 (2665675,0,0.999987,0,-0.004998,-6352.39,120,959.07,40,2),
 (2665878,0,0.995491,0,-0.094858,163.557,430.013,4488.57,81,2),
 (2715878,0,0.92388,0,0.382682,4615,25,-5812,38,0),
 (2715899,0,0.382686,0,0.923878,4616,25,-5756,38,0),
 (2715906,0,-0.382682,0,0.92388,4687,25,-5731,37,0),
 (2715913,0,0.923877,0,-0.382689,4687,25,-5837,37,0),
 (2715949,0,-0.382682,0,0.92388,4698,25,-5742,37,0),
 (2715956,0,0.923877,0,-0.38269,4698,25,-5826,37,0),
 (2716029,0,0.923877,0,-0.38269,4709,25,-5815,37,0),
 (2716036,0,-0.382682,0,0.92388,4709,25,-5753,37,0),
 (2725352,0,0.710636,0,-0.70356,4929.08,360,-1473.23,82,5),
 (2735638,0,0.978031,0,-0.20846,4321.54,6,989.519,83,7),
 (2735643,0,0.982004,0,-0.188859,4230.97,6,969.439,84,7),
 (2735648,0,0.25785,0,0.966185,4187.54,6,1031.81,85,7),
 (2735653,0,0.286715,0,0.958016,4165.93,6,1019.07,86,7),
 (2735671,0,0.010796,0,0.999942,4272.21,6,1061.95,85,7),
 (2745615,0,0,0,1,212.289,17.06,5147.46,50,4),
 (2745864,0,0.617374,0,0.78667,583.936,11.89,5129.62,32,4),
 (2745954,0,1,0,0,-2026,11.9986,-3044,87,4),
 (2745961,0,1,0,0,-1948,11.8809,-2972,9,4),
 (2745970,0,0.707107,0,-0.707106,-2026,11.8441,-3084,87,4),
 (2746001,0,1,0,0,-1931,12.0479,-2972,9,4),
 (2746035,0,0,0,1,-1810,12.0671,-3107,87,4),
 (2746038,0,0.707105,0,0.707108,-1810,11.9502,-3067,87,4),
 (2746053,0,0,0,1,-1907,12.0544,-3191,9,4),
 (2746056,0,0,0,1,-1923,11.96,-3191,9,4),
 (2746309,0,0.707107,0,-0.707106,-1902.37,12,-3173.35,40,4),
 (2775409,0,0,0,1,-5515.77,23.4,-6149.92,69,0),
 (2835549,0,0.900447,0,-0.434965,-52.904,18,-1619.64,86,2),
 (2835560,0,-0.329145,0,0.944279,-75.9946,18,-1586,52,2),
 (2835569,0,0.435682,0,0.900101,-115.084,18,-1574.13,83,2),
 (2935404,0,1,0,0,-5565.28,75.8264,-5660.25,80,6),
 (2935420,0,1,0,0,-5614,75.9697,-5628,87,6),
 (2935423,0,0.707107,0,-0.707106,-5614,75.6395,-5698,87,6),
 (2935426,0,0,0,1,-5514,75.9063,-5698,87,6),
 (2935429,0,0.707107,0,0.707106,-5514,75.9057,-5628,87,6),
 (2935492,0,-0.084898,0,0.99639,-5543.06,75.9913,-5614.33,37,6),
 (2955393,0,0.967663,0,0.252245,-3688.61,86,3065.03,67,0),
 (2955408,0,0.961056,0,-0.276355,-3425.07,78,3181.6,66,0),
 (2955418,0,-0.020795,0,0.999784,-3411.17,74,3383.62,65,0),
 (2955448,0,0.92388,0,0.382683,-4180,3,-2383,9,1),
 (2955471,0,-0.382683,0,0.92388,-4270,3,-2433,9,1),
 (2955473,0,0.382683,0,0.92388,-4180,3,-2433,9,1),
 (2955475,0,0.92388,0,-0.382683,-4270,3,-2383,9,1),
 (2955585,0,0,0,1,-4229,3,-2368,52,1),
 (3005396,0,0.84104,0,0.540972,-3480.17,78,3087.22,78,0),
 (3005426,0,0.970137,0,-0.242556,-3534.96,69.9799,3201.65,64,0),
 (3005666,0,0.836026,0,-0.54869,-3240.86,86,3097.18,69,0),
 (3005694,0,1,0,0,-5212.43,4,-6413.53,78,0),
 (3035371,0,0.004204,0,0.999991,-6970.04,72.9991,-5657.81,86,9),
 (3035375,0,-0.505877,0,0.862606,-6885.48,73,-5666,83,9),
 (3035387,0,0.37166,0,0.928369,-6881.86,73,-5760.32,87,9),
 (3035390,0,1,0,0,-6942.05,73.0003,-5764.63,12,9),
 (3035397,0,1,0,0,-6924.58,73,-5764.72,88,9),
 (3035484,0,0.707107,0,-0.707106,-6939.43,73,-5706.18,52,9),
 (3035593,0,0.891568,0,0.452886,-6980.06,73,-5761.94,89,9),
 (3035921,0,0.92388,0,-0.382683,-6960,25,5398,90,1),
 (3035928,0,0.92388,0,-0.382683,-6986,25,5372,90,1),
 (3035935,0,0.92388,0,-0.382683,-6999,25,5359,90,1),
 (3035942,0,0.382683,0,0.92388,-6979,25,5417,90,1),
 (3035949,0,0.382683,0,0.92388,-6992,25,5404,90,1),
 (3035956,0,0.382683,0,0.92388,-7018,25,5378,90,1),
 (3035963,0,0.382683,0,0.92388,-7005,25,5391,90,1),
 (3035970,0,0.92388,0,0.382683,-6881.09,38,5494.61,90,1),
 (3035977,0,0,0,1,-6791,46,5523,90,1),
 (3035991,0,0.707107,0,0.707106,-6678.01,30,5560.67,90,1),
 (3055763,0,0,0,1,3159.91,290,5029.17,66,0),
 (3065449,0,0.735088,0,0.677972,-2888.09,5,2280.22,22,8),
 (3075352,0,-0.58323,0,0.812307,3200.15,300,5245.64,65,0),
 (3075362,0,0.707109,0,0.707105,3078.42,300,5204.85,69,0),
 (3075405,0,0.215983,0,0.976397,3114.04,300,5284.93,67,0),
 (3075426,0,0.382685,0,0.923879,3244.71,300,5327.27,78,0),
 (3075609,0,0.92388,0,-0.382683,3319.18,300,5364.39,63,0),
 (3135640,0,1,0,0.000396,-6305.67,128.006,734.971,87,2),
 (3175352,0,0.707108,0,0.707106,244.894,6,-2931.13,70,7),
 (3175368,0,0,0,1,540,6,-2900,65,7),
 (3175378,0,0.92388,0,0.382683,470,6,-3060,66,7),
 (3175388,0,1,0,0,440,6,-2930,78,7),
 (3175404,0,-0.007701,0,0.99997,254.273,6,-3049.68,64,7),
 (3175424,0,0.707108,0,-0.707105,620,6,-2940,63,7),
 (3175554,0,0.92388,0,-0.382683,610,6,-3060,67,7),
 (3175564,0,1,0,0,540,6,-3150,77,7),
 (3175588,0,0.707108,0,0.707105,660,6,-3000,69,7),
 (3226154,0,-0.382683,0,0.92388,-4225,3,-2440,87,1),
 (3295418,0,-0.703564,0,0.710632,-6398.13,120,958.667,40,2),
 (3295425,0,-0.703564,0,0.710632,-6398.01,120,943.427,40,2),
 (3305352,0,0.707108,0,0.707105,316.49,6,-3055.95,91,7),
 (3355385,0,0.689498,0,0.724288,-164.651,65,-5298.15,22,8),
 (3375352,0,0.707109,0,-0.707105,6718.95,315,-5757.49,78,0),
 (3375372,0,1,0,0,6713.25,330,-5941.81,91,0),
 (3375390,0,-0.080708,0,0.996738,-3798.19,86,3135.95,91,0),
 (3375651,0,0.376297,0,0.926499,-5177.61,21,-2287.48,86,0),
 (3435626,0,0.707113,0,0.7071,5070.1,79,310.18,92,9),
 (3465352,0,-0.685868,0,0.727726,-3038,70,-2960,93,9),
 (3465379,0,0.707107,0,0.707106,5056.66,73.6701,5537.79,94,9),
 (3465395,0,0,0,1,4045.44,37,-6273.51,9,9),
 (3465397,0,0,0,1,4017.44,37,-6273.51,9,9),
 (3465413,0,0.707104,0,0.707109,4072.44,37,-6246.51,9,9),
 (3465415,0,0.707101,0,0.707112,4072.44,37,-6218.52,9,9),
 (3465417,0,0.707118,0,-0.707095,3990.44,37,-6218.51,9,9),
 (3465419,0,0.707121,0,-0.707092,3990.44,37,-6246.51,9,9),
 (3465421,0,1,0,0,4053.44,37,-6191.51,9,9),
 (3465423,0,1,0,0,4009.44,37,-6191.51,9,9),
 (3475363,0,1,0,0,-5555.02,76,-5708.39,37,6),
 (3475370,0,1,0,0,-5578.13,76,-5708.39,38,6),
 (3565385,0,-0.130424,0,0.991458,-4488.76,34.6646,-2262.27,95,8),
 (3565794,0,1,0,0,-1422.84,10,-3802.25,30,8),
 (3566196,0,-0.466912,0,0.884304,4851.1,76.3616,-1079.97,96,6),
 (3605954,0,0,0,1,3200,24,-3442,46,3),
 (3605968,0,1,0,0,3188,24,-3504,14,3),
 (3665817,0,0.4263,0,0.904582,3493.65,5,-5062.48,87,8),
 (3695701,0,0.796084,0,-0.605186,-1174.57,116.502,6244.51,97,2),
 (3705352,0,-0.403919,0,0.914795,548.722,81,-621.973,98,9),
 (4005381,0,0.462485,0,0.886627,-1317.65,12,-3489.63,99,8),
 (4005422,0,0.990901,0,-0.13459,-3144.48,5,2105.77,99,8),
 (4005516,0,0.953847,0,0.300293,1238.18,7,3061.85,19,8),
 (4005938,0,0.92388,0,0.382683,4973.92,180,-4696.04,100,8),
 (4045375,0,0,0,1,1687,12,2540,82,5),
 (4105610,0,0.707108,0,0.707106,5324.88,-192,6765.33,82,5),
 (4115618,0,-0.024201,0,0.999707,-4008.77,114.826,-12.4146,101,2),
 (4215406,0,0.466913,0,0.884303,4727.58,4.17,-4649.66,61,5),
 (4235584,0,0.81073,0,-0.58542,5180.56,51.5318,603.074,102,8),
 (4235596,0,-0.225736,0,0.974188,-1473.94,41,-174.611,103,8),
 (4255419,0,-0.015795,0,0.999875,-3135.7,31,2894.22,70,0),
 (4255435,0,0.693111,0,0.720831,-4379.23,38.268,-1425.4,104,7),
 (4255651,0,0,0,1,5909.67,46.8926,4664.91,105,7),
 (4265355,0,-0.165038,0,0.986287,4479.66,2,5365.17,70,7),
 (4265372,0,1,0,0,4285.4,2,5317.87,78,7),
 (4265388,0,-0.585743,0,0.810497,4505.05,2,5225.5,66,7),
 (4265398,0,0.707108,0,0.707106,4300.04,9.9,5384.67,65,7),
 (4265408,0,0.844588,0,-0.535416,4282,2,5116.3,67,7),
 (4265418,0,0.724836,0,0.688922,4328.57,2,5164.15,69,7),
 (4265429,0,0.541902,0,0.840441,4321.61,2,5094.53,63,7),
 (4265475,0,0.986418,0,-0.164252,4503.75,2,5165.74,91,7),
 (4265612,0,-0.581035,0,0.813878,4551.32,2,5148.32,64,7),
 (4275364,0,0.707107,0,0.707106,1021.74,32.2214,4181.28,106,0),
 (4295393,0,0.661411,0,0.750023,5703.38,290.343,-1557.55,107,5),
 (4335462,0,0.357693,0,0.933839,-4226,34.3353,-2061.78,108,2),
 (4335861,0,1,0,0,600,0,600,74,31),
 (4335928,0,1,0,0,750,0,600,74,31),
 (4335995,0,1,0,0,750,0,1000,74,31),
 (4336062,0,1,0,0,600,0,1000,74,31),
 (4336129,0,1,0,0,1250,0,600,74,31),
 (4336196,0,1,0,0,600,0,1900,75,31),
 (4336263,0,1,0,0,750,0,1900,75,31),
 (4336330,0,1,0,0,750,0,2300,75,31),
 (4336397,0,1,0,0,600,0,2300,75,31),
 (4336464,0,1,0,0,1250,0,1900,75,31),
 (4336531,0,1,0,0,600,0,3200,76,31),
 (4336598,0,1,0,0,750,0,3200,76,31),
 (4336665,0,1,0,0,750,0,3600,76,31),
 (4336732,0,1,0,0,600,0,3600,76,31),
 (4336799,0,1,0,0,1250,0,3200,76,31),
 (4345352,0,0.92388,0,-0.382683,3275.44,300,5409.71,91,0),
 (4345390,0,0.382683,0,0.92388,3312.99,324,5738.87,64,0),
 (4395395,0,0.510183,0,0.860066,3407.21,308,5465.08,77,0),
 (4505529,0,0,0,1,3671.56,96,-6421.2,52,6),
 (4505599,0,0,0,1,3681.83,96,-6485.96,109,6),
 (4505602,0,0,0,1,3646.4,96,-6488.92,109,6),
 (4505605,0,0.707106,0,0.707107,3647.65,96,-6451.79,89,6),
 (4505633,0,0.707108,0,-0.707105,3693.64,96,-6456.71,83,6),
 (4505663,0,0.707107,0,0.707107,3647.65,96,-6466.8,14,6),
 (4505788,0,1,0,0,3696.91,96,-6487.78,85,6),
 (4505967,0,0.707107,0,0.707107,3714.61,96,-6438.56,110,6),
 (4505991,0,0.707107,0,0.707107,3630.38,96,-6437.26,109,6),
 (4615366,0,1,0,0,-5200,80,-2430,54,6),
 (4615376,0,0,0,1,-5200,80,-2338,48,6),
 (4635395,0,1,0,0,-5029,80,-2336,82,6),
 (4635406,0,1,0,0,-5011,80,-2418,55,6),
 (4635418,0,0,0,1,-5126.49,80,-2212.15,56,6),
 (4635433,0,0.382683,0,0.92388,-5372.44,80,-2160.55,61,6),
 (4635487,0,1,0,0,-5129.5,80,-2370.79,47,6),
 (4635516,0,0.707107,0,0.707106,-5191.87,80,-2480.84,2,6),
 (4635541,0,0.707108,0,0.707105,-5025.02,80,-2483.39,6,6),
 (4635589,0,1,0,0,-5286,80,-2301,47,6),
 (4635639,0,1,0,0,5150,80,5653,47,6),
 (4635656,0,1,0,0,5237.71,80,5702.13,48,6),
 (4635666,0,0,0,1,5364.34,80,5751.93,61,6),
 (4635682,0,0,0,1,5446.33,80,5800.82,54,6),
 (4635699,0,0,0,1,5287.63,80.0317,5876.86,2,6),
 (4635726,0,0,0,1,5298,80,5592,56,6),
 (4635746,0,0,0,1,5467.01,80,5615.93,82,6),
 (4635767,0,1,0,0,5385.93,80,5608.21,55,6),
 (4695367,0,-0.382683,0,0.92388,5425.7,80,5894.42,6,6),
 (4705364,0,0,0,1,458.587,9,5494.2,52,4),
 (4795356,0,0.710634,0,0.703561,-4820.81,16.3456,-4751.1,111,7),
 (4885423,0,1,0,0,-4243,3,-2430,112,1),
 (4965373,0,0.382683,0,0.92388,-2078.07,20,2301.93,87,7),
 (4965376,0,0.804834,0,0.593499,-2132.53,20,2390.78,87,7),
 (4965379,0,0.92388,0,-0.382683,-2286.42,20,2302.09,87,7),
 (4965382,0,0.988771,0,0.14944,-2233.41,20,2390.42,87,7),
 (4965385,0,-0.593499,0,0.804835,-2233.01,20,2213.02,87,7),
 (4965388,0,-0.14944,0,0.988771,-2132.4,20,2213.65,87,7),
 (4965393,0,1,0,0,-2175.07,20,2396.93,9,7),
 (4965395,0,0.466913,0,0.884303,-2102.34,20,2245.91,9,7),
 (4965397,0,0.459383,0,0.888238,-2091.76,20,2260.61,9,7),
 (4965399,0,-0.484504,0,0.874789,-2271.97,20,2260.99,9,7),
 (4965401,0,-0.493228,0,0.8699,-2263.9,20,2245.62,9,7),
 (4965403,0,0.857709,0,-0.514136,-2231.35,20,2330.04,9,7),
 (4965405,0,0.019203,0,0.999816,-2183.21,20,2248.2,9,7),
 (4965407,0,0.882333,0,0.470626,-2133.93,20,2329.51,9,7),
 (4965409,0,0,0,1,-2191.21,20,2352.5,112,7),
 (4965416,0,0,0,1,-2175.52,20,2352.52,42,7),
 (4965430,0,0.99995,0,-0.01,-2183.29,20,2264.36,38,7),
 (4965439,0,0.707109,0,-0.707104,-2163.07,20,2276.93,41,7),
 (4965638,0,0.707107,0,0.707106,-2211.76,20,2301.51,52,7),
 (5095968,0,0.810963,0,0.585097,-1860.09,92.6429,-4551.57,113,6),
 (5095989,0,-0.612818,0.033739,0.78831,3580.47,97.8071,5439.74,114,6),
 (5126270,0,-0.471328,0,0.881958,915.785,13.016,-4184.86,115,4),
 (5126308,0,-0.663731,0,0.747971,-2996.27,17.3403,-668.063,116,4),
 (5285763,0,0.079915,0,0.996802,5840.6,41.077,-4635.26,117,5),
 (5335764,0,-0.707107,0,0.707107,-6308.56,128,767.991,118,2),
 (5335771,0,-0.707107,0,0.707107,-6308.55,128,751.876,118,2),
 (5335778,0,0.707107,0,0.707107,-6330.12,128,768.068,118,2),
 (5335785,0,0.707108,0,0.707106,-6330.12,128,752.006,118,2),
 (5335792,0,0.707107,0,0.707107,-6330.11,128,736.109,118,2),
 (5335799,0,0.707107,0,0.707107,-6354.3,128,735.332,118,2),
 (5335806,0,0.707107,0,0.707107,-6354.29,128,751.401,118,2),
 (5335813,0,0.707107,0,0.707107,-6354.25,128,767.377,118,2),
 (5407162,0,0.382683,0,0.92388,848.8,99.5441,-4880.25,119,6),
 (5475479,0,1,0,0,-5792.43,6,4181.16,82,5),
 (5525465,0,1,0,0,-2040.05,5.91337,2592.09,110,8),
 (5535563,0,0.714143,0,-0.7,-1481.82,278,-1729.26,120,5),
 (5555402,0,0.707107,0,-0.707106,-2163,20,2294,37,7),
 (5555521,0,-0.707107,0,0.707107,-2163,20,2311,37,7),
 (5555720,0,1,0,0,-2191.95,20,2397.11,9,7),
 (5555840,0,0.667463,0,0.744643,-6038.37,117.85,-1819.56,121,6),
 (5625515,0,0.707107,0,-0.707106,1599.14,37.59,-867.259,122,7),
 (5625536,0,0.967663,0,0.252245,-5553.01,36.5608,-4751.73,123,7),
 (5645584,0,-0.352737,0.014862,0.934868,6475.81,72.6623,3894.9,124,4),
 (5995564,0,-0.281922,0,0.959437,6543.77,115.412,-1293.96,125,8),
 (5996314,0,1,0,0,-4662.43,12.417,4325.93,126,3),
 (6015488,0,0,0,1,-1712.85,29.3321,52.8094,127,3),
 (6016497,0,0.892608,0,-0.450834,-5269.97,7.94785,2689.61,128,8),
 (6016529,0,0.934124,0,-0.356949,-5309.73,5.98473,2722.13,129,8),
 (6035619,0,0.5653,0,0.824886,-2523.39,28.3908,2927.16,130,0),
 (6035994,0,0.971338,0,-0.237703,1365.83,31,-339.801,131,0),
 (6036087,0,-0.030791,0,0.999526,4112.33,24.0448,-1252.19,132,0),
 (6055628,0,1,0,0,5446.04,87,5015.86,133,6),
 (6075870,0,0.70711,0,-0.707103,5583.79,102,-4080.01,134,7),
 (6205495,0,0,0,1,1589,4,-6360,83,1),
 (6205563,0,0.982936,0,-0.183947,-586.607,3,2489.04,83,1),
 (6255464,0,0.999987,0,-0.005,685.653,5.90845,-3174.82,62,7),
 (6335638,0,1,0,0,-6505.89,40,-3326.55,135,5),
 (6555558,0,0,0,1,-6827,46,5539,136,1),
 (6595508,0,1,0,0,475.129,12,4789.65,137,4),
 (6645602,0,0.9992,0,0.039989,-865.993,80,1557.56,84,3),
 (6705352,0,-0.362358,0,0.932039,-977.587,73,1554.06,52,3),
 (6705354,0,0.488872,0,0.872356,-912.509,80,1618.06,89,3),
 (6915358,0,-0.267499,0,0.963558,592.308,6.03961,3087.28,52,2),
 (6955366,0,1,0,0,603.157,6,3035.74,83,2),
 (6955398,0,0.92388,0,0.382683,577.423,6,3040.55,88,2),
 (7105353,0,0.407033,0,0.913414,-636.363,3,2480.01,52,1),
 (7105362,0,0.931493,0,-0.363759,-606.257,2.99884,2473.84,88,1),
 (7125559,0,0.953847,0,0.300293,38.6493,155.936,-113.431,138,8),
 (7265850,0,-0.364131,0,0.931348,-1441.8,12.2702,-3699.57,139,8),
 (7475354,0,1,0,0,4772.2,19.2437,946.569,140,4),
 (7555632,0,0.35012,0,0.936705,-5384.58,76,5069.54,110,6),
 (7555639,0,0.35012,0,0.936705,-5370.43,76,5082.07,110,6),
 (7555646,0,-0.044985,0,0.998988,-5328.45,76,5017.27,109,6),
 (7615442,0,0.019999,0,0.9998,-5312.79,4.18497,-6401.14,85,0),
 (7795548,0,0,0,1,-287.579,35,4878.54,52,9),
 (7825775,0,1,0,0,971.886,260.468,-1346.4,87,5),
 (7925448,0,0,0,1,-347.611,35,4868.78,83,9),
 (7925453,0,1,0,0,-353,35,4840,46,9),
 (7925474,0,1,0,0,-270.472,35,4839.57,84,9),
 (7955551,0,0,0,1,1374.12,29,1484.58,141,7),
 (8105493,0,0.707106,0,0.707107,-342.53,28,-4494.5,78,0),
 (8135583,0,0.707388,0,-0.706825,-2070.24,75.8886,3287.59,142,6),
 (8135585,0,0.000796,0,1,-2086.33,75.8758,3264.05,142,6),
 (8135587,0,0.707107,0,0.707106,-2093.32,75.8569,3257.09,142,6),
 (8145352,0,1,0,0,419.977,12,5106.75,35,4),
 (8145375,0,0.945784,0,-0.324796,499.718,11.88,5064.89,27,4),
 (8205773,0,0.40776,0,0.913089,-6549.38,398,6032.07,110,0),
 (8205780,0,-0.104807,0,0.994493,-6498.5,398,6049.87,110,0),
 (8205787,0,-0.223106,0,0.974795,-6475.05,398,6041.36,110,0),
 (8215863,0,0,0,1,-366.692,28.2635,-4697.47,143,0),
 (8225394,0,0.999672,-0.023337,-0.000246,-7572.26,21.0955,-1082.47,109,9),
 (8265837,0,0.382683,0,0.92388,-6933.85,25,5396.63,109,1),
 (8265840,0,0.92388,0,0.382683,-6978.85,25,5441.63,109,1),
 (8265845,0,-0.382683,0,0.92388,-6996.85,25,5333.63,109,1),
 (8265907,0,0.92388,0,-0.382683,-7041.85,25,5378.63,109,1),
 (8265945,0,0.707114,0,0.707099,-6636.4,30,5591.84,109,1),
 (8265949,0,0,0,1,-6636.4,30,5477.84,109,1),
 (8285394,0,0.655617,0,0.755093,-6560.2,398,6006.02,110,0),
 (8285401,0,-0.382683,0,0.92388,-6470.39,398,5978.88,110,0),
 (8285408,0,0.923879,0,0.382684,-6491.65,398,5957.63,110,0),
 (8375365,0,0.822502,0,-0.568762,-7452.98,5.23407,7036.04,110,9),
 (8375462,0,0.92388,0,0.382683,1613.8,50.5342,-3539.06,9,9),
 (8375464,0,0.92388,0,0.382683,1590.07,50.5,-3515.77,9,9),
 (8445558,0,-0.168397,0,0.985719,4016.36,0.383341,2971.25,109,3),
 (8445561,0,-0.00065,0.816083,0.00046,4016.38,-3.22249,2971.24,109,3),
 (8445742,0,-0.678264,0,0.734818,-6157.35,90,-6380.2,88,8),
 (8465531,0,-0.354799,0,0.934943,-5156.44,5.13163,-6368.16,143,0),
 (8465731,0,0.707389,0,0.706824,2502.21,7,-2053.56,87,1),
 (8495456,0,0.758362,0,-0.651833,-7079.62,45.7554,7550.43,109,9),
 (8525417,0,-0.7071,0,0.707114,-5513.72,87.7084,4911.81,144,9),
 (8535482,0,0,0,1,-6240.15,56.0141,7405.22,145,1),
 (8535537,0,0.986418,0,0.164252,4197.72,11.5446,5116.31,146,1),
 (8545482,0,0.8499,0,0.526943,-4741.34,130.725,-2337.86,109,9),
 (8555470,0,-0.380925,0,0.924606,-6506.41,398,5990.09,147,0),
 (8565352,0,1,0,0,1590,4,-6398,52,1),
 (8565368,0,0.707108,0,0.707105,1594,4,-6428,88,1),
 (8565387,0,0,0,1,1566,4,-6358,88,1),
 (8565430,0,0,0,1,1626,4,-6358,88,1),
 (8575574,0,0,0,1,2527.89,109.46,-1589,148,2),
 (8575671,0,0.983844,0,-0.17903,-546.66,1,-3846.21,149,1),
 (8575780,0,0.982936,0,-0.183947,4787.39,4.55002,-4731.4,4,5),
 (8615418,0,0.707107,0,0.707106,-1871.02,12,-3084.53,150,4),
 (8615431,0,1,0,0,-1826.55,12,-3107.17,37,4),
 (8615438,0,0,0,1,-1844,12,-3028,151,4),
 (8615445,0,-0.707107,0,0.707107,-1919.95,12,-2984.2,38,4),
 (8615452,0,0,0,1,-2009.26,12,-3044.96,37,4),
 (8695470,0,-0.527281,0,0.849691,-7086.14,122.688,4393.08,110,9),
 (8735494,0,0,0,1,4064.6,37,-6200.57,37,9),
 (8735515,0,0,0,1,3998.34,37,-6200.6,41,9),
 (8845416,0,0,0,1,4911.47,360,-1372.99,2,5),
 (8855664,0,1,0,0,-6790.82,46,5559.23,110,1),
 (9025411,0,1,0,0,-4501.14,76.4798,7395.51,40,4),
 (9505496,0,0.937647,0,0.34759,1718.58,24.7326,1611.95,84,7),
 (9525588,0,1,0,0,-4768.94,326.321,-3981.51,87,5),
 (9645411,0,0,0,1,2378.47,125.656,-4981.42,88,7),
 (9655494,0,0.950796,0,0.309817,3529.21,5,-4753.1,99,8),
 (9665352,0,-0.236929,0,0.971527,3377.14,308,5605.06,70,0),
 (9686134,0,0.37166,0,0.928369,-4940.28,66,-3103.98,152,7),
 (9686208,0,0.975897,0,-0.21823,4989.46,450,-6037.93,153,7),
 (9715726,0,0.714421,0,-0.699716,5192.3,75.6463,1024.17,154,6),
 (9725893,0,1,0,0,56.0028,117.04,-159.649,9,2),
 (9745390,0,0,0,1,1434.71,7,3390.56,155,8),
 (9815424,0,1,0,0,2147.33,122,-5632.12,156,7),
 (9825721,0,0.919102,0,-0.394019,643.506,18.5033,-429.408,9,0),
 (9825728,0,0.919102,0,-0.394019,625.932,18.3558,-447.136,9,0),
 (9875353,0,1,0,0,3222,24,-3482,52,3),
 (9875413,0,1,0,0,3256,24,-3504,88,3),
 (9925364,0,0,0,1,3223,24,-3442,83,3),
 (2203318222848,0,0,0,1,500,180,460,20,8),
 (2203318222959,0,0,0,1,0,0,0,884,41),
 (2203318222974,0,0,0,1,500,0,500,305,41);
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;

--
-- Definition of trigger `tr_DeleteBuilding`
--

DROP TRIGGER /*!50030 IF EXISTS */ `tr_DeleteBuilding`;

DELIMITER $$

CREATE DEFINER = `root`@`localhost` TRIGGER `tr_DeleteBuilding` AFTER DELETE ON `buildings` FOR EACH ROW BEGIN
    DELETE FROM swganh.object_attributes WHERE object_id = OLD.id;
END $$

DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;