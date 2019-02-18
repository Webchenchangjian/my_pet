SET NAMES UTF8;
DROP DATABASE IF EXISTS maomi;
CREATE DATABASE maomi CHARSET=UTF8;
USE maomi;

/**用户信息**/
CREATE TABLE maomi_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16)
);
INSERT INTO maomi_user VALUES
(NULL,'tom','123456','tom@qq.com','13501234567');
/**猫咪家族**/
CREATE TABLE maomi_laptop_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);

/**猫咪家族名字**/
INSERT INTO maomi_laptop_family VALUES
(NULL,'布偶猫'),
(NULL,'加菲猫'),
(NULL,'金渐层'),
(NULL,'英短蓝猫'),
(NULL,'美国短毛猫'),
(NULL,'苏格兰折耳猫'),
(NULL,'无毛猫'),
(NULL,'曼基康矮脚猫');

/**猫咪产品**/
CREATE TABLE maomi_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  price DECIMAL(10,2),        #价格
  nums DECIMAL(10),           #浏览次数
  promise VARCHAR(64),        #服务承诺

  num DECIMAL(10),            #在售只数
  age VARCHAR(32),            #年龄
  breed VARCHAR(32),          #品种
  defend VARCHAR(32)          #预防
);

/**猫咪产品**/
INSERT INTO maomi_laptop VALUES
(1,1,'曼基康矮脚宠物猫 血统猫舍办理CFA证书',2000,60,'正规猫舍繁育包纯种健康',10,'10个月','曼基康矮脚猫','3针疫苗'),

(2,2,'CFA认证 纯种健康 布偶 加菲 豹猫 宠物幼猫 可上门挑选！',2000,60,' 正规猫舍，有问题包退换！',6,'3个月','布偶猫','3针疫苗'),

(3,3,'出售宠物猫支持货到付款支持在线支付 ',1700,59,' 正规猫舍，有问题包退换！',8,'3个月','布偶猫','2针疫苗'),

(4,4,'正规猫舍出售纯种猫咪 布偶 加菲 豹猫 加微信 ',1800,18,' 正规猫舍，有问题包退换！',6,'2个月','布偶猫','1针疫苗'),

(5,5,'CFA认证纯种猫舍活体幼猫 宠物级 可上门挑选 ',1600,34,' 正规猫舍，有问题包退换！',3,'4个月','布偶猫','1针疫苗'),

(6,6,'100%纯种猫咪现货出售本地可上门挑选外地视频挑 ',1800,22,' 正规猫舍，有问题包退换！',6,'3个月','布偶猫','1针疫苗'),

(7,7,'猫舍繁育宠物猫活体,现货下单当天立即送达',2000,34,' 正规猫舍，有问题包退换！',3,'3个月','布偶猫','1针疫苗'),

(8,8,'国际专宠 国内最大欧洲各国多品种高端纯种猫引 ',1800,35,' 正规猫舍，有问题包退换！',8,'3个月','布偶猫','2针疫苗'),



(9,9,'曼基康矮脚宠物猫 血统猫舍办理CFA证书',2000,60,'正规猫舍繁育包纯种健康',10,'10个月','曼基康矮脚猫','3针疫苗'),

(10,10,'CFA认证 纯种健康 布偶 加菲 豹猫 宠物幼猫 可上门挑选！',2000,60,' 正规猫舍，有问题包退换！',6,'3个月','布偶猫','3针疫苗'),

(11,11,'出售宠物猫支持货到付款支持在线支付 ',1700,59,' 正规猫舍，有问题包退换！',8,'3个月','布偶猫','2针疫苗'),

(12,12,'正规猫舍出售纯种猫咪 布偶 加菲 豹猫 加微信 ',1800,18,' 正规猫舍，有问题包退换！',6,'2个月','布偶猫','1针疫苗'),

(13,13,'CFA认证纯种猫舍活体幼猫 宠物级 可上门挑选 ',1600,34,' 正规猫舍，有问题包退换！',3,'4个月','布偶猫','1针疫苗'),

(14,14,'100%纯种猫咪现货出售本地可上门挑选外地视频挑 ',1800,22,' 正规猫舍，有问题包退换！',6,'3个月','布偶猫','1针疫苗'),

(15,15,'猫舍繁育宠物猫活体,现货下单当天立即送达',2000,34,' 正规猫舍，有问题包退换！',3,'3个月','布偶猫','1针疫苗'),

