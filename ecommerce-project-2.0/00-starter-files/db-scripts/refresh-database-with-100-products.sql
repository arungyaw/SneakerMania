-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(800) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('Jordans');
INSERT INTO product_category(category_name) VALUES ('Nike');
INSERT INTO product_category(category_name) VALUES ('Yeezy');
INSERT INTO product_category(category_name) VALUES ('Bape');

-- -----------------------------------------------------
-- Jordans
-- -----------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('JORDAN-1000', 'Jordan 1 Chicago', ' Undoubtedly the most popular and best Jordans of all time, the Air Jordan 1 Retro Chicago are a collector’s dream.
Colourway: White/Varsity Red-Black
Insole material: Foam
Cushioning: MaximumOutsole
 material: RubberShoe
 shaft style: High Top', 'assets/images/products/jordans/jordans-shop2cart-1000.jpg', 1, 4, 1183, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('JORDAN-1001', 'Jordan 3 Black Cement', ' These iconic, elephant-print emblazoned sneakers were released on His Airness’ 55th birthday, so there’s a little celebration with every pair. Without a doubt, one of the best looking jordans money can buy.;Colourway: Black/Fire Red-Cement,Cushioning: Maximum,Upper material: Leather,Shoe shaft style: Mid Top', 'assets/images/products/jordans/jordans-shop2cart-1001.jpg', 1, 10, 450, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('JORDAN-1002', 'Jordan 4 ‘Bred’ Black Cement', 'They say a classic never dies, and the Air Jordan 4 is one example of true longevity. The ‘Black Cement or Bred 4, comes with a red sole, black upper plus grey accents, white midsole plus black, with white and grey accents. While chunky compared to more modern designs, you can’t deny this is one of the best looking Jordans ever created.;Colourway: Black/Cement Grey-Summit White-Fire Red;Shoe shaft style: High Top ', 'assets/images/products/jordans/jordans-shop2cart-1002.jpg', 1, 8, 380, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('JORDAN-1003', 'Jordan 11 Concord', '  More than 30 years on, the Concord XI is still referred to as one of the best Air Jordan shoes ever and thanks to the number 45 at the heel, also one of the biggest collector items.;Colourway: White/Black-Concord;Cushioning: Maximum;Shoe shaft style: High Top', 'assets/images/products/jordans/jordans-shop2cart-1003.jpg', 1, 7, 449, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('JORDAN-1004', 'Jordan 1 x Travis Scott Low "Reverse Mocha" ', 'The Travis Scott x Air Jordan 1 Low “Reverse Mocha” is a collaboration between the hip-hop artist and Jordan Brand on the low-top lifestyle shoe that “reverses” the color block of the duo’s original Jordan 1 Low collaboration from 2019.;Colourway: Reverse Mocha', 'assets/images/products/jordans/jordans-shop2cart-1004.jpg', 1, 4, 1399, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('JORDAN-1005', 'Jordan 11 Bred Playoffs', ' First worn on NBA courts back in April 1996, the AJ11 Bred is playoff-ready and one of the most popular Jordans money can buy. This variation is the 2019 edition, which marked the first release for the style in seven years. The footwear ranks high on MJ’s grails and is undoubtedly one of the best Air Jordan shoes of all time.;Upper material: Patent leather;Outsole material: Rubber;Colourway: Black/True Red-White ', 'assets/images/products/jordans/jordans-shop2cart-1005.jpg', 1, 4, 689, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('JORDAN-1006', 'Jordan 4 Oreo', ' The Air Jordan 4 Retro White Oreo features a white leather and mesh upper with hits of Tech Grey on its eyelets and midsole. From there, a red Jumpman logo is embroidered on the tongue, adding a pop of color to the neutral-toned design.;Colorway: WHITE/TECH GREY-BLACK-FIRE RED ', 'assets/images/products/jordans/jordans-shop2cart-1006.jpg', 1, 4, 469, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('JORDAN-1007', 'Jordan 12 Royalty', 'The design features a white tumbled leather upper with a black toe wrap and gold hook eyelets. A new feature is on the toe wrap, where a gold plaquet is prominent on the lateral side. From there, a woven heel tag and matching sole completes the design.;Colorway: WHITE/BLACK-METALLIC GOLD', 'assets/images/products/jordans/jordans-shop2cart-1007.jpg', 1, 8, 333, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('JORDAN-1008', 'Jordan 13 Black Cat', 'The Air Jordan XIII embodied His Airness’ slick, black cat alter ego. Designed by Tinker Hatfield, the 1998 game shoe took on a paw-like tooling, paired with a performance-driven combination of reflective mesh, suede and leather up above.;Colorway: Black/Anthracite/Black  ', 'assets/images/products/jordans/jordans-shop2cart-1008.jpg', 1, 5, 479, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('JORDAN-1009', 'Jordan 1 Mid Triple White', 'The Jordan 1 Mid has become a cheap alternative to the Jordan 1 OG High, and no matter how many times you tell us “The Jordan 1s MJ wore were more of a mid-cut than a high,” the more we dislike mids. While it’s one of the most popular Jordans in the game;Upper material: Leather;Outsole material: Leather;Shoe shaft style: High Top;Colourway: White/White/White', 'assets/images/products/jordans/jordans-shop2cart-1009.jpg', 1, 30, 180, 1, NOW());


-- -----------------------------------------------------
-- Nikes
-- ----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('NIKE-1000', 'Tom Sachs NikeCraft General Purpose Shoe', 'Buy it now!', 'assets/images/products/nike/nike-shop2cart-1000.jpg', 1, 10, 350, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('NIKE-1001', 'Nike Dunk low Medium Curry', 'Buy it now!', 'assets/images/products/nike/nike-shop2cart-1001.jpg', 1, 50, 540, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('NIKE-1002', 'Nike Dunk low Black Panda', 'Buy it now!', 'assets/images/products/nike/nike-shop2cart-1002.jpg', 1, 10, 230, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('NIKE-1003', 'Nike Dunk low Panda', 'Buy it now!', 'assets/images/products/nike/nike-shop2cart-1003.jpg', 1, 100, 240, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('NIKE-1004', 'Nike SB Dunk low Phillies', 'Buy it now!', 'assets/images/products/nike/nike-shop2cart-1004.jpg', 1, 100, 459, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('NIKE-1005', 'Nike Air Max 1/97 sean wotherspoon', ' Buy it now!', 'assets/images/products/nike/nike-shop2cart-1005.jpg', 1, 10, 980, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('NIKE-1006', 'Nike Air Max 1 x Travis Scott', 'Buy it now!', 'assets/images/products/nike/nike-shop2cart-1006.jpg', 1, 100, 620, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('NIKE-1007', 'Nike SB Dunk Low Ben & Jerry ', ' Buy it now!', 'assets/images/products/nike/nike-shop2cart-1007.jpg', 1, 10, 7000, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('NIKE-1008', 'Nike SB Dunk Low Parra Abstract', ' Buy it now!', 'assets/images/products/nike/nike-shop2cart-1008.jpg', 1, 30, 750, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('NIKE-1009', 'Nike SB Dunk Low x Travis Scott', ' Buy it now!', 'assets/images/products/nike/nike-shop2cart-1009.jpg', 1, 40, 780, 2, NOW());


-- -----------------------------------------------------
-- Yeezys
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('YEEZY-1000', 'adidas Yeezy Boost 350 V2 Core Black White', ' Buy it now!', 'assets/images/products/yeezy/yeezy-shop2cart-1000.jpg', 1, 100, 295, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('YEEZY-1001', 'adidas Yeezy Boost 350 V2 Blue Tint', ' Buy it now!', 'assets/images/products/yeezy/yeezy-shop2cart-1001.jpg', 1, 100, 309, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('YEEZY-1002', 'adidas Yeezy Boost 350 V2 Cream/Triple White', ' Buy it now!', 'assets/images/products/yeezy/yeezy-shop2cart-1002.jpg', 1, 100, 339, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('YEEZY-1003', 'adidas Yeezy Slide Onyx', ' Buy it now!', 'assets/images/products/yeezy/yeezy-shop2cart-1003.jpg', 1, 100, 130, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('YEEZY-1004', 'adidas Yeezy Slide Pure', ' Buy it now!', 'assets/images/products/yeezy/yeezy-shop2cart-1004.jpg', 1, 100, 140, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('YEEZY-1005', 'adidas Yeezy Foam RNNR Ararat', ' Buy it now!', 'assets/images/products/yeezy/yeezy-shop2cart-1005.jpg', 1, 100, 480, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('YEEZY-1006', 'adidas Yeezy Foam RNR Onyx', ' Buy it now!', 'assets/images/products/yeezy/yeezy-shop2cart-1006.jpg', 1, 100, 168, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('YEEZY-1007', 'adidas Yeezy 700 V3 Dark Glow', ' Buy it now!', 'assets/images/products/yeezy/yeezy-shop2cart-1007.jpg', 1, 100, 250, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('YEEZY-1008', 'adidas Yeezy Boost 380 Alien Blue', ' Buy it now!', 'assets/images/products/yeezy/yeezy-shop2cart-1008.jpg', 1, 100, 179, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('YEEZY-1009', 'adidas Yeezy Boost 700 Wave Runner Solid Grey', ' Buy it now!', 'assets/images/products/yeezy/yeezy-shop2cart-1009.jpg', 1, 100, 319, 3, NOW());

-- -----------------------------------------------------
-- Bapes
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BAPE-1000', 'BAPESTA x Kanye West "College Dropout"', 'Buy it now!', 'assets/images/products/bape/bape-shop2cart-1000.jpg', 1, 2, 10000, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BAPE-1001', 'SpongeBob SquarePants x Bapesta "Spongebob"', 'Buy it now!', 'assets/images/products/bape/bape-shop2cart-1001.jpg', 1, 2, 1270, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BAPE-1002', 'BAPESTA X KAWS “BROWN CHOMPER”', 'Buy it now!', 'assets/images/products/bape/bape-shop2cart-1002.jpg', 1, 5, 570, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BAPE-1003', 'Octopus Bapesta', 'Buy it now!', 'assets/images/products/bape/bape-shop2cart-1003.jpg', 1, 3, 490, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BAPE-1004', 'N.E.R.D. Bapesta', 'Buy it now!', 'assets/images/products/bape/bape-shop2cart-1004.jpg', 1, 10, 980, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BAPE-1005', 'DC Comics Bapestas', 'Buy it now!', 'assets/images/products/bape/bape-shop2cart-1005.jpg', 1, 10, 1290, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BAPE-1006', 'Cotton Candy Bapesta', 'Buy it now!', 'assets/images/products/bape/bape-shop2cart-1006.jpg', 1, 10, 950, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BAPE-1007', 'Ostrich Leather Bapesta', 'Buy it now!', 'assets/images/products/bape/bape-shop2cart-1007.jpg', 1, 10, 890, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BAPE-1008', 'Bapesta Low AM/PM', 'Buy it now!', 'assets/images/products/bape/bape-shop2cart-1008.jpg', 1, 5, 980, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BAPE-1009', 'Bapesta 11th Anniversary Rainbow', 'Buy it now!', 'assets/images/products/bape/bape-shop2cart-1009.jpg', 1, 4, 690, 4, NOW());
