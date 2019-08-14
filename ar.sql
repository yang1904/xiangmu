SET NAMES UTF8;
DROP DATABASE IF EXISTS ar;
CREATE DATABASE ar CHARSET=UTF8;
USE ar;

/****首页轮播广告商品****/
CREATE TABLE ar_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,   #轮播编号
  img VARCHAR(128),    #轮播图路径
  title VARCHAR(64)   #标题
);
/**旅客登登记表**/
CREATE TABLE ar_registration(
    user_id INT PRIMARY KEY AUTO_INCREMENT,               #顾客编号
    uname VARCHAR(16),         #顾客姓名
    gender INT,                #顾客性别
    dj_uid INT,                #顾客等级编号  ？？
    phone VARCHAR(16),         #顾客电话
    price  DECIMAL(10,2),      #顾客消费金额
    cart_id  VARCHAR(20),       #身份证号
    email VARCHAR(16),         #顾客邮箱
    record INT,                #记录状态
    information VARCHAR(20),   #备注信息
    room  VARCHAR(7),          #房间号
    upwd VARCHAR(32)          #顾客密码
);
/*顾客等级设置表*/
CREATE TABLE ar_grade(
    grade_uid INT,  #等级编号
    grade_name VARCHAR(6), #等级名称
    discount VARCHAR(4)  #等级折扣
);

/*员工信息表*/
CREATE TABLE ar_gaff(
   id INT PRIMARY KEY AUTO_INCREMENT,           #编号
   uname VARCHAR(16), #员工姓名
   gender int,        #员工性别
   phone VARCHAR(16),  0#电话
   gaff_id VARCHAR(18), #身份证号
   mailbox VARCHAR(18), #员工邮箱
   remarks VARCHAR(30), #备注信息
   record INT    #记录状态
);
/*住宿表*/
CREATE TABLE ar_accommodation(
    card_number VARCHAR(10),
    sirial_number INT
);
/*房屋类型家族*/
CREATE TABLE ar_laptop_family(
  fid INT PRIMARY KEY AUTO_INCREMENT, #地区编号
  fname VARCHAR(32)  #房屋类型及地区
);
/*民宿房屋及价格*/
CREATE TABLE ar_family(
  fid INT PRIMARY KEY AUTO_INCREMENT, #房家编号  
  people_family VARCHAR(18),  #房主的家及地区
  img VARCHAR(128),           #图片
  people_img VARCHAR(128),    #人物图片
  price  DECIMAL(10,2)  #房屋价格
);


/*民宿房屋及价格*/
INSERT into ar_family VALUES
(NULL,'屋里灰灰的家 - 苏州','img/index/fq_v6.jpg','img/index/gu2.jpg',240),
(NULL,'米舍庄主的家 - 苏州','img/index/fq_v4.jpg','img/index/gu2.jpg',698),
(NULL,'西涌蝴蝶家客栈的家 - 深圳','img/index/fq_v1.jpg','img/index/gu2.jpg',168),
(NULL,'胡小花的家 - 深圳','img/index/fq_v6.jpg','img/index/gu2.jpg',469),
(NULL,'北京路的宅先生的家 - 广州','img/index/f6.jpg','img/index/gu2.jpg',359),
(NULL,'星空舍_Starrys的家 - 上海','img/index/f6.jpg','img/index/gu2.jpg',498);

INSERT INTO ar_laptop_family VALUES
(NULL,'西涌蝴蝶家客栈的家 - 深圳'),
(NULL,'风情帆都  ·  青岛'),
(NULL,'金陵春梦  ·  南京'),
(NULL,'最忆西湖  ·  杭州');
/**住宿表**/
INSERT INTO ar_accommodation VALUES
('A-102',NULL),
('B-112',NULL),
('C-304',NULL);

/*轮播图*/
INSERT INTO ar_index_carousel VALUES
(NULL, 'img/index/banner1.png','轮播广告1'),
(NULL, 'img/index/banner2.png','轮播广告2'),
(NULL, 'img/index/banner3.png','轮播广告3'),
(NULL, 'img/index/banner4.png','轮播广告4');

/**旅客登记表**/
INSERT INTO ar_registration VALUES
(NULL,'张三','1','2','13284145601','2100','521214XXXXXXXXXXX2','123456@qq.com','1','正在入住中','A-101','123456'),
(NULL,'李四','0','1','13284153254','1900','521214XXXXXXXXXXX2','1235636@qq.com','1','正在入住中','A-102','123456'),
(NULL,'老王','1','2','13284145601','3512','521214XXXXXXXXXXX2','2542546@qq.com','1','正在入住中','A-103','123456'),
(NULL,'张麻子','0','3','13584145601','2020','521214XXXXXXXXXXX2','17532@qq.com','1','正在入住中','A-104','123456'),
(NULL,'孙三','1','2','13284135301','1000','521214XXXXXXXXXXX2','145546@qq.com','1','正在入住中','A-106','123456'),
(NULL,'小明','1','2','18848145601','1400','521214XXXXXXXXXXX2','154242@qq.com','1','正在入住中','A-107','123456'),
(NULL,'小红','0','3','18284145601','2100','521214XXXXXXXXXXX2','352452@qq.com','1','正在入住中','A-108','123456'),
(NULL,'小刚','1','4','13841458601','2100','521214XXXXXXXXXXX2','132520@qq.com','1','正在入住中','A-109','123456'),
(NULL,'小李','1','4','13888145601','2100','521214XXXXXXXXXXX2','821422@qq.com','1','正在入住中','A-110','123456'),
(NULL,'小三','1','2','13288414601','2100','521214XXXXXXXXXXX2','025242@qq.com','1','正在入住中','A-111','123456');

/**等级折扣介绍**/
INSERT INTO ar_grade VALUES
('1',"钻石VIP",'8折'),
('2',"铂金VIP",'8.8折'),
('3',"黄金VIP",'9折'),
('4',"白银VIP",'9.5折'),
('5',"青铜VIP",'9.8折');

/*员工信息*/
INSERT INTO ar_gaff VALUES
(NULL,'dingding','1','15229997011','5524324XXXXXXXXXXX4','dingding@qq.com','工作中','1'),
(NULL,'qianqian','0','15522423532','5524324XXXXXXXXXXX4','qianqian@qq.com','工作中','1'),
(NULL,'fengfeng','0','15425822546','5524324XXXXXXXXXXX4','fengfeng@qq.com','已离职','0'),
(NULL,'yangyang','0','17254255223','5524324XXXXXXXXXXX4','yangyang@qq.com','工作中','0'),
(NULL,'luoluoqi','0','15285154252','5524324XXXXXXXXXXX4','luoluo@qq.com','工作中','1'),
(NULL,'qingqing','0','19252242657','5524324XXXXXXXXXXX4','qingqing@qq.com','已离职','0');