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
-- Definition of table `craft_types`
--

DROP TABLE IF EXISTS `craft_types`;
CREATE TABLE `craft_types` (
  `id` int(11) unsigned NOT NULL default '0',
  `description` char(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_types`
--

/*!40000 ALTER TABLE `craft_types` DISABLE KEYS */;
INSERT INTO `craft_types` (`id`,`description`) VALUES 
 (1,'weapons'),
 (2,'armor'),
 (4,'food'),
 (8,'clothing'),
 (16,'vehicle'),
 (32,'droid'),
 (64,'chemical'),
 (128,'tissue'),
 (256,'creatures'),
 (512,'furniture'),
 (1024,'installation'),
 (2048,'lightsaber'),
 (4096,'generic'),
 (8192,'genetics'),
 (16384,'tailor,mandalorian'),
 (32768,'armor,mandalorian'),
 (65536,'droid,mandalorian'),
 (131072,'starship components'),
 (262144,'ship tools'),
 (524288,'misc');
/*!40000 ALTER TABLE `craft_types` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;