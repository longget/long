CREATE DATABASE bysj CHARSET utf8;
USE bysj;
#创建景点表
CREATE TABLE jingdian(
jingdianid INT,
jingdiandd VARCHAR(10) PRIMARY KEY,
jingdianname VARCHAR(20) NOT NULL,
jingdianjibie CHAR(5) NOT NULL
)

#添加景点数据
INSERT INTO jingdian () 
VALUES (1,'北京','故宫博物院','5A');
INSERT INTO jingdian () 
VALUES (2,'四川','成都（青城山、都江堰）旅游景区','5A');
INSERT INTO jingdian () 
VALUES (3,'上海','东方明珠广播电视塔','5A');
INSERT INTO jingdian () 
VALUES (4,'湖南','张家界武陵源旅游区','5A');
INSERT INTO jingdian () 
VALUES (5,'云南','中国科学院西双版纳热带植物园','5A');
INSERT INTO jingdian () 
VALUES (6,'陕西','西安秦始皇兵马俑博物馆','5A');
INSERT INTO jingdian () 
VALUES (7,'浙江','杭州西湖风景名胜区','5A');
INSERT INTO jingdian () 
VALUES (8,'河南','郑州登封嵩山少林景区','5A');
INSERT INTO jingdian () 
VALUES (9,'湖北','三峡人家','5A');
INSERT INTO jingdian () 
VALUES (10,'重庆','江津四面山景区','5A');

#改表名为景区
ALTER TABLE jingdian RENAME TO jingqu

#删除景区表
DROP TABLE jingqu;

#查询景区表
SELECT * FROM jingqu;

#模糊查询
SELECT * FROM jingqu 
WHERE jingdiandd LIKE'湖%'

#从南结束查询
SELECT * FROM jingqu 
WHERE jingdiandd REGEXP '南$'

#是否为不为空
SELECT * FROM jingqu 
WHERE jingdianjibie IS NOT NULL

#右联接
SELECT * FROM jingqu RIGHT JOIN jiudian
ON jingqu.jingdianid=jiudian.jiudianid

#创建保险表
CREATE TABLE baoxian(
baoxianid INT ,
baoxianname VARCHAR(10) PRIMARY KEY,
feiyong CHAR(10)
)

#添加保险数据
INSERT INTO baoxian () 
VALUES (1,'中国人民保险','￥8.00/30天');
INSERT INTO baoxian () 
VALUES (2,'境内旅行险','￥5.00/30天');
INSERT INTO baoxian () 
VALUES (3,'探险驴友旅行保险','￥9.90/3天');

#查询保险表
SELECT * FROM baoxian;

#删除保险表
DROP TABLE baoxian;

#删除id为3的保险
DELETE FROM baoxian 
WHERE baoxianid=3

#创建航空表
CREATE TABLE hangkong(
hangkongid INT, 
hangkongname VARCHAR(10) PRIMARY KEY,
hangkongnumber CHAR(10),
hangkongcf VARCHAR(20),
hangkongfw VARCHAR(20),
hangkongrq DATE,
hangkongfeiyong CHAR(10)
)

#添加航空数据
INSERT INTO hangkong () 
VALUES (1,'中国国航','CA1352','广州白云国际机场','北京首都国际机场','2020-10-21-10:30','￥2130.00');
INSERT INTO hangkong () 
VALUES (2,'成都航空','CA4310','广州白云国际机场','四川双流国际机场','2020-10-21-10:00','￥1210.00');
INSERT INTO hangkong () 
VALUES (3,'飞凰航空','CA1352','广州白云国际机场','上海虹桥国际机场','2020-10-21-08:55','￥1100.00');
INSERT INTO hangkong () 
VALUES (4,'南方航空','CZ2041','广州白云国际机场','湖南荷花国际机场','2020-10-21-16:50','￥680.00');
INSERT INTO hangkong () 
VALUES (5,'九元航空','AQ1259','广州白云国际机场','云南嘎洒国际机场','2020-10-21-08:55','￥1489.00');
INSERT INTO hangkong () 
VALUES (6,'海南航空','HU7827','广州白云国际机场','陕西咸阳国际机场','2020-10-21-09:45','￥830.00');
INSERT INTO hangkong () 
VALUES (7,'上海航空','FM9352','广州白云国际机场','浙江萧山国际机场','2020-10-21-07:50','￥830.00');
INSERT INTO hangkong () 
VALUES (8,'海北航空','HU7739','广州白云国际机场','郑州新郑国际机场','2020-10-21-10:20','￥810.00');
INSERT INTO hangkong () 
VALUES (9,'北方航空','CZ6475','广州白云国际机场','宜昌三峡机场','2020-10-21-10:20','￥320.00');

