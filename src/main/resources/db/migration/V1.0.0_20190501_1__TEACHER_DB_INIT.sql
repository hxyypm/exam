/*
Navicat MySQL Data Transfer

Source Server         : localMysql
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : exam

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-05-15 21:04:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_num` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_sex` varchar(2) DEFAULT NULL,
  `admin_birth` datetime DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '110', 'jc', '女', '1993-10-09 00:00:00', '110', 'qqq.11', '123', '2018-05-02 23:53:49');

-- ----------------------------
-- Table structure for batch
-- ----------------------------
DROP TABLE IF EXISTS `batch`;
CREATE TABLE `batch` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `arts_science` varchar(20) DEFAULT NULL COMMENT '文理科',
  `year` int(10) DEFAULT NULL COMMENT '年份',
  `batch_number` int(10) DEFAULT NULL COMMENT '学校批次',
  `low_batch` int(10) DEFAULT NULL COMMENT '最低录取位次',
  `avg_batch` int(10) DEFAULT NULL COMMENT '平均录取位次',
  `low_score` int(10) DEFAULT NULL COMMENT '最低录取分数',
  `avg_score` int(10) DEFAULT NULL COMMENT '平均录取分数',
  `school_id` int(10) DEFAULT NULL COMMENT '学校',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='批次表';

-- ----------------------------
-- Records of batch
-- ----------------------------
INSERT INTO `batch` VALUES ('3', '文科', '2019', '1', '1000', '800', '500', '503', '20');
INSERT INTO `batch` VALUES ('4', '理科', '2019', '1', '400', '400', '450', '450', '20');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `content` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `time` datetime DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='留言板表';


-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '专业名',
  `description` varchar(100) DEFAULT NULL COMMENT '专业描述',
  `future` varchar(100) DEFAULT NULL COMMENT '前景',
  `compensation` int(10) DEFAULT NULL COMMENT '平均薪资',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='专业表';

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES ('1', '计算机科学与技术', '理工类', '还不错', '123');
INSERT INTO `profession` VALUES ('2', '软件工程', '理工类', '还不错', '12');
INSERT INTO `profession` VALUES ('3', '物联网', '理工类', '还不错', '123');
INSERT INTO `profession` VALUES ('4', '探测与制导', '理工类', '还不错', '0');
INSERT INTO `profession` VALUES ('5', '机械设计制造及其自动化', '理工类', '还不错', '0');
INSERT INTO `profession` VALUES ('6', '网络工程', '理工类', '还不错', '0');
INSERT INTO `profession` VALUES ('7', '会计', '文史类', '还不错', '0');
INSERT INTO `profession` VALUES ('8', '经济学', '文史类', '还不错', '0');
INSERT INTO `profession` VALUES ('9', '国际经济与贸易', '文史类', '还不错', '0');
INSERT INTO `profession` VALUES ('10', '旅游管理', '文史类', '还不错', '0');
-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '学校名称',
  `description` varchar(500) DEFAULT NULL COMMENT '学校简介',
  `address` varchar(100) DEFAULT NULL COMMENT '学校地址',
  `url` varchar(100) DEFAULT NULL COMMENT '招生连接',
  `level` varchar(100) DEFAULT NULL COMMENT '招生层次',
  `type` varchar(100) DEFAULT NULL COMMENT '学校类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='学校表';

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '西安工业大学', '西安工业大学（Xi’an Technological University）简称“西安工大”，位于世界历史名城古都西安，是中国西北地区唯一一所以兵工为特色，多学科协调发展的教学研究型大学。原中华人民共和国兵器工业部直属的七所本科院校之一（“兵工七子”）', '西安市未央区', 'http://www.xatu.cn/', '一本', '理工类');
INSERT INTO `school` VALUES ('2', '陕西师范大学', '师范', '西安', 'https://www._.com', '一本', '师范');
INSERT INTO `school` VALUES ('3', '长安大学', '长安', '西安', 'http://www.ca.cn', '一本', '理工类');
INSERT INTO `school` VALUES ('4', '西安电子科技大学', '西安电子科技大学（Xidian University）简称“西电”或“西军电”，直属中华人民共和国教育部，由教育部与工业和信息化部、国家国防科技工业局、中国电子科技集团公司、陕西省、西安市共建 [1-4]  ，位列国家“双一流”世界一流学科建设高校、“211工程”、“985工程优势学科创新平台”，入选“2011计划”、“111计划”、“卓越工程师教育培养计划”、““国家建设高水平大学公派研究生项目”，是1959年首批20所全国重点大学、''''两电一邮''''成员、新丝绸之路大学联盟成员、中国政府奖学金来华留学生接收院校之一，是中国电子信息领域科学研究和人才培养的核心基地，中国雷达、信息论、密码学、电子对抗、微波天线等学科的发源地。', '西安', 'http://www.dianzi.com', '一本', '理工');
INSERT INTO `school` VALUES ('5', '电子科技大学', '电子科技大学（University of Electronic Science and Technology of China）坐落于四川省会成都市，直属中华人民共和国教育部，由教育部、工业和信息化部、四川省和成都市共建。是国家“985工程”、“211工程”、“世界一流大学和一流学科”重点建设高校，入选“2011计划”、“111计划”、“卓越工程师教育培养计划”、“国家建设高水平大学公派研究生项目”、“中国政府奖学金来华留学生接收院校”，两电一邮成员。是一所完整覆盖整个电子类学科，以电子信息科学技术为核心，以工为主，理工渗透，理、工、管、文、医协调发展的多科性研究型全国重点大学，被誉为“中国电子类院校的排头兵”。', '成都', 'http://www.dianzi.com', '一本', '理工');
INSERT INTO `school` VALUES ('6', '清华大学', '清华大学（Tsinghua University），简称“清华”，由中华人民共和国教育部直属，中央直管副部级建制，位列“211工程”、“985工程”、“世界一流大学和一流学科”，入选“基础学科拔尖学生培养试验计划”、“高等学校创新能力提升计划”、“高等学校学科创新引智计划”，为九校联盟、中国大学校长联谊会、东亚研究型大学协会、亚洲大学联盟、环太平洋大学联盟、清华—剑桥—MIT低碳大学联盟成员，被誉为“红色工程师的摇篮”。', '北京', 'http://www.dianzi.com', '一本', '综合');
INSERT INTO `school` VALUES ('7', '中国科学技术大学', '中国科学技术大学（University of Science and Technology of China），简称中国科大，位于安徽省合肥市，由中国科学院直属，中央直管副部级建制，位列A类世界一流大学建设高校、211工程、985工程，首批20所学位自主审核高校之一，九校联盟、中国大学校长联谊会、环太平洋大学联盟、东亚研究型大学协会成员，入选珠峰计划、111计划、2011计划、中国科学院知识创新工程、卓越工程师教育培养计划、全国深化创新创业教育改革示范高校、国家建设高水平大学公派研究生项目、中国政府奖学金来华留学生接收院校，是一所以前沿科学和高新技术为主、兼有特色管理和人文学科的综合性全国重点大学。', '合肥', 'http://www.dianzi.com', '一本', '理工');
INSERT INTO `school` VALUES ('8', '中国人民解放军国防科技大学', '中国人民解放军国防科技大学（National University of Defense Technology），简称“国防科技大学”，由中国共产党中央军事委员会直属，位列第一个五年计划国家156项重点建设工程、211工程、985工程、双一流、军队“2110工程”，为中共中央1959年确定的全国20所重点大学之一、国务院首批批准有权授予硕士及博士学位的院校、全国首批试办研究生院的院校。', '长沙', 'http://www.dianzi.com', '一本', '军事');
INSERT INTO `school` VALUES ('9', '新疆大学', '新疆大学（Xinjiang University），简称“新大”，位于新疆维吾尔自治区首府乌鲁木齐，是世界一流大学建设高校、全国重点大学、国家“211工程”重点建设高校、国家西部大开发重点建设高校、中西部高校基础能力建设工程高校、中国政府奖学金来华留学生接收院校、国家建设高水平大学公派研究生项目高校、”卓越工程师教育培养计划“高校、”卓越法律人才教育培养计划“高校、教育部与新疆维吾尔自治区人民政府合作共建高校、中西部“一省一校”国家重点建设大学(Z14)联盟成员、中国—中亚国家大学联盟发起高校、全国深化创新创业教育改革示范高校。', '乌鲁木齐', 'http://www.dianzi.com', '一本', '综合');

-- ----------------------------
-- Table structure for school_batch
-- ----------------------------
DROP TABLE IF EXISTS `school_batch`;
CREATE TABLE `school_batch` (
  `id` int(10) NOT NULL,
  `school_id` int(10) DEFAULT NULL COMMENT '学校id',
  `batch_id` int(10) DEFAULT NULL COMMENT '批次id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_batch
-- ----------------------------

-- ----------------------------
-- Table structure for school_line
-- ----------------------------
DROP TABLE IF EXISTS `school_line`;
CREATE TABLE `school_line` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `school_id` int(10) NOT NULL COMMENT '学校id',
  `school_line` int(10) DEFAULT NULL COMMENT '学校分数线',
  `arts_science` varchar(20) DEFAULT NULL COMMENT '文理科',
  `school_name` varchar(50) DEFAULT NULL COMMENT '学校名称',
  `profession_id` int(10) DEFAULT NULL COMMENT '专业id',
  `profession_name` varchar(64) DEFAULT NULL COMMENT '专业名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_line
-- ----------------------------
INSERT INTO `school_line` VALUES ('1', '21', '123', '理科', null, '17', null);
INSERT INTO `school_line` VALUES ('2', '21', '233', '理科', null, '18', null);
INSERT INTO `school_line` VALUES ('3', '22', '234', '理科', null, '19', null);
INSERT INTO `school_line` VALUES ('4', '20', '450', '理科', null, '18', null);

-- ----------------------------
-- Table structure for school_profession
-- ----------------------------
DROP TABLE IF EXISTS `school_profession`;
CREATE TABLE `school_profession` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `school_id` int(10) DEFAULT NULL COMMENT '学校id',
  `profession_id` int(10) DEFAULT NULL COMMENT '专业id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='学校专业表';

-- ----------------------------
-- Records of school_profession
-- ----------------------------
INSERT INTO `school_profession` VALUES ('1', '1', '1');
INSERT INTO `school_profession` VALUES ('2', '1', '2');
INSERT INTO `school_profession` VALUES ('3', '1', '3');
INSERT INTO `school_profession` VALUES ('4', '1', '4');
INSERT INTO `school_profession` VALUES ('5', '1', '5');
INSERT INTO `school_profession` VALUES ('6', '1', '6');
INSERT INTO `school_profession` VALUES ('7', '1', '7');
INSERT INTO `school_profession` VALUES ('8', '1', '8');

-- ----------------------------
-- Table structure for scoreline
-- ----------------------------
DROP TABLE IF EXISTS `scoreline`;
CREATE TABLE `scoreline` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `year` int(10) DEFAULT NULL COMMENT '年份',
  `batch_number` int(10) DEFAULT NULL COMMENT '批次',
  `score` int(10) DEFAULT NULL COMMENT '分数线',
  `arts_science` varchar(10) DEFAULT NULL COMMENT '文理科',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='省控线';

-- ----------------------------
-- Records of scoreline
-- ----------------------------
INSERT INTO `scoreline` VALUES ('2', '2019', '1', '500', '理科');
INSERT INTO `scoreline` VALUES ('3', '2019', '1', '506', '文科');
INSERT INTO `scoreline` VALUES ('4', '2019', '2', '480', '理科');
INSERT INTO `scoreline` VALUES ('5', '2019', '2', '498', '文科');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `name` varchar(50) NOT NULL comment '姓名',
  `age` int(11) NOT NULL comment '年龄',
  `phone` varchar(50) NOT NULL comment '手机号',
  `sex` varchar(2) DEFAULT NULL comment '性别',
  `birth` date DEFAULT NULL comment '生日',
  `password` varchar(50) NOT NULL comment '密码',
  `email` varchar(50) DEFAULT NULL comment '邮箱',
  `role` int(11) DEFAULT NULL comment '角色',
  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


/*
Navicat MySQL Data Transfer

Source Server         : localMysql
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : exam1

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-05-18 01:57:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '城市名称',
  `province_id` int(11) DEFAULT NULL COMMENT '省份id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '西安', '21');
INSERT INTO `city` VALUES ('2', '昆明市', '26');
INSERT INTO `city` VALUES ('3', '北京市', '8');
INSERT INTO `city` VALUES ('4', '铜川市', '21');
INSERT INTO `city` VALUES ('5', '宝鸡市', '21');
INSERT INTO `city` VALUES ('6', '咸阳市', '21');
INSERT INTO `city` VALUES ('7', '渭南市', '21');
INSERT INTO `city` VALUES ('8', '榆林市', '21');
INSERT INTO `city` VALUES ('9', '宝鸡市', '21');
INSERT INTO `city` VALUES ('10', '太原市', '17');
INSERT INTO `city` VALUES ('11', '兰州市', '22');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '省名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '山东省');
INSERT INTO `province` VALUES ('3', '江苏省');
INSERT INTO `province` VALUES ('4', '上海市');
INSERT INTO `province` VALUES ('5', '浙江省');
INSERT INTO `province` VALUES ('6', '湖南省');
INSERT INTO `province` VALUES ('7', '河南省');
INSERT INTO `province` VALUES ('8', '北京市');
INSERT INTO `province` VALUES ('9', '安徽省');
INSERT INTO `province` VALUES ('10', '福建省');
INSERT INTO `province` VALUES ('11', '江西省');
INSERT INTO `province` VALUES ('12', '广东省');
INSERT INTO `province` VALUES ('13', '广西省');
INSERT INTO `province` VALUES ('14', '海南省');
INSERT INTO `province` VALUES ('15', '湖北省');
INSERT INTO `province` VALUES ('16', '河北省');
INSERT INTO `province` VALUES ('17', '山西省');
INSERT INTO `province` VALUES ('18', '内蒙古');
INSERT INTO `province` VALUES ('19', '宁夏');
INSERT INTO `province` VALUES ('20', '青海');
INSERT INTO `province` VALUES ('21', '陕西省');
INSERT INTO `province` VALUES ('22', '甘肃省');
INSERT INTO `province` VALUES ('23', '新疆');
INSERT INTO `province` VALUES ('24', '四川省');
INSERT INTO `province` VALUES ('25', '贵州省');
INSERT INTO `province` VALUES ('26', '云南省');
INSERT INTO `province` VALUES ('27', '辽宁省');
INSERT INTO `province` VALUES ('28', '吉林省');
INSERT INTO `province` VALUES ('29', '黑龙江省');
INSERT INTO `province` VALUES ('30', '西藏');
INSERT INTO `province` VALUES ('31', '天津市');
INSERT INTO `province` VALUES ('32', '重庆市');
INSERT INTO `province` VALUES ('33', '台湾省');