(16,16,'国际专宠 国内最大欧洲各国多品种高端纯种猫引 ',1800,35,' 正规猫舍，有问题包退换！',8,'3个月','布偶猫','2针疫苗'),



(17,17,'曼基康矮脚宠物猫 血统猫舍办理CFA证书',2000,60,'正规猫舍繁育包纯种健康',10,'10个月','曼基康矮脚猫','3针疫苗'),

(18,18,'CFA认证 纯种健康 布偶 加菲 豹猫 宠物幼猫 可上门挑选！',2000,60,' 正规猫舍，有问题包退换！',6,'3个月','布偶猫','3针疫苗'),

(19,19,'出售宠物猫支持货到付款支持在线支付 ',1700,59,' 正规猫舍，有问题包退换！',8,'3个月','布偶猫','2针疫苗'),

(20,20,'正规猫舍出售纯种猫咪 布偶 加菲 豹猫 加微信 ',1800,18,' 正规猫舍，有问题包退换！',6,'2个月','布偶猫','1针疫苗'),

(21,21,'CFA认证纯种猫舍活体幼猫 宠物级 可上门挑选 ',1600,34,' 正规猫舍，有问题包退换！',3,'4个月','布偶猫','1针疫苗'),

(22,22,'100%纯种猫咪现货出售本地可上门挑选外地视频挑 ',1800,22,' 正规猫舍，有问题包退换！',6,'3个月','布偶猫','1针疫苗'),

(23,23,'猫舍繁育宠物猫活体,现货下单当天立即送达',2000,34,' 正规猫舍，有问题包退换！',3,'3个月','布偶猫','1针疫苗'),

(24,24,'国际专宠 国内最大欧洲各国多品种高端纯种猫引 ',1800,35,' 正规猫舍，有问题包退换！',8,'3个月','布偶猫','2针疫苗'),

(25,25,'国际专宠 国内最大欧洲各国多品种高端纯种猫引 ',1800,35,' 正规猫舍，有问题包退换！',8,'3个月','布偶猫','2针疫苗');

/**猫咪图片**/
CREATE TABLE maomi_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #猫咪编号
  md VARCHAR(300),            #中图片路径
  sm VARCHAR(300)            #小图片路径
);
/**猫咪图片**/
INSERT INTO maomi_laptop_pic VALUES
(NULL, 1, 'product_name_img/2c81c45f3aae5eb17f7cd4be90f1777c.jpg','product_name_img/2c81c45f3aae5eb17f7cd4be90f1777c.jpg'),
(NULL, 1, 'product_name_img/381c7b68ccb1dfc9c91811f2a58f45f3.jpg','product_name_img/381c7b68ccb1dfc9c91811f2a58f45f3.jpg'),
(NULL, 1, 'product_name_img/38159175380cb0427d435fee180ff36e.jpg','product_name_img/38159175380cb0427d435fee180ff36e.jpg'),
(NULL, 1, 'product_name_img/d29c8193072aa17f1baef243f53f790f.jpg','product_name_img/d29c8193072aa17f1baef243f53f790f.jpg'),
(NULL, 2, './picture/thumb_300326184b5b6886a29b41c7258d910cdd9016.jpg',
'./picture/thumb_300326184b5b6886a29b41c7258d910cdd9016.jpg'),
(NULL, 2, './picture/20181128230717_78421.jpg','./picture/20181128230717_78421.jpg'),
(NULL, 2, './picture/20181128231339_63148.jpg','./picture/20181128231339_63148.jpg'),
(NULL, 2,'./picture/20181129110512_88279.jpg','./picture/20181129110512_88279.jpg'),
(NULL, 3,'./picture/thumb_3003267f6bcbde3f4076cf724c96206dd21b41.jpg','./picture/thumb_3003267f6bcbde3f4076cf724c96206dd21b41.jpg'),
(NULL, 3,'./picture/20181129142113_32255.jpg','./picture/20181129142113_32255.jpg'),
(NULL, 3,'./picture/20181129165516_54619.jpg','./picture/20181129165516_54619.jpg'),
(NULL, 3,'./picture/20181129190715_84263.jpg','./picture/20181129190715_84263.jpg'),
(NULL, 4,'./picture/thumb_300326a0bccad04a99866c58d9c63b38cdd7e4.jpg','./picture/thumb_300326a0bccad04a99866c58d9c63b38cdd7e4.jpg'),
(NULL, 4,'./picture/thumb_300326ac8a9817e11922d957483fcbc3575cf7.jpg','./picture/thumb_300326ac8a9817e11922d957483fcbc3575cf7.jpg'),
(NULL, 4,'./picture/thumb_300326b3adc35c8e5cf6eebeafd5027680c083.jpg','./picture/thumb_300326b3adc35c8e5cf6eebeafd5027680c083.jpg'),
(NULL, 4,'./picture/thumb_300326b9e4914fe3c023c0a482f30cb7f5c009.jpg','./picture/thumb_300326b9e4914fe3c023c0a482f30cb7f5c009.jpg'),

