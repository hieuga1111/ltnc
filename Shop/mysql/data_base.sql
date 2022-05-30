
-- tao bang

CREATE TABLE `author` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_of_birth` date DEFAULT NULL,
  `description` longtext,
  `name` nvarchar(255) DEFAULT NULL,
  `author_type` bigint(20) DEFAULT NULL,
  `image` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `author_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` nvarchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buys` int(11) DEFAULT NULL,
  `code` nvarchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `description` text,
  `form` nvarchar(20) DEFAULT NULL,
  `image1` text,
  `inventory` int(11) DEFAULT NULL,
  `name` nvarchar(255)  DEFAULT NULL,
  `number_page` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `promotion_price` int(11) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `author` bigint(20) DEFAULT NULL,
  `categoryid` bigint(20) DEFAULT NULL,
  `publisher` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `book_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `name` nvarchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `book_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookid` bigint(20) NOT NULL,
  `imageid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ;

CREATE TABLE `cart_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_added` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `itemid` bigint(20) NOT NULL,
  `customerid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `name` nvarchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ;

CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` nvarchar(500) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `userid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `description` nvarchar(100) DEFAULT NULL,
  `link` nvarchar(255) DEFAULT NULL,
  `name` nvarchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `created` bigint(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `image` bigint(20) DEFAULT NULL,
  `is_public` bit(1) DEFAULT NULL,
  `title` nvarchar(255)  DEFAULT NULL,
  `type` bigint(20) DEFAULT NULL,
  `author` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

CREATE TABLE `news_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` nvarchar(255)  DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` nvarchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `ship_adress` nvarchar(255) DEFAULT NULL,
  `ship_email` nvarchar(50) DEFAULT NULL,
  `ship_mobile` nvarchar(50) DEFAULT NULL,
  `ship_name` nvarchar(50) DEFAULT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `shipping_type` bigint(20) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `created_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `bookid` bigint(20) NOT NULL,
  `orderid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ;

CREATE TABLE `publisher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` nvarchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `description` nvarchar(500) DEFAULT NULL,
  `name` nvarchar(255)  DEFAULT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `purchase` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `creater` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `publisher` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ;

CREATE TABLE `purchase_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bookid` bigint(20) NOT NULL,
  `purchaseid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` nvarchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- Table structure for table `shipping_type`
--
CREATE TABLE `shipping_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cost` int(11) NOT NULL,
  `time` nvarchar(50) DEFAULT NULL,
  `type_ship` nvarchar(100) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Table structure for table `slide`

CREATE TABLE `slide` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookid` bigint(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `image` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- Table structure for table `status_order`
--

CREATE TABLE `status_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` nvarchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `email` nvarchar(100) DEFAULT NULL,
  `name` nvarchar(255) DEFAULT NULL,
  `password` nvarchar(255) DEFAULT NULL,
  `phone` nvarchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `user_name` nvarchar(50) DEFAULT NULL,
  `user_groupid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- Table structure for table `user_group`
--
CREATE TABLE `user_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` nvarchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- Table structure for table `user_group_role`
--
CREATE TABLE `user_group_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(20) NOT NULL,
  `user_groupid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ;

