-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: stockflow
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Dairy','INACTIVE'),(2,'Groceries','ACTIVE'),(3,'Skincare','ACTIVE'),(4,'Dairy','ACTIVE'),(5,'Snacks','ACTIVE'),(6,'Electronics','ACTIVE'),(7,'Accessories','ACTIVE');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Walk-in Customer','ACTIVE'),(2,'Fortune pvt. Ltd','ACTIVE');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_transaction`
--

DROP TABLE IF EXISTS `inventory_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_transaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `balance_stock` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_transaction`
--

LOCK TABLES `inventory_transaction` WRITE;
/*!40000 ALTER TABLE `inventory_transaction` DISABLE KEYS */;
INSERT INTO `inventory_transaction` VALUES (1,15,'2026-04-30 10:35:45.846678',18,'Dairy Milk',5,'','ADJUST_IN'),(2,38,'2026-04-30 10:36:25.153853',6,'Milk',5,'','ADJUST_IN'),(3,32,'2026-04-30 10:36:42.562763',6,'Milk',6,'','DAMAGE');
/*!40000 ALTER TABLE `inventory_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurement`
--

DROP TABLE IF EXISTS `procurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procurement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cost_price` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `invoice_ref` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `total_cost` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `received_status` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement`
--

LOCK TABLES `procurement` WRITE;
/*!40000 ALTER TABLE `procurement` DISABLE KEYS */;
INSERT INTO `procurement` VALUES (4,500,'2026-04-22','INV-4222','PO-2024-20','Derma Touch Sunscreen',25,'Dmart',12500,NULL,NULL,NULL,NULL,NULL),(5,121,'2026-04-24','INV-4201','PO-2024-12','Basmati rice 1kg',12,'InstaMart',1452,NULL,NULL,NULL,NULL,NULL),(6,45,'2026-04-27','INV-4101','PO-2024-11','Paneer 500g',45,'Dmart',2025,NULL,NULL,NULL,NULL,NULL),(7,90,'2026-04-12','INV-4111','PO-2024-01','Orid Dhal',8,'Dmart',720,NULL,NULL,NULL,NULL,NULL),(8,7,'2026-04-21','INV-4226','PO-2024-33','Jim jam',23,'InstaMart',161,NULL,NULL,NULL,NULL,NULL),(9,90,'2026-04-27','INV-4331','PO-2024-90','Orid Dhal',15,'Dmart',1350,NULL,NULL,NULL,NULL,NULL),(10,7,'2026-04-27','INV-4339','PO-2024-99','jim jam',20,'InstaMart',140,NULL,NULL,NULL,NULL,NULL),(11,45,'2026-04-27','INV-43310','PO-2024-190','Paneer 500g',10,'Instamart',450,NULL,NULL,NULL,NULL,NULL),(12,85,'2026-04-27','INV-4225','PO-2024-87','Type - C Charging Cable',10,'InstaMart',850,NULL,NULL,NULL,NULL,NULL),(13,22,'2026-04-28','INV980','PO-2024-31','Keychain',11,'Instamart',232,NULL,NULL,NULL,NULL,NULL),(14,85,'2026-04-28','INV211','PO-2024-22','Type - C Charging Cable',10,'Dmart',850,NULL,NULL,NULL,NULL,NULL),(15,22,'2026-04-28','INV980','PO-2024-31','Keychain',11,'Instamart',232,NULL,NULL,NULL,NULL,NULL),(16,85,'2026-04-28','INV221','PO-2024-22','Type - C Charging Cable',10,'Dmart',850,NULL,NULL,NULL,NULL,NULL),(17,90,'2026-04-28','INV999','PO-2024-33','Lightning cable',10,'Instamart',900,NULL,NULL,NULL,NULL,NULL),(18,90,'2026-04-29','INV771','PO-2024-18','Dairy Milk',10,'Dmart',900,NULL,NULL,NULL,NULL,NULL),(19,65,'2026-04-29','INV991','PO-2024-38','Aux Cable',15,'Instamart',975,NULL,NULL,NULL,NULL,NULL),(21,7,'2026-04-30','INV-4223','PO-2024-26','Jim jam',20,'InstaMart',140,0,140,'PAID','RECEIVED','');
/*!40000 ALTER TABLE `procurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `barcode` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `stock` int DEFAULT '0',
  `reorder_level` int DEFAULT '10',
  `safety_stock` int DEFAULT '5',
  `abc_class` varchar(255) DEFAULT NULL,
  `fsn_class` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (6,'989898987890','dairy',45,'Milk',29,'MIL-1640','ltr',31,12,6,NULL,NULL,'ACTIVE'),(9,'8901009801','Skincare',560,'Derma Touch Sunscreen',520,'DER-1956','pcs',22,12,6,NULL,NULL,'ACTIVE'),(10,'8908908909','Groceries',142,'Basmati rice 1kg',130,'BAS-7168','kg',12,12,6,NULL,NULL,'ACTIVE'),(11,'7897899870','Dairy',63,'Paneer 500g',57,'PAN-3517','g',55,12,6,NULL,NULL,'ACTIVE'),(12,'8809887689','Groceries',112,'Orid Dhal',103,'ORI-6735','pcs',20,12,6,NULL,NULL,'ACTIVE'),(13,'8989090907','Snacks',15,'Jim jam',10,'JIM-7518','pcs',60,10,5,NULL,NULL,'ACTIVE'),(14,'9878879809','Electronics',120,'Type - C Charging Cable',95,'TYP-1083','pcs',28,10,5,NULL,NULL,'ACTIVE'),(17,'8908978908971','Electronics',90,'Lightning cable',90,'LIG-9269','pcs',10,10,5,NULL,NULL,'ACTIVE'),(18,'8901234567123','Snacks',100,'Dairy Milk',96,'DAI-7083','pcs',14,10,5,NULL,NULL,'INACTIVE'),(19,'8900980987864','Electronics',90,'Aux Cable',75,'AUX-6401','pcs',15,10,5,NULL,NULL,'INACTIVE');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `card_paid` double DEFAULT NULL,
  `cash_paid` double DEFAULT NULL,
  `customer_mobile` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `upi_paid` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,'INV-2063d0ce','2026-04-24 10:20:44.071816','Cash',220,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'INV-0d10929d','2026-04-24 10:24:22.618184','Cash',550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'INV-a612dfff','2026-04-24 10:24:59.457009','Cash',550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'INV-c1121fc7','2026-04-24 11:51:43.455020','Cash',58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'INV-e5f0aafb','2026-04-24 12:43:21.466924','Cash',58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'INV-91808bfd','2026-04-24 12:46:48.125990','Cash',58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'INV-8fc0b4ce','2026-04-27 10:37:45.682956','Cash',29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'INV-c389ebe7','2026-04-27 12:26:26.774610','Cash',220,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'INV-56be22f4','2026-04-27 16:47:16.119652','Cash',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'INV-27056b9c','2026-04-27 16:47:45.590433','Cash',520,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'INV-7007f870','2026-04-27 16:48:06.195034','Cash',206,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'INV-1f0a65e3','2026-04-27 17:14:24.215538','Cash',190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'INV-6fb46cd5','2026-04-29 16:26:17.383467','Cash',10.5,0,0,10.5,'','Walk-in Customer',0,10.5,'PAID',10,0.5,0),(14,'INV-4a2b80c6','2026-05-04 11:31:12.054971','Cash',100.8,0.20000000000000284,0,101,'','Walk-in Customer',0,100.8,'PAID',96,4.800000000000001,0),(15,'INV-965f2c7c','2026-05-04 11:38:04.137625','Cash',100.8,0,0,100.8,'','Walk-in Customer',0,100.8,'PAID',96,4.800000000000001,0),(16,'INV-baed3571','2026-05-04 11:51:14.478840','Split',1092,0,0,1000,'','Walk-in Customer',0,1092,'PAID',1040,52,92),(17,'INV-84f23559','2026-05-04 12:29:22.580397','Cash',30.45,0.5500000000000007,0,31,'','Walk-in Customer',0,30.45,'PAID',29,1.4500000000000002,0),(18,'INV-d81b261e','2026-05-04 12:46:16.893833','UPI',97.65,0.3499999999999943,0,50,'','Walk-in Customer',10,97.65,'PAID',103,4.65,48);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_item`
--

DROP TABLE IF EXISTS `sale_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `sale_id` bigint DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_item`
--

LOCK TABLES `sale_item` WRITE;
/*!40000 ALTER TABLE `sale_item` DISABLE KEYS */;
INSERT INTO `sale_item` VALUES (1,110,7,'Basmati-rice',2,1,'BAS-2812',220),(2,110,7,'Basmati-rice',5,2,'BAS-2812',550),(3,110,6,'Milk',5,3,'MIL-1640',550),(4,29,6,'Milk',2,4,'MIL-1640',58),(5,29,6,'Milk',2,5,'MIL-1640',58),(6,29,6,'Milk',2,6,'MIL-1640',58),(7,29,6,'Milk',1,7,'MIL-1640',29),(8,10,13,'Jim jam',2,9,'JIM-7518',20),(9,520,9,'Derma Touch Sunscreen',1,10,'DER-1956',520),(10,103,12,'Orid Dhal',2,11,'ORI-6735',206),(11,95,14,'Type - C Charging Cable',2,12,'TYP-1083',190),(12,10,13,'Jim jam',1,13,'JIM-7518',10),(13,96,18,'Dairy Milk',1,14,'DAI-7083',96),(14,520,9,'Derma Touch Sunscreen',2,16,'DER-1956',1040),(15,29,6,'Milk',1,17,'MIL-1640',29),(16,103,12,'Orid Dhal',1,18,'ORI-6735',103);
/*!40000 ALTER TABLE `sale_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint NOT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `minimum_threshold` int DEFAULT NULL,
  `reorder_level` int DEFAULT NULL,
  `safety_stock` int DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'₹',6,12,6,'StockFlow');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'InstaMart','ACTIVE'),(2,'Dmart','ACTIVE');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-04 13:18:58