(NULL, 5,'./picture/thumb_300326cebf215c34266e1a621e83c2d2941585.jpg','./picture/thumb_300326cebf215c34266e1a621e83c2d2941585.jpg'),
(NULL, 5,'./picture/thumb_300326b54c379c96cef26873147162871bb0a2.jpg','./picture/thumb_300326b54c379c96cef26873147162871bb0a2.jpg'),
(NULL, 5,'./picture/thumb_300326b9379677e13a92650785e8086cbf6b48.jpg','./picture/thumb_300326b9379677e13a92650785e8086cbf6b48.jpg'),
(NULL, 5,'./picture/thumb_300326be67971c9f88fd4145ff899e137efd53.jpg','./picture/thumb_300326be67971c9f88fd4145ff899e137efd53.jpg'),

(NULL, 6,'./picture/thumb_300326bf5581cb5c08730392b307a75df8e90c.jpg','./picture/thumb_300326bf5581cb5c08730392b307a75df8e90c.jpg'),
(NULL, 6,'./picture/thumb_300326cebf215c34266e1a621e83c2d2941585.jpg','./picture/thumb_300326cebf215c34266e1a621e83c2d2941585.jpg'),
(NULL, 6,'./picture/thumb_300326d61666160764e815d18056d3b88dbaf6.jpg','./picture/thumb_300326d61666160764e815d18056d3b88dbaf6.jpg'),
(NULL, 6,'./picture/thumb_300326dc5cd0c1508ee0833ce423c6c08dad36.jpg','./picture/thumb_300326dc5cd0c1508ee0833ce423c6c08dad36.jpg'),