#查询航空表
SELECT * FROM hangkong;

#删除航空表
DROP TABLE hangkong;

#创建火车表
CREATE TABLE huoche(
huocheid INT,
huochenumber VARCHAR(10) PRIMARY KEY,
huochecf VARCHAR(10),
huochekw VARCHAR(10),
huochefeiyong CHAR(10)
)

#添加火车表数据
INSERT INTO huoche () 
VALUES (1,'Z202','广州南','北京西','￥784.0');
INSERT INTO huoche () 
VALUES (2,'D1810','广州南','成都东','￥958.0');
INSERT INTO huoche () 
VALUES (3,'G100','广州南','上海虹桥','￥1302.5');
INSERT INTO huoche () 
VALUES (4,'K192','广州','张家界西','￥414.5');
INSERT INTO huoche () 
VALUES (5,'D3822','广州','昆明','￥703.0');
INSERT INTO huoche () 
VALUES (6,'K1348','广州','西安','￥708.0');
INSERT INTO huoche () 
VALUES (7,'G105','广州','杭州东','￥1185.5');
INSERT INTO huoche () 
VALUES (8,'G818','广州','洛阳龙门','￥1114.5');
INSERT INTO huoche () 
VALUES (9,'G1032','广州南','宜昌东','￥932.5');

#查询火车表
SELECT * FROM huoche;

#删除火车表
DROP TABLE huoche;

#创建客车表
CREATE TABLE daba(
dabaid INT ,
dabacf VARCHAR(10),
dabakw VARCHAR(10) PRIMARY KEY,
dabafeiyong CHAR(10)
)

#添加客车数据
INSERT INTO daba () 
VALUES (1,'广州客运车站','成都客运车站','￥150');
INSERT INTO daba () 
VALUES (2,'广州客运车站','北京客运车站','￥450');
INSERT INTO daba () 
VALUES (3,'广州客运车站','上海客运车站','￥225');
INSERT INTO daba () 
VALUES (4,'广州客运车站','张家界客运车站','￥200');
INSERT INTO daba () 
VALUES (5,'广州客运车站','西双版纳客运车站','￥399');
INSERT INTO daba () 
VALUES (6,'广州客运车站','西安客运车站','￥370');
INSERT INTO daba () 
VALUES (7,'广州客运车站','杭州客运车站','￥210');
INSERT INTO daba () 
VALUES (8,'广州客运车站','郑州客运车站','￥410');
INSERT INTO daba () 
VALUES (9,'广州客运车站','宜昌客运车站','￥290');
INSERT INTO daba () 
VALUES (10,'广州客运车站','重庆客运车站','￥400');

#查询客车表
SELECT * FROM daba;

#删除客车表
DROP TABLE daba;

#创建游轮表
CREATE TABLE youlun(
youlunid INT,
youlunname VARCHAR(20)PRIMARY KEY,
youlunday VARCHAR(10),
youlunck VARCHAR(10),
youlunfeiyong CHAR(10) NOT NULL 
)

