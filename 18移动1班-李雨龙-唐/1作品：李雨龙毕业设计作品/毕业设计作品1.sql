CREATE DATABASE bysj CHARSET utf8;
USE bysj;
#创建景点表
CREATE TABLE jingdian(
jingdianid INT,
jingdiandd VARCHAR(10) PRIMARY KEY,
jingdianname VARCHAR(20) NOT NULL,
jingdianjibie CHAR(5) NOT NULL
)

#创建保险表
CREATE TABLE baoxian(
baoxianid INT ,
baoxianname VARCHAR(10) PRIMARY KEY,
feiyong CHAR(10)
)
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
#创建火车表
CREATE TABLE huoche(
huocheid INT,
huochenumber VARCHAR(10) PRIMARY KEY,
huochecf VARCHAR(10),
huochekw VARCHAR(10),
huochefeiyong CHAR(10)
)

#创建客车表
CREATE TABLE daba(
dabaid INT ,
dabacf VARCHAR(10),
dabakw VARCHAR(10) PRIMARY KEY,
dabafeiyong CHAR(10)
)
#创建游轮表
CREATE TABLE youlun(
youlunid INT,
youlunname VARCHAR(20)PRIMARY KEY,
youlunday VARCHAR(10),
youlunck VARCHAR(10),
youlunfeiyong CHAR(10) NOT NULL 
)
#创建酒店表
CREATE TABLE jiudian(
jiudianid INT,
jiudianname VARCHAR(20) PRIMARY KEY,
jiudianfjlx VARCHAR(10),
jiudianfeiyong CHAR(10)
)
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
#创建娱乐表
CREATE TABLE yule(
yuleid INT,
yulename VARCHAR(10) PRIMARY KEY,
yuledizhi VARCHAR(30),
yulesslx VARCHAR(10)
)
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

#创建收入表
CREATE TABLE income(
incomeid INT PRIMARY KEY AUTO_INCREMENT,
gsname VARCHAR(20),
money INT 
)