-- author
alter table `author` add constraint fk_author_type foreign key(author_type) references `author_type`(`id`);
alter table `author` add constraint fk_image_author foreign key(image) references `image`(`id`);
-- book
alter table `book` add constraint fk_book_author foreign key(author) references `author_type`(`id`);
alter table `book` add constraint fk_book_category_id foreign key(categoryid) references `category`(`id`);
alter table `book` add constraint fk_book_publisher foreign key(publisher) references `publisher`(`id`);
-- book_category
alter table `book_category` add constraint fk_book_category_parent foreign key(parentid) references `category`(`id`);
-- book image
alter table `book_image` add constraint fk_book_image_bookid foreign key(bookid) references `book`(`id`);
alter table `book_image` add constraint fk_book_image_imageid foreign key(imageid) references `image`(`id`);
-- card_item
alter table `cart_item` add constraint fk_cart_item_bookid foreign key(itemid) references `book`(`id`);
alter table `cart_item` add constraint fk_cart_item_userid foreign key(customerid) references `user`(`id`);
-- feedback
alter table `feedback` add constraint fk_feedback_userid foreign key(userid) references `user`(`id`);
-- news
alter table `news` add constraint fk_newtype_id foreign key(`type`) references `news_type`(`id`);
alter table `news` add constraint fk_newtype_authorid foreign key(author) references `author`(`id`);
-- order
alter table `order` add constraint fk_ofder_shippingtype_id foreign key(`shipping_type`) references `shipping_type`(`id`);
alter table `order` add constraint fk_ofder_status_id foreign key(`status`) references `status_order`(`id`);
alter table `order` add constraint fk_ofder_created_id foreign key(`created_id`) references `user`(`id`);
-- order_detail
alter table `order_detail` add constraint fk_order_detail_bookid foreign key(`bookid`) references `book`(`id`);
alter table `order_detail` add constraint fk_order_detail_orderid foreign key(`orderid`) references `order`(`id`);
-- purchase
alter table `purchase` add constraint fk_purchase_publisherid foreign key(`publisher`) references `publisher`(`id`);
-- purchase_detail
alter table `purchase_detail` add constraint fk_purchase_detail_bookid foreign key(`bookid`) references `book`(`id`);
alter table `purchase_detail` add constraint fk_purchase_detail_purchaseid foreign key(`purchaseid`) references `purchase`(`id`);
-- silde
alter table `slide` add constraint fk_slide_image foreign key(`image`) references `image`(`id`);
-- user
alter table `user` add constraint fk_user_groupid foreign key(`user_groupid`) references `user_group`(`id`);
-- user_group_role
alter table `user_group_role` add constraint fk_user_group_id foreign key(`user_groupid`) references `user_group`(`id`);
alter table `user_group_role` add constraint fk_user_role_id foreign key(`roleid`) references `role`(`id`);




-- du lieu

-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: book_shop
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (10,'1970-10-01',NULL,'Phil Knight',1,NULL),(1,'1981-10-02',NULL,'Shelly Laurenston',1,NULL),(2,'1990-10-03',NULL,'Hyun Kyoung Son',1,NULL),(3,'1975-10-04',NULL,'Martin Cruz Smith',1,NULL),(4,'1974-10-05',NULL,'Cửu Nguyệt Hi',3,NULL),(5,'1977-10-06',NULL,'Scotland Chiết Nhĩ Miêu',1,NULL),(6,'1970-10-07',NULL,'Cửu Lộ Phi Hương',3,NULL),(7,'1963-10-08',NULL,'Thiên Hạ Quy Nguyên',3,NULL),(8,'1966-10-09','<p>Ð?p trai ph?t</p>','Adam Lashinsky',1,NULL),(9,'1970-10-10',NULL,'Daniel Kehlmann',1,NULL);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `author_type`
--