#添加游轮数据
INSERT INTO youlun () 
VALUES (1,'华夏神女系列游轮','4日游','宜昌——三峡大坝旅游区,巫山小三峡,五鱼山玉皇圣地旅游景区——重庆','￥1999.0');
INSERT INTO youlun () 
VALUES (2,'黄金系列游轮','4日游','宜昌——三峡大坝旅游区,巫山小三峡,丰都鬼城——重庆','￥1299.0');
INSERT INTO youlun () 
VALUES (3,'世纪系列游轮','5日游','宜昌——三峡大坝旅游区,神女溪,石宝寨——重庆','￥2780.0');
INSERT INTO youlun () 
VALUES (4,'美国维多利亚系列游轮','6日游','五鱼山玉皇圣地旅游景区——重庆,神农溪,宜昌——三峡大坝旅游区','￥1999.0');
INSERT INTO youlun () 
VALUES (5,'总统系列游轮','5日游','石宝寨——重庆,神农溪,宜昌——三峡大坝旅游区','￥2099.0');

#查询游轮
SELECT * FROM youlun;

#删除游轮表
DROP TABLE youlun;

#创建酒店表
CREATE TABLE jiudian(
jiudianid INT,
jiudianname VARCHAR(20) PRIMARY KEY,
jiudianfjlx VARCHAR(10),
jiudianfeiyong CHAR(10)
)

#添加酒店数据
INSERT INTO jiudian () 
VALUES (1,'北京名胜酒店','标准双人间','￥295');
INSERT INTO jiudian () 
VALUES (2,"成都芳岸酒店","标准双人间","￥177");
INSERT INTO jiudian () 
VALUES (3,"上海丽景精选酒店","双人间","￥133");
INSERT INTO jiudian () 
VALUES (4,"张家界驿旅星光酒店","标准双人间","￥140");
INSERT INTO jiudian () 
VALUES (5,"西双版纳暹罗酒店","大床间","￥148");
INSERT INTO jiudian () 
VALUES (6,"西安成功国际酒店","标准双床间","￥153");
INSERT INTO jiudian () 
VALUES (7,"杭州涵涵酒店","标准双床间","￥160");
INSERT INTO jiudian () 
VALUES (8,"郑州时代港湾快捷酒店","双人间","￥138");
INSERT INTO jiudian () 
VALUES (9,"宜昌市伍家岗区琪琳宾馆","标准三人间","￥139");
INSERT INTO jiudian () 
VALUES (10,"重庆豪达酒店","普通单间","￥113");

#查询酒店
SELECT * FROM jiudian;

#删除酒店表
DROP TABLE jiudian;

#左连接
SELECT * FROM jiudian LEFT JOIN jingqu
ON jiudian.jiudianid=jingqu.jingdianid

#创建攻略表
CREATE TABLE gonglue(
gonglueid INT PRIMARY KEY AUTO_INCREMENT,
jingdiandd VARCHAR(10),
jiudianname VARCHAR(20),
huochenumber VARCHAR(10),
dabakw VARCHAR(10),
youlunname VARCHAR(20),
yulename VARCHAR(10),
hangkongname VARCHAR(10),
CONSTRAINT fk_jingqugonglue_jingdiandd FOREIGN KEY
	(jingdiandd) REFERENCES jingqu(jingdiandd),
CONSTRAINT fk_jiudiangonglue_jiudianname FOREIGN KEY
	(jiudianname) REFERENCES jiudian(jiudianname),
CONSTRAINT fk_hangkonggonglue_hangkongname FOREIGN KEY
	(hangkongname) REFERENCES hangkong(hangkongname),
CONSTRAINT fk_huochegonglue_huochenumber FOREIGN KEY
	(huochenumber) REFERENCES huoche(huochenumber),
CONSTRAINT fk_dabagonglue_dabakw FOREIGN KEY
	(dabakw) REFERENCES daba(dabakw),
CONSTRAINT fk_youlungonglue_youlunname FOREIGN KEY
	(youlunname) REFERENCES youlun(youlunname),
CONSTRAINT fk_yulegonglue_yulename FOREIGN KEY
	(yulename) REFERENCES yule(yulename)
)

