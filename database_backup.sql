-- MySQL dump 10.13  Distrib 8.4.0, for Linux (x86_64)
--
-- Host: localhost    Database: all_tables
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `domain_name` (`domain_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain`
--

LOCK TABLES `domain` WRITE;
/*!40000 ALTER TABLE `domain` DISABLE KEYS */;
INSERT INTO `domain` VALUES (1,'2024-06-20 06:03:39','2024-06-20 06:03:39','IT Company'),(2,'2024-06-21 06:31:21','2024-06-21 06:31:21','it'),(3,'2024-06-21 06:31:54','2024-06-21 06:31:54','Designer Company'),(4,'2024-06-21 06:32:49','2024-06-21 06:32:49','Building Company');
/*!40000 ALTER TABLE `domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain_types`
--

DROP TABLE IF EXISTS `domain_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `name_2` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_types`
--

LOCK TABLES `domain_types` WRITE;
/*!40000 ALTER TABLE `domain_types` DISABLE KEYS */;
INSERT INTO `domain_types` VALUES (1,'2024-06-20 07:17:44','2024-06-20 07:17:44','IT Company','Deals in IT services'),(2,'2024-06-20 07:17:58','2024-06-20 07:17:58','Bank','Deals in money services'),(3,'2024-06-20 08:45:13','2024-06-20 08:45:13','Designer Company','12'),(4,'2024-06-20 08:47:32','2024-06-20 08:47:32','Building Company','1'),(5,'2024-06-20 09:49:54','2024-06-20 09:49:54','Law firm','Handles clients in legal');
/*!40000 ALTER TABLE `domain_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_password_code`
--

DROP TABLE IF EXISTS `new_password_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_password_code` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_password_code`
--

LOCK TABLES `new_password_code` WRITE;
/*!40000 ALTER TABLE `new_password_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_password_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_name` (`company_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'2024-06-20 06:00:44','2024-06-20 06:00:44','Extravis'),(2,'2024-06-20 06:54:31','2024-06-20 06:54:31','12'),(3,'2024-06-20 07:04:44','2024-06-20 07:04:44','Emumba'),(4,'2024-06-21 06:29:17','2024-06-21 06:29:17','NETS INTERNATIONAL');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_password`
--

DROP TABLE IF EXISTS `otp_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp_password` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email` (`user_email`),
  UNIQUE KEY `code` (`code`),
  KEY `idx_user_email` (`user_email`),
  CONSTRAINT `otp_password_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_password`
--

LOCK TABLES `otp_password` WRITE;
/*!40000 ALTER TABLE `otp_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `otp_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_table`
--

DROP TABLE IF EXISTS `role_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_table`
--

LOCK TABLES `role_table` WRITE;
/*!40000 ALTER TABLE `role_table` DISABLE KEYS */;
INSERT INTO `role_table` VALUES (1,'2024-06-20 06:05:15','2024-06-20 06:05:15','Backend Developer');
/*!40000 ALTER TABLE `role_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `domain_type_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `domain_type_id` (`domain_type_id`),
  CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`domain_type_id`) REFERENCES `domain_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'2024-06-20 07:18:38','2024-06-20 07:18:38',1,'Frontend Dev'),(2,'2024-06-20 07:18:47','2024-06-20 07:18:47',1,'Backend Dev'),(3,'2024-06-20 07:18:59','2024-06-20 07:18:59',2,'Finance Manager'),(4,'2024-06-20 12:26:57','2024-06-20 12:26:57',1,'UI UX');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sustainability_measures`
--

DROP TABLE IF EXISTS `sustainability_measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sustainability_measures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `domain_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `measure` varchar(255) NOT NULL,
  `info` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `domain_id` (`domain_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `sustainability_measures_ibfk_1` FOREIGN KEY (`domain_id`) REFERENCES `domain_types` (`id`),
  CONSTRAINT `sustainability_measures_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sustainability_measures`
--

LOCK TABLES `sustainability_measures` WRITE;
/*!40000 ALTER TABLE `sustainability_measures` DISABLE KEYS */;
INSERT INTO `sustainability_measures` VALUES (1,'2024-07-02 13:09:31','2024-07-02 13:09:31',1,1,'Energy-Efficient Code Practices','Implementing best practices in coding to reduce energy consumption. This includes optimizing JavaScript performance, minimizing DOM manipulations, and reducing unnecessary resource loading.'),(2,'2024-07-02 13:09:31','2024-07-02 13:09:31',1,1,'Eco-Friendly Design Choices','Choosing designs that require fewer resources to render, such as simpler graphics, fewer animations, and optimized media files. This not only improves performance but also lowers the energy usage of client devices.'),(3,'2024-07-02 13:09:31','2024-07-02 13:09:31',1,1,'Utilizing Green Hosting Providers','Hosting websites and applications on servers powered by renewable energy sources. Selecting hosting providers that prioritize sustainability can significantly reduce the carbon footprint of web applications.'),(4,'2024-07-02 13:09:31','2024-07-02 13:09:31',1,1,'Promoting Digital Accessibility','Ensuring that websites are accessible to all users, including those with disabilities. This involves following WCAG (Web Content Accessibility Guidelines) and using semantic HTML to create more inclusive and sustainable web experiences.'),(5,'2024-07-02 13:09:31','2024-07-02 13:09:31',1,1,'Optimizing Load Times','Reducing page load times by optimizing assets, using lazy loading techniques, and implementing efficient caching strategies. Faster load times not only enhance user experience but also reduce the energy consumption of servers and client devices.'),(6,'2024-07-02 13:09:31','2024-07-02 13:09:31',1,1,'Encouraging User Behavior Change','Designing features that encourage users to adopt more sustainable behaviors, such as reducing unnecessary printing, favoring digital over physical, and promoting energy-saving habits through user interfaces.'),(7,'2024-07-02 13:09:31','2024-07-02 13:09:31',1,1,'Sustainable Development Tools','Using development tools and libraries that prioritize performance and efficiency. Opt for tools that have a smaller footprint and contribute to more sustainable development practices.'),(8,'2024-07-02 13:09:31','2024-07-02 13:09:31',1,1,'Implementing Dark Mode','Providing a dark mode option for websites and applications. Dark mode can reduce the energy consumption of OLED screens, which is beneficial for both user experience and sustainability.'),(9,'2024-07-02 13:09:31','2024-07-02 13:09:31',1,1,'Reducing Data Transfer','Minimizing data transfer by optimizing APIs, compressing data, and using efficient data formats. This reduces the energy required for data transmission and improves overall application performance.'),(10,'2024-07-02 13:09:31','2024-07-02 13:09:31',1,1,'Educating Team Members','Promoting awareness and education about sustainable development practices within the team. Encourage continuous learning about new tools, technologies, and methodologies that can enhance sustainability in front-end development.'),(11,'2024-07-02 13:09:58','2024-07-02 13:09:58',1,2,'Efficient Database Queries','Optimize database queries to reduce resource usage and improve performance. This includes using indexes, avoiding unnecessary data retrieval, and implementing query caching.'),(12,'2024-07-02 13:09:58','2024-07-02 13:09:58',1,2,'Scalable Architecture Design','Design backend systems to be scalable and efficient. Use microservices architecture, containerization, and serverless computing to improve resource utilization and reduce waste.'),(13,'2024-07-02 13:09:58','2024-07-02 13:09:58',1,2,'Energy-Efficient Algorithms','Implement algorithms that are optimized for energy efficiency. Prioritize computational efficiency and minimize unnecessary processing.'),(14,'2024-07-02 13:09:58','2024-07-02 13:09:58',1,2,'Resource Management','Efficiently manage server resources by scaling resources based on demand, using load balancers, and optimizing server configurations to reduce energy consumption.'),(15,'2024-07-02 13:09:58','2024-07-02 13:09:58',1,2,'Green Hosting Solutions','Choose hosting providers that use renewable energy sources. This reduces the carbon footprint associated with backend operations.'),(16,'2024-07-02 13:09:58','2024-07-02 13:09:58',1,2,'Efficient Data Storage','Optimize data storage solutions to reduce energy consumption. Use efficient data formats, compress data, and clean up unused or obsolete data regularly.'),(17,'2024-07-02 13:09:58','2024-07-02 13:09:58',1,2,'API Optimization','Design and implement APIs to be efficient and reduce the amount of data transferred. Use techniques like pagination, filtering, and compression to optimize API performance.'),(18,'2024-07-02 13:09:58','2024-07-02 13:09:58',1,2,'Server Virtualization','Use server virtualization to maximize resource utilization and reduce the number of physical servers required, leading to lower energy consumption.'),(19,'2024-07-02 13:09:58','2024-07-02 13:09:58',1,2,'Automated Scaling','Implement automated scaling to adjust server resources based on real-time demand. This ensures that resources are only used when needed, reducing energy waste.'),(20,'2024-07-02 13:09:58','2024-07-02 13:09:58',1,2,'Sustainable Development Practices','Promote sustainable development practices within the team. Encourage the use of energy-efficient tools and technologies, and continuously educate team members on best practices for sustainability.');
/*!40000 ALTER TABLE `sustainability_measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist`
--

DROP TABLE IF EXISTS `token_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `access_token` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token` (`access_token`),
  KEY `idx_access_token` (`access_token`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist`
--

LOCK TABLES `token_blacklist` WRITE;
/*!40000 ALTER TABLE `token_blacklist` DISABLE KEYS */;
INSERT INTO `token_blacklist` VALUES (1,'2024-07-01 08:14:26','2024-07-01 08:14:26','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI0MTI5ODcsImlkIjo0LCJlbWFpbCI6InNoYWhAZ21haWwuY29tIiwibmFtZSI6InNoYWggbWFzb29kIiwiaXNfc3VwZXJ1c2VyIjpmYWxzZX0.o_YIGkKj8tXMOAIoKRvXuwVDgJxRHGD5b036bJtWKEA'),(2,'2024-07-01 08:28:04','2024-07-01 08:28:04','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI0MTQ0NzYsImlkIjo0LCJlbWFpbCI6InNoYWhAZ21haWwuY29tIiwibmFtZSI6InNoYWggbWFzb29kIiwiaXNfc3VwZXJ1c2VyIjpmYWxzZX0.49ZDdRtjA5eAhTvSKMeZl--t5GUIJ2E-5gBHRXUndEg'),(3,'2024-07-01 08:30:36','2024-07-01 08:30:36','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI0MTQ2MjYsImlkIjo0LCJlbWFpbCI6InNoYWhAZ21haWwuY29tIiwibmFtZSI6InNoYWggbWFzb29kIiwiaXNfc3VwZXJ1c2VyIjpmYWxzZX0.LzWiHxap_Qnmx5_HmehiSSLENuQeNPopOPoOU3_pWIQ'),(4,'2024-07-02 07:17:01','2024-07-02 07:17:01','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI0OTYyMDcsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.fwYrrh9bRd4AKyvjfKw6KpUzXCcUEhlvobmGi372l-M'),(5,'2024-07-02 07:19:47','2024-07-02 07:19:47','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI0OTY3NzksImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.e3O82VQEzAXmtnEp2f_FP4ZqnqJZWy-IiQRfWf_oUVw'),(6,'2024-07-02 07:21:31','2024-07-02 07:21:31','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI0OTY4NTEsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.6FMTcZ9Bp-pDnq_UaO0UF32SpyhMqgSEcL0eIKoVI5M'),(7,'2024-07-02 07:23:22','2024-07-02 07:23:22','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI0OTY5OTYsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.3U0TTj8die72RHVbOEleIBayljqOmrmSZon_G2bvtkA'),(8,'2024-07-02 07:24:09','2024-07-02 07:24:09','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI0OTcwNDIsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.XPTP5rYY3aIdiWPlrAZVaeOB5IrDFFi9QuvoqZJPAkQ'),(9,'2024-07-02 07:25:12','2024-07-02 07:25:12','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI0OTcxMDEsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.vWX0_Lc5B-e3F-GDr0k5fa7EGUy7CFgLhGar7vzLtJo'),(10,'2024-07-02 08:01:14','2024-07-02 08:01:14','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI0OTcxNzAsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.rjTA2hegcfLNsLTaMlFjqr-x9okXdoKaigf7tEyAels'),(11,'2024-07-02 08:20:26','2024-07-02 08:20:26','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI0OTkyOTUsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.Iokgr4rDmfJdPdBMSI13q9357hFIEG1aYx5Vx4dYEu8'),(12,'2024-07-02 09:42:14','2024-07-02 09:42:14','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI1MDA1MTUsImlkIjoxMSwiZW1haWwiOiJzaGFobWFzb29kQGdtYWlsLmNvbSIsIm5hbWUiOiJTaGFoIE1hc29vZCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.4uPbG06WZelqgOMRaRKX8vMiMWiFU7rcEx6c7sw8cgk'),(13,'2024-07-02 09:47:21','2024-07-02 09:47:21','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI1MDU2MTUsImlkIjo0LCJlbWFpbCI6InNoYWhAZ21haWwuY29tIiwibmFtZSI6InNoYWggbWFzb29kIiwiaXNfc3VwZXJ1c2VyIjpmYWxzZX0.7KTTiKDELDs_kxI1NL8x4SrVI8SDAUgidSWL9zGKDfw'),(14,'2024-07-02 10:13:14','2024-07-02 10:13:14','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI1MDU2NjIsImlkIjo0LCJlbWFpbCI6InNoYWhAZ21haWwuY29tIiwibmFtZSI6InNoYWggbWFzb29kIiwiaXNfc3VwZXJ1c2VyIjpmYWxzZX0.-vpfH8BpILzIY-Q4xClN-OKxY2eEmkxTdBJshEXZ5A0'),(15,'2024-07-02 10:14:28','2024-07-02 10:14:28','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI1MDcyNTMsImlkIjo0LCJlbWFpbCI6InNoYWhAZ21haWwuY29tIiwibmFtZSI6InNoYWggbWFzb29kIiwiaXNfc3VwZXJ1c2VyIjpmYWxzZX0.0d79OL28YieXB0X7we43efz1bXQPIVuUx7CfO_glBj4'),(16,'2024-07-02 10:38:20','2024-07-02 10:38:20','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI1MDg2NjIsImlkIjoxMSwiZW1haWwiOiJzaGFobWFzb29kQGdtYWlsLmNvbSIsIm5hbWUiOiJTaGFoIE1hc29vZCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.XWWIPkLg8CdCsIDbkM2-u_FdG9J7dlGdI0UJfcVQThE'),(17,'2024-07-02 11:49:31','2024-07-02 11:49:31','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI1MDg3MTAsImlkIjoxMSwiZW1haWwiOiJzaGFobWFzb29kQGdtYWlsLmNvbSIsIm5hbWUiOiJTaGFoIE1hc29vZCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.GyDJD6LROeVeT1252u2VsNFUkZ_YFzXd5-T1sYUBvrw'),(18,'2024-07-02 11:55:11','2024-07-02 11:55:11','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI1MTI5ODIsImlkIjo0LCJlbWFpbCI6InNoYWhAZ21haWwuY29tIiwibmFtZSI6InNoYWggbWFzb29kIiwiaXNfc3VwZXJ1c2VyIjpmYWxzZX0.MQDhFMPDF35Pa6UMi1eUqKwCx1zU30Q23dtZFYCMQVg'),(19,'2024-07-02 12:00:26','2024-07-02 12:00:26','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI1MTM1MjksImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.p2n5BbFvYAnp-jFSiaOa6DkBOtHzNTXQb9O4TfpAlhw'),(20,'2024-07-02 12:52:39','2024-07-02 12:52:39','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI1MTM2NDEsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.vrIvBwqWsfx66m2ZU7yP5Ent6D2OhXgDjZLcOifaQsk'),(21,'2024-07-03 07:40:08','2024-07-03 07:40:08','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI1Nzc4MzUsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.RZF1CmEhI-PipyHTKKR7LyU767luhyWlJLOhg0Xwbhc'),(22,'2024-07-03 07:46:12','2024-07-03 07:46:12','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI1ODQ0MjEsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.gPG1zecoEIERrhUxIcvYk1wSGtjwUhgXLVKM3LkZdU8'),(23,'2024-07-04 06:54:37','2024-07-04 06:54:37','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2Njc5ODIsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.EMgjIMFKNIqVw33IH89aCwVy0H7aY_F5_XYLBw_zzqE'),(24,'2024-07-04 06:57:43','2024-07-04 06:57:43','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2NjgyMTUsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.b2RFCZNnJzI4WG_W_KhVKk4TqkrOcFKCCjzgIO3h-Bo'),(25,'2024-07-04 07:18:05','2024-07-04 07:18:05','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2NjgyNzMsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.Qw9CdSWpedAkJkEPHDMetQcR2bRkGGiK7gMYV1PEn78'),(26,'2024-07-04 07:44:06','2024-07-04 07:44:06','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2Njk0OTIsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.bceg-_5GxHRQvzVd1O-gF8MhvdamhETXirrbjbwkG0c'),(27,'2024-07-04 07:45:13','2024-07-04 07:45:13','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2NzEwNTQsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.4huwD01pkrpR6PE8TTWb5uS5sdzuFX6Y4tF9jxjkSPo'),(28,'2024-07-04 07:46:25','2024-07-04 07:46:25','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2NzExMTksImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.HGapt5RnUY2qQwSAR9WbMuEVfUGDC_dX7SHLzzXTWtc'),(29,'2024-07-04 07:48:15','2024-07-04 07:48:15','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2NzEyNjAsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.GvsqQ8f7G5oHKIwa6Z3ciKgsT6uu3FvPjtT4rFmGKCE'),(30,'2024-07-04 07:51:41','2024-07-04 07:51:41','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2NzEzMDIsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.3f9_a1zCvQrGJu4saQ9PKsHv_f7wIwohXFhGDP3s9aM'),(31,'2024-07-04 09:57:37','2024-07-04 09:57:37','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2NzkwMDYsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.WWjeAv1AnJJ70lw9EzwRmuj9x6pAJXX75c_dtuD4wZE'),(32,'2024-07-04 09:59:57','2024-07-04 09:59:57','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2NzkxNTcsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.FtoypFDgKZT09S54sJlwpEH2Z6sHRTWnSGQZx41bfdU'),(33,'2024-07-04 10:06:28','2024-07-04 10:06:28','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2NzkyMTYsImlkIjo3LCJlbWFpbCI6InNoYWg4MzkzMUBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCIsImlzX3N1cGVydXNlciI6ZmFsc2V9.nLYihRQOyEAKSWtYoSbkCPmyOVvFw8dhDbw166dRxz8'),(34,'2024-07-04 10:35:11','2024-07-04 10:35:11','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjI2ODEyNzMsImlkIjoxNCwiZW1haWwiOiJzaGFodGVzdEBnbWFpbC5jb20iLCJuYW1lIjoic2hhaCB0ZXN0IiwiaXNfc3VwZXJ1c2VyIjpmYWxzZX0.j673EubYiiOEqsO0daSwu2NATfEsNnn7J4p5UP-smnI');
/*!40000 ALTER TABLE `token_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_token` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_superuser` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user_token` (`user_token`),
  KEY `email_2` (`email`),
  KEY `user_token_2` (`user_token`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2024-06-20 05:56:46','2024-06-20 05:56:46','ahmed@gmail.com','$2b$12$HLx3EwXwrd0F6qt/z3h.1u.P3I5Dr6QGnH0RpgsSZQLMsV1nz5nPK','5e01a5e3b3424a39','ahmed',1,0),(2,'2024-06-20 12:21:56','2024-06-20 12:21:56','faizan@gmail.com','$2b$12$MSL31kOohd6PrPotHBujc.RB5Ygk/9D8OEeGyvMdaa9lNIhcAi932','313d28e030d04294','Faizan',1,0),(3,'2024-06-21 06:26:21','2024-06-21 06:26:21','extravis@gmail.com','$2b$12$v1mccPuDzEOc1h1xV9IQL.C5HavHkKCrGF4Bg28niPI3iSYmc8G.O','babd0b8e23ee40d1','extravis',1,0),(4,'2024-06-21 11:43:42','2024-06-21 11:43:42','shah@gmail.com','$2b$12$rF5.GS3nuoiiMBvF5.HVROpeR.rM7QhDXZXsqklbaLhHPXxBHI8Ga','1990195f24f44b20','shah masood',1,0),(6,'2024-06-21 11:58:53','2024-06-21 11:58:53','shami@gmail.com','$2b$12$N1Vhb8qHW5AzkDqQ7djy/.4sR8uBJJBxdXTlQ3vPtQ2Zr6L0ptyvK','756b3e02e0f147c0','shah masood',1,0),(7,'2024-06-26 12:35:14','2024-07-04 06:52:34','shah83931@gmail.com','$2b$12$8xvp1CI3p1trdx.1JXJysOIhCFrpQ7Z.uJ.rXfyHIrupK30LWVaPO','4ca303a8c52e4904','shah',1,0),(11,'2024-07-02 08:21:33','2024-07-02 08:21:33','shahmasood@gmail.com','$2b$12$yuH8ozx9Fxsza2bK7xcNIOCRqloIGb2Ru4GgEmUvsDyVxEJ0Gb0ly','543bb97d63f54cb7','Shah Masood',1,0),(12,'2024-07-04 10:28:18','2024-07-04 10:28:18','test@gmail.com','$2b$12$Oaitxx2z4/4WnOyi8uIbk./xCEtyVGl15jepDzYjb4of.Rv.D64pq','6f0b99171bcf437d','test',1,0),(13,'2024-07-04 10:32:47','2024-07-04 10:32:47','newuser@gmail.com','$2b$12$iOom1UL2Nsd8MzZvtgX2k.ttcz7HZcMwGqMI751MnbS3muOt5FRNe','dcd96652957a481b','new user',1,0),(14,'2024-07-04 10:33:41','2024-07-04 10:33:41','shahtest@gmail.com','$2b$12$sPn2f9PeAYK0pOxjGTefRexslxigUGFKA15G.8t6qADrnFZqs57u2','002c0eff6049442a','shah test',1,0),(15,'2024-07-11 21:33:44','2024-07-11 21:33:44','saeedajaml@gmail.com','$2b$12$wRUSB8eC.yf0tEyL3rA5MuAJtNnBmKsTbVxZr7YRVfAFw9tfbSev6','bc055323244e492a','SaeedAjmal',1,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_measures`
--

DROP TABLE IF EXISTS `user_measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_measures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  `sustainability_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `sustainability_id` (`sustainability_id`),
  CONSTRAINT `user_measures_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_measures_ibfk_2` FOREIGN KEY (`sustainability_id`) REFERENCES `sustainability_measures` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_measures`
--

LOCK TABLES `user_measures` WRITE;
/*!40000 ALTER TABLE `user_measures` DISABLE KEYS */;
INSERT INTO `user_measures` VALUES (20,'2024-07-04 07:27:12','2024-07-04 07:27:12',7,4),(21,'2024-07-04 07:27:12','2024-07-04 07:27:12',7,5),(24,'2024-07-04 10:45:47','2024-07-04 10:45:47',14,6),(25,'2024-07-04 10:45:47','2024-07-04 10:45:47',14,4),(26,'2024-07-04 10:45:47','2024-07-04 10:45:47',14,10);
/*!40000 ALTER TABLE `user_measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `domain_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `domain_id` (`domain_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_profiles_ibfk_2` FOREIGN KEY (`domain_id`) REFERENCES `domain_types` (`id`),
  CONSTRAINT `user_profiles_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,7,'extravis',1,1,'2024-06-27 05:17:27','2024-06-27 05:17:27'),(2,7,'extravis',2,2,'2024-06-27 05:18:08','2024-06-27 05:18:08'),(3,7,'Nets-International',1,1,'2024-06-27 10:16:20','2024-06-27 10:16:20'),(4,7,'extravis',1,1,'2024-06-28 12:57:14','2024-06-28 12:57:14'),(5,4,'extravis',2,2,'2024-07-01 08:34:56','2024-07-01 08:34:56'),(6,7,'Nets-International',1,1,'2024-07-02 08:19:17','2024-07-02 08:19:17'),(7,7,'Nets-International',1,1,'2024-07-02 08:20:17','2024-07-02 08:20:17'),(8,11,'extravis',1,1,'2024-07-02 11:02:00','2024-07-02 11:02:00'),(9,11,'extravis',1,1,'2024-07-02 11:10:09','2024-07-02 11:10:09'),(10,11,'nets international',1,1,'2024-07-02 11:15:20','2024-07-02 11:15:20'),(11,11,'nets international',1,1,'2024-07-02 11:18:36','2024-07-02 11:18:36'),(12,11,'nets international',1,1,'2024-07-02 11:19:33','2024-07-02 11:19:33'),(13,4,'nets',1,1,'2024-07-02 11:52:01','2024-07-02 11:52:01'),(14,7,'nets-international',1,1,'2024-07-02 11:59:55','2024-07-02 11:59:55'),(15,7,'Nets international',1,1,'2024-07-02 12:07:18','2024-07-02 12:07:18'),(16,7,'extravis',1,1,'2024-07-02 12:31:13','2024-07-02 12:31:13'),(17,7,'extravis',1,1,'2024-07-02 12:32:58','2024-07-02 12:32:58'),(18,7,'Nets-International',1,1,'2024-07-03 05:55:17','2024-07-03 05:55:17'),(19,7,'Nets-International',1,1,'2024-07-03 06:04:16','2024-07-03 06:04:16'),(20,7,'Nets-International',1,1,'2024-07-03 06:06:35','2024-07-03 06:06:35'),(21,7,'Nets-International',1,1,'2024-07-03 06:13:06','2024-07-03 06:13:06'),(22,7,'extravis',1,1,'2024-07-03 06:15:01','2024-07-03 06:15:01'),(23,7,'Nets-International',1,1,'2024-07-03 06:16:36','2024-07-03 06:16:36'),(24,7,'Nets-International',1,1,'2024-07-03 06:19:15','2024-07-03 06:19:15'),(25,7,'extravis',1,1,'2024-07-03 06:20:57','2024-07-03 06:20:57'),(26,7,'Nets-International',1,1,'2024-07-03 06:32:13','2024-07-03 06:32:13'),(27,7,'Nets-International',1,1,'2024-07-03 06:32:46','2024-07-03 06:32:46'),(28,7,'Nets-International',1,1,'2024-07-03 06:34:41','2024-07-03 06:34:41'),(29,7,'Nets-International',1,1,'2024-07-03 06:39:38','2024-07-03 06:39:38'),(30,7,'Nets-International',1,1,'2024-07-03 06:52:46','2024-07-03 06:52:46'),(31,7,'Nets-International',1,2,'2024-07-03 07:12:49','2024-07-03 07:12:49'),(32,7,'Nets-International',1,1,'2024-07-03 07:13:13','2024-07-03 07:13:13'),(33,7,'Nets-International',1,2,'2024-07-03 07:14:06','2024-07-03 07:14:06'),(34,7,'Nets-International',1,1,'2024-07-03 07:14:22','2024-07-03 07:14:22'),(35,7,'Nets-International',1,1,'2024-07-03 07:24:25','2024-07-03 07:24:25'),(36,7,'Nets-International',1,1,'2024-07-03 07:39:42','2024-07-03 07:39:42'),(37,7,'Nets-International',1,1,'2024-07-03 07:42:18','2024-07-03 07:42:18'),(38,7,'Nets-International',1,1,'2024-07-03 07:43:28','2024-07-03 07:43:28'),(39,7,'Nets-International',1,1,'2024-07-03 07:48:50','2024-07-03 07:48:50'),(40,7,'extravis',1,1,'2024-07-04 06:57:22','2024-07-04 06:57:22'),(41,7,'Nets-International',1,4,'2024-07-04 07:18:26','2024-07-04 07:18:26'),(42,7,'Nets-International',1,4,'2024-07-04 07:23:01','2024-07-04 07:23:01'),(43,7,'Nets-International',1,1,'2024-07-04 07:27:06','2024-07-04 07:27:06'),(44,7,'Nets-International',1,1,'2024-07-04 09:59:32','2024-07-04 09:59:32'),(45,7,'Nets-International',1,1,'2024-07-04 09:59:35','2024-07-04 09:59:35'),(46,14,'Nets-International',1,1,'2024-07-04 10:34:52','2024-07-04 10:34:52'),(47,14,'Nets-International',1,1,'2024-07-04 10:45:14','2024-07-04 10:45:14');
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-12 12:56:14
