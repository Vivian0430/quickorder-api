/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.6.12-log : Database - quickorder
*********************************************************************
*/


CREATE DATABASE quickorder 

USE quickorder;

/*Table structure for table dt_albums */

DROP TABLE IF EXISTS dt_albums;

CREATE TABLE dt_albums (
  id int(11) DEFAULT NULL,
  article_id int(11) DEFAULT NULL,
  thumb_path varchar(255) DEFAULT NULL,
  original_path varchar(255) DEFAULT NULL,
  remark varchar(255) DEFAULT NULL,
  add_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=212 ROW_FORMAT=DYNAMIC;

/*Data for the table dt_albums */

insert  into dt_albums(id,article_id,thumb_path,original_path,remark,add_time) values (4,1,'/upload/fastfood/1.jpg','/upload/fastfood/01.jpg','','2019-02-17 20:37:47'),(5,2,'/upload/fastfood/2.jpg','/upload/fastfood/02.jpg','','2019-02-17 20:37:49'),(6,3,'/upload/fastfood/3.jpg','/upload/fastfood/03.jpg','','2019-02-17 20:37:51'),(7,4,'/upload/fastfood/4.jpg','/upload/fastfood/04.jpg','','2019-02-17 20:37:53'),(8,5,'/upload/fastfood/5.jpg','/upload/fastfood/05.jpg','','2019-02-17 20:37:55'),(9,6,'/upload/fastfood/6.jpg','/upload/fastfood/06.jpg','','2019-02-17 20:37:57'),(10,7,'/upload/fastfood/7.jpg','/upload/fastfood/07.jpg','','2019-02-17 20:37:58'),(11,8,'/upload/fastfood/8.jpg','/upload/fastfood/08.jpg','','2019-02-17 20:38:00'),(12,9,'/upload/mainfood/1.jpg','/upload/mainfood/01.jpg','','2019-02-17 21:09:43'),(13,10,'/upload/mainfood/2.jpg','/upload/mainfood/02.jpg','','2019-02-17 21:09:46'),(14,11,'/upload/mainfood/3.jpg','/upload/mainfood/03.jpg','','2019-02-17 21:09:48'),(15,12,'/upload/mainfood/4.jpg','/upload/mainfood/04.jpg','','2019-02-17 21:09:50'),(16,13,'/upload/pizza/liulian.jpg','/upload/pizza/liulian.jpg','','2019-02-17 20:26:26'),(17,14,'/upload/pizza/2.jpg','/upload/pizza/2.jpg','','2019-02-17 20:26:49'),(18,15,'/upload/pizza/3.jpg','/upload/pizza/3.jpg','','2019-02-17 20:27:03'),(19,16,'/upload/pizza/4.jpg','/upload/pizza/4.jpg','','2019-02-17 20:27:18'),(20,17,'/upload/pizza/5.jpg','/upload/pizza/5.jpg','','2019-02-17 20:27:56'),(21,18,'/upload/icecream/1.jpg','/upload/icecream/1.jpg','','2019-02-17 20:28:37'),(22,19,'/upload/icecream/2.jpg','/upload/icecream/2.jpg','','2019-02-17 20:29:30'),(23,20,'/upload/icecream/3.jpg','/upload/icecream/3.jpg','','2019-02-17 20:29:38'),(24,21,'/upload/mainfood/5.jpg','/upload/mainfood/05.jpg','','2019-02-17 21:09:54'),(25,22,'/upload/mainfood/6.jpg','/upload/mainfood/06.jpg','','2019-02-17 21:10:26'),(26,23,'/upload/mainfood/7.jpg','/upload/mainfood/07.jpg','','2019-02-17 21:10:01'),(27,24,'/upload/mainfood/8.jpg','/upload/mainfood/08.jpg','','2019-02-17 21:10:03'),(28,25,'/upload/mainfood/9.jpg','/upload/mainfood/09.jpg','','2019-02-17 21:10:05'),(29,26,'/upload/hanshi/1.jpg','/upload/hanshi/1.jpg','','2019-02-17 20:31:48'),(30,27,'/upload/hanshi/2.jpg','/upload/hanshi/2.jpg','','2019-02-17 20:32:19'),(31,28,'/upload/hanshi/3.jpg','/upload/hanshi/3.jpg','','2019-02-17 20:32:28'),(32,29,'/upload/drink/1.jpg','/upload/drink/1.jpg','','2019-02-17 20:32:53'),(33,30,'/upload/drink/2.jpg','/upload/drink/2.jpg','','2019-02-17 20:33:05');

/*Table structure for table dt_attribute */

DROP TABLE IF EXISTS dt_attribute;

CREATE TABLE dt_attribute (
  article_id int(11) DEFAULT NULL,
  sub_title varchar(255) DEFAULT NULL,
  source varchar(100) DEFAULT NULL,
  author varchar(50) DEFAULT NULL,
  goods_no varchar(100) DEFAULT NULL,
  stock_quantity int(11) DEFAULT NULL,
  market_price double DEFAULT NULL,
  sell_price double DEFAULT NULL,
  point int(11) DEFAULT NULL,
  video_src varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=184 ROW_FORMAT=DYNAMIC;

/*Data for the table dt_attribute */

insert  into dt_attribute(article_id,sub_title,source,author,goods_no,stock_quantity,market_price,sell_price,point,video_src) values (26,'',NULL,NULL,'SD5674897403',50,30,25,0,NULL),(27,'',NULL,NULL,'SD3973042344',20,20,18,0,NULL),(28,NULL,NULL,NULL,'SD7883678890',10,10,7,0,NULL),(29,NULL,NULL,NULL,'SD7878799999',13,9,6,0,NULL),(30,NULL,NULL,NULL,'SD8983736774',2,4,8,0,NULL);

/*Table structure for table dt_cart */

DROP TABLE IF EXISTS dt_cart;

CREATE TABLE dt_cart (
  id int(11) DEFAULT NULL,
  count int(11) DEFAULT NULL,
  price int(11) DEFAULT NULL,
  selected tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table dt_cart */

/*Table structure for table dt_category */

DROP TABLE IF EXISTS dt_category;

CREATE TABLE dt_category (
  id int(11) DEFAULT NULL,
  channel_id int(11) DEFAULT NULL,
  title varchar(100) DEFAULT NULL,
  call_index varchar(50) DEFAULT NULL,
  parent_id int(11) DEFAULT NULL,
  class_list varchar(255) DEFAULT NULL,
  class_layer int(11) DEFAULT NULL,
  sort_id int(11) DEFAULT NULL,
  link_url varchar(255) DEFAULT NULL,
  img_url varchar(255) DEFAULT NULL,
  content longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=334 ROW_FORMAT=DYNAMIC;

/*Data for the table dt_category */

insert  into dt_category(id,channel_id,title,call_index,parent_id,class_list,class_layer,sort_id,link_url,img_url,content) values (90,9,'汉堡','',0,',14,',1,102,'','',''),(91,9,'薯条','',0,',15,',1,102,'','',''),(92,9,'炸鸡','',0,',16,',1,102,'','',''),(93,9,'鸡肉卷','',14,',14,17,',2,102,'','',''),(80,8,'面条','',0,'',0,101,NULL,NULL,NULL),(81,8,'水饺馄饨','',0,NULL,NULL,101,NULL,NULL,NULL),(82,8,'汤圆',NULL,NULL,NULL,NULL,101,NULL,NULL,NULL),(83,8,'包子',NULL,NULL,NULL,NULL,101,NULL,NULL,NULL);

/*Table structure for table dt_channel */

DROP TABLE IF EXISTS dt_channel;

CREATE TABLE dt_channel (
  id int(11) DEFAULT NULL,
  site_id int(11) DEFAULT NULL,
  name varchar(50) DEFAULT NULL,
  title varchar(100) DEFAULT NULL,
  is_albums int(11) DEFAULT NULL,
  is_attach int(11) DEFAULT NULL,
  is_spec int(11) DEFAULT NULL,
  sort_id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2730 ROW_FORMAT=DYNAMIC;

/*Data for the table dt_channel */

insert  into dt_channel(id,site_id,name,title,is_albums,is_attach,is_spec,sort_id) values (6,4,'pizza','pizza',0,0,0,99),(7,4,'icecream','icecream',1,0,1,100),(8,4,'mainfood','主食',0,0,0,101),(9,4,'fastfood','fastfood',1,0,0,102),(10,4,'hanshi','韩式料理',0,1,0,103),(11,4,'drink','饮料',0,0,0,104);

/*Table structure for table dt_comment */

DROP TABLE IF EXISTS dt_comment;

CREATE TABLE dt_comment (
  id int(11) DEFAULT NULL,
  channel_id int(11) DEFAULT NULL,
  article_id int(11) DEFAULT NULL,
  parent_id int(11) DEFAULT NULL,
  user_id int(11) DEFAULT NULL,
  user_name varchar(100) DEFAULT NULL,
  user_ip varchar(255) DEFAULT NULL,
  content longtext,
  is_lock int(11) DEFAULT NULL,
  add_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  is_reply int(11) DEFAULT NULL,
  reply_content longtext,
  reply_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table dt_comment */

insert  into dt_comment(id,channel_id,article_id,parent_id,user_id,user_name,user_ip,content,is_lock,add_time,is_reply,reply_content,reply_time) values (27,7,13,0,0,'匿名用户','127.0.0.1','榴莲味很浓，好吃！',0,'2019-02-15 18:03:21',0,NULL,'2016-12-06 17:04:17'),(13,NULL,14,NULL,NULL,'小白',NULL,'还可以',NULL,'2019-02-15 18:07:06',NULL,NULL,'0000-00-00 00:00:00'),(NULL,7,17,0,0,'匿名用户','127.0.0.1','虾仁很足呀',0,'2019-02-15 18:07:48',0,'','2019-02-15 18:07:48'),(NULL,7,17,0,0,'匿名用户','127.0.0.1','可以 ^_^',0,'2019-02-15 18:08:14',0,'','2019-02-15 18:08:14'),(NULL,7,14,0,0,'匿名用户','127.0.0.1','有点咸',0,'2019-02-15 18:38:48',0,'','2019-02-15 18:38:48'),(NULL,7,17,0,0,'匿名用户','127.0.0.1','个人觉得不错',0,'2019-02-15 18:39:11',0,'','2019-02-15 18:39:11'),(NULL,7,20,0,0,'匿名用户','127.0.0.1','巧克力真的浓，推荐',0,'2019-02-15 19:34:29',0,'','2019-02-15 19:34:29'),(NULL,7,3,0,0,'匿名用户','127.0.0.1','真的实惠，老板人不错',0,'2019-02-15 20:32:22',0,'','2019-02-15 20:32:22'),(NULL,7,19,0,0,'匿名用户','127.0.0.1','甜甜的蛮好吃',0,'2019-02-18 16:36:23',0,'','2019-02-18 16:36:23'),(NULL,7,14,0,0,'匿名用户','127.0.0.1','好吃',0,'2019-02-21 14:44:55',0,'','2019-02-21 14:44:55'),(NULL,7,15,0,0,'匿名用户','127.0.0.1','yammy',0,'2019-02-22 23:36:46',0,'','2019-02-22 23:36:46'),(NULL,7,26,0,0,'匿名用户','127.0.0.1','哈哈哈',0,'2019-02-23 09:17:33',0,'','2019-02-23 09:17:33'),(NULL,7,16,0,0,'匿名用户','127.0.0.1','HH',0,'2019-02-23 09:43:04',0,'','2019-02-23 09:43:04'),(NULL,7,17,0,0,'匿名用户','127.0.0.1','好吃',0,'2019-02-25 10:47:31',0,'','2019-02-25 10:47:31');

/*Table structure for table dt_food */

DROP TABLE IF EXISTS dt_food;

CREATE TABLE dt_food (
  id int(11) DEFAULT NULL,
  channel_id int(11) DEFAULT NULL,
  category_id int(11) DEFAULT NULL,
  call_index varchar(50) DEFAULT NULL,
  name varchar(100) DEFAULT NULL,
  link_url varchar(255) DEFAULT NULL,
  img_url varchar(255) DEFAULT NULL,
  sort_id int(11) DEFAULT NULL,
  sale_count int(11) DEFAULT NULL,
  status int(11) DEFAULT NULL,
  is_msg int(11) DEFAULT NULL,
  is_top int(11) DEFAULT NULL,
  is_red int(11) DEFAULT NULL,
  is_hot int(11) DEFAULT NULL,
  is_slide int(11) DEFAULT NULL,
  is_sys int(11) DEFAULT NULL,
  user_name varchar(100) DEFAULT NULL,
  add_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  price int(11) DEFAULT NULL,
  description varchar(255) DEFAULT NULL,
  stock_quantity int(11) DEFAULT NULL,
  original_path varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4778 ROW_FORMAT=DYNAMIC;

/*Data for the table dt_food */

insert  into dt_food(id,channel_id,category_id,call_index,name,link_url,img_url,sort_id,sale_count,status,is_msg,is_top,is_red,is_hot,is_slide,is_sys,user_name,add_time,update_time,price,description,stock_quantity,original_path) values (13,6,1,'0','芝士榴莲披萨','','/upload/pizza/liulian.jpg',99,1,0,1,0,1,0,0,1,'admin','2019-02-20 15:09:42','2016-12-06 17:04:16',38,'芝士榴莲披萨是由浓郁的进口芝士搭配上姜黄色的榴莲果肉，味浓，奶油味四溢，果肉拥有凝脂似的质感，层次丰富，入口嫩滑细致，外形、色泽、肉质近乎完美。',NULL,'/upload/pizza/liulian.jpg'),(14,6,1,'1','奥尔良鸡肉披萨','','/upload/pizza/2.jpg',99,2,0,1,0,1,0,0,1,'admin','2019-02-20 15:09:44','2015-04-16 12:06:02',45,'奥尔良鸡肉披萨由小麦粉、马苏里拉芝士、水、匹萨酱 （水、番茄酱、果葡糖浆、洋葱、酵母提取物、 食用盐、大豆油、香辛料）、等材料搭配制作而成。',NULL,'/upload/pizza/2.jpg'),(15,6,1,'2','黑椒牛肉披萨','','/upload/pizza/3.jpg',99,1,0,1,0,0,0,1,1,'admin','2019-02-20 15:09:46','2016-12-06 17:04:16',35,'黑椒牛肉披萨是一道美味烘焙食品，非常美味，主要食材有酱牛肉、面粉、马苏里拉奶酪、黑胡椒、青椒、圣女果等。',NULL,'/upload/pizza/3.jpg'),(16,6,1,'3','双拼披萨','','/upload/pizza/4.jpg',99,0,0,1,0,0,0,0,1,'admin','2019-02-20 15:09:48','2016-12-06 17:04:16',42,'双拼披萨，主要原料：高筋面粉，玉米面鸡蛋清。',NULL,'/upload/pizza/4.jpg'),(17,6,1,'4','五蔬虾仁披萨','','/upload/pizza/5.jpg',99,10,0,1,0,0,0,0,1,'admin','2019-02-20 15:09:49','2016-12-06 17:04:16',43,'五蔬虾仁披萨主料采用当季新鲜蔬菜以及面粉、黄油、酵母、虾仁、白糖烹制而成，味道鲜美。',NULL,'/upload/pizza/5.jpg'),(18,7,3,'5','三色冰激凌',' ','/upload/icecream/1.jpg',100,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:09:50','0000-00-00 00:00:00',9,'味道香甜可口，品色上乘',NULL,'/upload/icecream/1.jpg'),(19,7,3,'6','香草冰激凌','','/upload/icecream/2.jpg',100,5,0,1,0,0,0,0,1,'admin','2019-02-20 15:09:52','0000-00-00 00:00:00',10,'香荚兰豆荚（香草）散发出愉悦香气和味道一直为人们所喜好，它曾经是皇室才能独享与拥有的尊荣。所以400多年来香荚兰（香草）的历史处处充满了激情、华贵、荣耀、阴谋、偷窃和抢盗的身影。香荚兰（香草）的用途十分广泛，可直接利用于烟酒、茶叶、食品、饮料、糖果、糕点、高级化妆品以及医药工业等。但香荚兰豆荚（香草）鲜有被人们单独品尝的时候，往往是许多食品的最佳配角。在各式饮品、西点中它让味道更为甜美，甚至变成厂商的独家秘方之一。',NULL,'/upload/icecream/2.jpg'),(20,7,3,'7','巧克力冰激凌',' ','/upload/icecream/3.jpg',100,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:09:56','0000-00-00 00:00:00',11,'浓郁巧克力遇上丝滑奶油，据说能让人更开心哦',NULL,'/upload/icecream/3.jpg'),(1,9,90,'8','培根牛排堡','','/upload/fastfood/1.jpg',102,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:09:57','0000-00-00 00:00:00',20,'培根搭配牛排，精选新鲜蔬菜，美味享不停！',NULL,'/upload/fastfood/01.jpg'),(2,9,90,'9','田园蔬菜堡','','/upload/fastfood/2.jpg',102,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:09:59','0000-00-00 00:00:00',12,'多种蔬菜合理均衡搭配，素食主义的最佳选择。',NULL,'/upload/fastfood/02.jpg'),(3,9,91,'10','原味薯条','','/upload/fastfood/3.jpg',102,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:03','0000-00-00 00:00:00',5,'香脆炸薯条，回味无穷，老板力荐，加量不加价！',0,'/upload/fastfood/03.jpg'),(4,9,92,'11','藤椒鸡排','','/upload/fastfood/4.jpg',102,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:05','0000-00-00 00:00:00',11,'香酥鸡排配上麻辣藤椒，美味尽在不言中，新品出炉！',0,'/upload/fastfood/04.jpg'),(5,9,92,'12','爆浆鸡排','','/upload/fastfood/5.jpg',102,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:07','0000-00-00 00:00:00',20,'满满的芝士爆浆，搭配鲜嫩美味的鸡肉，口感爽滑浓香。',0,'/upload/fastfood/05.jpg'),(6,9,92,'13','原味吮指鸡','','/upload/fastfood/6.jpg',102,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:08','0000-00-00 00:00:00',10,'主料为鸡胸肉、鸡蛋，辅料有盐、料酒、姜片、胡椒粉等。口味香酥。可蘸沙拉酱或者番茄酱吃。',0,'/upload/fastfood/06.jpg'),(7,9,93,'14','辣旋风鸡肉卷','','/upload/fastfood/7.jpg',102,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:09','0000-00-00 00:00:00',12,'真的超辣超辣超辣，建议慎点哦',0,'/upload/fastfood/07.jpg'),(8,9,93,'15','墨西哥火腿鸡肉卷','','/upload/fastfood/8.jpg',102,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:11','0000-00-00 00:00:00',14,'墨西哥火腿鸡肉卷，料足皮薄有嚼劲，有甜辣和香辣两种口味可选哦',0,'/upload/fastfood/08.jpg'),(9,8,80,'16','阳春面','','/upload/mainfood/1.jpg',101,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:13','0000-00-00 00:00:00',7,'暂无介绍',0,'/upload/mainfood/01.jpg'),(10,8,80,'17','杂酱面',NULL,'/upload/mainfood/2.jpg',101,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:16','0000-00-00 00:00:00',9,'暂无介绍',0,'/upload/mainfood/02.jpg'),(11,8,80,'18','大排面',NULL,'/upload/mainfood/3.jpg',101,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:18','0000-00-00 00:00:00',15,'暂无介绍',0,'/upload/mainfood/03.jpg'),(12,8,80,'19','牛肉面',NULL,'/upload/mainfood/4.jpg',101,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:20','0000-00-00 00:00:00',18,'暂无介绍',0,'/upload/mainfood/04.jpg'),(21,8,81,'20','三鲜水饺',NULL,'/upload/mainfood/5.jpg',101,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:23','0000-00-00 00:00:00',10,'暂无介绍',0,'/upload/mainfood/05.jpg'),(22,8,81,'21','鸡汤小馄饨',NULL,'/upload/mainfood/6.jpg',101,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:25','0000-00-00 00:00:00',8,'暂无介绍',0,'/upload/mainfood/06.jpg'),(23,8,82,'22','芝麻汤圆',NULL,'/upload/mainfood/7.jpg',101,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:27','0000-00-00 00:00:00',10,'暂无介绍',0,'/upload/mainfood/07.jpg'),(24,8,82,'23','酒酿小汤圆',NULL,'/upload/mainfood/8.jpg',101,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:28','0000-00-00 00:00:00',9,'暂无介绍',0,'/upload/mainfood/08.jpg'),(25,8,83,'24','彩色多味包子',NULL,'/upload/mainfood/9.jpg',101,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:30','0000-00-00 00:00:00',5,'暂无介绍',0,'/upload/mainfood/09.jpg'),(26,10,4,'25','泡菜五花肉石锅拌饭',NULL,'/upload/hanshi/1.jpg',103,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:33','0000-00-00 00:00:00',25,'暂无介绍',0,'/upload/hanshi/1.jpg'),(27,10,4,'26','素拌饭',NULL,'/upload/hanshi/2.jpg',103,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:34','0000-00-00 00:00:00',18,'暂无介绍',0,'/upload/hanshi/2.jpg'),(28,10,4,'27','韩式寿司',NULL,'/upload/hanshi/3.jpg',103,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:36','0000-00-00 00:00:00',7,'暂无介绍',50,'/upload/hanshi/3.jpg'),(29,11,5,'28','快乐肥宅水',NULL,'/upload/drink/1.jpg',104,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:39','0000-00-00 00:00:00',6,'暂无介绍',20,'/upload/drink/1.jpg'),(30,11,5,'29','柠檬水',NULL,'/upload/drink/2.jpg',104,54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-20 15:10:43','0000-00-00 00:00:00',4,'暂无介绍',NULL,'/upload/drink/2.jpg');

/*Table structure for table dt_orders */

DROP TABLE IF EXISTS dt_orders;

CREATE TABLE dt_orders (
  id int(11) DEFAULT NULL,
  order_no varchar(100) DEFAULT NULL,
  trade_no varchar(100) DEFAULT NULL,
  user_id int(11) DEFAULT NULL,
  user_name varchar(100) DEFAULT NULL,
  payment_id int(11) DEFAULT NULL,
  payment_fee double DEFAULT NULL,
  payment_status int(11) DEFAULT NULL,
  payment_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  express_id int(11) DEFAULT NULL,
  express_no varchar(100) DEFAULT NULL,
  express_fee double DEFAULT NULL,
  express_status int(11) DEFAULT NULL,
  express_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  accept_name varchar(50) DEFAULT NULL,
  post_code varchar(20) DEFAULT NULL,
  telphone varchar(30) DEFAULT NULL,
  mobile varchar(20) DEFAULT NULL,
  email varchar(30) DEFAULT NULL,
  area varchar(100) DEFAULT NULL,
  address varchar(255) DEFAULT NULL,
  message varchar(255) DEFAULT NULL,
  remark varchar(255) DEFAULT NULL,
  is_invoice int(11) DEFAULT NULL,
  invoice_title varchar(100) DEFAULT NULL,
  invoice_taxes double DEFAULT NULL,
  payable_amount double DEFAULT NULL,
  real_amount double DEFAULT NULL,
  order_amount double DEFAULT NULL,
  point int(11) DEFAULT NULL,
  status int(11) DEFAULT NULL,
  add_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  confirm_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  complete_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table dt_orders */

/*Table structure for table dt_users */

DROP TABLE IF EXISTS dt_users;

CREATE TABLE dt_users (
  id int(11) DEFAULT NULL,
  group_id int(11) DEFAULT NULL,
  user_name varchar(100) DEFAULT NULL,
  salt varchar(20) DEFAULT NULL,
  password varchar(100) DEFAULT NULL,
  mobile varchar(20) DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  avatar varchar(255) DEFAULT NULL,
  nick_name varchar(100) DEFAULT NULL,
  sex varchar(20) DEFAULT NULL,
  birthday varchar(255) NOT NULL,
  telphone varchar(50) DEFAULT NULL,
  area varchar(255) DEFAULT NULL,
  address varchar(255) DEFAULT NULL,
  qq varchar(20) DEFAULT NULL,
  msn varchar(100) DEFAULT NULL,
  amount double DEFAULT NULL,
  point int(11) DEFAULT NULL,
  exp int(11) DEFAULT NULL,
  status int(11) DEFAULT NULL,
  reg_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  reg_ip varchar(20) DEFAULT NULL,
  hobby varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table dt_users */

insert  into dt_users(id,group_id,user_name,salt,password,mobile,email,avatar,nick_name,sex,birthday,telphone,area,address,qq,msn,amount,point,exp,status,reg_time,reg_ip,hobby) values (1,1,'vivian大佬','4B2H04','1234567','17565443344','test@dtcms.net','','测试','女','1997.9.10','','','','','',230,10,20,0,'2015-03-30 19:43:42','127.0.0.1','无'),(2,1,'jia',NULL,'123456','15688028878',NULL,NULL,NULL,'男','1992.9.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,'不要香菜，多辣'),(NULL,NULL,'小韩',NULL,'123456','13486887997',NULL,NULL,NULL,'女','1976.2.4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,'不吃辣'),(NULL,NULL,'baidu',NULL,'123456','15587097907',NULL,NULL,NULL,'男','1994.9.7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,'多点醋'),(NULL,NULL,'徐红娇',NULL,'123456','17709097868',NULL,NULL,NULL,'女','1988.9.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,'口味偏淡'),(NULL,NULL,'拉拉',NULL,'123456','13322266768',NULL,NULL,NULL,'女','1966.10.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,'不要葱'),(NULL,NULL,'小白',NULL,'123456','13523527865',NULL,NULL,NULL,'男','1998.10.9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,'无'),(NULL,NULL,'456',NULL,'123456','18855440022',NULL,NULL,NULL,'nv','1997.10.21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,'bu'),(NULL,NULL,'宝宝',NULL,'123456',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL),(NULL,NULL,'何丽丽',NULL,'123456',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL),(NULL,NULL,'vivian0430',NULL,'123456',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL),(NULL,NULL,'哈哈',NULL,'123456',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL),(NULL,NULL,'橙子家',NULL,'12345678','18855440152',NULL,NULL,NULL,'蓝','0430',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,'偏好你'),(NULL,NULL,'123123',NULL,'123123123',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);