#给攻略表添加数据
INSERT INTO gonglue (jingdiandd,jiudianname,huochenumber,dabakw,youlunname,hangkongname,yulename) 
VALUE ('北京','北京名胜酒店','Z202','北京客运车站',NULL,'中国国航','北京德云社剧场');
INSERT INTO gonglue (jingdiandd,jiudianname,huochenumber,dabakw,youlunname,hangkongname,yulename) 
VALUE ('四川','成都芳岸酒店','D1810','成都客运车站',NULL,'中国国航','成都李伯清书院');
INSERT INTO gonglue (jingdiandd,jiudianname,huochenumber,dabakw,youlunname,hangkongname,yulename) 
VALUE ('上海','上海丽景精选酒店','G100','上海客运车站',NULL,'中国国航','上海Tiffany蓝');
INSERT INTO gonglue (jingdiandd,jiudianname,huochenumber,dabakw,youlunname,hangkongname,yulename) 
VALUE ('湖南','张家界驿旅星光酒店','K192','张家界客运车站',NULL,'南方航空','张家界百龙天梯');
INSERT INTO gonglue (jingdiandd,jiudianname,huochenumber,dabakw,youlunname,hangkongname,yulename) 
VALUE ('云南','西双版纳暹罗酒店','D3822','西双版纳客运车站',NULL,'九元航空','西双版纳天使养生馆');
INSERT INTO gonglue (jingdiandd,jiudianname,huochenumber,dabakw,youlunname,hangkongname,yulename) 
VALUE ('陕西','西安成功国际酒店','K1348','西安客运车站',NULL,'海南航空','西安开心游艺馆');
INSERT INTO gonglue (jingdiandd,jiudianname,huochenumber,dabakw,youlunname,hangkongname,yulename) 
VALUE ('浙江','杭州涵涵酒店','G100','杭州客运车站',NULL,'上海航空','杭州铭星冰雪世界');
INSERT INTO gonglue (jingdiandd,jiudianname,huochenumber,dabakw,youlunname,hangkongname,yulename) 
VALUE ('河南','郑州时代港湾快捷酒店','G818','郑州客运车站',NULL,'海南航空','郑州砭生堂汗蒸会馆');
INSERT INTO gonglue (jingdiandd,jiudianname,huochenumber,dabakw,youlunname,hangkongname,yulename) 
VALUE ('湖北','宜昌市伍家岗区琪琳宾馆','G1032','宜昌客运车站','世纪系列游轮','南方航空','湖北武当太极湖水上游');
INSERT INTO gonglue (jingdiandd,jiudianname,huochenumber,dabakw,youlunname,hangkongname,yulename) 
VALUE ('重庆','重庆豪达酒店','G1032','重庆客运车站','总统系列游轮','中国国航','重庆国际马戏城');

#查询攻略表
SELECT * FROM gonglue;

#删除攻略表
DROP TABLE gonglue;

#创建娱乐表
CREATE TABLE yule(
yuleid INT,
yulename VARCHAR(10) PRIMARY KEY,
yuledizhi VARCHAR(30),
yulesslx VARCHAR(10)
)

#给娱乐表添加数据
INSERT INTO yule () 
VALUES (1,"北京德云社剧场","表演场所","北京西城区北纬路甲1号");
INSERT INTO yule () 
VALUES (2,"成都李伯清书院","室内休闲","四川省成都市青羊区文殊院街39号");
INSERT INTO yule () 
VALUES (3,"上海Tiffany蓝泳池","健身养生","上海市长宁区延安西路1262号哥伦比亚公园内");
INSERT INTO yule () 
VALUES (4,"张家界百龙天梯","室外活动","湖南省张家界市武陵源区");
INSERT INTO yule () 
VALUES (5,"西双版纳天使养生馆","健身养生","云南省西双版纳傣族自治州勐腊县");
INSERT INTO yule () 
VALUES (6,"西安开心游艺馆","室外活动","陕西省西安市曲江新区大雁塔北广场");
INSERT INTO yule () 
VALUES (7,"杭州铭星冰雪世界","主题体验馆","浙江省杭州市余杭区迎宾路285号翁梅地铁站上盖东侧商业综合体绿地艺尚魔方内");
INSERT INTO yule () 
VALUES (8,"郑州砭生堂汗蒸会馆","健身养生","河南省郑州市登封市南环一路与谷路街交叉口东50米路北(国美电器东50米路北)");
INSERT INTO yule () 
VALUES (9,"湖北武当太极湖水上游乐","室外活动","湖北省十堰丹江口市武当旅游经济开发特区永乐路14号武当山风景区内316国道玄岳码头");
INSERT INTO yule () 
VALUES (10,"重庆国际马戏城","表演场所","重庆市南岸区南滨东路嘉年华斜对面摩托过山车旁");

