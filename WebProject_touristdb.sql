CREATE DATABASE WEBPROJECT_TOURISTDB;
USE WEBPROJECT_TOURISTDB;

CREATE TABLE USERS(
	id int NOT NULL AUTO_INCREMENT,
    user_id varchar(30)collate utf8_unicode_ci default NULL,
	username varchar(30) collate utf8_unicode_ci default NULL,
    userpwd varchar(255),
    email varchar(30),
    PRIMARY KEY  (id)
);

CREATE TABLE Category(
	id int NOT NULL AUTO_INCREMENT,
	category varchar(30),
    PRIMARY KEY (id)
);
CREATE TABLE Product(
	id int NOT NULL AUTO_INCREMENT,
	category_id int,
    title varchar(50),
    content varchar(255),
    price varchar(255),
    image varchar(500),
    PRIMARY KEY (id)
);
INSERT INTO `category` VALUES(1,'japan');
INSERT INTO `category` VALUES(2,'vietnam');
INSERT INTO `category` VALUES(3,'korea');
INSERT INTO `product` VALUES (1,1,'엄마랑 나랑','4박3일<br>♨2019년 추운겨울 따뜻한 특가','1,000,000','https://image.tourbaksa.com/New/item/2018/9/1de23b34-f895-4ff9-b75f-1424da4ced26.jpg'),(2,1,'초원 위의 안식처','2박3일<br>◆온천/관광/쇼핑3박자,온천호텔2박','900,000','https://image.tourbaksa.com/New/item/2017/6/1c90838b-a15c-4040-9452-1cd85e655326.jpg'),(3,1,'시기노이','2박3일<br>★스기노이전망온천,숲속,히젠야','800,000','https://image.tourbaksa.com/New/item/2018/3/86128638-349c-4147-8406-403cdabd2b2c.jpg'),(4,1,'오사카','5박3일<br><br>2019년 설 연휴, 미리 예약 끝내버리고 여행 일정 짜자!','600,000','https://image.tourbaksa.com/New/item/2018/12/20181206181921.JPG'),(5,1,'도쿄','3박4일<br><br>항공사별로 한 눈에 보기. 오사카 3박 4일 자유여행','800,000','https://image.tourbaksa.com/New/item/2018/10/20181019205419.jpg'),(6,1,'가고시마','6박5일<br><br>활화산이 숨쉬는 그곳!.가고싶다! 가고시마♬','700,000','https://image.tourbaksa.com/New/item/2017/1/20170104101439_re.jpg'),(7,1,'여행박사 단독','2박3일<br><br>[2018년 ★프리미엄 큐슈-온천의 끝판왕★]','600,000','https://image.tourbaksa.com/New/item/2018/7/20180717142910.jpg'),(8,1,'여행박사야','1박2일<br><br>★2019 Winter 특집 여행박사 가고싶다! ','500,000','https://image.tourbaksa.com/New/item/2018/12/20181219154050_re.jpg'),(9,1,'부모님을 위한','4박3일<br><br>2019년 설 연휴,가족을 위한 최고의 선물♡','750,000','https://image.tourbaksa.com/New/item/2017/11/20171115112934.jpg'),(10,2,'전통 옷','1박2일<br>[베트남] 전통적인 Ao Dai 공연 체험','500,000','https://image.tourbaksa.com/new/Pass/2018/5/6E631C0A-6FD1-46CD-8CC9-EECC928B1A88.jpg'),(11,2,'오션','6박7일<br>[베트남] 오션파크 놀이','900,000','https://image.tourbaksa.com/new/Pass/2017/10/A92445AB-AD57-4965-BEB9-DD0E8057D02A.jpg'),(12,2,'차밍 다낭 쇼','3박4일<br>[베트남] ★차밍 문화 체험','800,000','https://image.tourbaksa.com/new/Pass/2018/5/4F3EE7D9-F826-4C9F-8003-383B314DBF21.jpg'),(13,2,'다낭 ','5박4일<br><br> 다낭 바나힐 일일투어 - Da Nang Go♬','800,000','https://t1.daumcdn.net/cfile/tistory/99ECBF3359B8F06419'),(14,2,'호이안','6박7일<br><br>호이안 에코 쿠킹 클래스&바스켓 보트 투어','700,700','https://image.tourbaksa.com/new/Pass/2018/5/404F9E6A-57C4-46A2-B7C3-10D5E4BABE7B.jpg'),(15,2,'하노이','6박7일<br><br>베트남 수도 옛날 이야기 듣기 감상한 여행','800,800','https://image.tourbaksa.com/new/Pass/2018/5/F0BE538C-0CE9-4B4C-BC0E-4DAB581C7DD8.jpg'),(16,2,'바나힐 편하게 살기','5박4일<br><br>[베트남] 다낭 바나힐 일일투어 - Hoi An Go♬','800,800','https://image.tourbaksa.com/new/Pass/2018/5/AEFF95DC-3B27-4B8A-A53C-D1598187EC14.jpg'),(17,2,'바나힐 편하게 살기','6박7일<br><br>[베트남] 호이안 에코 쿠킹 클래스&바스켓 보트 투어','800,800','https://image.tourbaksa.com/new/Pass/2018/5/AEFF95DC-3B27-4B8A-A53C-D1598187EC14.jpg'),(18,2,'바나힐 편하게 살기','6박7일<br><br>[베트남] 호이안 에코 쿠킹 클래스&바스켓 보트 투어','800,800','https://image.tourbaksa.com/new/Pass/2018/5/AEFF95DC-3B27-4B8A-A53C-D1598187EC14.jpg'),(19,3,'특급호텔 ','1박2일<br>관광단지 위치 ⇒ 신라/롯데★★','900,000','http://www.jejuhanatour.com/tourmanager/lodge/photo/315/315_M0_20160402133339.jpg'),(20,3,'한정특가','3박2일<br>항공+숙박+렌터카 제주자유여행','1,000,000','https://image.tourbaksa.com/New/item/2018/1/20180119161827_re.jpg'),(21,3,'설 연휴','5박4일<br>우리 설날은 제주도 여행','700,000','https://image.tourbaksa.com/New/item/2018/12/20181213182733.jpg'),(22,3,'제주도','3박2일<br><br>JEJU 천천히 먹고, 사랑하라, 추천호텔 2박','800,800','https://image.tourbaksa.com/New/item/2015/1/20150109111750.jpg'),(23,3,'부산','2박2일<br><br>항공+숙박+렌터카 (에어부산) - ⓒ공항20분거리','900,000','https://image.tourbaksa.com/New/item/2018/5/20180517172628_re.JPG'),(24,3,'서울','5박6일<br><br>렌트카 / 자유여행 ⓐ애월의아름다운해안도로옆','800,000','https://image.tourbaksa.com/New/item/2015/11/20151105143821.jpg'),(25,3,'경기도','6박5일<br><br>우도, 성산일출봉 등ⓑ외국휴양지못지않은외관','800,000','https://image.tourbaksa.com/New/item/2018/5/20180521150037.png'),(26,3,'인천','5박4일<br><br>★추천 [유탑유블레스호텔] ⓒ깔끔한 객실','800,000','https://image.tourbaksa.com/New/item/2018/11/20181126194037.jpg'),(27,3,'고양이','3박2일<br><br>JEJU 천천히 먹고, 사랑하라ⓑ바다전망','800,000','https://image.tourbaksa.com/New/item/2016/7/20160719113813_re.jpg');