LOCK TABLES `author_type` WRITE;
/*!40000 ALTER TABLE `author_type` DISABLE KEYS */;
INSERT INTO `author_type` VALUES (1,'Nước ngoài'),(3,'Trung Quốc'),(2,'Trong nước');
/*!40000 ALTER TABLE `author_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (6,40,'B07','2019-05-18 23:31:31','','Bìa M?m',NULL,10,'Bổn Vương Ở Đây (Tái Bản 2017) - Tặng Kèm Postcard',652,189000,151200,'2017-10-30',_binary '',30,890,16,10,2),(7,2,'B08','2019-05-18 23:31:31','','Bìa m?m',NULL,10,'Phù Dao Hoàng Hậu (Combo Đặc Biệt 4 Cuốn)',200,658000,526400,'2018-01-01',_binary '',15,1600,16,10,2),(8,3,'B09','2019-05-18 23:31:31','','Bìa m?m',NULL,40,'Uber - Chuyến Đi Bão Táp',300,199000,159200,'2018-01-01',_binary '',22,560,17,40,3),(9,4,'B10','2019-05-18 23:31:31','','Bìa m?m',NULL,19,'Tư Duy Nhanh Và Chậm',611,239000,191200,'2010-01-01',_binary '',1,750,17,19,3),(10,40,'B11','2019-05-18 23:31:31','','Bìa m?m',NULL,31,'Dạy Con Làm Giàu - Tập IX: - Những Bí Mật Về Tiền Bạc',376,45000,31000,'2011-01-01',_binary '',8,450,1,31,1),(11,2,'B12','2019-05-18 23:31:31','','Bìa m?m',NULL,11,'Vương Bất Kiến Vương - Tập 2',356,89000,71200,'2017-11-15',_binary '',8,370,11,11,1),(12,40,'B13','2019-05-18 23:31:31','','Bìa m?m',NULL,11,'Boxset Thiên Sư Chấp Vị (Từ Tập 3 Đến Tập 7) - Số Lượng Có Hạn',356,400000,320000,'2017-11-20',_binary '',6,1700,1,11,1),(13,40,'B14','2019-05-18 23:31:31','','Bìa m?m',NULL,11,'Sát Phá Lang – Tập 3',640,160000,128000,'2017-11-15',_binary '',7,690,1,11,1),(14,8,'B15','2019-05-18 23:31:31','','Bìa M?m',NULL,9,'Pháp Y Tần Minh - Trọn Bộ 3 Tập',1798,460000,368000,'2012-08-01',_binary '',8,2200,1,9,2),(15,2,'B16','2019-05-18 23:31:31','','Bìa M?m',NULL,10,'Tiệm Đồ Cổ Á Xá - Tập 3',440,119000,95200,'2016-09-21',_binary '',6,460,2,10,3),(16,40,'B17','2019-05-18 23:31:31','','Bìa m?m',NULL,11,'Boxset 2013 – (Trọn Bộ 2 Tập)',608,299000,242190,'2011-06-11',_binary '',6,910,2,11,3),(17,2,'B18','2019-05-18 23:31:31','','Bìa m?m',NULL,22,'Rừng Mưa - Bí Mật Để Xây Dựng Thung Lũng Silicon Tiếp Theo',380,149000,119200,'2017-12-12',_binary '',5,420,3,22,1),(18,40,'B19','2019-05-18 23:31:31','','Bìa m?m',NULL,10,'Yêu Chỉ Là Hữu Danh Vô Thực',496,139000,111200,'2017-12-10',_binary '',3,510,3,10,17),(19,2,'B20','2019-05-18 23:31:31','','Bìa m?m',NULL,32,'Hành Trình Của Elaina – Tập 2',376,98000,83300,'2019-01-20',_binary '',6,390,3,32,8),(1,1,'B01','2019-05-18 23:31:31','','Bìa m?m',NULL,40,'Gã Nghiện Giày - Tự Truyện Của Nhà Sáng Lập NIKE',652,160000,136000,'2018-11-11',_binary '',207,650,1,40,1),(2,40,'B02','2019-05-18 23:31:31','','Bìa m?m',NULL,10,'Vì Người Ấy Là Em',402,200000,95200,'2018-11-11',_binary '',51,510,15,10,15),(3,2,'B04','2019-05-18 23:31:31','','Bìa m?m',NULL,9,'Án Mạng Ở Công Viên Gorky',488,150000,108000,'2018-11-11',_binary '',34,520,15,9,11),(4,2,'B05','2019-05-18 23:31:31','','Bìa M?m',NULL,10,'Vì Gió Ở Nơi Ấy',528,145000,116000,'2018-10-30',_binary '',44,590,15,10,2),(5,8,'B06','2019-05-18 23:31:31','','Bìa m?m',NULL,7,'Mùa Đông Dài',800,180000,150000,'2017-12-05',_binary '',52,650,16,7,2);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `book_category`
--

LOCK TABLES `book_category` WRITE;
/*!40000 ALTER TABLE `book_category` DISABLE KEYS */;
INSERT INTO `book_category` VALUES (1,'2019-05-04 17:13:00',1,'Sách bán chạy',_binary '',NULL),(2,'2019-05-04 17:13:01',1,'Sách mới',_binary '',NULL),(3,'2019-05-04 17:13:01',1,'Sắp phát hành',_binary '',NULL),(4,'2019-05-04 17:13:01',1,'Sách giảm giá',_binary '',NULL),(5,'2019-05-04 17:13:01',1,'Tiểu sử - Hồi ký',_binary '',1),(6,'2019-05-04 17:13:01',1,'Truyện ngắn - Tản văn',_binary '',1),(7,'2019-05-04 17:13:01',1,'Tác phẩm kinh điển',_binary '',1),(8,'2019-05-04 17:13:01',1,'Huyền bí - Giả tưởng',_binary '',1),(9,'2019-05-04 17:13:01',1,'Truyện trinh thám - Kinh dị',_binary '',1),(10,'2019-05-04 17:13:01',1,'Tiểu thuyết tình cảm - Lãng mạn',_binary '',2),(11,'2019-05-04 17:13:01',1,'Tiểu thuyết đam mỹ',_binary '',3),(12,'2019-05-04 17:13:01',1,'Bách hợp',_binary '',4),(13,'2019-05-04 17:13:01',1,'Tiểu thuyết',_binary '',3),(14,'2019-05-04 17:13:01',1,'Truyện ngắn - Tản văn',_binary '',2),(15,'2019-05-04 17:13:01',1,'Huyền bí - Giả tưởng',_binary '',4),(16,'2019-05-04 17:13:01',1,'Phóng sự - Ký sự',_binary '',1),(17,'2019-05-04 17:13:01',1,'Trinh thám - Kinh dị',_binary '',1),(18,'2019-05-04 17:13:01',1,'Tiểu sử - Hồi ký',_binary '',3),(19,'2019-05-04 17:13:01',1,'Kỹ năng sống',_binary '',2),(20,'2019-05-04 17:13:01',1,'Nghệ thuật sống đẹp',_binary '',5),(21,'2019-05-04 17:13:01',1,'Văn học teen',_binary '',5),(22,'2019-05-04 17:13:01',1,'Hướng nghiệp - Kỹ năng',_binary '',5),(23,'2019-05-04 17:13:01',1,'Light Novel',_binary '',3),(24,'2019-05-04 17:13:01',1,'Truyện tranh, Comic',_binary '',2),(25,'2019-05-04 17:13:01',1,'Từ điển',_binary '',3);
/*!40000 ALTER TABLE `book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `book_image`
--

LOCK TABLES `book_image` WRITE;
/*!40000 ALTER TABLE `book_image` DISABLE KEYS */;
INSERT INTO `book_image` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19);
/*!40000 ALTER TABLE `book_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (0,'2019-05-10 00:00:00',3,2,1),(1,'2019-05-10 00:00:00',1,3,1),(2,'2019-05-10 00:00:00',12,4,1),(3,'2019-05-10 00:00:00',1,5,1),(4,'2019-05-10 00:00:00',1,7,1),(5,'2019-05-10 00:00:00',5,11,1),(6,'2019-05-11 00:00:00',1,13,1),(7,'2019-05-12 00:00:00',1,14,1),(8,'2019-05-12 00:00:00',2,18,1);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'2019-05-18 23:32:05',1,'Văn học nước ngoài',_binary ''),(3,'2019-05-18 23:32:05',1,'Văn học trong nước',_binary ''),(4,'2019-05-18 23:32:05',1,'Sách kỹ năng sống',_binary ''),(5,'2019-05-18 23:32:05',1,'Sách tuổi teen',_binary ''),(6,'2019-05-18 23:32:05',1,'Học ngoại ngữ',_binary ''),(7,'2019-05-18 23:32:05',1,'Sách thiếu nhi',_binary ''),(8,'2019-05-18 23:32:05',1,'Sách chuyên ngành',_binary ''),(1,'2019-05-18 23:32:05',1,'Văn học nước ngoài',_binary '');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'2018-02-02',NULL,'ga-nghien-giay__57680_thum_135.jpg','ga-nghien-giay-1'),(2,'2018-02-03',NULL,'vi-nguoi-ay-la-em__55366_thum_135.jpg','vi-nguoi-ay-la-em-1'),(3,'2018-02-04',NULL,'an-mang-o-cong-vien__24784_thum_135.jpg','an-mang-o-cong-vien-1'),(4,'2018-02-05',NULL,'vi-gio-o-noi-ay__76521_thum_135.jpg','vi-gio-o-noi-ay-1'),(5,'2018-02-06',NULL,'2013-boxset__14117.jpg','2013-boxset-1'),(6,'2018-02-07',NULL,'bon-vuong-o-day-2017__28233_thum_135.jpg','bon-vuong-o-day-2017-1'),(7,'2018-02-08',NULL,'combo-phu-dao-hoang-hau__47809_thum_135.jpg','combo-phu-dao-hoang-hau-1'),(8,'2018-02-09',NULL,'uber-chuyen-di-bao-tap__93771_thum_135.jpg','uber-chuyen-di-bao-tap-1'),(9,'2018-02-10',NULL,'tu-duy-nhanh-va-cham__49541_thum_135.jpg','tu-duy-nhanh-va-cham-1'),(10,'2018-02-11',NULL,'day-con-lam-giau-tap-9__29608_thum_135.jpg','day-con-lam-giau-tap-9-1'),(11,'2018-02-12',NULL,'vuong-bat-kien-vuong-tap-2__49538_thum_135.jpg','vuong-bat-kien-vuong-tap-2-1'),(12,'2018-02-13',NULL,'2013-boxset__14117_thum_135.jpg','2013-boxset-1'),(13,'2018-02-14',NULL,'sat-pha-lang-tap-3__83580.jpg','sat-pha-lang-tap-3-1'),(14,'2018-02-15',NULL,'phap-y-tan-minh__95577.jpg','phap-y-tan-minh-1'),(15,'2018-02-16',NULL,'tiem-do-co-a-xa-tap-3__89223.jpg','tiem-do-co-a-xa-tap-3-1'),(16,'2018-02-17',NULL,'2013-boxset__14117.jpg','2013-boxset-1'),(17,'2018-02-18',NULL,'rung-mua__39786.jpg','rung-mua-1'),(18,'2018-02-19',NULL,'yeu-chi-la-huu-danh__05605.jpg','yeu-chi-la-huu-danh-1'),(19,'2018-02-20',NULL,'hanh-trinh-cua-elaina-tap-2__07386.jpg','hanh-trinh-cua-elaina-tap-2-1');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `news_type`
--

LOCK TABLES `news_type` WRITE;
/*!40000 ALTER TABLE `news_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','961661097','Trần Nam  Khánh',NULL,171200,1,5,1),(2,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','961661097','Đậu thị kim dung',NULL,171200,1,-1,1),(3,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','961661097','Trần trung dũng',NULL,391000,4,2,1),(4,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','961661097','Nguyễn thị hà',NULL,156000,1,3,1),(5,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','123456789','Nguyễn minh tú',NULL,1184800,1,3,1),(6,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','123456789','Trần Nam',NULL,1184800,1,0,1),(7,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','123456789','Trần Khánh',NULL,1184800,1,3,1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,136000,1,1,1),(2,95200,4,2,1),(3,116000,4,5,1),(4,151200,1,7,1),(5,31000,1,11,2),(6,320000,1,13,2),(7,320000,1,13,2),(8,136000,1,1,4),(9,95200,4,2,5),(10,116000,4,5,5),(11,151200,1,7,6),(12,31000,1,11,3),(13,320000,1,13,3),(14,320000,1,13,7),(15,320000,1,13,1);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'61 Lý Thái Tổ, Hà Nội','2019-05-18 23:30:33',NULL,'NXB Trẻ',_binary ''),(2,'73 Láng Trung, Hà Nội','2019-05-18 23:30:33',NULL,'Văn học',_binary ''),(3,'18 Nguyễn Du, Hà Nội','2019-05-18 23:30:34',NULL,'Hồng Đức',_binary ''),(4,'22 Quang Trung, Hà Nội','2019-05-18 23:30:34',NULL,'Công Thương',_binary ''),(5,'167 Mai Hắc Đế, Hà Nội','2019-05-18 23:30:34',NULL,'Thế Giới',_binary ''),(6,'1 Bách Thảo, Hà Nội','2019-05-18 23:30:35',NULL,'Chân lý',_binary ''),(7,'53A Hàng Chuối, Hà Nội','2019-05-18 23:30:35',NULL,'Sóng gió',_binary ''),(8,'10, Đường Thành, Hà Nội','2019-05-18 23:30:35',NULL,'Thanh Niên',_binary ''),(9,'207 Đường Giải Phóng, Hà Nội','2019-05-18 23:30:36',NULL,'Ngày nay',_binary ''),(10,'16 Hàng Chuối, Hà Nội','2019-05-18 23:30:36',NULL,'NXB Phụ Nữ',_binary ''),(11,'4 Phan Huy Chú, Hà Nội','2019-05-18 23:30:36',NULL,'Văn học',_binary ''),(12,'248 Trần Phú, Thanh Hóa','2019-05-18 23:30:36',NULL,'Khoa học xã hội',_binary ''),(13,'21 Trần Đăng Lưu, Huế','2019-05-18 23:30:36',NULL,'Văn học',_binary ''),(14,'107 Bùi Thị Trường, Cà Mau','2019-05-18 23:30:36',NULL,'Dân Trí',_binary ''),(15,'51 Trần Hưng Đạo, Hà Nội','2019-05-18 23:30:36',NULL,'Bách Việt',_binary ''),(16,'96 Thụy Khuê, Hà Nội','2019-05-18 23:30:36',NULL,'Pavicobooks',_binary ''),(17,'43 Trần Đăng Ninh, Hà Nội','2019-05-18 23:30:36',NULL,'Alphabooks',_binary ''),(18,'7 Trịnh Hoài Đức, Hà Nội','2019-05-18 23:30:36',NULL,'Amak',_binary '');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `purchase_detail`
--

LOCK TABLES `purchase_detail` WRITE;
/*!40000 ALTER TABLE `purchase_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shipping_type`
--

LOCK TABLES `shipping_type` WRITE;
/*!40000 ALTER TABLE `shipping_type` DISABLE KEYS */;
INSERT INTO `shipping_type` VALUES (4,40000,'1-3 ngày','Express'),(3,30000,'4-5 ngày','Fast'),(1,20000,'6-7 ngày','Standard');
/*!40000 ALTER TABLE `shipping_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `slide`
--

LOCK TABLES `slide` WRITE;
/*!40000 ALTER TABLE `slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `status_order`
--

LOCK TABLES `status_order` WRITE;
/*!40000 ALTER TABLE `status_order` DISABLE KEYS */;
INSERT INTO `status_order` VALUES (1,'Ðang hủy',-1),(2,'Ðang lấy hàng',0),(3,'Ðang giao hàng',2),(4,'Ðang thanh toán',3),(5,'Ðã nhận hàng',4),(6,'Ðã hủy',5);
/*!40000 ALTER TABLE `status_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','2019-04-10 00:00:00','k@gmail.com','Trần Nam Khánh','1','961661097',_binary '','Katsukid',NULL),(2,'ok let go','2019-04-11 00:00:00','k2@gmail.com','Đậu Thị Kim Dung','1','1676650607',_binary '','tester1',NULL),(3,'no','2019-04-12 00:00:00','fonixrosffe195@gmail.com','KHansh','12345','123456789',_binary '','hey',NULL),(4,'đâu đó 1','2019-04-13 00:00:00','shipper1@gmail.com','Trần Văn Ngô','12345','124581212',_binary '','shipper1',NULL),(5,'đâu đó 2','2019-04-14 00:00:00','shipper2@gmail.com','Lê Thị Mỹ','12345','123512364',_binary '','shipper2',NULL),(6,'asdf','2019-06-24 15:31:33','a@gmail.com','Khánh','1','0123456789',_binary '','a',NULL),(7,'Ha Noi','2020-05-18 09:12:13','huy441998@gmail.com','Hoang Quoc Huy','123','01233421',_binary '','huy',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_group_role`
--

LOCK TABLES `user_group_role` WRITE;
/*!40000 ALTER TABLE `user_group_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-18 11:38:57