#查询娱乐表
SELECT * FROM yule;

#删除娱乐表
DROP TABLE yule;

#创建消费者表
CREATE TABLE consumer(
consumerid INT,
consumername VARCHAR(10) PRIMARY KEY,
gender VARCHAR(2) NOT NULL, 
number CHAR(18) NOT NULL,
gonglueid INT,
baoxianname VARCHAR(10),
spend  INT,
CONSTRAINT fk_baoxianconsumer_baoxianname FOREIGN KEY
	(baoxianname) REFERENCES baoxian(baoxianname),
CONSTRAINT fk_gonglueconsumer_gonglueid FOREIGN KEY
	(gonglueid) REFERENCES gonglue(gonglueid)
)

#给消费者表添加数据
INSERT INTO consumer () 
VALUES (1,"张春华","女","430522198708246042",1,'中国人民保险',7000);
INSERT INTO consumer () 
VALUES (2,"曹娥","女","430522199009293061",2,'探险驴友旅行保险',6500);
INSERT INTO consumer () 
VALUES (3,"张三","男","430522198812157139",3,'境内旅行险',5900);
INSERT INTO consumer () 
VALUES (4,"李四","男","430522198004202026",4,'探险驴友旅行保险',6900);
INSERT INTO consumer () 
VALUES (5,"赵六","女","430522199102157240",5,'中国人民保险',7900);
INSERT INTO consumer () 
VALUES (6,"张华","男","430522198608246042",6,'探险驴友旅行保险',8000);
INSERT INTO consumer () 
VALUES (7,"曹杰","女","430522198909293061",7,'境内旅行险',5000);
INSERT INTO consumer () 
VALUES (8,"张五","男","430522198712157139",8,'中国人民保险',4000);
INSERT INTO consumer () 
VALUES (9,"李德","男","430522198604202026",9,'探险驴友旅行保险',4500);
INSERT INTO consumer () 
VALUES (10,"赵祥","女","430522199502157240",10,'境内旅行险',5500);

#查询消费者
SELECT * FROM consumer;

#删除消费者表
DROP TABLE consumer;

#创建收入表
CREATE TABLE income(
incomeid INT PRIMARY KEY AUTO_INCREMENT,
gsname VARCHAR(20),
money INT 
)

#添加收入数据
INSERT INTO income (gsname,money) 
VALUES ('天宇财务',0);

#给消费表添加约束
ALTER TABLE consumer
ADD CONSTRAINT CK_spend    
CHECK(spend>=1)

#查询收入表
SELECT * FROM income

#删除收入表
DROP TABLE income

#删除航空一条数据类型
ALTER TABLE hangkong DROP hangkongrq

#查询航空是否删除数据类型成功
SELECT * FROM hangkong

#左联接
SELECT * FROM consumer LEFT JOIN huoche
ON consumer.consumerid=huoche.huocheid

#内联接
SELECT * FROM consumer INNER JOIN jiudian
ON consumer.consumerid=jiudian.jiudianid

#完全联接
(SELECT consumerid,consumername,gender FROM consumer)
UNION
(SELECT  baoxianid,baoxianname,feiyong  FROM baoxian);

#交叉联接
SELECT * FROM consumer CROSS JOIN hangkong

