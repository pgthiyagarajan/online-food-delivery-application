CREATE DATABASE  IF NOT EXISTS `foodapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `foodapp`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: foodapp
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `fatherName` varchar(100) DEFAULT NULL,
  `motherName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gymTime` varchar(20) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menuid` int NOT NULL AUTO_INCREMENT,
  `restaurantid` int DEFAULT NULL,
  `itemname` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `isavailable` varchar(45) DEFAULT NULL,
  `ratings` float DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,1,'Masala Dosa','Crispy rice crepe filled with spiced potato masala.',90,'Yes',4.5,'images/menu-images/1_1.jpg'),(2,1,'Idli','Steamed rice cakes served with lentil soup and chutneys.',60,'Yes',4.3,'images/menu-images/1_2.jpg'),(3,1,'Vada','Deep-fried savory lentil doughnuts, crispy and soft.',50,'Yes',4.2,'images/menu-images/1_3.jpg'),(4,1,'Upma','Semolina porridge cooked with vegetables and spices.',70,'Yes',4.4,'images/menu-images/1_4.jpg'),(5,1,'Pongal','Creamy rice and lentil dish tempered with ghee and spices.',80,'Yes',4.6,'images/menu-images/1_5.jpg'),(6,1,'Rava Kesari','Sweet semolina dessert flavored with saffron and ghee.',60,'Yes',4.1,'images/menu-images/1_6.jpg'),(7,1,'Filter Coffee','Strong South Indian coffee brewed with chicory.',40,'Yes',4.7,'images/menu-images/1_7.jpg'),(8,1,'Masal Vada','Crispy, deep-fried lentil patty made with coarsely ground chana dal.',55,'Yes',4.3,'images/menu-images/1_8.jpg'),(9,1,'Lemon Rice','Tangy rice dish tempered with mustard seeds and chilies.',75,'Yes',4.2,'images/menu-images/1_9.jpg'),(10,1,'Curd Rice','Cooling rice mixed with yogurt and tempered spices.',65,'No',4,'images/menu-images/1_10.jpg'),(11,2,'Butter Chicken','Tender chicken pieces in creamy tomato gravy.',220,'Yes',4.6,'images/menu-images/1_11.jpg'),(12,2,'Paneer Tikka Masala','Grilled cottage cheese cubes in spicy gravy.',200,'No',4.4,'images/menu-images/1_12.jpg'),(13,2,'Dal Makhani','Slow-cooked black lentils in buttery tomato sauce.',180,'No',4.5,'images/menu-images/1_13.jpg'),(14,2,'Aloo Gobi','Potato and cauliflower cooked with spices.',160,'Yes',4.2,'images/menu-images/1_14.jpg'),(15,2,'Chole Bhature','Spicy chickpeas served with fried bread.',150,'Yes',4.3,'images/menu-images/1_15.jpg'),(16,2,'Tandoori Roti','Whole wheat flatbread baked in tandoor.',20,'Yes',4.1,'images/menu-images/1_16.jpg'),(17,2,'Butter Naan','Soft leavened flatbread baked in tandoor brushed with butter.',25,'Yes',4.2,'images/menu-images/1_17.jpg'),(18,2,'Jeera Rice','Basmati rice tempered with cumin seeds.',90,'No',4,'images/menu-images/1_18.jpg'),(19,2,'Gulab Jamun','Deep-fried milk solids soaked in sugar syrup.',60,'Yes',4.5,'images/menu-images/1_19.jpg'),(20,2,'Lassi','Sweetened yogurt drink flavored with cardamom.',50,'Yes',4.3,'images/menu-images/1_20.jpg'),(21,3,'Veg Manchurian','Crispy vegetable balls in spicy sauce',120,'Yes',4.3,'images/menu-images/1_21.jpg'),(22,3,'Chicken Lollipop','Fried chicken wings with garlic sauce',180,'No',4.5,'images/menu-images/1_22.jpg'),(23,3,'Hakka Noodles','Stir-fried noodles with vegetables',150,'Yes',4.2,'images/menu-images/1_23.jpg'),(24,3,'Sweet Corn Soup','Creamy soup with sweet corn and vegetables',90,'No',4.1,'images/menu-images/1_24.jpg'),(25,3,'Szechuan Chicken','Spicy chicken with Szechuan peppers',220,'No',4.6,'images/menu-images/1_25.jpg'),(26,3,'Spring Rolls','Crispy rolls with vegetable filling',100,'No',4.3,'images/menu-images/1_26.jpg'),(27,4,'Classic Burger','Beef patty with lettuce and special sauce',150,'Yes',4.5,'images/menu-images/1_27.jpg'),(28,4,'Fried Chicken Sandwich','Crispy fried chicken tucked in a soft bun with fresh lettuce, pickles, and creamy mayo.',170,'Yes',4.6,'images/menu-images/1_28.jpg'),(29,4,'Chicken Nuggets','Bite-sized crispy chicken pieces - crunchy on the outside, tender inside.',160,'Yes',4.3,'images/menu-images/1_29.jpg'),(30,4,'French Fries','Crispy golden fries with seasoning.',80,'Yes',4.4,'images/menu-images/1_30.jpg'),(31,4,'Mac & Cheese','Rich, creamy cheese melted over tender macaroni.',180,'Yes',4.7,'images/menu-images/1_31.jpg'),(32,4,'Chocolate Shake','Creamy chocolate milkshake.',120,'Yes',4.5,'images/menu-images/1_32.jpg'),(33,5,'Tonkotsu Ramen','A rich, creamy pork bone noodle soup with tender pork slices, soft-boiled egg, and fresh toppings.',350,'Yes',4.6,'images/menu-images/1_33.jpg'),(34,5,'Salmon Nigiri','Fresh salmon slices over pressed rice.',280,'No',4.7,'images/menu-images/1_34.jpg'),(35,5,'Miso Soup','Traditional Japanese soybean soup.',100,'Yes',4.2,'images/menu-images/1_35.jpg'),(36,5,'Vegetable Tempura','Lightly battered fried vegetables.',180,'Yes',4.3,'images/menu-images/1_36.jpg'),(37,5,'Spicy Tuna Roll','Tuna with spicy mayo wrapped in rice.',260,'Yes',4.4,'images/menu-images/1_37.jpg'),(38,5,'Mochi Ice Cream','Chewy rice dough with a cool, creamy ice cream center.',150,'No',4.5,'images/menu-images/1_38.jpg'),(39,6,'Kimchi Fried Rice','Spicy fermented cabbage with fried rice.',180,'Yes',4.5,'images/menu-images/1_39.jpg'),(40,6,'Bibimbap','Mixed rice with vegetables and egg.',200,'Yes',4.6,'images/menu-images/1_40.jpg'),(41,6,'Bulgogi','Marinated grilled beef slices.',280,'Yes',4.7,'images/menu-images/1_41.jpg'),(42,6,'Japchae','Stir-fried glass noodles with vegetables and soy-sesame seasoning.',220,'No',4.8,'images/menu-images/1_42.jpg'),(43,6,'Kimchi Stew','Spicy fermented cabbage stew.',170,'Yes',4.2,'images/menu-images/1_43.jpg'),(44,6,'Doenjang Jjigae','Fermented soybean paste stew.',150,'No',4.3,'images/menu-images/1_44.jpg'),(45,7,'Masala Dosa','Crispy rice crepe with potato filling.',90,'Yes',4.7,'images/menu-images/1_45.jpg'),(46,7,'Onion Rava Dosa','Semolina dosa with onions.',100,'Yes',4.5,'images/menu-images/1_46.jpg'),(47,7,'Paneer Dosa','Dosa stuffed with spiced paneer.',120,'Yes',4.6,'images/menu-images/1_47.jpg'),(48,7,'Set Dosa','Soft, fluffy dosas served in a set of three.',60,'Yes',4.1,'images/menu-images/1_48.jpg'),(49,7,'Podi Dosa','Dosa sprinkled with spicy lentil powder.',70,'Yes',4.3,'images/menu-images/1_49.jpg'),(50,7,'Ghee Roast Dosa','Dosa cooked with pure ghee.',130,'Yes',4.4,'images/menu-images/1_50.jpg'),(51,8,'Chicken Biryani','Fragrant rice with chicken and spices.',220,'Yes',4.8,'images/menu-images/1_51.jpg'),(52,8,'Veg Biryani','Fragrant rice with mixed vegetables.',180,'No',4.5,'images/menu-images/1_52.jpg'),(53,8,'Mutton Biryani','Fragrant rice with tender mutton pieces.',280,'No',4.9,'images/menu-images/1_53.jpg'),(54,8,'Paneer Biryani','Fragrant rice with cottage cheese cubes.',210,'No',4.6,'images/menu-images/1_54.jpg'),(55,8,'Dum Biryani','Slow-cooked biryani in sealed pot.',250,'No',4.8,'images/menu-images/1_55.jpg'),(56,8,'Kheer','Creamy rice pudding with nuts.',80,'Yes',4.3,'images/menu-images/1_56.jpg'),(57,9,'Chicken Fried Rice','Stir-fried rice with chicken and veggies.',160,'Yes',4.4,'images/menu-images/1_57.jpg'),(58,9,'Chilli Chicken','Crispy chicken in spicy sauce.',200,'Yes',4.6,'images/menu-images/1_58.jpg'),(59,9,'Schezwan Noodles','Spicy noodles with Schezwan sauce.',170,'Yes',4.3,'images/menu-images/1_59.jpg'),(60,9,'Honey Chilli Potato','Crispy potatoes in sweet-spicy glaze.',150,'Yes',4.5,'images/menu-images/1_60.jpg'),(61,9,'Garlic Chicken','Chicken tossed in garlic sauce.',210,'Yes',4.7,'images/menu-images/1_61.jpg'),(62,9,'Chocolate Lava Cake','Warm chocolate cake with molten center.',120,'No',4.6,'images/menu-images/1_62.jpg'),(63,10,'Veg Tacos','Crispy tortillas with vegetable filling.',150,'Yes',4.5,'images/menu-images/1_63.jpg'),(64,10,'Chicken Quesadilla','Grilled tortilla with chicken and cheese.',180,'No',4.6,'images/menu-images/1_64.jpg'),(65,10,'Nachos Grande','Tortilla chips with cheese and beans.',160,'No',4.3,'images/menu-images/1_65.jpg'),(66,10,'Burrito Bowl','Rice bowl with beans, meat and toppings.',200,'Yes',4.7,'images/menu-images/1_66.jpg'),(67,10,'Guacamole','Fresh avocado dip with spices.',120,'No',4.2,'images/menu-images/1_67.jpg'),(68,10,'Churros','Fried dough pastry with cinnamon sugar.',100,'Yes',4.8,'images/menu-images/1_68.jpg');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `restaurantid` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `orderdate` varchar(255) DEFAULT NULL,
  `totalamount` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `paymentmode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (2,1,1,'2025-06-06 13:41:02.152',90,'Confirmed','Card'),(3,1,1,'2025-06-06 13:53:22.918',90,'Confirmed','Card'),(4,7,1,'2025-06-06 13:59:08.778',550,'Confirmed','Cash on Delivery'),(5,5,1,'2025-06-08 15:13:44.798',650,'Confirmed','Card'),(6,7,5,'2025-06-08 17:08:06.564',380,'Confirmed','GPay'),(7,7,7,'2025-06-08 17:19:30.715',320,'Confirmed','GPay'),(8,7,8,'2025-06-08 17:22:28.277',380,'Confirmed','Cash on Delivery'),(9,8,1,'2025-06-08 17:55:33.554',520,'Confirmed','GPay');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `orderitemid` int NOT NULL AUTO_INCREMENT,
  `orderid` int DEFAULT NULL,
  `menuid` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `totalamount` int DEFAULT NULL,
  PRIMARY KEY (`orderitemid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (4,0,1,1,90),(5,0,1,1,90),(6,0,49,1,70),(7,0,50,3,390),(8,0,45,1,90),(9,0,33,1,350),(10,0,38,2,300),(11,0,48,2,120),(12,0,50,2,260),(13,0,48,1,60),(14,0,50,2,260),(15,0,48,2,120),(16,0,50,2,260),(17,0,51,2,440),(18,0,56,1,80);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurantid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phonenumber` varchar(45) DEFAULT NULL,
  `cusinetype` varchar(45) DEFAULT NULL,
  `deliverytime` varchar(255) DEFAULT NULL,
  `admineuserid` int DEFAULT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `isactive` varchar(45) DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`restaurantid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Saravana Bhavan','Indiranagar, Bangalore','9876543210','South Indian','30 mins',NULL,'4.5','Yes','images/restaurant-images/rest1.jpg'),(2,'Punjabi Dhaba','Koramangala, Bangalore','9123456780','North Indian','40 mins',NULL,'4.2','Yes','images/restaurant-images/rest2.jpg'),(3,'Dragon Wok','Whitefield, Bangalore','9012345678','Chinese','35 mins',NULL,'4.3','No','images/restaurant-images/rest3.jpg'),(4,'Burger Boss','Jayanagar, Bangalore','9988776655','American','45 mins',NULL,'4.7','Yes','images/restaurant-images/rest4.jpg'),(5,'Sakura Umami','HSR Layout, Bangalore','9900112233','Japanese','50 mins',NULL,'4.4','Yes','images/restaurant-images/rest5.jpg'),(6,'Kimchi Kitchen','Koramangala, Bangalore','9090909090','Korean','25 mins',NULL,'4.1','No','images/restaurant-images/rest6.jpg'),(7,'Dosa Hub','Indiranagar, Bangalore','9080706050','South Indian','20 mins',NULL,'4.6','Yes','images/restaurant-images/rest7.jpg'),(8,'Biryani Bhavan','Whitefield, Bangalore','9876701234','North Indian','38 mins',NULL,'4.8','Yes','images/restaurant-images/rest8.jpg'),(9,'China Express','Jayanagar, Bangalore','9765432109','Chinese','29 mins',NULL,'4.0','No','images/restaurant-images/rest9.jpg'),(10,'Tex Mex Treats','HSR Layout, Bangalore','9654321098','Mexican','42 mins',NULL,'4.3','Yes','images/restaurant-images/rest10.jpg');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(65) NOT NULL,
  `phonenumber` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `role` enum('Customer','Restaurant Admin','Delivery Agent','Super Admin') DEFAULT NULL,
  `createddate` varchar(255) DEFAULT NULL,
  `lastlogindate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ABC','abc','0000','abc@gmail.com','9876543210','Chennai, India','Super Admin','2025-06-11 18:51:17.905','2025-06-11 18:51:17.905');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-11 18:54:34
