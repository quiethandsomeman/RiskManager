DROP TABLE IF EXISTS `tb_introduction`;
CREATE TABLE `tb_introduction` (
  `pageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='淮北简介';
INSERT INTO `tb_introduction` VALUES ('1', '    淮北，简称“淮”，古称相城。安徽省地级市，位于安徽省北部，地处苏鲁豫皖四省之交，北接萧县，南临蒙城，东与宿州毗邻，西连涡阳县和河南永城市。南北长150千米，东西宽50千米，总面积2802平方千米。总人口215.9万人(2014年）。辖相山区、杜集区、烈山区3个市辖区、和濉溪县1个县。市政府驻相山区。\r\n    淮北历史悠久、人文荟萃。四千多年前，商汤十一世祖相土建城于相山南麓，发文明之滥觞，此后历代王朝在此设郡置县。有蹇叔、桓谭、嵇康、刘伶等先贤圣哲。风景名胜有相山公园、龙脊山、南湖湿地公园、华家湖、石板街、临涣古镇、隋唐运河古镇、大坊寺等，纪念地有淮海战役总前委旧址、双堆集战场旧址等，被誉为皖北江南。');
INSERT INTO `tb_introduction` VALUES ('2', '    淮北是运河故里、能源之都、中国酒乡。口子窖名酒出产于此，口感“香气馥郁，窖香优雅”，是中国兼香型白酒的典型代表。被评为中国白酒工业十大影响力品牌。\r\n    淮北是“长三角城市群”、“宿淮蚌都市圈”、“宿淮城市组群”成员城市，全国卫生先进城市、国家园林城市、全国科技进步先进市、创建全国文明城市工作先进城市、全国无障碍建设城市、智慧城市、全国创业先进城市、中国特色魅力城市200强。');
DROP TABLE IF EXISTS `tb_tourist_sight`;
CREATE TABLE `tb_tourist_sight` (
  `sightId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sightName` varchar(100) NOT NULL COMMENT '景区名称',
  `sightIntroduction` text NOT NULL COMMENT '景区介绍',
  `sightType` varchar(20) NOT NULL COMMENT '景区类型',
  `sightAddress` varchar(100) NOT NULL COMMENT '景区地址',
  `sightMark` float NOT NULL COMMENT '景区评分',
  PRIMARY KEY (`sightId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='旅游概况';
INSERT INTO `tb_tourist_sight` VALUES ('1', '相山公园', '相山公园座落在淮北市相山南麓。相山山脉自徐州蜿蜒而来，主峰为皖北地区至高点，方园诸山之宗；有奇峰、云洞、林海、苍柏、古寺、汉碑。人文景点有乾隆皇帝题词“惠我南黎”、水牛墓、奏鸣台、饮马池和藏经洞等数十处。山顶云洞吞吐云树、顷刻万端；香炉峰形势惟峭；叠翠峰翠色诱人。显通寺（习称相山庙）建于晋朝。新建儿童乐园、相山天池集古今中外文化于一体，是人们游乐休息的好地方。随着改革开放的迅速发展，相山公园作为淮北市与外界联系的重要窗口和纽带将发挥越来越大的作用。', '城市公园', '安徽省淮北市相山区相山路1号', '4.6');
INSERT INTO `tb_tourist_sight` VALUES ('2', '双堆集烈士陵园', '淮海战役双堆集烈士陵园位于安徽淮北市濉溪县双堆集南面，东西长368米，南北宽292米，面积10.6公顷，烈士陵园于1976年筹建，1981年10月淮海战役烈士纪念碑落成，双堆集歼灭战纪念馆于1988年10月竣工。陵园大门朝东，门内两侧各有一个面积为1250平方米的池塘。', '陵园/墓地', '安徽淮北濉溪县双堆集镇政府南面', '4.3');
INSERT INTO `tb_tourist_sight` VALUES ('3', '淮北汉画像石馆', '淮北汉画像石馆，位于中国五大汉画像产地之一——淮北市东部新城区淮北市争创全省文明城市工作先进单位——矿山集街道办事处北山中学院内，该馆由雕塑大师刘开渠先生题写馆名，省政协副主席郑家琪题写了“汉画石像”四个篆字。馆内共收藏珍贵汉画石刻25幅，分为室内室外两个部分。第一部分，以室内壁镶为主体，画壁上有檐雕两块，下有莲花座三个。第二部分是室外镶壁，东西各一壁，共12幅图。', '展览馆', '淮北市东部新城区矿山集街道办事处北山中学院内', '4.3');
INSERT INTO `tb_tourist_sight` VALUES ('4', '柳孜隋唐大运河码头遗址', '柳孜运河码头遗址位于淮北市濉溪县百善镇柳孜行政村，时代为隋至宋。柳孜是隋唐大运河通济渠上的一个镇。它因运河的开通而繁荣了五百年的时间，《隋书·炀帝纪》卷三载：“大业元年三月辛亥，发河南诸郡男女百余万开通济渠，……自板诸引河通于淮”。通济渠从黄河至洪泽湖人淮，全长1300余里。它是隋朝开凿的大运河的其中一段，黄河水过开封后折向东南，经河南境内的宋城、永城等进入安徽的柳孜、国桥等城镇，由洪泽湖入淮河，新开河道800多里。此河历隋、唐、宋三代500余年，南宋时淤塞废弃。通济渠(唐宋时称汴河)流经淮北市滩溪县境内40余公里，经考察得知，运河口宽约40米，底宽约15米，深7米，北堤宽40米，高出地面5米，南堤宽约20米，高出地面4米。河道废弃后，河床高出地面2—3米，总占地面积4平方公里。解放前，高出地表的南北堤中间河道，形成了槽子路，里边跑车，堤外的人听见却看不到。近几十年来，由于耕种和水土流失，逐渐将两边的河堤夷平，河道建成了安徽泗县到河南永城的省级公路。1999年配合泗永公路建设发掘900平方米，出土了大批唐宋时期我国南北方十几个窑口的瓷器标本，发现唐代沉船8艘，发掘出土三艘。发现一座宋代石筑码头。以上几项均为我国运河考古发掘中的“首次”。', '古迹', '安徽省淮北市濉溪县百善镇柳孜行政村', '3.8');
INSERT INTO `tb_tourist_sight` VALUES ('5', '龙脊山', '龙脊山自然风景区位于烈山区新蔡镇，距淮北市中心25千米，面积约10平方公里，东与宿州市接壤，北与肖县相连，最高峰海拔363米，为淮北海拔之最。龙脊山有较好的人工植被，奇峰俊秀，古木参天，树奇石怪，景色怡人，有千年古檀隐掩下的大方寺遗址，还有龙吟湖、扁泉、观日台、仙人洞、张果老升仙处等景点。', '山水景观', '安徽省淮北市烈山区新蔡镇', '4.4');
DROP TABLE IF EXISTS `tb_bus`;
CREATE TABLE `tb_bus` (
  `busId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `busLine` varchar(20) NOT NULL COMMENT '公交线路',
  `busStart` varchar(40) NOT NULL COMMENT '始发站',
  `busTerminal` varchar(40) NOT NULL COMMENT '终点站',
  `isNear` tinyint(4) NOT NULL COMMENT '是否经过此站牌附近，1代表是，0代表否',
  `busRunTime` varchar(40) NOT NULL COMMENT '首末班时间',
  `busFare` int(11) NOT NULL COMMENT '起步票价',
  PRIMARY KEY (`busId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公交线路查询';
INSERT INTO `tb_bus` VALUES ('1', '8', '盛世商贸城', '淮海国际商贸城', '1', '06:00-18:30\r\n', '1');
INSERT INTO `tb_bus` VALUES ('2', '10', '职防院', '南黎西路', '1', '06:00-20:00', '1');
INSERT INTO `tb_bus` VALUES ('3', '118', '东山客运站', '杨庄矿中学', '1', '00:00-00:00', '1');
INSERT INTO `tb_bus` VALUES ('4', '5', '万马相山庭院', '电厂培训中心', '0', '06:00-19:00', '1');
DROP TABLE IF EXISTS `tb_site`;
CREATE TABLE `tb_site` (
  `siteId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteName` varchar(40) NOT NULL COMMENT '站点名称',
  PRIMARY KEY (`siteId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公交站点查询';
INSERT INTO `tb_site` VALUES ('1', '惠黎商厦');
INSERT INTO `tb_site` VALUES ('2', '蓝湖绿城');
INSERT INTO `tb_site` VALUES ('3', '火车站');
INSERT INTO `tb_site` VALUES ('4', '爱尔眼科医院');
DROP TABLE IF EXISTS `tb_route`;
CREATE TABLE `tb_route` (
  `routeId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `routeInfo` varchar(100) NOT NULL COMMENT '到站点的路线详情',
  `routeTime` int(11) NOT NULL COMMENT '路线耗时（单位：分钟）',
  `routeDistance` float NOT NULL COMMENT '站牌到站点的距离（单位：千米）',
  `routeWalk` int(11) NOT NULL COMMENT '需要步行的距离（单位：米）',
  PRIMARY KEY (`routeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='路线具体信息';
INSERT INTO `tb_route` VALUES ('1', '从起点向正南方向出发，沿孟山北路走100米，右转进入黎苑路沿黎苑路走340米，右转进入翠峰路沿翠峰路走140米，到达终点', '8', '0.57', '570');
INSERT INTO `tb_route` VALUES ('2', '相山区政府站 上车8路(或10路)1站后友好妇产医院站下车，步行350米', '10', '1.1', '350');
INSERT INTO `tb_route` VALUES ('3', '相山区政府站上车118路/118w路1站女子友好医院站下车步行260米', '20', '1.1', '330');
INSERT INTO `tb_route` VALUES ('4', '相山区政府站上车8路8站后四海花园站下车步行520米', '30', '4.1', '520');
INSERT INTO `tb_route` VALUES ('5', '相山区政府站118路/118w路经3站后到大火车站北广场站下车步行1.2公里', '30', '2.8', '1200');
INSERT INTO `tb_route` VALUES ('6', '步行720米水务局站上车21路或105路或16路外环或117路一站后交通医院站下车步行1.1公里', '30', '2.3', '1800');
INSERT INTO `tb_route` VALUES ('7', '相山区政府站上车8路8站后四海花园站下车步行360米', '30', '4.1', '450');
INSERT INTO `tb_route` VALUES ('8', '步行720米水务局站上车21路或16路外环或117路一站后交通医院站下车步行700公里', '30', '1.9', '1400');
DROP TABLE IF EXISTS `tb_site_route`;
CREATE TABLE `tb_site_route` (
  `siteId` int(11) NOT NULL,
  `routeId` int(11) NOT NULL,
  PRIMARY KEY (`routeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一个站点对应多种路线';
INSERT INTO `tb_site_route` VALUES ('4', '1');
INSERT INTO `tb_site_route` VALUES ('1', '2');
INSERT INTO `tb_site_route` VALUES ('1', '3');
INSERT INTO `tb_site_route` VALUES ('2', '4');
INSERT INTO `tb_site_route` VALUES ('2', '5');
INSERT INTO `tb_site_route` VALUES ('2', '6');
INSERT INTO `tb_site_route` VALUES ('3', '7');
INSERT INTO `tb_site_route` VALUES ('3', '8');
DROP TABLE IF EXISTS `tb_rental_point`;
CREATE TABLE `tb_rental_point` (
  `pointId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pointName` varchar(100) NOT NULL COMMENT '租赁点名称',
  `pointDistance` int(11) NOT NULL COMMENT '租赁点到站牌的距离',
  PRIMARY KEY (`pointId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='自行车站点，粗略设计，暂且仅考虑单一站牌';
INSERT INTO `tb_rental_point` VALUES ('1', '相山区政府自行车租赁点', '36');
INSERT INTO `tb_rental_point` VALUES ('2', '小肥羊自行车租赁点', '670');
INSERT INTO `tb_rental_point` VALUES ('3', '中医院自行车租赁点', '652');
INSERT INTO `tb_rental_point` VALUES ('4', '市行政服务中心自行车租赁点', '657');
INSERT INTO `tb_rental_point` VALUES ('5', '海宫广场自行车租赁点', '681');
INSERT INTO `tb_rental_point` VALUES ('6', '十二中自行车租赁点', '983');
DROP TABLE IF EXISTS `tb_service_delicacy`;
CREATE TABLE `tb_service_delicacy` (
  `delicacyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delicacyName` varchar(100) NOT NULL COMMENT '商家名称',
  `delicacyDistance` int(11) NOT NULL COMMENT '商家距离',
  `delicacyAddress` varchar(100) NOT NULL COMMENT '商家地址',
  `delicacyMark` float NOT NULL COMMENT '商家评分',
  `delicacyPrice` int(11) NOT NULL COMMENT '人均价格',
  PRIMARY KEY (`delicacyId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='附近美食信息';
INSERT INTO `tb_service_delicacy` VALUES ('1', '安徒生欢乐餐厅', '154', '人民路国际名店街8号楼1号大华步行街西头神话ktv隔壁', '4.7', '15');
INSERT INTO `tb_service_delicacy` VALUES ('2', '鸭头记', '129', '相山区政府南50米对面(近神话KTV)', '4.5', '40');
INSERT INTO `tb_service_delicacy` VALUES ('3', '南通长寿粥', '133', '淮北相山区南办事处楼下(相阳路口)', '4.2', '11');
INSERT INTO `tb_service_delicacy` VALUES ('4', '好时光自助餐厅', '334', '孟山路72号', '4.5', '39');
INSERT INTO `tb_service_delicacy` VALUES ('5', '洛洛家', '172', '孟山北路步行街西侧（神话KTV东80米）', '4.6', '23');
DROP TABLE IF EXISTS `tb_service_bank`;
CREATE TABLE `tb_service_bank` (
  `bankId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bankName` varchar(100) NOT NULL COMMENT '银行名称',
  `bankDistance` int(11) NOT NULL COMMENT '银行距离',
  `bankAddress` varchar(100) NOT NULL COMMENT '银行地址',
  `bankMark` float NOT NULL COMMENT '银行评分',
  PRIMARY KEY (`bankId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='附近银行信息';
INSERT INTO `tb_service_bank` VALUES ('1', '淮北市农村商业银行(城南支行)', '129', '中国邮政储蓄银行', '3.2');
INSERT INTO `tb_service_bank` VALUES ('2', '中国农业发展银行(淮北市分行)', '185', '安徽省淮北市相山区孟山北路95号', '3.2');
INSERT INTO `tb_service_bank` VALUES ('3', '农业发展银行信贷', '197', '安徽省淮北市相山区孟山北路95号', '0');
INSERT INTO `tb_service_bank` VALUES ('4', '中国工商银行ATM', '203', '黎苑路54-5号', '2.3');
INSERT INTO `tb_service_bank` VALUES ('5', '中国邮政储蓄银行', '253', '安徽省淮北市相山区惠苑路', '0');
DROP TABLE IF EXISTS `tb_service_hotel`;
CREATE TABLE `tb_service_hotel` (
  `hotelId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotelName` varchar(100) NOT NULL COMMENT '酒店名称',
  `hotelDistance` int(11) NOT NULL COMMENT '酒店距离',
  `hotelAddress` varchar(100) NOT NULL COMMENT '酒店地址',
  `hotelMark` float NOT NULL COMMENT '酒店评分',
  `hotelPrice` int(11) NOT NULL COMMENT '价格多少起',
  PRIMARY KEY (`hotelId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='附近酒店信息';
INSERT INTO `tb_service_hotel` VALUES ('1', '锦江之星酒店（淮北孟山路店）', '147', '孟山北路步行街西侧（神话KTV东80米）', '4.4', '129');
INSERT INTO `tb_service_hotel` VALUES ('2', '格林豪泰酒店（淮北相阳路店）', '297', '孟山北路71-1号（近惠苑路商业街）', '4', '107');
INSERT INTO `tb_service_hotel` VALUES ('3', '\r\n7天连锁酒店（淮北孟山路店）', '195', '相山区孟山路与黎苑路交叉口处（相山区政府斜对面）', '4.2', '107');
INSERT INTO `tb_service_hotel` VALUES ('4', '东江宾馆', '46', '相阳路SJ-104号(近孟山北路)', '1.8', '71');
INSERT INTO `tb_service_hotel` VALUES ('5', '金色阳光国际酒店', '368', '孟山北路69号', '4.2', '74');
DROP TABLE IF EXISTS `tb_service_supermarket`;
CREATE TABLE `tb_service_supermarket` (
  `supermarketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supermarketName` varchar(100) NOT NULL COMMENT '超市名称',
  `supermarketDistance` int(11) NOT NULL COMMENT '超市距离',
  `supermarketAddress` varchar(100) NOT NULL COMMENT '超市地址',
  `supermarketMark` float NOT NULL COMMENT '超市评分',
  PRIMARY KEY (`supermarketId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='附近超市信息';
INSERT INTO `tb_service_supermarket` VALUES ('1', '华润万家(淮北相山南路购物广场)', '168', '孟山北路大华现代城底商', '0');
INSERT INTO `tb_service_supermarket` VALUES ('2', '星光超市', '206', '相山区惠苑路太华宾馆旁', '3.2');
INSERT INTO `tb_service_supermarket` VALUES ('3', '苏果超市(相山北路)', '479', '相山区相山北路步行街真棒超市旁边(相山路)', '5');
INSERT INTO `tb_service_supermarket` VALUES ('4', '真棒特卖场步行街NO.005', '519', '相山路280', '5');
INSERT INTO `tb_service_supermarket` VALUES ('5', '一品超市', '472', '相山区相山北路宏发窗帘布艺旁', '3.2');
DROP TABLE IF EXISTS `tb_service_store`;
CREATE TABLE `tb_service_store` (
  `storeId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storeName` varchar(100) NOT NULL COMMENT '便利店名称',
  `storeDistance` int(11) NOT NULL COMMENT '便利店距离',
  `storeAddress` varchar(100) NOT NULL COMMENT '便利店地址',
  PRIMARY KEY (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='附近便利店信息';
INSERT INTO `tb_service_store` VALUES ('1', '真真超市', '578', '相山区惠苑路融华仕家斜对面');
INSERT INTO `tb_service_store` VALUES ('2', '君天乐超市', '106', '相山区孟山北路逸文超市旁');
INSERT INTO `tb_service_store` VALUES ('3', '卡乐香便利店', '202', '大华现代城2幢');
INSERT INTO `tb_service_store` VALUES ('4', '乾鑫便利店', '215', '大华现代城2幢');
INSERT INTO `tb_service_store` VALUES ('5', '六六顺便利店', '215', '相山区惠苑路商业街同庆宾馆西');
DROP TABLE IF EXISTS `tb_service_ktv`;
CREATE TABLE `tb_service_ktv` (
  `ktvId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ktvName` varchar(100) NOT NULL COMMENT 'ktv名称',
  `ktvDistance` int(11) NOT NULL COMMENT 'ktv距离',
  `ktvAddress` varchar(100) NOT NULL COMMENT 'ktv地址',
  `ktvMark` float NOT NULL COMMENT 'ktv评分',
  PRIMARY KEY (`ktvId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='附近KTV信息';
INSERT INTO `tb_service_ktv` VALUES ('1', '神话KTV(步行街店)', '155', '淮北市相山区大华步行街8号楼', '4.1');
INSERT INTO `tb_service_ktv` VALUES ('2', '美丽神话', '387', '黎苑路与鹰山路（翠峰路）交叉口', '4.6');
INSERT INTO `tb_service_ktv` VALUES ('3', '曼哈顿民仕俱乐部', '302', '大华步行街中心广场', '4');
INSERT INTO `tb_service_ktv` VALUES ('4', '爱尚量贩KTV(淮北店)', '456', '人民中路中泰国际广场负一楼', '4.9');
INSERT INTO `tb_service_ktv` VALUES ('5', '相山区宝乐迪量贩式KTV', '984', '长山中路金色云天站前大道新火车站对面', '4.4');
DROP TABLE IF EXISTS `tb_weather`;
CREATE TABLE `tb_weather` (
  `date` date NOT NULL COMMENT '日期',
  `temperature` varchar(10) NOT NULL COMMENT '温度',
  `tempRange` varchar(20) NOT NULL COMMENT '温度区间',
  `weather` varchar(20) NOT NULL COMMENT '天气情况',
  `windLevel` varchar(40) NOT NULL COMMENT '风力等级',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='天气查询';
INSERT INTO `tb_weather` VALUES ('2016-08-18', '29˚C', '27 ~ 34˚C', '多云', '微风');
INSERT INTO `tb_weather` VALUES ('2016-08-19', '31˚C', '26 ~ 34˚C', '多云', '微风转3-4级');
INSERT INTO `tb_weather` VALUES ('2016-08-20', '27˚C', '25 ~ 31˚C', '多云', '3-4级');
INSERT INTO `tb_weather` VALUES ('2016-08-21', '32˚C', '26 ~ 34˚C', '多云转晴', '微风');
INSERT INTO `tb_weather` VALUES ('2016-08-22', '30˚C', '25 ~ 34˚C', '多云', '3-4级转微风');
INSERT INTO `tb_weather` VALUES ('2016-08-23', '33˚C', '25 ~ 35˚C', '多云', '微风');
INSERT INTO `tb_weather` VALUES ('2016-08-24', '25˚C', '23 ~ 35˚C', '多云', '微风');
INSERT INTO `tb_weather` VALUES ('2016-08-25', '27˚C', '25 ~ 33˚C', '雨', '微风');
INSERT INTO `tb_weather` VALUES ('2016-08-26', '23˚C', '22 ~ 33˚C', '雨转多云', '3-4级');
INSERT INTO `tb_weather` VALUES ('2016-08-27', '29˚C', '21 ~ 31˚C', '多云', '3-4级转微风');
INSERT INTO `tb_weather` VALUES ('2016-08-28', '30˚C', '22 ~ 31˚C', '多云', '微风');
INSERT INTO `tb_weather` VALUES ('2016-08-29', '31˚C', '24 ~ 32˚C', '多云转阴', '微风');
INSERT INTO `tb_weather` VALUES ('2016-08-30', '26˚C', '22 ~ 32˚C', '雨', '微风转3-4级');
INSERT INTO `tb_weather` VALUES ('2016-08-31', '22˚C', '20 ~ 25˚C', '雨转多云', '3-4级转微风');
INSERT INTO `tb_weather` VALUES ('2016-09-01', '23˚C', '19 ~ 27˚C', '雨转阴', '微风');