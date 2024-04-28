/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : Lhin

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 25/04/2024 15:14:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
BEGIN;
INSERT INTO `order_detail` (`id`, `order_id`, `price`, `product_id`, `product_name`, `quantity`) VALUES (1, 266395731, 240, 1, 'Amazon', 2);
INSERT INTO `order_detail` (`id`, `order_id`, `price`, `product_id`, `product_name`, `quantity`) VALUES (2, 266181824, 120, 2, 'BlackCoffee', 1);
INSERT INTO `order_detail` (`id`, `order_id`, `price`, `product_id`, `product_name`, `quantity`) VALUES (3, 266395731, 120, 5, 'Espresso', 1);
INSERT INTO `order_detail` (`id`, `order_id`, `price`, `product_id`, `product_name`, `quantity`) VALUES (4, 266395731, 120, 6, 'Green Tea with Milk', 1);
COMMIT;

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tex` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tex` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
BEGIN;
INSERT INTO `orderitem` (`id`, `tex`, `total_price`) VALUES (3, '266181824', 240);
INSERT INTO `orderitem` (`id`, `tex`, `total_price`) VALUES (4, '266395731', 480);
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (1, '1713860340103_.jpg', 'Amazon', 120, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (2, '1713860375061_.jpg', 'BlackCoffee', 120, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (3, '1713864960088_.jpg', 'BlackCoffeeHoneyLemon', 130, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (4, '1713864984695_.jpg', 'Cappuccino', 120, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (5, '1713865002421_.jpg', 'Espresso', 120, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (6, '1713865021685_.jpg', 'Green Tea with Milk', 120, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (7, '1713865035249_.jpg', 'Mocha', 120, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (8, '1713865049939_.jpg', 'White Choc Macchiato', 120, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
