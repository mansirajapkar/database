-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinestore
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Customer_Id` varchar(20) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Phn_No` varchar(15) DEFAULT NULL,
  `Shipping_Address` varchar(50) DEFAULT NULL,
  `Payment_Mode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Customer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('OS01053','Aman Jadhav','amjadhav2004@gmail.com','7828035010',' Phooti Koti, Indore, M.P.','GPay'),('OS11307','Bhumi Khandelwal','bhumikhandelwal@gmail.com','9993806326','Janta Colony, Nanda Nagar , Indore, M.P.','Paypal'),('OS15241','Anshika Vilekar','anshuvilekar@gmail.com','9039414251','Sanwer Road, Aurobindo, Indore, M.P.','C.O.D'),('OS16639','Tanishk Salvi','tanishksalvi@gmail.com','9669593661','Janta Colony, Nanda Nagar, Indore, M.p.','Visa'),('OS21277','Bharat Vishwakarma','bharatvk@gmail.com','9111110411','clerk Colony, Gouri Nagar Chourah , Indore, M.P.','Visa'),('OS25185','Nisha Murumkar','murumkarniss@gmail.com','8839294937','Shyam Nagar, Sukhliya, Indore, M.p.','Paypal'),('OS31133','Bandhan Hardiya','hardiyabandha@gmail.com','9770133113','Banganga, MariMata Square , Indore, M.P.','GPay'),('OS36101','Chanchal Jatav','jatavchanchu@gmail.com','9926092691','Lala ka Bagicha , Patnipura, Indore, M.P.','Paypal'),('OS39800','Nitish Jha','nitishjaa@gmail.com','9755100893','Jeevan ki fail, Pardesipura, Indore, M.p.','GPay'),('OS40894','Tanishk Mane','manemaratha@gmail.com','8305157338','Sarwahara Nagar, teen puliya, Indore, M.p.','Paypal'),('OS43309','Arjun Jagdale','arjunjagdale07@gmail.com','626419681','shyam Nagar, Sukhliya, Indore, M.p.','C.O.D'),('OS43423','Ajay Vanshkar','azzuvansh@gmail.com','8305832434',' dewas naka, Nipania, Indore, M.P.','Debit Card'),('OS51380','Himanshi Koshta','himkosta@gmail.com','7724859806','Sukhliya, Vijay Nagar, Indore, M.P.','Apple Pay'),('OS51794','Gourav Panwar','panwarmaratha@gmail.com','8602349715','Janta Colony, Nanda Nagar, Indore, M.P.','Debit Card'),('OS61108','Abhishek Vanshkar','abhivanshkar@gmail.com','8839680116',' Summerpark Colony, Nipania, Indore, M.P.','C.O.D'),('OS74767','Akash Vashishtha','vashishtha123@gmail.com','6262076747',' Regal Square, Indore, M.P.','Debit Card'),('OS75493','Lucky Mata','luckymata@gmail.com','8827739457','Phooti Koti, Indore, M.p.','Debit Card'),('OS91076','Yash Thakur','thakuryash@gmail.com','7697907199','Road No 2, Nanda Nagar , Indore, M.p.','Paypal'),('OS95778','Bhumika Vishwakarma','bhumikavk@gmail.com','6260387759','Naka Bhatta, Pardesipura , Indore, M.P.','Visa'),('OS98988','Devesh Goyal','goyal2710@gmail.com','7804816949','Atal Dwar, Patnipura, Indore, M.P.','C.O.D');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_Id` varchar(10) NOT NULL,
  `Order_Date` date DEFAULT NULL,
  `Product_Id` varchar(10) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Total_Amt` decimal(10,2) DEFAULT NULL,
  `Customer_Id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Order_Id`),
  KEY `FK_Products` (`Product_Id`),
  KEY `FK_Customer` (`Customer_Id`),
  CONSTRAINT `FK_Customer` FOREIGN KEY (`Customer_Id`) REFERENCES `customers` (`Customer_Id`),
  CONSTRAINT `FK_Products` FOREIGN KEY (`Product_Id`) REFERENCES `products` (`Product_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('ORD-002','2024-08-13','PR002-HDPH','$349',4,1396.00,'OS11307'),('ORD-003','2024-05-23','PR003-TV55','$799',1,799.00,'OS15241'),('ORD-004','2024-06-03','PR004-LTP','$1299',2,2598.00,'OS16639'),('ORD-005','2024-07-18','PR005-WTCH','$429',5,2145.00,'OS21277'),('ORD-006','2024-04-28','PR006-MS99','$99',3,297.00,'OS25185'),('ORD-007','2024-07-20','PR007-CMR6','$2499',2,7797.00,'OS31133'),('ORD-008','2024-05-07','PR008-SPKR','$299',4,1196.00,'OS36101'),('ORD-009','2024-09-07','PR009-XBX1','$499',2,998.00,'OS39800'),('ORD-010','2024-09-03','PR010-FBTB','$499',5,179.00,'OS40894'),('ORD-011','2024-05-13','PR001-SMPH','$999',2,1998.00,'OS43309'),('ORD-012','2024-07-23','PR002-HDPH','$349',3,1047.00,'OS43423'),('ORD-013','2024-06-02','PR003-TV55','$799',2,1598.00,'OS51380'),('ORD-014','2024-06-11','PR004-LTP','$1299',1,1299.00,'OS51794'),('ORD-015','2024-04-01','PR005-WTCH','$429',3,1287.00,'OS61108'),('ORD-016','2024-06-11','PR006-MS99','$99',2,198.00,'OS74767'),('ORD-017','2024-04-21','PR007-CMR6','$2499',4,9996.00,'OS75493'),('ORD-018','2024-08-21','PR008-SPKR','$299',5,1495.00,'OS91076'),('ORD-019','2024-07-01','PR009-XBX1','$499',1,499.00,'OS95778'),('ORD-020','2024-09-11','PR010-FBTB','$179',5,895.00,'OS98988'),('ORD-021','2024-05-18','PR010-FBTB','$179',1,179.00,'OS43309'),('ORD-022','2024-07-28','PR009-XBX1','$499',1,499.00,'OS15241'),('ORD-023','2024-07-18','PR001-SMPH','$999',2,1998.00,'OS91076'),('ORD-024','2024-04-25','PR005-WTCH','$429',2,858.00,'OS31133'),('ORD-025','2024-06-15','PR008-SPKR','$299',3,897.00,'OS74767'),('ORD001','2024-06-05','PR001-SMPH','$999',1,999.00,'OS01053');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Product_Id` varchar(10) NOT NULL,
  `Product_Name` varchar(20) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL,
  `Stock_Qty` varchar(10) DEFAULT NULL,
  `Descripton` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Product_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('PR001-SMPH','iPhone 14 Pro','Smartphones','$999','120 Units','The latest iPhone Model with a 6.1-inch Super Retina XDR display,and 5G capabilities.'),('PR002-HDPH','Wireless Headphones','HeadPhones & Audio','$349','250 Units','30 hour battery life, premium sound and smart listening features'),('PR003-TV55','55-in QLED 4kSmartTV','Televisions','$799','75 Units','55-inch 4k Smart TV with Quantum Dot technology for vivid colors & Sharp Contrast'),('PR004-LTP','Dell 13 Laptop','Laptops','$1299','45 Units','Ultra-poratble 13.3-inch laptop with Intel Corei7 processor, 16GB RAM, & 512GB SSD'),('PR005-WTCH','Apple series9','Smartwatch','$429','85 Units','Latest Smartwatch featuring larger always-on Retina display, advanced fitness tracking & much more'),('PR006-MS99','Logitech Mouse','Comp. Accessories','$99','300 Units','Adv. ergonomic wireless mouse with ultra-precise scrolling, customizable buttons, & wireless'),('PR007-CMR6','Canon EOS Camera','Cameras','$2499','30 Units','Full-frame mirrorless camera with 20.1MP sensor, 4K video recording, & in-body image stabilization.'),('PR008-SPKR','Bose Speaker','Audio & speaker','$299','150 Units','Portable bluetooth speaker with 360-degree sound, deep bass, & 16 hours of batter life.'),('PR009-XBX1','Microsoft-XboxSX','Gaming Console','$499','85 Units','The most powerful gaming console by Microsoft, 1TB of storage,& 4K gaming at up  to 120 FPS'),('PR010-FBTB','Fitbit Charge5','Fitness Trackers','$179','200 Units',' Advanced fitness and health tracker with a built-in GPS, and stress management features.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-16 18:12:09
