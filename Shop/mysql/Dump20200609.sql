-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: book_shop
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_of_birth` date DEFAULT NULL,
  `description` mediumtext,
  `name` varchar(255) DEFAULT NULL,
  `author_type` bigint(20) DEFAULT NULL,
  `image` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_author_type` (`author_type`),
  KEY `fk_image_author` (`image`),
  CONSTRAINT `fk_author_type` FOREIGN KEY (`author_type`) REFERENCES `author_type` (`id`),
  CONSTRAINT `fk_image_author` FOREIGN KEY (`image`) REFERENCES `image` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'1981-10-02','Năm 2015 có thể coi là một năm “đại thắng” đối với nhà văn Nguyễn Nhật Anh. “Tôi thấy hoa vàng trên cỏ xanh” thu nhận thành công trên mức tưởng tượng khi được chuyển thể thành phim nhựa giới thiệu tới khán giả trong và ngoài nước. Bên cạnh sự phủ sóng mạnh mẽ của “Tôi thấy hoa vàng trên cỏ xanh”, những cuốn sách khác của nhà văn Nguyễn Nhật Ánh như: “Bảy bước tới mùa hè”, “Cô gái đến từ hôm qua”… cũng nhanh chóng trở thành “best-seller” ngay từ khi mới ra mắt.Thành công của những tác phẩm do Nguyễn Nhật Ánh sáng tác đến từ sự dung dị, đời thường, gắn liền với những kỷ niệm tươi đẹp của tuổi thơ. Mỗi cuốn sách như một bức tranh mở ra trước mắt người đọc những khung cảnh chân phương, đầy ắp tiếng cười.','Nguyễn Nhật Ánh',1,NULL),(2,'1990-10-03','Chuyên viết về đề tài đồng tính và những góc khuất trong thế giới thứ ba, cái tên Nguyễn Ngọc Thạch gần đây được nhắc tới nhiều hơn khi trở thành một người bình luận phim \"cá tính\" trên mạng xã hội Facebook. Những bài bình luận của anh thu hút hàng ngàn lượt \"like\" và bình luận. Đồng thời, việc tham gia talkshow “Những kẻ lắm lời” cũng mang về ít nhiều sự “nổi tiếng” cho nhà văn đồng tính này.','Nguyễn Ngọc Thạch',1,NULL),(3,'1975-10-04','“Đi qua thương nhớ”, “Sinh ra là để cô đơn” hay mới đây nhất là “Sống một cuộc đời bình thường” đều là những cuốn sách được yêu mến của Nguyễn Phong Việt.','Nguyễn Phong Việt',1,NULL),(4,'1974-10-05','Được biết đến trong vai trò là dịch giả của “Xin lỗi, em chỉ là con đĩ”, Trang Hạ được đông đảo bạn trẻ đón nhận với lối viết phóng khoáng, giọng điệu đanh thép và mạnh mẽ của mình.“Đàn bà 30” hay “Tình nhân không bao giờ đòi cưới” là những tác phẩm bán chạy của Trang Hạ. Ngoài những cuốn sách “hot” trên thị trường, Trang Hạ còn gây sốc bởi những phát ngôn để đời, chủ yếu là mắng nhiếc đàn ông, phơi bày những thói hư tật xấu của đấng mày râu. Bởi lẽ đó, thời gian vừa qua, Trang Hạ cho ra mắt cuốn sách khẳng định “Đàn ông không đọc Trang Hạ”.','Trang Hạ',1,NULL),(5,'1977-10-06',NULL,'Scotland Chiết Nhĩ Miêu',3,NULL),(6,'1970-10-07',NULL,'Cửu Lộ Phi Hương',3,NULL),(7,'1963-10-08',NULL,'Thiên Hạ Quy Nguyên',3,NULL),(8,'1966-10-09','','Adam Lashinsky',2,NULL),(9,'1970-10-10',NULL,'Daniel Kehlmann',2,NULL),(10,'1970-10-01',NULL,'Phil Knight',2,NULL);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_type`
--

DROP TABLE IF EXISTS `author_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_type`
--

LOCK TABLES `author_type` WRITE;
/*!40000 ALTER TABLE `author_type` DISABLE KEYS */;
INSERT INTO `author_type` VALUES (1,'Nước ngoài'),(2,'Trong nước'),(3,'Trung Quốc');
/*!40000 ALTER TABLE `author_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buys` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `description` mediumtext,
  `form` varchar(20) DEFAULT NULL,
  `image1` mediumtext,
  `inventory` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number_page` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `promotion_price` int(11) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `author` bigint(20) DEFAULT NULL,
  `categoryid` bigint(20) DEFAULT NULL,
  `publisher` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_book_publisher` (`publisher`),
  KEY `fk_book_category_id` (`categoryid`),
  KEY `fk_book_author_id` (`author`),
  CONSTRAINT `fk_book_author_id` FOREIGN KEY (`author`) REFERENCES `author` (`id`),
  CONSTRAINT `fk_book_category_id` FOREIGN KEY (`categoryid`) REFERENCES `book_category` (`id`),
  CONSTRAINT `fk_book_publisher` FOREIGN KEY (`publisher`) REFERENCES `publisher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,1,'B01','2019-05-18 23:31:31','Tập hợp những bài đoạt giải và tiêu biểu từ cuộc thi viết \"Thành Phố Tôi Yêu\" do báo Thanh Niên tổ chức (2019-2020)\n\nSài Gòn ai đi xa cũng phải nhớ...\n\nSài Gòn còn thương thì về!\n\n# Tình người vẫn bền theo năm tháng\n\nNơi chốn này, con người ta đã thương nhau nương nhau mà sống, dù xa lạ, lần đầu gặp gỡ nhưng đã thân thiện. Tính cách ấy, không phải bây giờ mới có, đã định hình: \"Từ thuở mang gươm đi mở cõi\"(Huỳnh Văn nghệ). Bây giờ, dù Sài Gòn đã khác trước, đã hiện đại hóa, thế nhưng biểu hiện của tình người vẫn bền theo năm tháng. Chính điều này đã làm nên hồn cốt, cốt cách của cư dân vùng đất này, dù sinh ra tại đâu nhưng một khi đến với Sài Gòn, từ trong sâu thẳm tình cảm người ta đã có được tính cách cao thượng ấy._(Nhà thơ Lê Minh Quốc)\n\n# Ừ thì, Sài Gòn mà, thương nhau mà sống!\n\nMọi cảm xúc về thành phố này, nơi đang sống hay chỉ ghé qua, nơi đã từng ghét, từng hụt hẫng và từng thất bại, nơi từng hay đang tận hưởng hạnh phúc, nơi nhận nhiều bài học để lớn dần lên, cũng là nơi đang thay đổi từng ngày qua mắt nhìn một người cố cựu, kiểu gì cũng là câu chuyện về một thành phố mà những người từng qua luôn đọn lại cảm giác trân trọng về sự cởi mở và rộng lòng tiếp nhận, về sự bộc trực và cảm thông với những dị biệt để rồi mang đến sự hòa hợp, gắn bó, thân thiện giữa nhưng người khác biệt, khi đã tụ lại với nhau.\n\nCâu\"Ừ thì, Sài Gòn mà, thương nhau mà sống! trong một bài dự thi, như được thốt ra rất tự nhiên và chân thành, khái quát được về tính cách Sài Gòn._(Nhà văn - Nhà báo Phạm Công Luận)\n\n# Một thành phố đầy hương...\n\nThật là khó khi phải chọn bài hay nhất trong những bài vào chung khảo. Bài nào cũng hay, cũng gợi lại được hình ảnh của một Sài Gòn ấm áp nghĩa tình. Người viết từ nhiều vùng miền đã đến và đã sống với sự cưu mang đùm bọc của người Sài Gòn nghèo khó nhưng đầy tình người. Đến bây giờ họ đã không thể quên dù một chút tình, một chút nụ cười trong tô mì gõ giữa khuya phố vắng. Sài Gòn có đầy hương trong bài viết của các bạn...(Nhà văn - Nhà báo Lê Văn nghĩa)','Bìa mới',NULL,40,'Sài Gòn Thành Phố Tôi Yêu',652,160000,136000,'2018-11-11',1,207,650,1,25,1),(2,40,'B02','2019-05-18 23:31:31','Cuốn sách là câu chuyện về cậu bé Alvin hiếu động luôn thích nghĩ ra những trò nghịch ngợm. Mọi chuyện bắt đầu khi cậu được bố mẹ chuyển nhà đến khu phố mới, và từ đó gặp hai cậu bạn mới và đi học ở ngôi trường mới. Trong cuốn sách hơn 200 trang với nhiều hình minh hoạ sinh động, độc giả bị lôi kéo và bật cười theo hành trình hàng ngày của cậu khi ở nhà và ở trường. Alvin đã hóa giải mọi hoạt động học tập ở trường, với bạn bè cũng như kỳ vọng của người lớn bằng những trò tinh nghịch, hồn nhiên mà trí tuệ, đôi khi còn hơi “quá đà” nhưng đâu đó vẫn toát lên tính giáo dục sâu sắc.\n\nCa sĩ cuốn sách là một cậu bé Việt Nam chưa từng đặt chân đến Mỹ nhưng lại hóa thân vào một cậu nhóc sinh ra và lớn lên ở Mỹ với bối cảnh gia đình, bạn bè, trường học ở Mỹ đầy chân thực, sống động và hài hước. Đọc xong cuốn sách bạn có thể giữ trong lòng những thắc mắc như học sinh, cha mẹ và thầy cô ở Mỹ thì có gì khác biệt với ở Việt Nam? Nhưng cuối cùng có thể cười xoà và nghĩ rằng trẻ con ở đâu cũng vậy, luôn cần được yêu thương và tin tưởng để có thể trưởng thành lành lẽ.\n\nMột cuốn truyện lôi cuốn, hóm hỉnh, vui nhộn nhưng cũng chứa đựng thông điệp ý nghĩa dành cho trẻ em, người lớn, các thầy cô và các bậc phụ huynh.\n\n------ oOo ------\n\n\"Trong khi nhiều bạn học tiểu học đánh vật với những bài văn tả cảnh, kể chuyện, thậm chí loay hoay làm các bài tập sửa lỗi chính tả thì Khang Thịnh mải mê viết cả một cuốn truyện dài hai trăm trang với những câu văn tròn trịa. Alvin siêu quậy trong truyện của Thịnh ham chơi game, và là nhân vật đại diện cho không ít những cậu bé bằng tuổi cậu ngoài đời thực. Tôi đoán rằng nhiều bạn nhỏ sẽ thích thú khi đọc những trang viết về trẻ em của thời đại này từ góc nhìn của một Ca sĩ đồng trang lứa bằng giọng văn hài hước. Và những người lớn nghiêm khắc, thay vì đặt câu hỏi đầy lo lắng rằng một đứa trẻ siêu quậy như Alvin rồi sẽ đi đến đâu, hãy cứ đọc những trang sách này để biết trẻ em nghĩ gì. Và xin đừng vội gọi Ca sĩ của của cuốn sách này là thần đồng, thay vì thế, hãy cứ thưởng thức tác phẩm sáng tạo của em để bật lên những tiếng cười thích thú và góp sự khích lệ cho ước mơ sáng tạo của những em nhỏ khác. Trẻ em viết sách, tại sao không?\"\n\n- Dịch giả Nguyễn Bích Lan –\n\n\"Khi nhận được bản thảo của cuốn Nhật Ký Của Nhóc Alvin Siêu Quậy, mình mở ra đọc với tâm trạng tò mò. Vì đã lâu lắm rồi mình chưa được đọc cuốn sách nào do trẻ em viết. Tò mò thế thôi nhưng trong đầu đã có sẵn mặc định rằng chắc sách lại nói về tình yêu gia đình hoặc thầy cô, bạn bè, những trò vui của tuổi thơ.\n\nSở dĩ có mặc định ấy bởi tiếp xúc nhiều với các bài văn học trò, mình thường thấy các em viết theo khuôn mẫu “rất hiền”, rất nghiêm ngắn và đọc lên có cảm giác như vừa viết các em vừa hình dung có những giám thị nghiêm khắc, tay cầm cây thước gõ gõ nhắc nhở: Viết thế này không đúng rồi. Viết thế này không được điểm cao đâu. Thành thử các bài viết cứ na ná giống nhau.\n\nNhưng chỉ vài trang Nhật Ký Của Nhóc Alvin Siêu Quậy, mình đã thốt lên: À, không phải! Cuốn này khác hẳn!\n\nRồi cái sự “khác hẳn” ấy lôi kéo khiến mình đắm đuối thỉnh thoảng bật cười.\n\nTrời ơi, sao mà cái cậu bé con trong truyện ấy có sức lôi cuốn người đọc đi theo hành trình của cậu ấy đến thế. Mặc dù, mỗi ngày theo như miêu tả của cậu thì “chán ngắt”.\n\nNgôi trường mới (với cái tên giống như thuốc tiêu chảy - theo liên tưởng của Ca sĩ) rõ ràng chẳng mang lại điều gì thú vị. Và thế là bắt đầu từ đây, những “phiền toái” liên tục xảy ra với cậu bé.\n\nNhững phiền toái này chắc tuổi học trò nào cũng đã từng có: ngủ gật khi nghe thầy hiệu trưởng phát biểu; bị phạt; bị điểm B; bị ngã; kết bạn bất thành; gặp bạn là “đầu gấu”…\n\nToàn là những thứ rất “kinh điển” cho nên người đọc dù là người lớn hay trẻ con cũng bắt gặp mình trong đó.\n\nThôi tạm biệt những văn mẫu với tình yêu tha thiết khi còn ngồi trên “mái nhà trường” mà có thể gặp bất cứ đâu, đến cuốn sách này, nhà trường mới thực là nhà trường của tuổi học trò: Quậy tưng bừng.\n\nCái không khí tưng bừng cộng với cái sự miêu tả tưng tửng của Ca sĩ khiến dòng văn không bị đứt đoạn theo từng ngày mà trái lại dẫn dắt người đọc trôi tuột đi theo mạch cảm xúc khi thì hồi hộp thót tim, khi thì ngao ngán, khi lại bật cười. Đáng yêu đến nhức cả răng.\n\nVà cậu bé siêu quậy có tài vẽ tranh ấy đã dần yêu trường học mới mặc dù tên nó vẫn giống như tên của loại thuốc đi ngoài. Vì yêu nên cậu đã nghĩ ra những ý tưởng rất lớn lao như quyên góp tiền để nâng cấp nhà trường với lý do rất cá nhân là để khỏi phải chuyển sang một ngôi trường mới.\n\nChà có điều gì đó khá bất ngờ ở chi tiết này nhỉ? Chọn trường từ xưa đến nay thường là việc của cha mẹ chứ ít khi là quyết định của con. Alvin thì không muốn thế cho nên xoay chuyển quyết định bằng chính khả năng của mình. Tuyệt thật!\n\nSự hấp dẫn của trường học đối với Alvin chẳng nằm ở những bài giảng khô cứng, những bài kiểm tra, những dự án, thí nghiệm mà lại ở những trận đấu thể thao siêu nảy lửa giữa trường nọ với trường kia vì khi đó, Alvin được dùng hết sức để bảo vệ danh dự cho ngôi trường mà mình gắn bó. Tình yêu thông qua hành động cụ thể của một cậu nhóc đang lớn đúng thật là tràn đầy năng lượng.\n\nBốn chương sách: Khu phố mới và trường mới; Suốt học kỳ; Cậu bé đặc biệt; Sự giác ngộ là chuỗi tiếp nối những hoạt động, những suy nghĩ, những trăn trở, những thất vọng và hy vọng, những niềm vui và nỗi buồn. Nhưng qua đó ta đọc được sự trưởng thành của một cậu bé, dù cậu bé ấy chắc chẳng nhận ra mình đang lớn lên, ngay từ trong suy nghĩ. Qua đó ta cũng nhận ra điểm nhìn giữa người lớn và trẻ em đôi khi chẳng giống nhau. Alvin cũng không thấy nói là yêu mẹ, yêu gia đình nhưng đọc vẫn phảng phất sự yên ấm, ngọt ngào mà cậu cảm nhận từ gia đình. Alvin cũng không hề nói là cần phải học kĩ năng kết bạn, kĩ năng sống cùng, sống chung nhưng đọc xong, ta bỗng bần thần nghĩ rằng, đối với tuổi học trò, hình như điều đó quan trọng hơn cả tri thức, rất nhiều.\n\nSau khi đọc hết bốn chương sách, mình nhắn tin hỏi Nhà sản xuất về Ca sĩ. Và điều thực sự ngạc nhiên, đây là câu chuyện do một cậu bé ở Hà Nội viết. Cậu chưa từng sang Mỹ. Cậu tưởng tượng ra mình ở Mỹ và ở đó, cậu được viết một cách sáng tạo tất cả những gì chứng kiến.\n\nMình ngồi bần thần trước thông tin này. Thì ra là thế. Khi đặt trong một bối cảnh hoàn toàn mới mẻ, Khang Thịnh - Ca sĩ của cuốn sách mới có thể có viết đầy sáng tạo, đầy chân thật đến thế.\n\nChính vì vậy, cuốn sách đối với các bạn nhỏ chắc sẽ thú vị như kiểu Nhật ký chú bé nhút nhát đã từng làm say đắm bao nhiêu thế hệ học trò.\n\nVà đối với người lớn, cuốn sách giúp chúng ta tự vấn. Đọc xong sách các bạn sẽ nhìn đứa con của mình và tự hỏi: Có chăng vùng tối thơ ngây nhưng bất trắc và đầy xét đoán trong trí não của con mà mình chưa chạm đến?\n\nVà đối với những người làm giáo dục thì sẽ là câu hỏi: Làm thế nào để trẻ có thể nói, có thể viết một cách hồn nhiên và chúng ta sẽ yên tâm cổ vũ cho sự hồn nhiên đó mà không cần một khuôn mẫu nào cả?\n\nĐơn giản và mong manh, chân thực và hài hước, ngây thơ và giàu suy tưởng… tất cả có trong một cuốn sách.\n\nThực sự cảm ơn Nhà sản xuất đã cho mình may mắn được đọc cuốn sách này khi còn ở dạng bản thảo. Và mình thực sự vui mừng được giới thiệu cuốn sách đến bạn đọc!\n\n- Phan Thị Hồ Điệp -','Bìa mới',NULL,10,'Nhật Ký Của Nhóc Alvin Siêu Quậy',402,200000,95200,'2018-11-11',1,51,510,1,24,15),(3,2,'B04','2019-05-18 23:31:31','\n\n…Nếu ví Bạch Đằng là một “bản giao hưởng của những hợp âm” thì nó có hai “đơn âm” chính là sông Chanh và sông Rút…\n\n…Dòng chảy mênh mông , sóng võ trắng xóa như mây nên người xưa gọi Bạc Đằng là sông Vân Cừ.Sóng nước Bạch Đằng đã reo thành bản nhạc trải dài suốt ngàn năm lịch sử….\n','Bìa mới',NULL,9,'Bạch Đằng Tráng Khúc',488,150000,108000,'2018-11-11',1,34,520,2,9,11),(4,2,'B05','2019-05-18 23:31:31','\n\nĐường Về Thăng Long\n\n\"Nhà văn Nguyễn Thế Quang đã viết tiểu thuyết Đường về Thăng Long với bối cảnh những năm đầu thế kỷ XX, khi những ngọn cờ của phong trào Cần Vương đã ngã xuống, lớp lớp sĩ phu và những trí thức Tây học cùng dân tộc tiếp bước đứng lên quyết giành lại non sông với nhiều cách nghĩ và hành động khác nhau, đã phản ánh một giai đoạn có thể nói là dữ dội, phức tạp và bi tráng hơn nhiều cuộc khởi nghĩa trước đó. Chúng ta bắt gặp ở đầy nhiều nhân vật đủ các thế hệ, các tầng lớp, làm nên diện mạo lịch sử của một thời chưa xa mà công chúng tưởng như đã “quen thuộc”: Phan Bội Châu, Phan Chu Trinh, Huỳnh Thúc Kháng, Nguyễn Ái Quốc - Hồ Chí Minh, Trần Trọng Kim, Võ Nguyên Giáp, Nguyễn Tường Tam, Hoàng Xuân Hãn, Bảo Đại...\n\n...Một tác phẩm “động chạm” đến rất nhiều nhân vật hiện đại có tầm cỡ lớn trong giai đoạn biến động phức tạp của lịch sử như Đường về Thăng Long, với dung lượng có hạn, Ca sĩ lại không dễ “hư cấu”, phóng trí tưởng tượng vượt ra ngoài quan niệm, đạo lý đang được công nhận rộng rãi trong xã hội, nên không thể tránh khỏi những trang viết mà bạn đọc cho là sơ lược, chưa đáp ứng được kỳ vọng lớn của người đọc đối với nhân vật mà mình quan tâm, ngưỡng mộ.\"\n','Bìa mới',NULL,10,'Đường Về Thăng Long',528,145000,116000,'2018-10-30',1,44,590,1,10,2),(5,8,'B06','2019-05-18 23:31:31','Từ Dụ thái hậu là một trường thiên tiểu thuyết gồm 69 chương, có thể xem là tiểu thuyết lịch sử dạng “cung đấu” hiếm hoi của văn học đương đại, viết về thời nhà Nguyễn, triều đại cuối cùng trong lịch sử phong kiến Việt Nam. Tác phẩm là cuốn tiểu thuyết tâm huyết của nữ nhà văn nổi tiếng xứ Huế Trần Thùy Mai, với văn phong thuần Việt và cốt truyện đậm chất điện ảnh, sinh động cuốn hút từ đầu đến cuối.\n\nCa sĩ chọn hậu cung làm nền để kể câu chuyện dài về cuộc đời một trong những bà hoàng lừng danh trong sử Việt, đó là bà Phạm Thị Hằng, chánh thất của hoàng đế Thiệu Trị, sau trở thành hoàng thái hậu Từ Dụ nổi tiếng hiền đức. Thời gian của tác phẩm trải dài 30 năm, qua 3 triều vua Nguyễn: Gia Long, Minh Mạng, Thiệu Trị; từ lúc cô thiếu nữ 13 tuổi Phạm Thị Hằng theo cha từ vùng đất phương Nam trù phú về kinh đô, chịu bao thăng trầm dâu bể rồi trở thành người đứng đầu hậu cung nhà Nguyễn. Cô tiểu thư họ Phạm xinh đẹp, thông minh và nhân hậu đã chứng kiến rất nhiều phận đời sau bức tường thành cung cấm, những bi kịch chốn cung đình, và rồi bản thân nàng cũng trở thành một thân phận điển hình. Những mưu mô thủ đoạn tàn độc đầy rẫy ở hậu cung đôi lúc làm khuynh đảo cả triều chính, gây ra những cái chết tức tưởi, những án oan dậy trời tiếng nhơ khó rửa, đến mức hậu thế phải tốn nhiều bút mực tranh luận.\n\nGiữa nơi cung cấm xa hoa đầy bí hiểm đó, mối tình của Phạm tiểu thư và hoàng trưởng tử Miên Tông (vua Thiệu Trị sau này), nổi lên trong trẻo, lãng mạn và chung thủy, dẫu gặp không ít trắc trở éo le. Bên cạnh đó còn có bóng dáng thầm lặng mà trung thành trước sau như nhất của Trương Đăng Quế, đệ nhất công thần nhà Nguyễn, người mang mối ẩn tình với nàng bao năm (mối tình này đã trở thành một “đại nghi án” gây tranh cãi của triều Nguyễn). Cuộc chiến cam go bảo vệ tình yêu, danh phận; bênh vực giúp đỡ người ngay và lẽ phải ở nơi quyền quý thực sự gay cấn và đầy hiểm nguy, nhất là khi tranh tối tranh sáng thiện ác khôn lường.\n\nNgoài trục chính với các nhân vật trung tâm kể trên, tác phẩm còn là xoay quanh các mối quan hệ quân thần, huynh đệ, những âm mưu thủ đoạn trong hoàng thất khi quyền lực luôn luôn bị nhòm ngó tranh giành. Nhẹ nhàng, tinh tế, không lên gân, Ca sĩ lồng ghép mọi ý tưởng, suy nghĩ, lý giải của mình về chính trường nhà Nguyễn, từ thời Gia Long khởi lập đến lúc vua Tự Đức lên ngôi, bằng cách kể chuyện mạch lạc và cuốn hút, đầy sức thuyết phục. Những đại án thời nhà Nguyễn – vẫn còn gây tranh cãi sôi nổi trong hậu thế – được tái hiện sinh động và hấp dẫn, gay cấn: vụ án quật mồ đại công thần Lê Văn Duyệt do loạn Lê Văn Khôi; đại nghi án con hoàng tử Cảnh thông dâm với mẹ ruột; loạn Hồng Nhậm do vua Thiệu Trị phế trưởng lập thứ; nghi vấn nhức nhối vua Tự Đức có phải là con của đại thần Trương Đăng Quế và thái hậu Từ Dụ?… Ca sĩ đưa ra những lý giải thuyết phục về các sự kiện lịch sử, thể hiện sự am hiểu sâu rộng cổ sử và tầm nhìn hợp tình hợp lý. Đồng thời, Trần Thùy Mai trổ hết tài khéo của một người viết nữ, tinh tế và miêu tả tâm lý nhân vật cực tài tình. Các nhân vật hấp dẫn và gây ấn tượng trong tiểu thuyết này có rất nhiều: Gia Long thâm trầm khôn khéo, Minh Mạng thông minh quyết đoán và nam tính, Thiệu Trị giàu tình cảm, cả nể, Tam phi Ngọc Bình “con vua mà lại hai lần vợ vua”, Nhị phi Trần Thị Đang cơ mưu xảo quyệt, Trương Đăng Quế điềm đạm nhu cương chu toàn, và Phạm Thị Hằng dịu dàng thông minh, luôn lấy lòng nhân đối đầu cường bạo…\n\nCó thể nói, “Chỉ thông qua các chuyện trong hậu cung, chính trường nhà Nguyễn qua ba triều vua hiện lên một cách sinh động dưới ngòi bút sắc sảo của nữ nhà văn Trần Thùy Mai. Mặt khác, văn hóa phong tục được gói trong các lễ nghi giao tiếp, trong các sinh hoạt cung đình và dân dã được mô tả rất tinh tế, rất Huế. Từ Dụ thái hậu là một cuốn tiểu thuyết lịch sử hấp dẫn và trung thực lạ lùng.” (Hoàng Quốc Hải)\"','Bìa mới',NULL,7,'Từ Dụ Thái Hậu (Quyển Hạ)',800,180000,150000,'2017-12-05',1,52,650,2,7,2),(6,40,'B07','2019-05-18 23:31:31','\n\nViệt Án - Lần Theo Trang Sử Cũ\n\nVới cuốn sách các bạn đang cầm trên tay, kể ra, ban đầu Ca sĩ cũng không dự định viết nên. Mà, có thể xem đó là một cơ duyên vậy. Số là tháng 5 năm 2015, báo Pháp luật Việt Nam của Bộ Tư pháp ra một tuần báo riêng mang tên Pháp luật 4 phương. Tình cờ và cũng hữu duyên làm sao, từ cầu nối qua nhà báo Lương Chí Công, chủ biên tuần báo này, mà tôi nhận lời đảm nhận một chuyên mục mình đề xuất mang tên “Án xưa tích lạ”, với mục đích tìm trong sử cũ, gom góp những án xưa, viết lại hầu bạn đọc, cốt sao nói xưa ngẫm nay mà thôi chứ không có gì gọi là to tát. Thế rồi, kể từ số báo đầu tiên ra ngày 11 tháng 5 năm 2015, đều đặn hàng tuần, bên cạnh công việc chính, tôi lại cặm cụi nhặt nhạnh trong sử sách nước nhà xem có những án nào hay, đặc biệt để viết. Càng tìm, càng thấy nhiều. Đâu chỉ những vụ án lâu nay ta đã quen như án Lệ Chi viên, án Thái sư Lê Văn Thịnh… Có nhiều, nhiều lắm những vụ án, những cách xử án có một không hai trong sử ta cứ dần dần hiện ra sau khi lần giở bao trang sách. Còn đó việc Bùi Cầm Hổ xử vụ án bát canh lươn; vẫn chưa mờ phai vụ án Thái tử Lê Duy Vỹ bị vu cáo mà phải chết oan ức; bài học Quốc lão Phạm Công Trứ vì vô tình ăn món chả chim đút lót mà phải thay đổi việc định tội danh cho phạm nhân… và biết bao nhiêu vụ án khác nữa kể sao cho hết.\n\nNay, dù chưa dám gọi là nhiều, nhưng cũng xin mạn phép mà lọc ra những bài viết trên mục “Án xưa tích lạ”, chỉnh sửa cho hợp với văn phong của một xuất bản phẩm để tạo thành cuốn sách mang tên Việt án lần theo trang sử cũ với giới hạn quãng thời gian từ thế kỷ XI đến thế kỷ XIX (có một số vụ án liên quan đến dạo thực dân Pháp xâm lược nửa cuối thế kỷ XIX và thời Pháp thuộc sau đó đến năm 1945, chúng tôi xin phép thuật lại trong một cuốn khác khi có điều kiện), những mong bạn đọc muốn tìm hiểu về những vụ án xưa trong sử nước nhà mà chưa có điều kiện tra cứu sách vở, thì có thể tìm thấy ở đây đôi điều mình muốn. Hoặc giả sử có bạn đọc yêu báo Pháp luật 4 phương, muốn lưu giữ một ấn tượng, kỷ niệm về báo, thì cũng tìm thấy được một mảnh nhỏ từ sách này.\n\nĐọc qua Việt án lần theo trang sử cũ, độc giả có thể cảm được rằng, không phải vụ án nào cũng được xét xử dựa theo luật pháp, mà ngoài ra, tính công bình của những Quốc triều hình luật, Hoàng Việt luật lệ… còn phụ thuộc vào tài năng, cách xử lý của người nắm giữ cán cân pháp luật. Lại cũng qua đây, nhiều vụ án được khám phá thông qua những cách thức phá án hết sức sáng tạo, tài tình của quan xử án, chứng tỏ cha ông ta xưa kia khi phương tiện điều tra, xét hỏi còn hạn chế, đã rất linh hoạt vận dụng tài tình nhiều cách phá án, xử án khác nhau. Mục đích cuối cùng, đa phần những mong pháp luật được thực thi, xử đúng người, đúng tội, và cũng để đảm bảo tính nhân văn của luật pháp nước Việt.\n\nDĩ nhiên, bên cạnh những điểm sáng, vẫn còn đó những góc tối của một số vụ án bị cong vênh bởi việc tham ô, nhũng nhiễu, bởi sự cảm tính của người đại diện cho cán cân pháp luật, bởi mục đích đen tối của những cá nhân, tập thể vì mưu đồ chính trị… Và qua đây, ta thấy không thiếu những vụ án oan khiên được tạo nên bởi quyền lực mà đẩy người ta vào vòng lao lý, thậm chí là phải lụy thân.\n\nQua các vụ án, chúng ta thấy người bị tội có nhiều thành phần khác nhau, từ dân đen cho đến đội ngũ quan viên, thậm chí là hoàng thân quốc thích của vua chúa. Cũng xin lưu ý thêm với bạn đọc rằng có những vụ án, tính xác thực còn chưa được minh định rõ ràng, tỉ như vụ án vua Lê Thánh Tông nhờ Quận Gió mà phát hiện quan tham ô, hoặc có vụ án không ghi rõ tên tuổi nhân vật như vụ án ở Từ Sơn… chúng tôi vẫn mạn phép chép ra đây, để bạn đọc biết thêm vậy.\n\nVới các vụ án được trình bày trong sách này, chúng tôi cũng chỉ là làm công việc góp nhặt những ghi chép của tiền nhân mà tạm hợp thành những vụ án cho bạn đọc dễ theo dõi, chứ chưa dám đặt mục đích gì cao siêu như phân tích hay đánh giá. Chỉ ở một đôi chỗ, có chăng là mạo muội bàn thêm như về thân thế quan họ Phan thời Lê Trung hưng trong vụ án mất trộm trứng gà, hay về sự thực vụ án của vị quan Trịnh Đường thời Nguyễn, góp nhặt tư liệu mà hình thành sơ thảo ban đầu về Tri phủ Nguyễn Bá Thịnh thời Nguyễn cùng vụ án liên quan… Bấy nhiêu, đã thấy mình bạo gan quá lắm.\n\nNhững vụ án được sắp xếp theo tiến trình thời gian để bạn đọc dễ theo dõi. Ở đây, cũng xin lưu ý bạn đọc rằng một số vụ án đã nhiều người biết tới như vụ Lệ Chi viên, vụ Thái sư Lê Văn Thịnh… sách vở, báo chí viết đã nhiều, nên Ca sĩ không\n\nđưa vào khi chưa có được sự tìm hiểu, kiến giải mới. Và hẳn còn nhiều vụ án nữa đã từng được ghi lại mà với thời gian và tầm kiến thức hạn hẹp, chúng tôi chưa tìm hiểu cho hết được.\n\nLại thêm một điều nữa, là để bạn đọc tiện đối chiếu khi cần, nên phần tài liệu tham khảo ở từng bài viết dành cho từng vụ án cụ thể, chúng tôi ghi rõ nguồn tham khảo với tên Ca sĩ, hoặc người dịch, tên tác phẩm, đơn vị xuất bản, năm xuất bản cũng như số trang. Có thể cùng một tài liệu như Đại Việt sử ký toàn thư, hay Đại Việt thông sử, Vũ trung tùy bút… lại có nhiều bản dịch, nhiều đơn vị xuất bản, thời điểm xuất bản khác nhau. Mà trong quá trình viết bài, thì vì thư viện gia đình có nhiều bản in khác nhau, nên tiện lấy bản nào tham khảo cho bài viết thì dùng, chứ lòng không nghĩ xa đến việc tập hợp thành sách như bây giờ. Thành thử nay lại là điều bất tiện. Bởi vậy, bài viết tham khảo bản in nào chúng tôi ghi rõ để bạn đọc khỏi lầm nếu muốn tìm hiểu, đối chiếu.\n\nDẫu có cố gắng chăm chút câu chữ, gạn lọc tư liệu đi chăng nữa, nhưng vẫn biết rằng, trí tuệ, khả năng của cá nhân là hữu hạn. Có thể vẫn còn những thiếu sót mà trong quá trình viết, Ca sĩ chưa phát hiện ra, hay thiếu tư liệu mà Ca sĩ chưa có dịp bổ túc. Bản thân xin được nhận trước sự hạn chế chủ quan này với độc giả với tinh thần cầu thị chân thành.\n\nDù biết có nói bao nhiêu, câu chữ cũng không thể gửi gắm hết được những điều gan ruột tới quý độc giả. Thôi thì cũng xin có đôi lời thưa trước vậy với quý độc giả!\n','Bìa mới',NULL,10,'Việt Án - Lần Theo Trang Sử Cũ',652,189000,151200,'2017-10-30',1,30,890,3,10,2),(7,2,'B08','2019-05-18 23:31:31','“Khái niệm “tiểu thuyết lịch sử” – tức tiểu thuyết về một “quá khứ xa”, như trong quan niệm mang tính phổ biến – là không đủ để ôm trọn Kẻ sĩ thời loạn của Vũ Ngọc Tiến. Tác phẩm bộn bề hơn thế. Vì ở tiểu thuyết này, ngoài truyện kể về thời Lê mạt với nhân vật trung tâm là Nguyễn Hữu Chỉnh, còn có truyện kể về thời hiện tại với cặp nhân vật chính là nhà di truyền học Duy Thiện và bà Hoàng Lan, hồng nhan tri kỷ của ông. Hai mạch truyện kể gắn với nhau theo cấu trúc truyện lồng trong truyện: Duy Thiện của thời hiện tại là người viết cuốn sách kể lại lịch sử cuộc đời của cụ tổ mình, tức Bằng quận công Nguyễn Hữu Chỉnh… Trong Kẻ sĩ thời loạn, cái được chuyển tải chính là bức tranh toàn cảnh về chính trị xã hội thời Lê mạt, một thời đại đầy biến động trong tiến trình lịch sử Việt Nam, một thời đại được đặc trưng bằng sự phân liệt và tranh chấp mạnh mẽ về quyền lực giữa các thế lực quân sự: Lê – Mạc, rồi Trịnh – Nguyễn, rồi cái thế chân vạc Trịnh – Nguyễn – Tây Sơn. Một thời loạn.\n\nTrong Kẻ sĩ thời loạn, nói đúng hơn, trong cuốn sách mà nhà di truyền học Duy Thiện viết để kể lại cuộc đời của cụ tổ mình, Nguyễn Hữu Chỉnh không hề là kẻ gian hùng, người phản phúc, lật lọng. Ông bỏ Trịnh theo Tây Sơn, đưa quân Tây Sơn ra đánh Bắc Hà, rồi lại bỏ Tây Sơn để diệt Trịnh phò Lê, nghênh ngang một cõi cho đến lúc bị Tây Sơn tận diệt, tất cả những quyết định ấy với Nguyễn Hữu Chỉnh đều là quyết định ở thế chân tường, là ngộ biến thì phải tòng quyền, không còn cách nào khác. Ca sĩ đã hơn một lần cắt nghĩa về ý chí quyền lực và niềm khao khát tạo lập thân danh với đời của Nguyễn Hữu Chỉnh: ông nhập thế, thoạt tiên chỉ mong tìm được minh chủ để cống hiến toàn bộ tài năng và những phẩm chất cá nhân hơn người của mình. Nhưng không có minh chủ, hoặc có nhưng không xứng đáng, hoặc xứng đáng nhưng ông lại không được tin dùng. Những sự cắc cớ ấy cứ lần lượt diễn ra, để rồi Nguyễn Hữu Chỉnh phải đi đến quyết định chung cục: ông sẽ tự mình làm minh chủ cho chính mình, không phụ thuộc bất cứ kẻ nào, tự mình trở thành một quyền lực dưới gầm trời này, tự mình thống nhất sơn hà, làm nên nghiệp lớn. Không phải để thỏa mãn cái nhu cầu được chi phối vận mệnh của muôn người trong thiên hạ, mà là để phụng vụ hết mình cho sự nghiệp “vì dân”. “Vì dân”, có thể nói, chính là tư tưởng xuyên suốt, là cái đích quan trọng nhất đời của Nguyễn Hữu Chỉnh, và cũng là hạt nhân trong sự tạo thành nhân cách “kẻ sĩ” nơi ông. Nói cách khác, đặt tư tưởng “vì dân” vào Nguyễn Hữu Chỉnh, nhà văn Vũ Ngọc Tiến không những đã thực hiện một diễn giải khác về nhân vật lịch sử đầy phức tạp và rất khó đoán định này, hơn thế, ông còn tái kiến tạo một Nguyễn Hữu Chỉnh như hình mẫu cho “kẻ sĩ thời loạn” theo quan niệm của riêng mình: đó là người trí thức (Nho giáo) lập thân giữa cảnh đời biến loạn đảo điên, kẻ đã biết buông bỏ sách vở thánh hiền và những trầm tư đạo lý để trở thành con người hành động trong thực tế, hành động liên tục, quyết liệt, với một sự kiên trì hiếm thấy, một lòng dũng cảm vô bờ, một niềm đam mê cháy bỏng, hành động như một hy sinh đến cùng để đất nước được thái bình, muôn dân được yên ấm.\n\n… Có thể nói, tìm câu trả lời cho hiện tại ở quá khứ đã thực sự là một hướng đi khả thi. Khi ấy, lịch sử được trưng dụng bằng nhiều cách: thêm vào, làm cho rõ hơn, phản biện, tái diễn giải, thậm chí tái kiến tạo. Bằng quận công Nguyễn Hữu Chỉnh trong tác phẩm Kẻ sĩ thời loạn của Vũ Ngọc Tiến, theo tôi, thuộc về kiểu nhân vật lịch sử được tái kiến tạo. Người đọc có thể sẽ phải tranh luận khá nhiều về tư tưởng “vì dân” của nhân vật này, nhưng không thể phủ nhận đấy chính là một đòi hỏi đau đớn của thời hiện tại, của một xã hội dân sự mà quyền công dân của nhiều bộ phận cư dân còn chưa được tôn trọng đúng mức.\n\nNói lịch sử cũng chính là nói hiện tại, là vì thế.”\n\n(Trích Lời giới thiệu của Hoài Nam)\"','Bìa mới',NULL,10,'Kẻ Sĩ Thời Loạn',200,658000,526400,'2018-01-01',1,15,1600,3,10,2),(8,3,'B09','2019-05-18 23:31:31','\n\nKhi anh chủ nhà có cặp mắt kỳ lạ gặp gỡ những người khách thuê nhà “rất bảnh”, cuộc sống chung nhà nhằm “nương tựa vào bạn bè” đã diễn ra một cách lạ thường!\n\nKhả năng nhìn thấy ma của An Nhiên đã cứu mạng đạo diễn nổi tiếng, còn ngang nhiên ngăn cản cơ hội báo thù của oan hồn! Đang đau đầu tìm cách thoát khỏi cô nàng paparazzi hiếu kỳ, An Nhiên vô tình lại trở thành nhân vật nam đáng thương trên tin tức giải trí…\n\nAnh hai nhà họ Lâm cũng ra tay giúp đỡ, cùng An Nhiên chia ra hành động. Một nhiệm vụ đơn giản là mời đối thủ ăn cơm trưa, cuối cùng lại trở thành “quý ông đầu bếp” đắm chìm trong tình yêu.\n\nCậu em trai Lâm Tuấn bát tự xung khắc với An Nhiên cũng ra tay giúp đỡ. Nhưng… mối nguy hiểm chết người lần này vô cùng khó khăn!\n','Bìa mới',NULL,40,'Dị Nhân Phòng Đông',300,199000,159200,'2018-01-01',1,22,560,4,25,3),(9,4,'B10','2019-05-18 23:31:31','Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.\n\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\n\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.” (trích đoạn)','Bìa mới',NULL,19,'Nhà Giả Kim (Tái bản năm 2020)',611,239000,191200,'2010-01-01',1,1,750,4,19,3),(10,40,'B11','2019-05-18 23:31:31','Thiếu Nữ Và Chiến Xa – Tập 2\n\nTôi là Takebe Saori, 16 tuổi, học sinh lớp 11 học viện nữ sinh Oarai! Đại hội chiến xa đạo toàn quốc dành cho học sinh cấp 3 đột nhiên bắt đầu. Học viện nữ sinh Oarai chúng tôi đang phải đối đầu với một đối thủ có cá tính mạnh mẽ!\n\nĐó là trường phổ thông Anzio do chỉ huy trưởng Anchovy dẫn dắt, cùng với đương kim vô địch năm ngoái - Trường Phổ thông P Tất cả bọn họ đều mạnh khiến chúng tôi vô cùng lo lắ nhưng không sao, sẽ ổn thôi. Vì mọi người cùng nhau cố gắng và số lượng xe tăng bây giờ cũng đã tăng lên, hơn nữa, tất cả trái tim của Đội chiến xa Cá đèn lồng chúng tôi đang hòa chung một nhịp đập!\n\nẾ, nhưng dáng vẻ mấy chị bên Hội học sinh có chút kỳ lạ, họ đang che giấu chúng tôi điều gì\n\nCâu chuyện về xe tăng được chuyển thể thành tiểu thuyết cực kỳ được yêu thích, quyển hai!\n\nThiếu Nữ Và Chiến Xa – Tập 3\n\nTôi là Takebe Saori, 16 tuổi, học sinh lớp 11 học viện nữ sinh Oarai. Cuối cùng cũng tới trận chung kết, đối thủ là Nishizumi Maho, truyền nhân Chiến xa đạo phái Nishizumi, chỉ huy trường Kuromorimine và cũng là chị gái của Miporin.\n\nChúng tôi chỉ có 8 chiếc xe tăng còn bên địch có tận 20 chiếc. Hơn nữa còn có chiếc to khủng bố như thế kia, quả là một trường mạ nhưng, trận đấu này liên quan tới sự sống còn của học viện chúng tôi nên tuyệt đối không thể thua!\n\nVì Chiến xa đạo của Miporin nhất định không sai.\n\nHồi kết của cuốn tiểu thuyết về xe tăng rất được yêu thích, mô tả đêm trước trận chung kết, một đêm chứa đựng nhiều cảm xúc từ lo lắng, hy vọng đến quyết tâm và một trận chung kết diễn ra vô cùng tự nhiên và kịch tính.','Bìa mới',NULL,31,'Thiếu Nữ Và Chiến Xa (Tập 2 & 3)',376,45000,31000,'2011-01-01',1,8,450,5,21,1),(11,2,'B12','2019-05-18 23:31:31','Ở một tương lai rất xa, nơi thế giới chìm trong băng giá.\n\nCon người say giấc trong một thiết bị ngủ đông dưới lòng đất, chờ đợi mùa xuân tới.\n\nCác robot được tạo ra nhằm duy trì hoạt động của thiết bị này đã gây dựng một “ngôi làng” để cùng nhau sinh sống.\n\nChúng mơ về một ngày có thể chung sống cùng “con người” một lần nữa.\n\nĐây chính là câu chuyện về một “xứ sở băng giá” như vậy.\n\n------\n\nLight-novel oneshot về đề tài robot cùng Ca sĩ Takeshi Matsuyama với Iris - Những ngày mưa\n\nBối cảnh câu chuyện diễn ra trong một thế giới băng giá khép kín năm trăm mét dưới lòng đất, khi các robot được giao nhiệm vụ bảo vệ một thiết bị ngủ đông đặc biệt - nơi hơn ba trăm “chủ nhân” đang say ngủ sau thảm hoạ kỉ băng hà biến Trái Đất thành một cõi tối tăm và lạnh lẽo. Những robot tận tuỵ bảo vệ “chủ nhân” của mình và mong đến ngày “chủ nhân” của họ thức giấc. Những robot không chỉ được cấu tạo từ sắt thép mà trong họ còn có kí ức, ước mơ và hi vọng. Trong suốt hơn 100 năm, Amaryllis và bạn bè của mình vẫn miệt mài với công việc của mình, dù bản thân họ cũng bị lớp băng lạnh giá bào mòn cơ thể. Trước tình hình đó, robot Trưởng Làng đưa ra một quyết định khiến Amaryllis và tất cả mọi người cảm thấy bàng hoàng. “… Ta nghĩ đã đến lúc nhân loại phải bị tiêu diệt.” Amaryllis sẽ phải làm gì đây?!','Bìa mới',NULL,11,'Amaryllis Ở Xứ Sở Băng Giá',356,89000,71200,'2017-11-15',1,8,370,5,11,1),(12,40,'B13','2019-05-18 23:31:31','Cựu đặc vụ mạnh nhất thế giới sau khi chuyển sinh sang thế giới khác với hình dáng của một đứa trẻ. Sirius, để hoàn thành ước nguyện chỉ dạy học trò, cậu đã bắt đầu nhận về dạy dỗ những đệ tử đầu tiên của mình. Kể từ đó vài năm, đã đến lúc cậu phải rời xa ngôi nhà của mình và bắt đầu hành trình hướng đến học viện Elysion. Với năng lực ma thuật vượt xa so với người thường, thể hiện ở kỳ kiểm tra đầu vào, tất cả mọi ánh mắt đều tập trung về phía họ. Tuy nhiên, cũng chính vì những biểu hiện quá dị thường đó, những học viên là quý tộc cùng một số giáo viên khác đều thể hiện rõ thái độ không mấy thân thiện. Và Reese, một cô gái cũng mang gánh nặng cùng phiền muộn không đáng có bởi chính sự dị thường của mình… Sau khi gặp được Sirius, vận mệnh của cô đã bắt đầu chuyển động, rẽ sang hướng cô chưa từng nghĩ đến.\n\n“Mọi việc ở đây cứ giao cho tôi. Nhưng điều quan trọng nhất vẫn luôn là cảm xúc của cậu đó, Reese.”\n\nSân khấu chuyển về khung cảnh học viện, nhiệm vụ đào tạo phong cách dị giới của Sirius lại tăng tốc, thẳng tiến về phía trước.','Bìa mới',NULL,11,'World Teacher - Tập 2',356,400000,320000,'2017-11-20',1,6,1700,6,11,1),(13,40,'B14','2019-05-18 23:31:31','Người ta nói tương lai được kiến tạo từ những ngày mà chúng ta đi qua, đầy rẫy những áp lực dồn nén từ mọi phía. Đó chính là lúc chúng ta rèn giũa bản thân, thử thách mình xem có thể chịu đựng được những đổi thay của một đời đầy biến động hay không?\n\nNghe có vẻ hơi đáng sợ và không muốn đối mặt, nhưng thực ra chỉ cần kiên trì, mọi thứ đều sẽ ổn.\n\nChỉ cần bạn kiên trì, bạn sẽ từng chút từng chút góp nhặt cơ hội, dũng khí và mạnh mẽ hơn.\n\nChỉ cần bạn kiên trì, bạn có thể hiện thực hóa những gì mà mình mong muốn, sống một cách thoải mái, nhẹ nhõm và rực rỡ hơn.\n\nChỉ cần bạn kiên trì, một chút, mỗi ngày, thì tương lai nhất định bạn sẽ đi trên con đường dễ dàng và càng ngày càng thong dong hơn.\n\nNgược lại, nếu bạn cứ sợ hãi, trì hoãn và chẳng làm gì cả thì đừng mong ngày mai cuộc đời sẽ đối tốt với bạn hơn hôm qua. Cuộc sống vẫn luôn phải tiếp tục, vẫn luôn có khó khăn mà bạn cần phải trải qua. Bởi vậy, không cần biết sau mỗi bình minh, chúng ta sẽ lại bị vùi dập hay nhận được một món quà, nhưng hãy tự nhủ: \"Hiện tại kiên trì, tương lai kiên cố\".\n\nHiện Tại Kiên Trì, Tương Lai Kiên Cố - cuốn sách được viết bằng sự sẻ chia chân thành và những trải nghiệm từ Ca sĩ aT, sẽ giúp người đọc cảm thấy đủ đầy, nâng niu những giá trị do sự nỗ lực của bản thân xây dựng nên, niềm hạnh phúc và bình an ươm mầm trong sâu thẳm.\n\n“Việc của bồ công anh không phải là sống như đời hoa hồng, mà là sống hẳn hoi đời của mình, nở bông hoa của chính mình”.\n\nPhải rồi, kẻ không bị đời thay đổi, là kẻ có thể thay đổi cuộc đời. Chiến thắng luôn thuộc về người dám theo đuổi đến cuối cùng.\n\nMột lần nữa với câu thần chú “Hiện tại kiên trì, tương lai kiên cố”! Hy vọng sẽ giúp bạn có một trái tim lạc quan, thêm vững vàng trên hành trình hoàn thiện bản thân, vì một cuộc sống tốt đẹp hơn.\n\nNhất định phải thực sự cố gắng, để sống một đời không nuối tiếc!','Bìa mới',NULL,11,'Hiện Tại Kiên Trì, Tương Lai Kiên Cố',640,160000,128000,'2017-11-15',1,7,690,6,11,1),(14,8,'B15','2019-05-18 23:31:31','Làm Tới Đi Mặc Kệ Đời là một cuốn sách bổ trợ cho cuốn bestseller Unfu*k Yourself (tựa Việt: Nghĩ làm chi hãy sống đi) của Gary John Bishop. Nếu Unfu*k Yourself là cuốn sách truyền cảm hứng để bạn phá bỏ giới hạn của bản thân thì Làm Tới Đi Mặc Kệ Đời đưa bạn đi từ cảm hứng tới hành động, buộc bạn phải bắt tay làm điều gì đó ngay bây giờ để tạo ra cuộc sống mà bạn vẫn hằng mong muốn.\n\nNội dung cuốn sách hướng dẫn xoay quanh ba phần chính: Bản thân, Mọi người, Mục đích. Bằng cách đưa ra những kiến thức mới mẻ, những gợi ý chi tiết cùng câu hỏi cụ thể, cuốn sách Làm Tới Đi Mặc Kệ Đời vừa để bạn có thời gian chiêm nghiệm, nhìn sâu và thấu hiểu bản thân, vừa mạnh mẽ thúc giục bạn viết câu trả lời xuống những trang giấy có sẵn trong sách. Qua quá trình tự vấn, bạn có thể xác định điểm yếu của bản thân và từ đó khắc phục kịp thời bằng cách nỗ lực hành động.\n\nBạn sẽ nhận ra điều gì đang kìm hãm bạn lại, điều gì là quan trọng nhất với bản thân, điều gì sẽ tạo ra sự khác biệt lớn nhất nếu bạn thay đổi. Sau cùng, bạn sẽ nhận thấy chẳng phải ai hay một thế lực nào đang khiến bạn trì trệ, chính bạn và những rào cản tâm lý bạn tạo ra cho mình mới thực sự là nguyên do sâu xa.\n\nMọi thành công vang dội trong tương lai đều xuất phát từ những thay đổi nhỏ ngày hôm nay. Không ai khác, chỉ bạn mới thay đổi được vận mệnh của mình. Hãy bắt đầu hành động ngay thôi!','Bìa mới',NULL,9,'Làm Tới Đi Mặc Kệ Đời',1798,460000,368000,'2012-08-01',1,8,2200,7,9,2),(15,2,'B16','2019-05-18 23:31:31','Thời đại có thể kinh doanh dựa vào“cảm tính và kinh nghiệm” đã kết thúc. Về sau, chỉ những người chủ doanh nghiệp nhìn rõ và phân tích được một cách sáng suốt những hiện thực đang diễn ra trên thế giới và bản thân mình hàng ngày, quy luật hóa những việc làm tốt và sửa lại quỹ đạo cho những việc không tốt , tạo ra thói quen không trì hoãn những ý tưởng mà mình nghĩ ra và thực hiện một cách chắc chắn, sẽ có thể đối ứng với thời đại biến đổi khốc liệt. Bởi thời đại ngày càng khó khăn, báo cáo ngày PDCA là vũ khí sống còn của các doanh nghiệp vừa và nhỏ. Cuốn sách Lập Kế Hoạch Công Việc - Chu Trình PDCA chính là giới thiệu của Yoshiki Nakazaku về phương pháp thực hiện điều đó. Vậy thì, nếu bạn nghe nói rằng chỉ cần làm một công việc tốn khoảng 20 phút một ngày nhưng sẽ tăng doanh thu lên gấp đôi thì bạn có thực hiện không?\n\n“Trong việc học ở trường, nếu chuẩn bị bài và ôn bài đầy đủ thì kết quả học tập sẽ tăng lên. Việc chuẩn bị bài và ôn bài này tương đương với PDCA (lập kế hoạch – thực hiện – kiểm tra – cải tiến) trong doanh nghiệp. Nghĩa là lập kế hoạch, thực hiện kế hoạch đã lập ra, vừa nhìn lại kết quả vừa cải thiện hơn nữa để tiến tới công việc tiếp theo.Tuy nhiên, việc thực hiện quay vòng và liên tục quy trình này cũng khá khó khăn.\n\nCó một cách giúp thực hiện quy trình PDCA một cách dễ dàng hơn chính là báo cáo PDCA theo ngày được Nakazuka giới thiệu trong cuốn sách này.\n\nĐể thành công khi tìm kiếm, mong chờ một điều gì đó, việc tích lũy dần những cải thiện nhỏ một cách ổn định, chắc chắn tưởng chừng là một con đường dài lòng vòng nhưng thực chất lại là một con đường tắt đi nhanh. Đương nhiên, trong con người chúng ta có rất nhiều sự cám dỗ nên việc liên tục thực hiện là điều không hề đơn giản. Với những chủ doanh nghiệp có quyết tâm rằng “trước hết, mình sẽ cố gắng và thử sức trong vòng 1 năm xem sao” thì tôi khuyến khích nên áp dụng báo cáo PDCA theo ngày của Nakazuka.”\n\n– Chủ tịch ngân hàng Saikyo, Hiraoka Hideo','Bìa mới',NULL,10,'Lập Kế Hoạch Công Việc - Chu Trình PDCA',440,119000,95200,'2016-09-21',1,6,460,7,10,3),(16,40,'B17','2019-05-18 23:31:31','Khám phá phương pháp trị liệu Shinrin Yoku giúp chữa lành tâm hồn và hàn gắn trái tim bằng cách kết nối với thiên nhiên.\n\nHãy để tất cả các giác quan của bạn được tắm trong niềm vui thích mà rừng cây mang lại. Hít vào đầy phổi bầu không khí trong lành, tươi mát của cánh rừng có chứa nhiều hoạt chất giúp tăng cường chức năng của hệ miễn dịch, ngăn ngừa ung thư, giảm huyết áp và cải thiện tâm trạng.\n\nCuốn sách nhỏ này sẽ hướng dẫn bạn thực hành điều được người Nhật gọi là \"liệu pháp chữa lành của rừng cây\" bằng cách bỏ lại nhịp sống hối hả, gấp gáp sau lưng và đắm mình trong sự tĩnh lặng.','Bìa mới',NULL,11,'Triết Lí Sống Khỏe Của Người Nhật - Shinrin Yoku: Nghệ Thuật Chữa Lành Của Tắm Rừng',608,299000,242190,'2011-06-11',1,6,910,8,11,3),(17,2,'B18','2019-05-18 23:31:31','Mặc cho biết bao những cảnh báo về hiểm họa thiên tai, những con số đáng thất vọng về tình trạng môi trường nhưng dường như vẫn chưa đủ để con người thức tỉnh. Những quả đồi trơ trọi không một màu xanh; những khu rừng biến mất từng ngày; những con sông, vùng biển “lấp lánh” thứ dầu mỡ đen ngòm, ngập trong rác thải; những tảng băng khổng lồ từ hai cực tan dần thành nước…\n\nBạn có thể cho rằng, vài sự biến đổi của môi trường chẳng ảnh hưởng gì nghiêm trọng đến đời sống của bạn và bảo vệ thiên nhiên không phải trách nhiệm của bạn. Nhưng hãy nhìn vào đồ ăn hôm nay bạn chuẩn bị nấu cho gia đình, bạn có chắc chúng không được trồng từ những nguồn đất ô nhiễm? Những giọt nước bạn đang sử dụng mỗi ngày, bạn có chắc sau vài chục năm nữa còn được chảy ra tinh khiết?... Chính chúng ta, loài sinh vật bé nhỏ và ngông cuồng, đang tự hủy hoại chính mình từng giờ mà không chịu thức tỉnh. Hủy hoại thiên nhiên cũng chính là tự đưa mình đến gần hơn với ngày tàn của sự hủy diệt.\n\nNhưng bạn đã ở đây, cầm cuốn sổ này, giật mình trước những hành động tàn khốc của con người thì bạn hoàn toàn có khả năng cứu lấy chính mình và tất cả chúng ta. Ở đây chúng tôi đưa ra một lối sống khác với ý thức tôn trọng thiên nhiên, hòa hợp với tự nhiên và hạn chế rác thải nhất có thể, gọi là SỐNG XANH. Cách thực hiện không những dễ đến không tưởng mà còn giúp cuộc sống của bạn vui vẻ và đơn giản hơn rất nhiều. Với Sổ Tay Động Lực New Me - 66 Ngày Sống Xanh, bạn được cảm nhận nguồn ánh sáng từ mặt trời thay vì đèn điện; được giảm bớt hóa đơn điện, nước và ga; được tự tay làm những món đồ handmade; được chăm sóc cây cối và ngắm nhìn chúng lớn lên mỗi ngày…\n\nĐi cùng với những tip mà chúng tôi đưa ra sẽ là phần Thách thức bản thân để bạn có thể thực hành hoặc ghi ra những suy nghĩ, trải nghiệm của mình ngay lập tức. Bạn sẽ thấy việc sống xanh không phải là điều gì vĩ mô chỉ nằm trong những bản báo cáo mà chính là cuộc sống thường nhật của bạn, “cứu trái đất” là điều hoàn toàn có thật và có thể thực hiện được.','Bìa mới',NULL,22,'Sổ Tay Động Lực New Me - 66 Ngày Sống Xanh',380,149000,119200,'2017-12-12',1,5,420,8,22,1),(18,40,'B19','2019-05-18 23:31:31','Bạn đã bao giờ rơi vào tình huống khi bạn muốn thuyết phục đối phương và bạn biết chính xác điều mình muốn nói, nhưng bỗng dưng tim bạn bắt đầu đập nhanh, tay đẫm mồ hôi lạnh, và càng cố lên tiếng, bạn càng không thể nói thành lời chưa? Nếu câu trả lời là có, thì đã đến lúc bạn mài giũa khả năng giao tiếp của bản thân!\n\nVới hơn 20 năm kinh nghiệm đào tạo hàng trăm công ty và khách hàng, S. Renee Smith sẽ hỗ trợ bạn trên cuộc hành trình này. Mục tiêu cả cuộc đời của S. Renee Smith là tìm kiếm sức mạnh của chính mình và giúp đỡ người khác tìm kiếm và sống đúng với khả năng tiềm ẩn của họ. Cuốn sách này chính là kết quả từ chính mục tiêu đó.\n\nThông qua cuốn sách Thuyết Phục Bất Kỳ Ai, Ca sĩ sẽ giới thiệu nhiều lời khuyên và ví dụ thực tế về các kiểu giao tiếp dựa trên những chuyện người thực việc thực, kèm theo đó là tấm bản đồ chỉ dẫn đơn giản để giúp bạn phát triển chiến lược giao tiếp thành công giúp giải quyết mâu thuẫn, cân bằng sức mạnh, chia sẻ ý tưởng, hồi đáp những cử chỉ khó ưa, và ứng phó với khoảnh khắc lúng túng. Thông qua những kinh nghiệm thực tiễn của bản thân, Ca sĩ đã chắt lọc những gì mình đã học được về giao tiếp quyết đoán thành 5 bước cơ bản, giúp bạn hiểu phong cách giao tiếp của mình và xác định những thay đổi bạn có thể thực hiện để trở thành một người giao tiếp quyết đoán và tự tin hơn:\n\nBước 1 - Xác định điểm bắt đầu: Bao gồm những bài tập giúp bạn hiểu biết sâu sắc hơn về bản thân và kiểu giao tiếp của mình.\n\nBước 2 - Lắng nghe quyết đoán: Các chiến lược duy trì sự tự chủ, bất kể đối phương nói hay làm gì, đồng thời học được cách thừa nhận quan điểm của người khác mà không có vẻ trịch thượng, cũng như đưa ra phản hồi mà không xúc phạm.\n\nBước 3 - Giao tiếp không lời quyết đoán: Cách rèn luyện kỹ năng xây dựng mối quan hệ hiệu quả giữa người với người, từ đó tăng cường lợi ích kinh doanh, thay đổi sự nghiệp, và tái thiết mối quan hệ cá nhân.\n\nBước 4 - Tự tin lên tiếng: Học cách kết hợp các kỹ năng giao tiếp quyết đoán với kỹ năng giao tiếp bằng lời để bạn giao tiếp tự tin, thành công và quả quyết hơn.\n\nBước 5 -Phản hồi trực tiếp: Cách tiếp nhận những lời phản hồi với thái độ tích cực và tận dụng chúng để phát triển bản thân.\n\nKhi đọc cuốn sách Thuyết Phục Bất Kỳ Ai, bạn chắc chắn đang kiếm tìm điều gì đó cụ thể. Rất có thể bạn gặp rào cản tự ti cần phá bỏ, một khoảng cách giao tiếp mà bạn muốn lấp đầy, hoặc một khó khăn mà bạn đang lên kế hoạch giải quyết. Mục tiêu của S. Renee Smith là tạo ra trải nghiệm học hỏi vui vẻ và dễ dàng cho bạn, đồng thời đóng góp vào sự phát triển cá nhân và thành công nghề nghiệp của bạn. Nếu tuân thủ và ứng dụng các bước này khi giao tiếp, bạn sẽ phát triển được các kỹ năng cần thiết để giao tiếp hiệu quả và dứt khoát với mọi người. Bạn đã sẵn sàng trở thành một người giao tiếp quyết đoán chưa? Hãy cùng bắt đầu nào.','Bìa mới',NULL,10,'Thuyết Phục Bất Kỳ Ai',496,139000,111200,'2017-12-10',1,3,510,3,10,17),(19,2,'B20','2019-05-18 23:31:31','Bạn đã sẵn sàng với chiếc xe đạp tự sửa chữa chưa?\n\nVậy còn viên thuốc mà uống xong bạn sẽ không bao giờ muộn phiền nữa thì sao?\n\nBạn muốn sống trong không gian hay trong một thế giới mà thuốc thang được điều chỉnh theo ADN của riêng bạn?\n\nCó lẽ bạn sẽ dần quen với quyền lực ngày một lớn của trí tuệ nhân tạo.\n\nTrong Thế giới rồi sẽ ra sao? 18 nhà khoa học và chuyên gia sẽ khám phá những gì đang chuẩn bị xảy đến với nhân loại. Những chủ đề của họ trải dài từ những thứ trừu tượng (điện toán lượng tử và sinh học tổng hợp) tới những thứ cốt yếu (biến đổi khí hậu và năng lượng) tới những thứ thực sự thuộc về tương lai (du hành thời gian và dịch chuyển tức thời). Và cùng với đó, họ sẽ chỉ cho chúng ta thấy làm thế nào để tái cấu trúc xã hội sau tận thế, và một quả trứng rùa ốp lết sẽ dạy cho chúng ta những gì về việc cứu lấy hành tinh này.\n\nVật lý làm bạn bối rối? Bạn sẽ không bao giờ bối rối nữa sau khi đọc xong cuốn sách ngập tràn những hiện tượng, thí nghiệm lý thú này.','Bìa mới',NULL,32,'Thế Giới Sẽ Ra Sao?',376,98000,83300,'2019-01-20',1,6,390,9,23,8),(20,14,'B21','2019-05-18 23:31:31','Các Chòm Sao: Toàn Cảnh Về Bầu Trời Đêm - cuốn sách giá trị cho người đam mê khoa học và yêu thích bầu trời đêm.\n\nKhông có bất cứ tài liệu nào có thể khẳng định chính xác xem liệu rằng từ khi nào con người đã bắt đầu quan sát bầu trời đêm. Đó có thể là thời điểm sơ khai của tổ chức xã hội loài người, hay từ những tổ tiên xa xôi hàng triệu hoặc hàng chục triệu năm trước. Nhưng có một điều chắc chắn là từ khi con người bắt đầu tìm hiểu và ghi nhận các quy luật của thế giới tự nhiên, thì bầu trời là một trong những đối tượng thu hút được nhiều sự chú ý nhất.\n\nBầu trời sẽ chẳng đáng nhận được quá nhiều sự chú ý nếu nó luôn chỉ có một màu xanh duy nhất và bất động. Nó cuốn hút con người bởi có chuyển động của Mặt Trời, Mặt Trăng, các đám mây, và hiển nhiên là cả hàng nghìn ngôi sao mà bạn có thể thấy mỗi đêm.\n\nBạn biết không, ở những khu vực trời tương đối trong và góc nhìn đủ rộng, mắt của một người bình thường có thể nhìn thấy cùng lúc hơn 2.000 sao, và vì các sao sẽ lặn về phía Tây để các sao khác mọc lên từ phía Đông nên nếu quan sát trong cả đêm thì số sao sẽ là khoảng 5.000. Tất cả các sao mà bạn quan sát được bằng mắt thường như vậy là sao nằm trong thiên hà Milky Way của chúng ta, và chỉ ở khoảng cách tương đối gần - tối đa là trên 10.000 năm ánh sáng.\n\nBây giờ, hãy thử nhớ lại hình ảnh bầu trời sao mà bạn từng nhìn thấy - nếu như bạn đã ít nhất một lần quan sát nó. Bạn thấy rằng các ngôi sao không phải những chấm sáng giống nhau và rải đều trên bầu trời. Chúng sắp xếp không đều nên có những khu vực rất nhiều sao, còn khu vực khác lại thưa thớt hơn. Có sao rất sáng và cũng có sao rất mờ. Thậm chí nếu như trời đủ trong, bạn còn có thể nhận thấy màu sắc của chúng cũng khác nhau: trắng, vàng, đỏ, xanh lam…\n\nVì các sao sắp xếp không đều nên chúng có thể khiến bạn liên tưởng tới nhiều hình dạng khi thử tự kết hợp các sao ở gần nhau lại theo một cách nào đó của riêng bạn.\n\nVới chính cách đó, từ hàng nghìn năm trước, loài người ở rất nhiều nền văn hóa đã vẽ ra đủ hình dạng với đủ truyền thuyết và truyện kể chỉ từ những ngôi sao trên bầu trời và gọi chúng là “những chòm sao”. Trong cuốn sách này, chúng ta sẽ khám phá về những chòm sao trên bầu trời của chúng ta, từ lịch sử và truyền thuyết tới việc quan sát chúng ngày nay.\n\nKhác với phong cách quen thuộc của nhiều Ca sĩ khoa học trong nước, cuốn sách này có cách tiếp cận dễ hiểu và văn phong gần gũi, cuốn hút, có giá trị với việc khơi dậy cảm hứng và đam mê khoa học cho người đọc.\n\nBên cạnh văn phong và cách trình bày hấp dẫn, các Ca sĩ cũng đã mang lại nhiều thông tin thú vị cho những người thích quan sát bầu trời. Ở đó không chỉ có giai thoại, lịch sử hay hình dạng của các chòm sao mà còn có những thông tin bổ ích về cách quan sát bầu trời, về ý nghĩa của việc phân chia các chòm sao. Bên cạnh đó, các Ca sĩ còn thành công trong việc truyền cảm hứng về tính chân thật, giản dị nhưng hết sức cuốn hút của khoa học, tách rời khoa học khỏi những luồng quan điểm mê tín vốn phổ biến ngày nay.','Bìa mới',NULL,50,'Các Chòm Sao: Toàn Cảnh Về Bầu Trời Đêm',40,45000,45000,'2019-01-20',1,6,230,9,22,8),(21,5,'B08','2019-05-18 23:31:31','Một cuốn sách giúp cung cấp thông tin đầy đủ và dễ hiểu về lịch sử khoa học.\n\n• Nội dung ngắn gọn súc tích\n\n• Hơn 500 hình minh họa\n\n• Bức tranh toàn cảnh đầy đủ về lịch sử các ngành khoa học\n\n• Tổng kết những tiến bộ khoa học quan trọng nhất\n\n------\n\nVŨ TRỤ TIẾN HÓA THẾ NÀO SAU BIG BANG?\n\nCÓ PHẢI CHÚNG TA CHỈ SỬ DỤNG 10% BỘ NÃO?\n\nCÓ THỂ CÓ SỰ SỐNG TRÊN NHỮNG HÀNH TINH KHÁC NGOÀI TRÁI ĐẤT KHÔNG?\n\nVÌ SAO VI KHUẨN LẠI TRỞ NÊN KHÁNG THUỐC?\n\nLIỆU PHÁP THỂ THỰC KHUẨN LÀ GÌ?\n\nVÌ SAO CHỮA TRỊ BẰNG TẾ BÀO GỐC LẠI LÀ CUỘC CÁCH MẠNG TRONG Y HỌC?\n\nALBERT EINSTEIN ĐÃ THỰC SỰ KHÁM PHÁ RA ĐIỀU GÌ?\n\nPYTHAGORE ĐÃ THỰC SỰ ĐỂ LẠI CHO CHÚNG TA NHỮNG GÌ?\n\nCÁC SỐ NGUYÊN TỐ ẨN CHỨA ĐIỀU GÌ?\n\nCÓ THỰC TRÁI ĐẤT CÓ DẠNG TRÒN?\n\nBẠN CÓ BIẾT RẰNG CÓ 15.000 VẬT THỂ RÁC ĐANG BAY QUANH TRÁI ĐẤT?\n\nAI ĐÃ GIẾT LŨ KHỦNG LONG?\n\nTừ những bí mật của bộ não đến ADN, từ Galileo đến Einstein hay những phát hiện mới nhất về vũ trụ, hạt Higgs, di truyền phân tử hay tế bào gốc, cuốn sách này vẽ nên bức tranh toàn cảnh, tổng hợp và dễ tiếp cận với tất cả mọi người về y học, toán học, thiên văn, vật lý, sinh học… Những câu hỏi lớn xuyên suốt khoa học hiện đại được diễn giải cụ thể, những mối quan tâm cấp bách trong đời sống thường ngày hay trên lý thuyết được phân tích cặn kẽ. Tất cả là để hiểu và giải mã tốt hơn thế giới nơi chúng ta đang sống cùng những bí mật và thách thức của nó.','Bìa mới',NULL,10,'Kiến Thức Căn Bản Cần Biết - Theo Dòng Lịch Sử Khoa Học',153,299000,299000,'2018-01-01',1,15,1600,10,10,5),(22,3,'B09','2019-05-18 23:31:31','Địa cầu hóa Sao Hỏa, viếng thăm các vì sao, sự bất tử và định mệnh bên ngoài Trái Đất\n\n“Theo tôi, nếu không tiến ra không gian, nhân loại sẽ không có tương lai.” (Stephen Hawking)\n\nVậy hành trình tiến ra không gian ấy sẽ thuận lợi hay khó khăn? Sẽ cần bao nhiêu thời gian và những công nghệ gì? Nhân loại đã chuẩn bị những gì cho định mệnh đó? Và cuộc sống con người khi ấy sẽ ra sao?\n\nHãy để người-truyền-thông-cho-khoa-học Michio Kaku đưa bạn khám phá những “câu hỏi nóng” này của thời đại, bằng hiểu biết sâu sắc về vũ trụ, công nghệ sinh học, tên lửa hạt nhân… và bằng cách dẫn giải khó có thể khúc chiết, tường tận và thú vị hơn.','Bìa mới',NULL,40,'Tương Lai Nhân Loại',300,199000,159200,'2018-01-01',1,22,560,10,25,3),(23,40,'B13','2019-05-18 23:31:31','Màu sơn nào có thể cho bạn biết một chiếc xe đã qua sử dụng vẫn còn trong tình trạng tốt? Làm thế nào các công chức ở thành phố New York có thể xác định các hố ga nguy hiểm nhất trước khi chúng phát nổ? Và làm thế nào những cuộc tìm kiếm của Google dự đoán được sự lây lan của dịch cúm H1N1?\n\nChìa khóa để trả lời những câu hỏi này, và nhiều câu hỏi khác, là dữ liệu lớn. \"Dữ liệu lớn\" đề cập đến khả năng đang phát triển của chúng ta để nắm giữ các bộ sưu tập lớn thông tin, phân tích, và rút ra những kết luận đôi khi sâu sắc đáng ngạc nhiên. Lĩnh vực khoa học đang nổi lên này có thể chuyển vô số hiện tượng – từ giá vé máy bay đến các văn bản của hàng triệu cuốn sách – thành dạng có thể tìm kiếm được, và sử dụng sức mạnh tính toán ngày càng tăng của chúng ta để khám phá những điều chúng ta chưa bao giờ có thể nhìn thấy trước. Trong một cuộc cách mạng ngang tầm với Internet hoặc thậm chí in ấn, dữ liệu lớn sẽ thay đổi cách chúng ta nghĩ về kinh doanh, y tế, chính trị, giáo dục, và sự đổi mới trong những năm tới. Nó cũng đặt ra những mối đe dọa mới, từ sự kết thúc không thể tránh khỏi của sự riêng tư cho đến khả năng bị trừng phạt vì những thứ chúng ta thậm chí còn chưa làm, dựa trên khả năng của dữ liệu lớn có thể dự đoán được hành vi tương lai của chúng ta.\n\nTrong tác phẩm thông tuệ tuyệt vời và gây nhiều ngạc nhiên này, hai chuyên gia hàng đầu giải thích dữ liệu lớn là những gì, nó sẽ làm thay đổi cuộc sống của chúng ta như thế nào, và những gì chúng ta có thể làm để bảo vệ chính mình khỏi các mối nguy hiểm của nó. Khoa Học Khám Phá - Dữ Liệu Lớn là cuốn sách lớn đầu tiên về điều to lớn sắp diễn ra.”\n\nBạn đọc có thể quét các QR Code bên trong sách và trên bìa sách để xem các đoạn phim minh họa.','Bìa mới',NULL,11,'Khoa Học Khám Phá - Dữ Liệu Lớn',356,400000,320000,'2017-11-20',1,6,1700,1,11,1),(24,8,'B15','2019-05-18 23:31:31','Sawako đã quyết chí thi vào đại học Sapporo, còn Kazehaya sẽ ở lại quê nhà. Trong lúc mọi người cùng hướng về tương lai thì cuộc sống học đường cũng sắp kết thúc, thế nhưng Ayane bỗng phát sinh tâm sự..!','Bìa mới',NULL,9,'Nguyện Ước Yêu Thương - Tập 28',1798,460000,368000,'2012-08-01',1,8,2200,2,9,2),(25,2,'B16','2019-05-18 23:31:31','Sau khi đánh bại Zophise, trận chiến với binh đoàn quái vật ngàn năm cũng chính thức khép lại! Mang trong mình những tâm trạng khác nhau, từng người trong nhóm của Gash đã trớ lại thành phố, tiẽp tục hướng đẽn trận chiến tranh đoạt vương vị.\n\nTrong lúc trở về cuộc sống náo nhiệt thường ngày, một quái vật mới đã xuất hiện trước mặt Gash và Kiyomaro! Màn đụng độ đầu tiên kể từ sau cuộc chiến với quái vật ngàn năm rồi đây sẽ thế nào!\n\nTrước quái vật lang bạt Ted, một \"Tòa thành khổng lồ” bí ẩn mang lại cảm giác chẳng lành, hành trình của Gash chính thức rẽ sang một bước ngoặt hoàn toàn mới','Bìa mới',NULL,10,'Gash - Cậu Bé Vàng (Tập 9)',440,119000,95200,'2016-09-21',1,6,460,3,10,3),(26,40,'B17','2019-05-18 23:31:31','Lấy bối cảnh những năm đầu thời kì Minh Trị ở Nhật Bản, “Lãng khách Kenshin” kể về câu chuyện của lãng khách Himura Kenshin, người từng được biết đến với biệt hiệu “Hitokiri Battosai” vang danh thiên hạ.\n\nVô tình trong một lần lang bạt, Kenshin đã có cuộc gặp gỡ đầy duyên nợ với Kamiya Kaoru - người thừa kế võ đường của môn phái Kamiya Kasshin. Thật trùng hợp là vào đúng lúc đó, Kaoru đang truy tìm một người tự xưng là Battosai và cô nhất quyết tin rằng Kenshin chính là người mình cần tìm. Cuối cùng sau khi hóa giải mọi hiểu lầm và nhận được lời đề nghị giúp đỡ của Kaoru, Kenshin quyết định tạm dừng làm lãng khách và ở lại đạo trường. Từ đây, câu chuyện lãng mạn của kiếm khách thời Minh Trị bắt đầu…\n\nLÃNG KHÁCH KENSHIN đã chính thức trở lại với diện mạo mới hoàn toàn!! Một trong những \"Huyền thoại Shonen Jump\" rất xứng đáng để có trên giá sách của các Fan yêu Shonen!!','Bìa mới',NULL,11,'Lãng Khách Kenshin - Tập 17',608,299000,242190,'2011-06-11',1,6,910,4,11,3),(27,2,'B18','2019-05-18 23:31:31','Pokémon - Cuộc Phiêu Lưu Của Pippi\n\nPokémon - Cuộc Phiêu Lưu Của Pippi là một trong những Series về Pokémon đình đám tại Việt Nam. Cách đây gần 2 thập kỉ, cùng với Pokémon Đặc biệt, Pippi đã trở thành một trong những tác phẩm gây bão vì mức độ hài hước, lầy lội và siêu vui nhộn tới từ chú Pippi ham ăn ham ngủ.\n\nVới Pippi, ở đâu có chiến đấu, ở đó còn hi vọng!! Chính sự phấn đấu không ngừng của chú Pokémon này bên cạnh các Pokémon quen thuộc khác như Pikachu, Togepy, Fushigidane... đã đem lại những phút giây thư giãn thực sự với ngay cả những độc giả chưa biết quá nhiều về thế giới Pokémon.\n\nBởi vì đơn giản, đó chính là tiếng cười!!\n\nVới tất cả sự nỗ lực đưa Pokémon Pippi trở lại, NXB Kim Đồng xin một lần nữa giới thiệu tới tất cả những ai yêu thích Pokémon, những ai đang quá căng thẳng và gặp nhiều áp lực trong cuộc sống, hãy đến với bộ truyện tranh này để được chìm đắm trong không gian của những tiếng cười, chắc chắn mọi mệt mỏi trong bạn sẽ tan biến!!','Bìa mới',NULL,22,'Pokémon - Cuộc Phiêu Lưu Của Pippi (Tập 14)',380,149000,119200,'2017-12-12',1,5,420,5,22,1),(28,14,'B21','2019-05-18 23:31:31','Bộ sách Thỏ Bé Bồng Bông kể câu chuyện của Trixie và thú bông yêu thích. Mỗi bạn nhỏ trên đời đều có món đồ chơi yêu thích của riêng mình. Khi lớn lên, các bạn phải học cách dần rời xa món đồ chơi ấy. Với người lớn có lẽ đây chỉ là một chuyện cỏn con, nhưng với trẻ em, đôi khi quá trình này chẳng dễ dàng chút nào. Câu chuyện của Trixie sẽ giúp các bé hiểu và dễ dàng đối mặt với quá trình trưởng thành ấy!\n\nThỏ Bé Bồng Bông và câu chuyện tiếp nối Một Thỏ Bé Bồng Bông khác đã mang về hai giải Caldecott Honor về cho Ca sĩ Mo Willems. Bộ truyện vô cùng độc đáo với sự kết hợp giữa những hình vẽ hoạt họa và ảnh chụp phong cảnh, khiến cho khi đọc truyện, các em sẽ được chu du qua những con đường của thành phố New York. Chính vì vậy, mà bộ sách này đã lọt vào danh sách sách bán chạy nhất của tờ New York Times danh giá.','Bìa mới',NULL,50,'Một Thỏ Bé Bồng Bông Khác - Mo Willems Kể Chuyện Nhầm Lẫn Danh Tính',40,45000,45000,'2019-01-20',1,6,230,6,22,8);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_book_category_parent` (`parentid`),
  CONSTRAINT `fk_book_category_parent` FOREIGN KEY (`parentid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_category`
--

LOCK TABLES `book_category` WRITE;
/*!40000 ALTER TABLE `book_category` DISABLE KEYS */;
INSERT INTO `book_category` VALUES (1,'2019-05-04 17:13:00',1,'Sách bán chạy',1,NULL),(2,'2019-05-04 17:13:01',1,'Sách mới',1,NULL),(3,'2019-05-04 17:13:01',1,'Sắp phát hành',1,NULL),(4,'2019-05-04 17:13:01',1,'Sách giảm giá',1,NULL),(5,'2019-05-04 17:13:01',1,'Tiểu sử - Hồi ký',1,4),(6,'2019-05-04 17:13:01',1,'Truyện ngắn - Tản văn',1,4),(7,'2019-05-04 17:13:01',1,'Tác phẩm kinh điển',1,4),(8,'2019-05-04 17:13:01',1,'Huyền bí - Giả tưởng',1,4),(9,'2019-05-04 17:13:01',1,'Truyện trinh thám - Kinh dị',1,1),(10,'2019-05-04 17:13:01',1,'Tiểu thuyết tình cảm - Lãng mạn',1,2),(11,'2019-05-04 17:13:01',1,'Tiểu thuyết đam mỹ',1,3),(12,'2019-05-04 17:13:01',1,'Bách hợp',1,4),(13,'2019-05-04 17:13:01',1,'Tiểu thuyết',1,3),(14,'2019-05-04 17:13:01',1,'Truyện ngắn - Tản văn',1,2),(15,'2019-05-04 17:13:01',1,'Huyền bí - Giả tưởng',1,4),(16,'2019-05-04 17:13:01',1,'Phóng sự - Ký sự',1,1),(17,'2019-05-04 17:13:01',1,'Trinh thám - Kinh dị',1,1),(18,'2019-05-04 17:13:01',1,'Tiểu sử - Hồi ký',1,3),(19,'2019-05-04 17:13:01',1,'Kỹ năng sống',1,2),(20,'2019-05-04 17:13:01',1,'Nghệ thuật sống đẹp',1,5),(21,'2019-05-04 17:13:01',1,'Văn học teen',1,5),(22,'2019-05-04 17:13:01',1,'Hướng nghiệp - Kỹ năng',1,5),(23,'2019-05-04 17:13:01',1,'Light Novel',1,3),(24,'2019-05-04 17:13:01',1,'Truyện tranh, Comic',1,2),(25,'2019-05-04 17:13:01',1,'Từ điển',1,3),(26,'2020-04-05 00:00:00',1,'Từ điển',1,3),(27,'2020-04-05 00:00:00',1,'Văn học Mỹ',1,1),(28,'2020-04-05 00:00:00',1,'Văn học Anh',1,1),(29,'2020-04-05 00:00:00',1,'Văn học Việt Nam',1,1),(30,'2020-04-05 00:00:00',1,'Văn học tuổi mới lớn',1,7),(31,'2020-04-05 00:00:00',1,'Tâm lý, giới tính',1,7),(32,'2020-04-05 00:00:00',1,'Truyện Tranh',1,3),(33,'2020-04-05 00:00:00',1,'Kiến Thức Phổ Thông',1,3),(34,'2020-04-05 00:00:00',1,'Doraemon',1,5),(35,'2020-04-05 00:00:00',1,'Conan - Thám tử lừng danh',1,5),(36,'2020-04-05 00:00:00',1,'Ô long viện',1,5),(37,'2020-04-05 00:00:00',1,'Shin - Cậu bé bút chì',1,5),(38,'2020-04-05 00:00:00',1,'Công nghệ thông tin',1,10),(39,'2020-04-05 00:00:00',1,'Giáo dục',1,10),(40,'2020-04-05 00:00:00',1,'Lịch sử/Địa lý',1,10),(41,'2020-04-05 00:00:00',1,'Conan - Thám tử lừng danh',1,6),(42,'2020-04-05 00:00:00',1,'Doraemon',1,6);
/*!40000 ALTER TABLE `book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_image`
--

DROP TABLE IF EXISTS `book_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookid` bigint(20) NOT NULL,
  `imageid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_book_image_bookid` (`bookid`),
  KEY `fk_book_image_imageid` (`imageid`),
  CONSTRAINT `fk_book_image_bookid` FOREIGN KEY (`bookid`) REFERENCES `book` (`id`),
  CONSTRAINT `fk_book_image_imageid` FOREIGN KEY (`imageid`) REFERENCES `image` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_image`
