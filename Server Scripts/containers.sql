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
-- Definition of table `containers`
--

DROP TABLE IF EXISTS `containers`;
CREATE TABLE `containers` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `parent_id` bigint(20) unsigned NOT NULL default '0',
  `container_type` int(11) unsigned NOT NULL default '0',
  `oX` float NOT NULL default '0',
  `oY` float NOT NULL default '0',
  `oZ` float NOT NULL default '0',
  `oW` float NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `planet_id` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fk_containers_ctype_ctype` (`container_type`),
  CONSTRAINT `containers_ibfk_1` FOREIGN KEY (`container_type`) REFERENCES `container_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9815511 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `containers`
--

/*!40000 ALTER TABLE `containers` DISABLE KEYS */;
INSERT INTO `containers` (`id`,`parent_id`,`container_type`,`oX`,`oY`,`oZ`,`oW`,`x`,`y`,`z`,`planet_id`) VALUES 
 (134411,4235588,1,0,0.930215,-0.022293,0.362165,52.9125,-45.7737,-97.516,8),
 (134412,9815433,1,0,1,0,0,-2.5171,-13.75,-18.3738,7),
 (134413,9815431,1,0,0.707107,0,0.707107,1.93206,-6.75,-6.44368,7),
 (134414,9815430,1,0,0.94441,0,0.328769,-7.3708,-6.76678,-17.6424,7),
 (134415,9815430,1,0,1,0,0,7.88572,-6.76678,-12.3353,7),
 (134416,9815429,1,0,0.408487,0,0.912764,-7.67999,-6.75,0.00095,7),
 (134417,9815426,1,0,1,0,0,-3.48832,0.25,-5.03462,7),
 (164427,0,1,0,0.559983,0.03645,0.825954,-2522.67,130.303,1598.14,2),
 (164428,0,2,0,0.997333,0.061218,-0.002435,-2519.73,123.853,1529.59,2),
 (164429,0,1,0,0.974786,0.001399,-0.223093,-2518.03,130.501,1468.45,2),
 (164430,0,2,0,0.998279,-0.026358,0.001382,-2490.78,119.538,1558.78,2),
 (164440,0,2,0,1,0,0,2554.7,123,-1674.93,2),
 (178362,4255644,1,0,0.814007,-0.031441,0.564522,-12.7602,-44.9615,-146.914,7),
 (178364,6075877,1,0,0.707107,0,-0.707106,0.091291,-13.7499,1.28479,7),
 (178447,0,2,0,1,0,0,4138.75,6,963.559,7),
 (178448,0,2,0,1,0,0,4133.62,6,952.906,7),
 (178449,0,2,0,1,0,0,4297.72,6,1020.68,7),
 (189523,6016554,2,0,0.998438,0.024966,0.001249,-80.2816,-63.9866,-107.265,3),
 (189524,6016574,2,0,0.997502,0.069898,0.002048,-62.2544,-58.3133,-238.759,3),
 (189525,6016572,2,0,0.999838,0.014999,-0.00015,31.1392,-61.2501,-112.72,3),
 (189526,6016572,2,0,0.997689,0.039985,0.0006,56.9487,-57.6432,-84.4866,3),
 (189527,6016555,2,0,0.998551,-0.019974,-0.0005,-160.445,-42.05,-77.298,3),
 (189528,6016555,2,0,0.999188,0.034986,0.0007,-173.013,-42.0272,-66.3293,3),
 (200335,8535484,2,0,0.993757,0.109756,0.002195,53.0068,-48.8688,-55.6089,1),
 (200336,8535484,1,0,0.009204,0,0.999958,45.6698,-47.059,-6.79665,1),
 (200337,0,2,0,1,0,0,-7043.64,2.08686,-3325.62,1),
 (200338,0,2,0,0.999476,0.032313,-6.3e-005,-7046.99,1.95998,-3312.73,1),
 (261336,0,2,0,0.999798,-0.016236,0.000193,-263.452,11.6034,2772.92,5),
 (261337,0,2,0,1,0,0,-267.92,28.2463,2795.36,5),
 (261338,4295395,1,0,-0.698565,-0.049048,0.712575,56.9158,-48.4,-58.3167,5),
 (468334,3705355,1,0,0,0,1,-0.114021,2.0202,-6.74917,9),
 (468338,3705362,1,0,0.707107,0,-0.707107,78.6063,2.02021,5.06478,9),
 (468340,3705359,1,0,0.707107,0,0.707106,-59.3123,2.21342,4.98791,9),
 (468343,3705359,1,0,0.707107,0,-0.707107,-81.1825,2.02019,4.80605,9),
 (479811,479723,1,0,-0.688354,0.110746,0.708756,27.4875,-28.1306,-9.62569,6),
 (479878,479732,1,0,0.729645,0.063298,0.680827,45.4196,-48.8154,-100.617,6),
 (479898,479733,1,0,0.717911,0,0.696135,75.8526,-46.5373,-142.298,6),
 (479908,479724,1,0,0.466913,0,0.884303,47.2288,-47.2679,-13.2615,6),
 (479910,479725,1,0,0.731359,-0.020446,-0.681332,96.9249,-62.2495,-15.6194,6),
 (479918,479724,1,0,0.693111,0,0.720831,54.3187,-68.2797,-42.0993,6),
 (479943,479729,1,0,0.982004,0,-0.188859,88.1534,-66.9084,-142.298,6),
 (479945,479730,1,0,0.808027,0,-0.589145,136.629,-66.24,-104.198,6),
 (479956,479731,1,0,-0.696707,0,0.717356,191.445,-66.7693,-102.643,6),
 (529346,529326,1,0,0.94441,0,-0.328769,51.4471,-44.4211,-103.465,1),
 (529349,529327,1,0,1,0,0,-10.4971,-45.4992,-147.5,1),
 (529353,529327,1,0,1,0,0,58.0106,-57.5355,-184.28,1),
 (529363,529331,1,0,0.079915,0,0.996802,-11.69,-69.1962,-89.8369,1),
 (529368,529333,1,0,0,0,1,-89.5009,-99.4081,-88.1736,1),
 (529418,529395,2,0,0.993483,0.104741,0.002021,-15.4309,-43.7293,-107.106,1),
 (529425,529402,1,0,0.707107,0,0.707107,-67.9807,-64.6895,-232.643,1),
 (529435,529375,1,0,0.895493,-0.008275,0.405285,-42.34,-32.821,-26.9598,1),
 (529441,529383,2,0,-0.619384,0,0.785088,-163.919,-49.4354,-92.2545,1),
 (529451,529378,1,0,0.707107,0,-0.707107,-61.6841,-30.7567,-61.7178,1),
 (568615,0,1,0,1,0,0,-3839.53,13,-3765.14,4),
 (568630,0,1,0,0.165038,0,0.986287,-3839.17,13,-3741.11,4),
 (568665,0,1,0,0.492881,0,0.870096,-3890.35,12.0288,-3804.79,4),
 (568948,568760,1,0,0.707107,0,0.707107,-5.28897,0.125266,-3.35952,4),
 (568951,568751,1,0,1,0,0,3.14157,0.125266,4.74961,4),
 (568995,568983,1,0,1,0,0,34.7929,-69.6167,-113.728,4),
 (625317,1696446,2,0,1,0,0,6.84427,0.7,-6.54045,5),
 (625318,0,1,0,0.644827,0,0.764329,2887.37,94.0216,1110.61,5),
 (733374,733361,1,0,0.707107,0,-0.707106,53.1107,-48.9319,-62.3316,3),
 (733379,733364,1,0,0.707107,0,-0.707106,96.8163,-45.6414,-96.9226,3),
 (733380,733370,1,0,0.707107,0,0.707107,73.0611,-46.0203,-141.564,3),
 (733385,733361,1,0,1,0,0,52.5423,-67.6199,-48.8952,3),
 (733392,733368,1,0,0.707107,0,-0.707107,195.415,-66.7495,-107.065,3),
 (733413,733401,2,0,0.998201,0,0,96.955,-45.3521,-103.696,3),
 (733416,733407,1,0,1,0,0,78.6606,-45.8789,-149.824,3),
 (733422,733405,1,0,0.795843,0,-0.605503,192.762,-66.8124,-102.006,3),
 (871800,568985,1,0,1,0,0,-58.9867,-66.3731,-236.077,4),
 (871802,568965,1,0,1,0,0,-71.0331,-70.4978,-104.408,4),
 (871812,568961,2,0,0.238195,0,0.971217,-62.4528,-46.7681,-72.447,4),
 (1106593,0,1,0,1,0,-0.000355,-5350.08,40,-4438.84,8),
 (5096043,5096000,3,0,0.842149,-0.03298,-0.537437,80.7025,-46.2253,-137.369,6),
 (5096047,5095991,4,0,0.998875,0.04498,0.000675,55.3925,-68.1263,-45.7365,6),
 (5096064,5095998,4,0,0.9992,0.039989,0,187.186,-65.5256,-107.319,6),
 (5096065,5095997,3,0,0.972407,0.06818,-0.22256,137.273,-66.783,-128.521,6),
 (5096066,5095991,5,0,0.993347,0.034801,0.001846,39.8253,-45.9568,-59.2559,6),
 (5165581,3695703,4,0,0.997951,-0.049939,-0.001999,-11.6691,-30.5231,-25.889,2),
 (5165583,3695705,4,0,0.178593,0.973611,-0.033639,50.3511,-46.1201,-64.8178,2),
 (5165584,3695706,4,0,0.995756,-0.059817,-0.004194,-8.0951,-46.518,-151.273,2),
 (5165585,3695706,4,0,0.124785,0.945335,0.069735,27.1764,-59.8185,-171.818,2),
 (5165586,3695708,4,0,0.908899,0.160701,0.383726,-21.9588,-62.9469,-260.342,2),
 (5165587,3695709,4,0,0.977098,0.187915,0.018854,-105.325,-71.1164,-168.471,2),
 (5165588,3695710,4,0,-0.169914,-0.024634,0.985142,-18.2844,-68.6437,-101.977,2),
 (5165591,3695709,4,0,-0.075724,0,0,-76.2426,-99.131,-156.799,2),
 (5165592,3695712,4,0,0.162602,-0.025498,0.985919,-93.0786,-100.81,-95.9347,2),
 (5165593,3695712,4,0,-0.050774,0,0,-83.847,-99.7924,-94.2346,2),
 (5365467,5095970,3,0,0.421806,-0.035339,0.903586,-11.1947,-23.022,-30.7861,6),
 (5365470,5095971,4,0,0.890511,0.106994,-0.440791,17.4154,-32.0309,-76.5569,6),
 (5365474,5095973,5,0,0.997439,0.014948,-0.001249,-9.32628,-36.6245,-139.08,6),
 (5365477,5095975,3,0,0.999221,0.025136,-0.030111,-16.1712,-57.5669,-212.711,6),
 (5365482,5095976,2,0,0.996978,-0.054939,0.001924,-111.639,-61.5008,-122.697,6),
 (5365486,5095977,4,0,0.764796,0.035812,-0.643264,-11.0886,-60.8759,-94.5079,6),
 (5535582,5535565,1,0,0.980067,0,0.198669,-2.44546,0.25,-4.73838,5),
 (5535589,5535567,1,0,0.950796,0,0.309816,-2.94585,-12,26.4328,5),
 (5535590,5535568,1,0,1,0,0,32.4869,-12,24.3699,5),
 (5535591,5535568,1,0,0.984727,0,0.174108,27.6587,-12,37.7681,5),
 (5535606,5535571,1,0,0.703845,0,0.710353,37.9257,-16,58.3574,5),
 (5535607,5535571,1,0,1,0,0,41.6561,-16,57.1535,5),
 (5535608,5535571,1,0,0.968912,0,0.247404,47.7333,-16,55.7944,5),
 (5535609,5535571,1,0,0.872744,0,-0.488177,66.0614,-16,85.3121,5),
 (5535610,5535571,1,0,0.484504,0,0.874789,79.641,-16,85.8524,5),
 (5535611,5535571,1,0,0.937646,0,0.34759,72.2376,-16,57.2441,5),
 (5555807,5095979,4,0,0.257137,-0.020278,0.965936,-91.2902,-92.9294,-100.438,6),
 (5555912,5555849,1,0,0.059169,0,0.998248,2.95268,-13.75,-6.20792,6),
 (5555914,5555849,1,0,0.896052,0,-0.443948,-8.15777,-13.75,-15.1096,6),
 (5555915,5555847,1,0,0.994493,0,-0.104807,2.57598,-6.75,-3.78185,6),
 (5555916,5555846,1,0,0.789992,0,-0.613117,-7.28536,-6.1027,-16.899,6),
 (5555917,5555845,1,0,0.065749,0,0.997836,-7.77295,-6.75,-3.95174,6),
 (5555918,5555843,1,0,0.671178,0,0.741296,1.64252,0.25,-5.07909,6),
 (5625569,5625539,4,0,0.926798,0,0.375559,1.76754,-32.7339,-71.6236,7),
 (5625575,5625540,4,0,0.826925,0.014406,0.557147,47.944,-37.9711,-101.026,7),
 (5625579,5625541,4,0,0.048859,0.005644,0.992193,-8.00691,-37.202,-144.364,7),
 (5625591,5625543,4,0,0.976976,0.213347,0,-12.0939,-55.1009,-261.578,7),
 (5995601,4235600,1,0,1,0,0,4.4496,-3.25,4.94626,8),
 (5995605,4235605,1,0,0.992198,0,-0.124675,-1.54459,-20.7332,9.05681,8),
 (5995608,4235606,1,0,1,0,0,7.45244,-20.75,19.175,8),
 (5995609,0,1,0,1,0,0,-1483.3,41,-175.318,8),
 (5995655,5625546,4,0,0.997189,-0.07493,0,-21.0329,-71.8743,-145.927,7),
 (5995664,5625547,4,0,0.996789,-0.079914,-0.004964,-79.825,-91.3666,-90.9833,7),
 (5995665,5625547,4,0,1,0,0,-102.591,-92.2552,-97.6987,7),
 (5995666,5625547,4,0,1,0,0,-87.141,-95.3803,-124.436,7),
 (6036023,6035998,1,0,1,0,0,-3.73333,-3.25,5.94876,0),
 (6036026,6036001,1,0,0.932327,0,0.361615,-5.416,-13.7499,6.75482,0),
 (6036035,6036004,1,0,0.952334,0,0.305059,10.5606,-11.5,-21.8896,0),
 (6036047,4275375,1,0,0.941545,0.032172,0.333908,90.5581,-46.4454,-147.371,0),
 (6036048,4275366,1,0,0.883348,-0.053655,-0.438835,50.3078,-67.146,-44.2617,0),
 (6036049,4275372,1,0,0.000524,0.004972,0.99448,113.474,-67.0458,-86.761,0),
 (6036050,4275372,1,0,-0.232032,-0.010272,0.970524,137.688,-66.8832,-86.221,0),
 (6036051,4275373,1,0,0.865894,-0.021749,-0.495087,195.482,-66.6664,-100.148,0),
 (6075899,4255653,1,0,1,0,0,43.2367,-46.8955,-5.77964,7),
 (6075900,4255653,1,0,1,0,0,54.8191,-67.7299,-34.3506,7),
 (6075901,4255659,1,0,1,0,0,132.471,-66.6441,-105.776,7),
 (6075902,4255660,1,0,1,0,0,184.724,-65.3792,-93.4002,7),
 (6075903,4255660,1,0,1,0,0,186.714,-65.1928,-111.842,7),
 (6075904,4795359,1,0,-0.002362,-0.001236,0.710463,2.94597,0.534605,-5.90871,7),
 (6075905,4795361,1,0,0.980067,0,0.198669,-7.489,-6.75,-0.615375,7),
 (6075906,4795362,1,0,0.984727,0,0.174108,5.14538,-6.76678,-15.4386,7),
 (6075907,4795363,1,0,1,0,0,8.65878,-6.74593,-9.42373,7),
 (6075908,4795365,1,0,0.926798,0,-0.375559,3.36158,-13.75,-0.268087,7),
 (6075909,4795365,1,0,0.442608,0.559831,0.424668,-8.90729,-13.3389,-8.65916,7),
 (6075911,4255646,1,0,0.809947,0.075424,0.581298,-20.3639,-63.2801,-259.73,7),
 (6075912,4255647,1,0,0.004904,-0.004316,0.988747,-123.865,-69.6302,-172.081,7),
 (6075913,4255647,1,0,0.759579,0.079381,-0.587559,-66.8198,-96.1395,-159.356,7),
 (6075914,4255650,1,0,0.14313,0.064072,0.985209,-100.808,-99.8895,-102.666,7),
 (6336292,5285896,1,0,0.703414,-0.024857,0.709918,20.6609,-38.6178,-34.493,5),
 (6336293,5285896,1,0,0.996541,0.069872,-0.001799,52.91,-47.7726,-68.8661,5),
 (6336295,5285897,1,0,0.996193,0.019855,-0.040033,92.4457,-61.7166,-8.92617,5),
 (6336297,5285903,1,0,-0.682008,-0.017054,0.730917,192.944,-66.9372,-104.692,5),
 (6336298,5285903,1,0,0.998139,-0.034949,0.001749,192.344,-66.6052,-98.1468,5),
 (6336300,0,1,0,0.805072,0,-0.593178,-270.181,12.9241,2817.92,5),
 (6475949,6055631,1,0,1,0,0,2.51136,0.25,-5.6392,6),
 (6475950,6055635,1,0,1,0,0,7.79196,-13.4021,8.69994,6),
 (6475951,6055637,1,0,1,0,0,6.51243,-20.7332,3.59994,6),
 (6475952,6055638,1,0,0.996802,0,-0.079915,-3.55614,-19.8962,35.6429,6),
 (6475953,6055638,1,0,0.059169,0,0.998248,5.58455,-19.8646,35.5296,6),
 (6475954,6055638,1,0,-0.000796,0,1,1.48339,-20.75,35.3275,6),
 (6525464,8575715,6,0,0.96639,0,0.257081,68.7294,-54,-125.007,1),
 (6525465,8575697,7,0,0.707107,0,0.707106,-36.2427,-28,-98.0066,1),
 (6525466,8575697,7,0,0,0,1,-35.0795,-28,-87.2652,1),
 (6525467,8575697,8,0,0,0,1,-28.4995,-28,-87.203,1),
 (6525468,8575697,7,0,0.707107,0,-0.707106,-20.7715,-28,-90.173,1),
 (6575944,1855730,1,0,-0.050774,0,0.99871,-0.476915,-20.75,35.2889,0),
 (6575945,1855742,1,0,0.99955,0,0.029995,1.62441,0.184067,-0.019186,0),
 (7105572,0,1,0,0.964114,0,-0.265487,5700.84,122,1932.06,2),
 (7875788,1189190,1,0,-0.324796,0,0.945784,33.8116,37.942,-14.8265,8),
 (7875789,1189193,1,0,1,0,0,29.0921,43.9575,-32.926,8),
 (7875790,1189195,1,0,0.917121,0,0.398609,13.491,37.942,-1.80561,8),
 (7875791,1189182,1,0,0.435492,0.063731,0.894837,16.2579,22.4432,8.15394,8),
 (7875792,1189178,1,0,0.791414,0.068528,0.606487,-0.358753,8.52015,-35.1524,8),
 (7955559,4295404,1,0,0.967663,0,0.252245,77.4869,-45.8755,-147.041,5),
 (7955560,4295401,1,0,-0.663232,-0.012866,0.748079,136.93,-66.042,-108.986,5),
 (7955561,4295402,1,0,0.721382,0,-0.692537,194.356,-66.8757,-102.266,5),
 (7955562,4295395,1,0,0.724101,-0.030991,0.688226,49.4684,-67.601,-49.5312,5),
 (7955563,4295396,1,0,-0.64864,0,0.761095,96.594,-61.9787,-12.5527,5),
 (7955606,7955575,1,0,0.678557,0,0.734548,-43.8328,-14,75.9498,7),
 (7955613,7955574,1,0,1,0,0,83.5335,-14.2607,71.964,7),
 (7955663,5625520,1,0,0,0,1,-6.28413,-38.8035,-151.494,7),
 (7955670,5625520,1,0,0,0,1,61.5342,-48.7726,-176.839,7),
 (7955671,5625522,1,0,0.963771,0,-0.266731,-8.44011,-55.1797,-261.842,7),
 (7955686,5625524,1,0,0.770993,0,0.636844,-12.7344,-60.9449,-97.7388,7),
 (7955708,5625523,1,0,-0.674336,0.029509,0.737341,-79.6728,-91.3562,-159.566,7),
 (7955728,5625526,1,0,0.988771,0,0,-102.586,-91.3897,-103.279,7),
 (8075612,6035622,1,0,-0.054701,0.03358,0.997577,8.7589,-40.6761,-57.9788,0),
 (8075613,6035624,1,0,0.992357,0.08469,0.005938,-4.21118,-46.3935,-152.362,0),
 (8075614,6035626,1,0,0.998488,0,0.054972,-18.9594,-62.2306,-263.28,0),
 (8075615,6035628,1,0,-0.291502,0,0.95657,-9.05101,-69.1607,-91.858,0),
 (8075616,6035630,1,0,1,0,0,-90.8353,-101.007,-101.458,0),
 (8095603,6075875,1,0,1,0,0,6.25874,-6.75158,-10.3713,7),
 (8095744,6075878,1,0,1,0,0,6.44687,-13.7584,9.11993,7),
 (8095745,6075879,1,0,-0.703845,0,0.710353,18.1858,-13.7584,-0.508322,7),
 (8095746,6075880,1,0,1,0,0,10.5856,-11.5,-21.6118,7),
 (8465549,8575684,9,0,0.497571,0,0.867423,-66.1419,-18,-96.5903,1),
 (8465550,8575684,9,0,0,0.314567,0,-65.7341,-17.9368,-114.274,1),
 (8465551,8575685,9,0,0.995491,0,-0.094857,-22.5632,-20,-95.864,1),
 (8465571,8575703,1,0,0.707107,0,-0.707106,-70.7294,-20,-0.962916,1),
 (8465572,8575703,1,0,0.707107,0,0.707106,-86.2819,-20,-2.48117,1),
 (8465580,8575718,9,0,-0.35302,0,0.935616,43.1797,-50,-148.246,1),
 (8465587,8575734,10,0,0.707107,0,0.707106,17.3109,-58.9881,1.16018,1),
 (8465597,8575746,11,0,0.707107,0,0.707106,-2.1028,-84,-85.7419,1),
 (8465598,8575747,11,0,-0.707107,0,0.707107,29.1254,-84,-85.7581,1),
 (8496260,4235595,1,0,0.843371,0.049352,0.491351,-104.425,-98.7886,-117.466,8),
 (8496261,4235593,1,0,0.362077,0.010223,0.932059,-10.928,-68.9056,-97.0174,8),
 (8496262,4235591,1,0,0.975416,0.090006,0.200973,-24.3787,-63.5215,-256.439,8),
 (8496263,4235589,1,0,0.995083,-0.064772,0.004867,-7.76662,-46.5489,-150.645,8),
 (8535511,8535486,1,0,-0.291502,0,0.95657,61.0221,-75.2442,-57.589,1),
 (8555708,8575684,12,0,0.707107,0,0.707106,-77.1607,-18,-78.2119,1),
 (8555709,8575684,13,0,0.707107,0,-0.707106,-67.767,-18,-106.272,1),
 (8555710,8575684,10,0,0.707107,0,0.707106,-88.1446,-18,-101.12,1),
 (8715532,8575585,2,0,1,0,0,74.1771,-45.7932,-138.209,2),
 (8715534,8575585,1,0,0.370181,0,0.92896,75.8697,-46.106,-137.043,2),
 (8715535,8575583,1,0,0.758362,0,-0.651834,194.795,-66.8477,-106.722,2),
 (8795683,5407165,2,0,1,0,0,4.92003,-41.0546,-75.1324,6),
 (8795684,5407166,2,0,1,0,0,51.482,-45.4791,-100.606,6),
 (8795685,5407167,2,0,1,0,0,46.7424,-56.4031,-186.611,6),
 (8795686,5407169,2,0,1,0,0,-19.8301,-62.8932,-260.998,6),
 (8795687,5407170,2,0,1,0,0,-76.9857,-99.6929,-162.537,6),
 (8795688,5407173,2,0,1,0,0,-100.588,-100.598,-94.6237,6),
 (8795689,5407173,2,0,1,0,0,-83.9517,-99.9265,-93.6864,6),
 (8825382,1696447,1,0,0.707107,0,0.707107,-7.08484,0.7,-0.114647,5),
 (9145383,468319,2,0,1,0,0,14.2953,-37.2976,14.3437,9),
 (9145384,468319,2,0,0.62161,0,0.783327,-7.87265,-37.2976,-30.5549,9),
 (9765485,468319,2,0,0.76161,0,-0.648036,9.56524,-37.2976,-24.9289,9),
 (9765486,468319,2,0,0.76161,0,-0.648036,-2.63087,-37.2976,-34.5987,9),
 (9815357,0,2,0,1,0,0.000648,5645.24,122,1867.65,2),
 (9815358,0,2,0,0.99998,0,-0.006332,5674,122,1899.87,2),
 (9815402,4335473,2,0,0.999388,0,0,-79.5376,-46.5492,-143.282,2),
 (9815403,4335467,2,0,0.999888,0,0,-87.5772,-46.9819,-104.688,2),
 (9815404,4335470,2,0,1,0,0,-138.949,-66.4526,-122.67,2),
 (9815405,4335470,2,0,1,0,0,-128.026,-66.6569,-86.2773,2),
 (9815406,4335471,2,0,0.995004,0,0,-189.015,-66.2181,-103.638,2),
 (9815412,4335471,2,0,0.359462,-0.061787,0.927853,-188.654,-66.0052,-105.262,2),
 (9815510,9815433,1,0,0.949235,0,0.314567,-7.31137,-13.75,-15.9379,7),
 (2533274790395904,2203318222961,11,0,0.707107,0,0.707106,19,0,-23,41);	-- 0x0009000000000000 is the start id for non snapshot (dynamic created) containers. This one is used by the Tutorial.
/*!40000 ALTER TABLE `containers` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;