(NULL, 7,'./picture/thumb_300326be67971c9f88fd4145ff899e137efd53.jpg','./picture/thumb_300326be67971c9f88fd4145ff899e137efd53.jpg'),
(NULL, 7,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg'),
(NULL, 7,'./picture/thumb_300326e85ea53341c6aeef2d7dbde36507d2dd.jpg','./picture/thumb_300326e85ea53341c6aeef2d7dbde36507d2dd.jpg'),
(NULL, 7,'./picture/thumb_300326ee18a1763f781e83c963fd84c4226440.jpg','./picture/thumb_300326ee18a1763f781e83c963fd84c4226440.jpg'),

(NULL, 8,'./picture/thumb_3003263a8f05a044b78d2aaa0c82ee7d722e12.jpg','./picture/thumb_3003263a8f05a044b78d2aaa0c82ee7d722e12.jpg'),
(NULL, 8,'./picture/thumb_300326f3a0a9f4d0a0404c547e9a4508fe8aed.jpg','./picture/thumb_300326f3a0a9f4d0a0404c547e9a4508fe8aed.jpg'),
(NULL, 8,'./picture/thumb_300326f5300c4c56a568efdf517795f5446faa.jpg','./picture/thumb_300326f5300c4c56a568efdf517795f5446faa.jpg'),
(NULL, 8,'./picture/thumb_3003261e5ffdbf0e2649d74d7955dbc0a0ad34.jpg','./picture/thumb_3003261e5ffdbf0e2649d74d7955dbc0a0ad34.jpg'),

(NULL, 9,'./picture/thumb_3003266fb292c71018d0ff29580fd7b0d3dbcd.jpg','./picture/thumb_3003266fb292c71018d0ff29580fd7b0d3dbcd.jpg'),
(NULL, 9,'./picture_1/thumb_300326a3e3c7a4ab6a4a848bffbe6d5b37eb62.jpg','./picture_1/thumb_300326a3e3c7a4ab6a4a848bffbe6d5b37eb62.jpg'),
(NULL, 9,'./picture_1/thumb_300326a195aecc86f4bd92b075d2a33e18336b.jpg','./picture_1/thumb_300326a195aecc86f4bd92b075d2a33e18336b.jpg'),
(NULL, 9,'./picture_1/thumb_300326aa11c94235b9c068437ce2aadc3f4a12.jpg','./picture_1/thumb_300326aa11c94235b9c068437ce2aadc3f4a12.jpg'),

(NULL, 10,'./picture/thumb_3003268f959acb02cceb650a24521d4564f6a6.jpg','./picture/thumb_3003268f959acb02cceb650a24521d4564f6a6.jpg'),
(NULL, 10,'./picture_1/thumb_300326b76dd845aab87b2838eb11d37b3deff9.jpg','./picture_1/thumb_300326b76dd845aab87b2838eb11d37b3deff9.jpg'),
(NULL, 10,'./picture_1/thumb_300326b6213007e6ccbc85e74fcbe0ff73c3c0.jpg','./picture_1/thumb_300326b6213007e6ccbc85e74fcbe0ff73c3c0.jpg'),
(NULL, 10,'./picture_1/thumb_300326cb06b7f62dd59a44127c80594fc05c49.jpg','./picture_1/thumb_300326cb06b7f62dd59a44127c80594fc05c49.jpg'),

(NULL, 11,'./picture/thumb_30032686fc8b6aa23fd55638ce980dda970ec3.jpg','./picture/thumb_30032686fc8b6aa23fd55638ce980dda970ec3.jpg'),
(NULL, 11,'./picture_1/thumb_300326ce02b5029b39b159ff13969ef00c6c2b.jpg','./picture_1/thumb_300326ce02b5029b39b159ff13969ef00c6c2b.jpg'),
(NULL, 11,'./picture_1/thumb_300326cf703242195aa48e017fa87bb97049a1.jpg','./picture_1/thumb_300326cf703242195aa48e017fa87bb97049a1.jpg'),
(NULL, 11,'./picture_1/thumb_300326dd212da420289ba7c3dbba056531d879.jpg','./picture_1/thumb_300326dd212da420289ba7c3dbba056531d879.jpg'),

(NULL, 12,'./picture/thumb_300326b3adc35c8e5cf6eebeafd5027680c083.jpg','./picture/thumb_300326b3adc35c8e5cf6eebeafd5027680c083.jpg'),
(NULL, 12,'./picture_1/thumb_300326f0e9fe09395bf71c9f10e76ef1e70d44.jpg','./picture_1/thumb_300326f0e9fe09395bf71c9f10e76ef1e70d44.jpg'),
(NULL, 12,'./picture_1/thumb_3003261bb044dbd8630f59564523f7932ab707.jpg','./picture_1/thumb_3003261bb044dbd8630f59564523f7932ab707.jpg'),
(NULL, 12,'./picture_1/thumb_300326fc987d2a8f898f7ba790efb2b4828558.jpg','./picture_1/thumb_300326fc987d2a8f898f7ba790efb2b4828558.jpg'),

(NULL, 13,'./picture/thumb_300326ac8a9817e11922d957483fcbc3575cf7.jpg','./picture/thumb_300326ac8a9817e11922d957483fcbc3575cf7.jpg'),
(NULL, 13,'./picture_1/thumb_300326f0e9fe09395bf71c9f10e76ef1e70d44.jpg','./picture_1/thumb_300326f0e9fe09395bf71c9f10e76ef1e70d44.jpg'),
(NULL, 13,'./picture_1/thumb_3003261bb044dbd8630f59564523f7932ab707.jpg','./picture_1/thumb_3003261bb044dbd8630f59564523f7932ab707.jpg'),
(NULL, 13,'./picture_1/thumb_300326fc987d2a8f898f7ba790efb2b4828558.jpg','./picture_1/thumb_300326fc987d2a8f898f7ba790efb2b4828558.jpg'),

(NULL, 14,'./picture/thumb_300326e85ea53341c6aeef2d7dbde36507d2dd.jpg','./picture/thumb_300326e85ea53341c6aeef2d7dbde36507d2dd.jpg'),
(NULL, 14,'./picture_1/thumb_300326f0e9fe09395bf71c9f10e76ef1e70d44.jpg','./picture_1/thumb_300326f0e9fe09395bf71c9f10e76ef1e70d44.jpg'),
(NULL, 14,'./picture_1/thumb_3003261bb044dbd8630f59564523f7932ab707.jpg','./picture_1/thumb_3003261bb044dbd8630f59564523f7932ab707.jpg'),
(NULL, 14,'./picture_1/thumb_300326fc987d2a8f898f7ba790efb2b4828558.jpg','./picture_1/thumb_300326fc987d2a8f898f7ba790efb2b4828558.jpg'),

(NULL, 15,'./picture/thumb_300326f5300c4c56a568efdf517795f5446faa.jpg','./picture/thumb_300326f5300c4c56a568efdf517795f5446faa.jpg'),
(NULL, 15,'./picture_1/thumb_300326ce02b5029b39b159ff13969ef00c6c2b.jpg','./picture_1/thumb_300326ce02b5029b39b159ff13969ef00c6c2b.jpg'),
(NULL, 15,'./picture_1/thumb_300326cf703242195aa48e017fa87bb97049a1.jpg','./picture_1/thumb_300326cf703242195aa48e017fa87bb97049a1.jpg'),
(NULL, 15,'./picture_1/thumb_300326dd212da420289ba7c3dbba056531d879.jpg','./picture_1/thumb_300326dd212da420289ba7c3dbba056531d879.jpg'),

(NULL, 16,'./picture/thumb_300326f3a0a9f4d0a0404c547e9a4508fe8aed.jpg','./picture/thumb_300326f3a0a9f4d0a0404c547e9a4508fe8aed.jpg'),
(NULL, 16,'./picture_1/thumb_300326ce02b5029b39b159ff13969ef00c6c2b.jpg','./picture_1/thumb_300326ce02b5029b39b159ff13969ef00c6c2b.jpg'),
(NULL, 16,'./picture_1/thumb_300326cf703242195aa48e017fa87bb97049a1.jpg','./picture_1/thumb_300326cf703242195aa48e017fa87bb97049a1.jpg'),
(NULL, 16,'./picture_1/thumb_300326dd212da420289ba7c3dbba056531d879.jpg','./picture_1/thumb_300326dd212da420289ba7c3dbba056531d879.jpg'),

(NULL, 17,'./picture/thumb_300326332d0d8ca770ca8fb974eaaf5bfd834d.jpg','./picture/thumb_300326332d0d8ca770ca8fb974eaaf5bfd834d.jpg'),
(NULL, 17,'./picture_1/thumb_300326f0e9fe09395bf71c9f10e76ef1e70d44.jpg','./picture_1/thumb_300326f0e9fe09395bf71c9f10e76ef1e70d44.jpg'),
(NULL, 17,'./picture_1/thumb_3003261bb044dbd8630f59564523f7932ab707.jpg','./picture_1/thumb_3003261bb044dbd8630f59564523f7932ab707.jpg'),
(NULL, 17,'./picture_1/thumb_300326fc987d2a8f898f7ba790efb2b4828558.jpg','./picture_1/thumb_300326fc987d2a8f898f7ba790efb2b4828558.jpg'),

(NULL, 18,'./picture/thumb_300326dc5cd0c1508ee0833ce423c6c08dad36.jpg','./picture/thumb_300326dc5cd0c1508ee0833ce423c6c08dad36.jpg'),
(NULL, 18,'./picture_1/thumb_300326f0e9fe09395bf71c9f10e76ef1e70d44.jpg','./picture_1/thumb_300326f0e9fe09395bf71c9f10e76ef1e70d44.jpg'),
(NULL, 18,'./picture_1/thumb_3003261bb044dbd8630f59564523f7932ab707.jpg','./picture_1/thumb_3003261bb044dbd8630f59564523f7932ab707.jpg'),
(NULL, 18,'./picture_1/thumb_300326fc987d2a8f898f7ba790efb2b4828558.jpg','./picture_1/thumb_300326fc987d2a8f898f7ba790efb2b4828558.jpg'),

(NULL, 19,'./picture/thumb_300326b54c379c96cef26873147162871bb0a2.jpg','./picture/thumb_300326b54c379c96cef26873147162871bb0a2.jpg'),
(NULL, 19,'./picture/thumb_300326cebf215c34266e1a621e83c2d2941585.jpg','./picture/thumb_300326cebf215c34266e1a621e83c2d2941585.jpg'),
(NULL, 19,'./picture/thumb_300326d61666160764e815d18056d3b88dbaf6.jpg','./picture/thumb_300326d61666160764e815d18056d3b88dbaf6.jpg'),
(NULL, 19,'./picture/thumb_300326dc5cd0c1508ee0833ce423c6c08dad36.jpg','./picture/thumb_300326dc5cd0c1508ee0833ce423c6c08dad36.jpg'),

(NULL, 20,'./picture/thumb_300326b9e4914fe3c023c0a482f30cb7f5c009.jpg','./picture/thumb_300326b9e4914fe3c023c0a482f30cb7f5c009.jpg'),
(NULL, 20,'./picture/thumb_300326cebf215c34266e1a621e83c2d2941585.jpg','./picture/thumb_300326cebf215c34266e1a621e83c2d2941585.jpg'),
(NULL, 20,'./picture/thumb_300326d61666160764e815d18056d3b88dbaf6.jpg','./picture/thumb_300326d61666160764e815d18056d3b88dbaf6.jpg'),
(NULL, 20,'./picture/thumb_300326dc5cd0c1508ee0833ce423c6c08dad36.jpg','./picture/thumb_300326dc5cd0c1508ee0833ce423c6c08dad36.jpg'),

(NULL, 21,'./picture/thumb_3003269e32475e94e314285267afe1b72604ea.jpg','./picture/thumb_3003269e32475e94e314285267afe1b72604ea.jpg'),
(NULL, 21,'./picture/thumb_300326f3a0a9f4d0a0404c547e9a4508fe8aed.jpg','./picture/thumb_300326f3a0a9f4d0a0404c547e9a4508fe8aed.jpg'),
(NULL, 21,'./picture/thumb_300326f5300c4c56a568efdf517795f5446faa.jpg','./picture/thumb_300326f5300c4c56a568efdf517795f5446faa.jpg'),
(NULL, 21,'./picture/thumb_3003261e5ffdbf0e2649d74d7955dbc0a0ad34.jpg','./picture/thumb_3003261e5ffdbf0e2649d74d7955dbc0a0ad34.jpg'),

(NULL, 22,'./picture/thumb_300326b9379677e13a92650785e8086cbf6b48.jpg','./picture/thumb_300326b9379677e13a92650785e8086cbf6b48.jpg'),
(NULL, 22,'./picture/thumb_300326f3a0a9f4d0a0404c547e9a4508fe8aed.jpg','./picture/thumb_300326f3a0a9f4d0a0404c547e9a4508fe8aed.jpg'),
(NULL, 22,'./picture/thumb_300326f5300c4c56a568efdf517795f5446faa.jpg','./picture/thumb_300326f5300c4c56a568efdf517795f5446faa.jpg'),
(NULL, 22,'./picture/thumb_3003261e5ffdbf0e2649d74d7955dbc0a0ad34.jpg','./picture/thumb_3003261e5ffdbf0e2649d74d7955dbc0a0ad34.jpg'),

(NULL, 23,'./picture/thumb_300326ee18a1763f781e83c963fd84c4226440.jpg','./picture/thumb_300326ee18a1763f781e83c963fd84c4226440.jpg'),
(NULL, 23,'./picture/20181129142113_32255.jpg','./picture/20181129142113_32255.jpg'),
(NULL, 23,'./picture/20181129165516_54619.jpg','./picture/20181129165516_54619.jpg'),
(NULL, 23,'./picture/20181129190715_84263.jpg','./picture/20181129190715_84263.jpg'),

(NULL, 24,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg'),
(NULL, 24,'./picture/20181129142113_32255.jpg','./picture/20181129142113_32255.jpg'),
(NULL, 24,'./picture/20181129165516_54619.jpg','./picture/20181129165516_54619.jpg'),
(NULL, 24,'./picture/20181129190715_84263.jpg','./picture/20181129190715_84263.jpg'),

(NULL, 25,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg'),
(NULL, 25,'./picture/20181129142113_32255.jpg','./picture/20181129142113_32255.jpg'),
(NULL, 25,'./picture/20181129165516_54619.jpg','./picture/20181129165516_54619.jpg'),
(NULL, 25,'./picture/20181129190715_84263.jpg','./picture/20181129190715_84263.jpg');



/****首页商品****/
CREATE TABLE maomi_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  href VARCHAR(128),
  pic VARCHAR(128),
  title VARCHAR(64),
  price DECIMAL(10,2),
  city VARCHAR(10),
  name VARCHAR(10)
);
/****首页商品****/
INSERT INTO maomi_index_product VALUES
(NULL,NULL, './picture/breeds_37.jpg', 'CFA认证  纯种健康 美国短毛猫 宠物幼猫 可上门挑选!', 2600, NULL, '猫来猫往'),
(NULL,NULL, './picture/thumb_3003261e5ffdbf0e2649d74d7955dbc0a0ad34.jpg', 'CFA认证  纯种健康 波斯猫 宠物幼猫 可上门挑选！', 2000, NULL, '叮当猫'),
(NULL,NULL, './picture/thumb_30032636f4bbafa9a053a24a7c3d28dbdea105.jpg', ' 正规实体企业 ! 签合同苏格兰折耳猫', 2000, NULL, 'Aa网红猫'),
(NULL,NULL, './picture/thumb_3003267107ad57692f5001a39bda11819aa0b6.jpg', '大型繁育基地出售纯种孟买猫', 2000, NULL, 'Aa猫猫乐园'),
(NULL,NULL, './picture/thumb_300326d61666160764e815d18056d3b88dbaf6.jpg', '美国短毛猫 纯种美短银虎斑 美短标斑宠物猫幼猫 活体', 2000, NULL, '私房猫咪馆'),

/****一楼商品****/
(NULL,'product_name.html?lid=1', './picture/thumb_300326360dbe22d3ead2489cc45db560a8ebd9.jpg', '签协议包养活  英短美短折耳猫  价格较实惠', 2600, '广东/阳江', '塞拉猫舍'),
(NULL,'product_name.html?lid=2', './picture/thumb_300326184b5b6886a29b41c7258d910cdd9016.jpg', 'CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运', 1600, '广西/防城港', '包子猫'),
(NULL,'product_name.html?lid=3', './picture/thumb_3003267f6bcbde3f4076cf724c96206dd21b41.jpg', ' 专业繁殖美血波斯系精品布偶猫  签订协议', 2000, '四川/南充', '又见猫宠'),
(NULL,'product_name.html?lid=4', './picture/thumb_300326a0bccad04a99866c58d9c63b38cdd7e4.jpg', '签协议包养活  英短美短折耳猫  价格较实惠', 2600, '四川/四川省', '巴拉拉猫舍'),
(NULL,'product_name.html?lid=5', './picture/thumb_300326cebf215c34266e1a621e83c2d2941585.jpg', '正规猫舍商家 添加微信在线咨询解答 全国均可', 2600, '河南/平顶山', '奶昔猫舍'),
(NULL,'product_name.html?lid=6', './picture/thumb_300326bf5581cb5c08730392b307a75df8e90c.jpg', '同城实地上门挑选  黄白加菲猫  海外引进繁育', 2800, '北京/西城', '猫尼卡'),
(NULL,'product_name.html?lid=7', './picture/thumb_300326be67971c9f88fd4145ff899e137efd53.jpg', '全部现货  出售 不满意包退换 直到您满意为止', 3000, '四川/雅安', '高品质'),
(NULL,'product_name.html?lid=8', './picture/thumb_3003263a8f05a044b78d2aaa0c82ee7d722e12.jpg', '正规猫舍  英短蓝白猫 全国包邮发货', 2600, '江苏/盐城', '奶酪布丁'),
/****二楼商品****/
(NULL,'product_name.html?lid=9', './picture/thumb_3003266fb292c71018d0ff29580fd7b0d3dbcd.jpg', '同城实地上门挑选 可爱猫咪 签协议包健康 欢迎', 3000, '四川/眉山', '佳佳福'),
(NULL,'product_name.html?lid=10', './picture/thumb_3003268f959acb02cceb650a24521d4564f6a6.jpg', '本地同城送货上门  全国空运包邮  咨询有优惠哦', 3000, '河北/河北省', '完美无瑕'),
(NULL,'product_name.html?lid=11', './picture/thumb_30032686fc8b6aa23fd55638ce980dda970ec3.jpg', ' 本地专业CFA猫舍  金吉拉 蓝猫 渐层幼崽 保证品', 3000, '江苏/江苏省', '小魔仙'),
(NULL,'product_name.html?lid=12', './picture/thumb_300326b3adc35c8e5cf6eebeafd5027680c083.jpg', '出售 纯血统布偶猫宝宝 疫苗证书齐 包健康', 2600, '江苏/无锡', '喵喵喵'),
(NULL,'product_name.html?lid=13', './picture/thumb_300326ac8a9817e11922d957483fcbc3575cf7.jpg', '本地专业CFA猫舍  长毛金吉拉幼崽  全国包邮发货', 2800, '内蒙古/包头', '小公举'),
(NULL,'product_name.html?lid=14', './picture/thumb_300326e85ea53341c6aeef2d7dbde36507d2dd.jpg', '正规猫舍  多只猫咪代售 签订协议  包纯种健康', 2800, '山西/运城', '温馨港'),
(NULL,'product_name.html?lid=15', './picture/thumb_300326f5300c4c56a568efdf517795f5446faa.jpg', '本地专业CFA猫舍 水滴眼胖嘟嘟加菲猫 海外引进', 3000, '江苏/徐州', '郭德猫'),
(NULL,'product_name.html?lid=16', './picture/thumb_300326f3a0a9f4d0a0404c547e9a4508fe8aed.jpg', 'CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运', 1600, '陕西/商洛地区', '包子猫'),
/****三楼商品****/
(NULL,'product_name.html?lid=17', './picture/thumb_300326332d0d8ca770ca8fb974eaaf5bfd834d.jpg', 'CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运', 1600, '西藏/林芝地区', '小短腿猫'),
(NULL,'product_name.html?lid=18', './picture/thumb_300326dc5cd0c1508ee0833ce423c6c08dad36.jpg', 'CFA认证  纯种健康 英国短毛猫 宠物幼猫 可上门挑选！', 2000, '北京/大兴', '猫来猫往'),
(NULL,'product_name.html?lid=19', './picture/thumb_300326b54c379c96cef26873147162871bb0a2.jpg', 'CFA认证  纯种健康 英国短毛猫 宠物幼猫 可上门挑选！', 2000, '广东/广州', '猫来猫往'),
(NULL,'product_name.html?lid=20', './picture/thumb_300326b9e4914fe3c023c0a482f30cb7f5c009.jpg', 'CFA认证  纯种健康 英国短毛猫 宠物幼猫 可上门挑选！', 2000, '广东/深圳', '喵喵喵'),
(NULL,'product_name.html?lid=21', './picture/thumb_3003269e32475e94e314285267afe1b72604ea.jpg', 'CFA认证  纯种健康 英国短毛猫 宠物幼猫 可上门挑选!', 2000, '上海/闵行', '小公举'),
(NULL,'product_name.html?lid=22', './picture/thumb_300326b9379677e13a92650785e8086cbf6b48.jpg', 'CFA认证  纯种健康 英国短毛猫 宠物幼猫 可上门挑选！', 2000, '上海/嘉定', '温馨港'),
(NULL,'product_name.html?lid=23', './picture/thumb_300326ee18a1763f781e83c963fd84c4226440.jpg', 'CFA认证  纯种健康 英国短毛猫 宠物幼猫 可上门挑选！', 3000, '浙江/杭州', '郭德猫'),
(NULL,'product_name.html?lid=24', './picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg', 'CFA认证  纯种健康 英国短毛猫 宠物幼猫 可上门挑选！', 2000, '江苏/南京', '包子猫'),
(NULL,'product_name.html?lid=25', './picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg', 'CFA认证  纯种健康 英国短毛猫 宠物幼猫 可上门挑选！', 2000, '江苏/南京', '包子猫');
/****分页商品****/
CREATE TABLE maomi_product_1_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(128),
  title VARCHAR(64),
  price DECIMAL(10,2),
  city VARCHAR(10),
  name VARCHAR(10),
  kind VARCHAR(10)
);
INSERT INTO maomi_product_1_product VALUES
(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','布偶猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','布偶猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','布偶猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','布偶猫'),

(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','布偶猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','布偶猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','布偶猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','布偶猫'),

(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','布偶猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','布偶猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','布偶猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','布偶猫'),

(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','布偶猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','布偶猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','布偶猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','布偶猫'),

(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','布偶猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','布偶猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','布偶猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','布偶猫'),

(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','布偶猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','布偶猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','布偶猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','布偶猫'),

(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','布偶猫'),
(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','加菲猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','加菲猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','加菲猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','加菲猫'),

(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','加菲猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','加菲猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','加菲猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','加菲猫'),

(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','加菲猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','加菲猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','加菲猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','加菲猫'),

(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','加菲猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','加菲猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','加菲猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','加菲猫'),

(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','加菲猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','加菲猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','加菲猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','加菲猫'),

(NULL,'./picture/thumb_300326dd5f74465962589ed33d83c6ef96d53a.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',2600,'广东/阳江','塞拉猫舍','加菲猫'),
(NULL,'./picture_1/thumb_30032608c7365e9a96e24e5bd0d19f91429d74.jpg','CFA连锁猫舍 火焰布偶 幼猫 求带走  全国可空运',1600,'广西/防城港','包子猫','加菲猫'),
(NULL,'./picture_1/thumb_30032678c57718744125f5235cc6dcd3f528c9.jpg','专业繁殖美血波斯系精品布偶猫  签订协议',2000,'四川/南充','又见猫宠','加菲猫'),
(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','加菲猫'),

(NULL,'./picture_1/thumb_3003264bce7709dac62e64679632bf0b61da9f.jpg','签协议包养活  英短美短折耳猫  价格较实惠',2600,'四川/四川省','巴拉拉猫舍','加菲猫');