--

LOCK TABLES `book_image` WRITE;
/*!40000 ALTER TABLE `book_image` DISABLE KEYS */;
INSERT INTO `book_image` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28);
/*!40000 ALTER TABLE `book_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_added` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `itemid` bigint(20) NOT NULL,
  `customerid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_item_bookid` (`itemid`),
  KEY `fk_cart_item_userid` (`customerid`),
  CONSTRAINT `fk_cart_item_bookid` FOREIGN KEY (`itemid`) REFERENCES `book` (`id`),
  CONSTRAINT `fk_cart_item_userid` FOREIGN KEY (`customerid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (0,'2019-05-10 00:00:00',3,2,1),(1,'2019-05-10 00:00:00',1,3,1),(2,'2019-05-10 00:00:00',12,4,1),(3,'2019-05-10 00:00:00',1,5,1),(4,'2019-05-10 00:00:00',1,7,1),(5,'2019-05-10 00:00:00',5,11,1),(6,'2019-05-11 00:00:00',1,13,1),(7,'2019-05-12 00:00:00',1,14,1),(8,'2019-05-12 00:00:00',2,18,1),(9,'2020-05-18 23:06:18',1,6,7);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2019-05-18 23:32:05',1,'Văn học',1),(2,'2019-05-18 23:32:05',1,'Kinh tế / Kinh doanh',1),(3,'2019-05-18 23:32:05',1,'Giáo dục',1),(4,'2019-05-18 23:32:05',1,'Truyện kiếm hiệp',1),(5,'2019-05-18 23:32:05',1,'Truyện tranh/Manga/Comic',1),(6,'2019-05-18 23:32:05',1,'Thiếu nhi',1),(7,'2019-05-18 23:32:05',1,'Teen',1),(8,'2019-05-18 23:32:05',1,'Kỹ năng/ Sống đẹp',1),(9,'2020-03-18 00:00:00',1,'Văn hóa/Nghệ thuật/Du lịch',1),(10,'2020-03-18 00:00:00',1,'Sách chuyên ngành',1),(11,'2020-03-18 00:00:00',1,'Sách tiếng anh',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `userid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_feedback_userid` (`userid`),
  CONSTRAINT `fk_feedback_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'2020-02-12',NULL,'sai-gon-thanh-pho-toi-yeu.450x652.w.b.jpg','sai-gon-thanh-pho-toi-yeu'),(2,'2020-02-12',NULL,'nhat-ky-cua-nhoc-alvin-sieu-quay.278x404.w.b.jpg','nhat-ky-cua-nhoc-alvin-sieu-quay'),(3,'2020-02-12',NULL,'bach-dang-trang-khuc.278x404.w.b.jpg','bach-dang-trang-khuc'),(4,'2020-02-12',NULL,'duong-ve-thang-long.278x404.w.b.jpg','duong-ve-thang-long'),(5,'2020-02-12',NULL,'tu-du-thai-hau-quyen-ha.278x404.w.b.jpg','tu-du-thai-hau-quyen-ha'),(6,'2020-02-12',NULL,'viet-an-lan-theo-trang-su-cu.278x404.w.b.jpg','viet-an-lan-theo-trang-su-cu'),(7,'2020-02-12',NULL,'ke-si-thoi-loan.278x404.w.b.jpg','ke-si-thoi-loan'),(8,'2020-02-12',NULL,'di-nhan-phong-dong-tap-2.278x404.w.b.jpg','di-nhan-phong-dong-tap-2'),(9,'2020-02-12',NULL,'nha-gia-kim-tb-2020.278x404.w.b.jpg','nha-gia-kim-tb-2020'),(10,'2020-02-12',NULL,'thieu-nu-va-chien-xa-tap-2-3.278x404.w.b.jpg','thieu-nu-va-chien-xa-tap-2-3'),(11,'2020-02-12',NULL,'amaryllis-o-xu-so-bang-gia.278x404.w.b.jpg','amaryllis-o-xu-so-bang-gia'),(12,'2020-02-12',NULL,'world-teacher-tap-2.278x404.w.b.jpg','world-teacher-tap-2'),(13,'2020-02-12',NULL,'hien-tai-kien-tri-tuong-lai-kien-co.278x404.w.b.jpg','hien-tai-kien-tri-tuong-lai-kien-co'),(14,'2020-02-12',NULL,'lam-toi-di-mac-ke-doi.278x404.w.b.jpg','lam-toi-di-mac-ke-doi'),(15,'2020-02-12',NULL,'lap-ke-hoach-cong-viec-chu-trinh-pdca.278x404.w.b.jpg','lap-ke-hoach-cong-viec-chu-trinh-pdca'),(16,'2020-02-12',NULL,'triet-li-song-khoe-cua-nguoi-nhat-shinrin-yoku.278x404.w.b.jpg','triet-li-song-khoe-cua-nguoi-nhat-shinrin-yoku'),(17,'2020-02-12',NULL,'so-tay-dong-luc-66-ngay-song-xanh.133x229.b.jpg','so-tay-dong-luc-66-ngay-song-xanh'),(18,'2020-02-12',NULL,'thuyet-phuc-bat-ky-ai.278x404.w.b.jpg','thuyet-phuc-bat-ky-ai'),(19,'2020-02-12',NULL,'the-gioi-se-ra-sao.158x229.b.jpg','the-gioi-se-ra-sao'),(20,'2020-02-12',NULL,'cac-chom-sao-toan-canh-ve-bau-troi-dem.278x404.w.b.jpg','cac-chom-sao-toan-canh-ve-bau-troi-dem'),(21,'2020-02-12',NULL,'theo-dong-lich-su-khoa-hoc.278x404.w.b.jpg','theo-dong-lich-su-khoa-hoc'),(22,'2020-02-12',NULL,'tuong-lai-nhan-loai.278x404.w.b.jpg','tuong-lai-nhan-loai'),(23,'2020-02-12',NULL,'khoa-hoc-kham-pha-du-lieu-lon.278x404.w.b.jpg','khoa-hoc-kham-pha-du-lieu-lon'),(24,'2020-02-12',NULL,'nguyen-uoc-yeu-thuong-tap-28.158x229.b.jpg','nguyen-uoc-yeu-thuong-tap-28'),(25,'2020-02-12',NULL,'gash-cau-be-vang-tap-9.158x229.b.jpg','gash-cau-be-vang-tap-9'),(26,'2020-02-12',NULL,'lang-khach-kenshin-tap-17.158x229.b.jpg','lang-khach-kenshin-tap-17'),(27,'2020-02-12',NULL,'pokemon-cuoc-phieu-luu-cua-pippi-tap-14.278x404.w.b.jpg','pokemon-cuoc-phieu-luu-cua-pippi-tap-14'),(28,'2020-02-12',NULL,'mot-tho-be-bong-bong-khac.158x229.b.jpg','mot-tho-be-bong-bong-khac');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `created` bigint(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `image` bigint(20) DEFAULT NULL,
  `is_public` bit(1) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` bigint(20) DEFAULT NULL,
  `author` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_newtype_id` (`type`),
  KEY `FK3td7rnesx8s6clmy9g1qlgw1k` (`author`),
  CONSTRAINT `FK3td7rnesx8s6clmy9g1qlgw1k` FOREIGN KEY (`author`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_newtype_authorid` FOREIGN KEY (`author`) REFERENCES `author` (`id`),
  CONSTRAINT `fk_newtype_id` FOREIGN KEY (`type`) REFERENCES `news_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_type`
--

DROP TABLE IF EXISTS `news_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_type`
--

LOCK TABLES `news_type` WRITE;
/*!40000 ALTER TABLE `news_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `ship_adress` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ship_email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ship_mobile` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ship_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `shipping_type` bigint(20) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `created_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ofder_shippingtype_id` (`shipping_type`),
  KEY `fk_ofder_status_id` (`status`),
  KEY `fk_ofder_created_id` (`created_id`),
  CONSTRAINT `fk_ofder_created_id` FOREIGN KEY (`created_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_ofder_shippingtype_id` FOREIGN KEY (`shipping_type`) REFERENCES `shipping_type` (`id`),
  CONSTRAINT `fk_ofder_status_id` FOREIGN KEY (`status`) REFERENCES `status_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','961661097','Trần Nam  Khánh',NULL,171200,1,5,1),(2,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','961661097','Đậu thị kim dung',NULL,171200,1,-1,1),(3,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','961661097','Trần trung dũng',NULL,391000,4,2,1),(4,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','961661097','Nguyễn thị hà',NULL,156000,1,3,1),(5,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','123456789','Nguyễn minh tú',NULL,1184800,1,3,1),(6,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','123456789','Trần Nam',NULL,1184800,1,0,1),(7,'',NULL,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','k@gmail.com','123456789','Trần Khánh',NULL,1184800,1,3,1),(8,NULL,'2020-05-18 23:06:50','Ha Noi','huy441998@gmail.com','01233421','Hoang Quoc Huy',NULL,171200,1,2,7);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `bookid` bigint(20) NOT NULL,
  `orderid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_detail_bookid` (`bookid`),
  KEY `fk_order_detail_orderid` (`orderid`),
  CONSTRAINT `fk_order_detail_bookid` FOREIGN KEY (`bookid`) REFERENCES `book` (`id`),
  CONSTRAINT `fk_order_detail_orderid` FOREIGN KEY (`orderid`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,136000,1,1,1),(2,95200,4,2,1),(3,116000,4,5,1),(4,151200,1,7,1),(5,31000,1,11,2),(6,320000,1,13,2),(7,320000,1,13,2),(8,136000,1,1,4),(9,95200,4,2,5),(10,116000,4,5,5),(11,151200,1,7,6),(12,31000,1,11,3),(13,320000,1,13,3),(14,320000,1,13,7),(15,320000,1,13,1),(16,189000,1,6,8);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'61 Lý Thái Tổ, Hà Nội','2019-05-18 23:30:33',NULL,'NXB Trẻ',_binary ''),(2,'73 Láng Trung, Hà Nội','2019-05-18 23:30:33',NULL,'Văn học',_binary ''),(3,'18 Nguyễn Du, Hà Nội','2019-05-18 23:30:34',NULL,'Hồng Đức',_binary ''),(4,'22 Quang Trung, Hà Nội','2019-05-18 23:30:34',NULL,'Công Thương',_binary ''),(5,'167 Mai Hắc Đế, Hà Nội','2019-05-18 23:30:34',NULL,'Thế Giới',_binary ''),(6,'1 Bách Thảo, Hà Nội','2019-05-18 23:30:35',NULL,'Chân lý',_binary ''),(7,'53A Hàng Chuối, Hà Nội','2019-05-18 23:30:35',NULL,'Sóng gió',_binary ''),(8,'10, Đường Thành, Hà Nội','2019-05-18 23:30:35',NULL,'Thanh Niên',_binary ''),(9,'207 Đường Giải Phóng, Hà Nội','2019-05-18 23:30:36',NULL,'Ngày nay',_binary ''),(10,'16 Hàng Chuối, Hà Nội','2019-05-18 23:30:36',NULL,'NXB Phụ Nữ',_binary ''),(11,'4 Phan Huy Chú, Hà Nội','2019-05-18 23:30:36',NULL,'Văn học',_binary ''),(12,'248 Trần Phú, Thanh Hóa','2019-05-18 23:30:36',NULL,'Khoa học xã hội',_binary ''),(13,'21 Trần Đăng Lưu, Huế','2019-05-18 23:30:36',NULL,'Văn học',_binary ''),(14,'107 Bùi Thị Trường, Cà Mau','2019-05-18 23:30:36',NULL,'Dân Trí',_binary ''),(15,'51 Trần Hưng Đạo, Hà Nội','2019-05-18 23:30:36',NULL,'Bách Việt',_binary ''),(16,'96 Thụy Khuê, Hà Nội','2019-05-18 23:30:36',NULL,'Pavicobooks',_binary ''),(17,'43 Trần Đăng Ninh, Hà Nội','2019-05-18 23:30:36',NULL,'Alphabooks',_binary ''),(18,'7 Trịnh Hoài Đức, Hà Nội','2019-05-18 23:30:36',NULL,'Amak',_binary '');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `creater` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `publisher` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_purchase_publisherid` (`publisher`),
  CONSTRAINT `fk_purchase_publisherid` FOREIGN KEY (`publisher`) REFERENCES `publisher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_detail`
--

DROP TABLE IF EXISTS `purchase_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bookid` bigint(20) NOT NULL,
  `purchaseid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_purchase_detail_bookid` (`bookid`),
  KEY `fk_purchase_detail_purchaseid` (`purchaseid`),
  CONSTRAINT `fk_purchase_detail_bookid` FOREIGN KEY (`bookid`) REFERENCES `book` (`id`),
  CONSTRAINT `fk_purchase_detail_purchaseid` FOREIGN KEY (`purchaseid`) REFERENCES `purchase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_detail`
--

LOCK TABLES `purchase_detail` WRITE;
/*!40000 ALTER TABLE `purchase_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_WAREHOUSE'),(3,'ROLE_WAREHOUSE'),(4,'ROLE_SALE');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_type`
--

DROP TABLE IF EXISTS `shipping_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cost` int(11) NOT NULL,
  `time` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `type_ship` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_type`
--

LOCK TABLES `shipping_type` WRITE;
/*!40000 ALTER TABLE `shipping_type` DISABLE KEYS */;
INSERT INTO `shipping_type` VALUES (1,20000,'6-7 ngày','Standard'),(3,30000,'4-5 ngày','Fast'),(4,40000,'1-3 ngày','Express');
/*!40000 ALTER TABLE `shipping_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slide` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookid` bigint(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `image` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_slide_image` (`image`),
  CONSTRAINT `fk_slide_image` FOREIGN KEY (`image`) REFERENCES `image` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slide`
--

LOCK TABLES `slide` WRITE;
/*!40000 ALTER TABLE `slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_order`
--

DROP TABLE IF EXISTS `status_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_order`
--

LOCK TABLES `status_order` WRITE;
/*!40000 ALTER TABLE `status_order` DISABLE KEYS */;
INSERT INTO `status_order` VALUES (1,'Ðang h?y',-1),(2,'Ðang l?y hàng',0),(3,'Ðang giao hàng',2),(4,'Ðang thanh toán',3),(5,'Ðã nh?n hàng',4),(6,'Ðã h?y',5);
/*!40000 ALTER TABLE `status_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `user_groupid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_groupid` (`user_groupid`),
  CONSTRAINT `fk_user_groupid` FOREIGN KEY (`user_groupid`) REFERENCES `user_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Số 38 ngách 105/2/37 Xuân Tảo, Bắc Từ Liêm, Hà Nội','2019-04-10 00:00:00','k@gmail.com','Trần Nam Khánh','1','961661097',_binary '','Katsukid',NULL),(2,'ok let go','2019-04-11 00:00:00','k2@gmail.com','Đậu Thị Kim Dung','1','1676650607',_binary '','tester1',NULL),(3,'no','2019-04-12 00:00:00','fonixrosffe195@gmail.com','KHansh','12345','123456789',_binary '','hey',NULL),(4,'đâu đó 1','2019-04-13 00:00:00','shipper1@gmail.com','Trần Văn Ngô','12345','124581212',_binary '','shipper1',NULL),(5,'đâu đó 2','2019-04-14 00:00:00','shipper2@gmail.com','Lê Thị Mỹ','12345','123512364',_binary '','shipper2',NULL),(6,'asdf','2019-06-24 15:31:33','a@gmail.com','Khánh','1','0123456789',_binary '','a',NULL),(7,'Ha Noi','2020-05-18 09:12:13','huy441998@gmail.com','Hoang Quoc Huy','123','01233421',_binary '','huy',1),(8,'1','2020-05-19 20:57:18','1','1','$2a$10$fM4lRXfYzkbWkkBDztvETemlsQztmHC0FpxJSreDkoFCVWzRx2wem','1',_binary '','customer',2),(9,'Hoang Quoc Viet','2020-06-08 21:07:50','huy441998@gmail.com','Hoang Quoc Huy','$2a$10$xYmrpzipJGuxK6AxzZlA4eqao5xmE3u0lDNq6V9iLyUJOhAnQB3Fm','123456789',_binary '','admin',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` VALUES (1,'ADMIN'),(2,'CUSTOMER');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_role`
--

DROP TABLE IF EXISTS `user_group_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(20) NOT NULL,
  `user_groupid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_group_id` (`user_groupid`),
  KEY `fk_user_role_id` (`roleid`),
  CONSTRAINT `fk_user_group_id` FOREIGN KEY (`user_groupid`) REFERENCES `user_group` (`id`),
  CONSTRAINT `fk_user_role_id` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_role`
--

LOCK TABLES `user_group_role` WRITE;
/*!40000 ALTER TABLE `user_group_role` DISABLE KEYS */;
INSERT INTO `user_group_role` VALUES (1,1,1);
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

-- Dump completed on 2020-06-09 20:15:04
