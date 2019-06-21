<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Web Project</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> 

<style>	
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);
body, html {
    height: 100%; width: 100%;
    background-image:url("https://previews.123rf.com/images/inides/inides1603/inides160300090/54454113-%EC%95%84%EA%B8%B0-%EB%B6%80%EC%A1%B1%EC%9D%98-%ED%99%94%EC%82%B4%ED%91%9C-%ED%8C%A8%ED%84%B4-%EC%9B%90%ED%99%9C%ED%95%9C-%ED%8C%8C%EC%8A%A4%ED%85%94-%EC%83%89%EC%83%81-%EB%94%94%EC%9E%90%EC%9D%B8-%EC%B9%A8%EB%8C%80-%EC%8B%9C%ED%8A%B8-%EB%B0%8F-%EC%9D%98%EB%A5%98-%EB%B3%B4%EC%9C%A1-%EC%95%84%EC%9D%B4-%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%9E%AC%EB%AF%B8-%EB%B0%B0%EA%B2%BD-.jpg");
	background-repeat:repeat;
}

.main_image {	
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  width:100%;
  height:500px;
  margin:auto;
  background-image:url('images/DN.png');
  background-size:100% 100%;
}


.image_text{
	font-size:3em;
	color:white;
	font-family: 'Jeju Hallasan', serif;
/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#ffc578+0,fb9d23+100;Orange+3D+%233 */
background: rgb(255,197,120); /* Old browsers */
background: -moz-linear-gradient(top, rgba(255,197,120,1) 0%, rgba(251,157,35,1) 100%); /* FF3.6-15 */
background: -webkit-linear-gradient(top, rgba(255,197,120,1) 0%,rgba(251,157,35,1) 100%); /* Chrome10-25,Safari5.1-6 */
background: linear-gradient(to bottom, rgba(255,197,120,1) 0%,rgba(251,157,35,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffc578', endColorstr='#fb9d23',GradientType=0 ); /* IE6-9 */
}

.select_menu{
	background-image:url("https://previews.123rf.com/images/inides/inides1603/inides160300090/54454113-%EC%95%84%EA%B8%B0-%EB%B6%80%EC%A1%B1%EC%9D%98-%ED%99%94%EC%82%B4%ED%91%9C-%ED%8C%A8%ED%84%B4-%EC%9B%90%ED%99%9C%ED%95%9C-%ED%8C%8C%EC%8A%A4%ED%85%94-%EC%83%89%EC%83%81-%EB%94%94%EC%9E%90%EC%9D%B8-%EC%B9%A8%EB%8C%80-%EC%8B%9C%ED%8A%B8-%EB%B0%8F-%EC%9D%98%EB%A5%98-%EB%B3%B4%EC%9C%A1-%EC%95%84%EC%9D%B4-%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%9E%AC%EB%AF%B8-%EB%B0%B0%EA%B2%BD-.jpg");
	background-repeat:repeat;
	font-size:2em;
	width:100%;
	height:200px;
	font-family: 'Jeju Hallasan', serif;
	color:white;
}

.tablink {
  background-color:#F3E2A9;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 25%;
}

.tablink:hover {
  background-color:#FFBF00;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: white;
  display: none;
  padding: 100px 20px;
  height: auto;
}

#Home {background-image:url("https://previews.123rf.com/images/inides/inides1603/inides160300090/54454113-%EC%95%84%EA%B8%B0-%EB%B6%80%EC%A1%B1%EC%9D%98-%ED%99%94%EC%82%B4%ED%91%9C-%ED%8C%A8%ED%84%B4-%EC%9B%90%ED%99%9C%ED%95%9C-%ED%8C%8C%EC%8A%A4%ED%85%94-%EC%83%89%EC%83%81-%EB%94%94%EC%9E%90%EC%9D%B8-%EC%B9%A8%EB%8C%80-%EC%8B%9C%ED%8A%B8-%EB%B0%8F-%EC%9D%98%EB%A5%98-%EB%B3%B4%EC%9C%A1-%EC%95%84%EC%9D%B4-%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%9E%AC%EB%AF%B8-%EB%B0%B0%EA%B2%BD-.jpg");
		background-repeat:repeat;}
#News {background-image:url("https://previews.123rf.com/images/inides/inides1603/inides160300090/54454113-%EC%95%84%EA%B8%B0-%EB%B6%80%EC%A1%B1%EC%9D%98-%ED%99%94%EC%82%B4%ED%91%9C-%ED%8C%A8%ED%84%B4-%EC%9B%90%ED%99%9C%ED%95%9C-%ED%8C%8C%EC%8A%A4%ED%85%94-%EC%83%89%EC%83%81-%EB%94%94%EC%9E%90%EC%9D%B8-%EC%B9%A8%EB%8C%80-%EC%8B%9C%ED%8A%B8-%EB%B0%8F-%EC%9D%98%EB%A5%98-%EB%B3%B4%EC%9C%A1-%EC%95%84%EC%9D%B4-%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%9E%AC%EB%AF%B8-%EB%B0%B0%EA%B2%BD-.jpg");
		background-repeat:repeat;}
#Contact {background-image:url("https://previews.123rf.com/images/inides/inides1603/inides160300090/54454113-%EC%95%84%EA%B8%B0-%EB%B6%80%EC%A1%B1%EC%9D%98-%ED%99%94%EC%82%B4%ED%91%9C-%ED%8C%A8%ED%84%B4-%EC%9B%90%ED%99%9C%ED%95%9C-%ED%8C%8C%EC%8A%A4%ED%85%94-%EC%83%89%EC%83%81-%EB%94%94%EC%9E%90%EC%9D%B8-%EC%B9%A8%EB%8C%80-%EC%8B%9C%ED%8A%B8-%EB%B0%8F-%EC%9D%98%EB%A5%98-%EB%B3%B4%EC%9C%A1-%EC%95%84%EC%9D%B4-%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%9E%AC%EB%AF%B8-%EB%B0%B0%EA%B2%BD-.jpg");
		background-repeat:repeat;}
#About {background-image:url("https://previews.123rf.com/images/inides/inides1603/inides160300090/54454113-%EC%95%84%EA%B8%B0-%EB%B6%80%EC%A1%B1%EC%9D%98-%ED%99%94%EC%82%B4%ED%91%9C-%ED%8C%A8%ED%84%B4-%EC%9B%90%ED%99%9C%ED%95%9C-%ED%8C%8C%EC%8A%A4%ED%85%94-%EC%83%89%EC%83%81-%EB%94%94%EC%9E%90%EC%9D%B8-%EC%B9%A8%EB%8C%80-%EC%8B%9C%ED%8A%B8-%EB%B0%8F-%EC%9D%98%EB%A5%98-%EB%B3%B4%EC%9C%A1-%EC%95%84%EC%9D%B4-%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%9E%AC%EB%AF%B8-%EB%B0%B0%EA%B2%BD-.jpg");
		background-repeat:repeat;}


@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);
.item {
 	border-style:inset;
  	width:900px;
  	height:230px;
  	margin: auto;
  	font-family: arial;
  	padding:1px;
}
.item_image{
	width:310px;
	display: inline-block;
	float:left;
	padding:10px;
}

.item_image img{
	max-width:100%; 
  	max-height:100%;
  	margin:auto;
  	display:block;
}
.item_text1{
	width:540px;
	height:50px;
	display: inline-block;
	background-color:#F2F2F2;
	font-size:large;
	display:table-cell;
	vertical-align:middle;
	float:left;
	margin-top:10px; 
 	margin-left:10px; 
 	padding-top:20px;
 	font-family: 'Jeju Hallasan', serif;
 	font-color:black;
}
.item_text2{
	width:540px;
	height:150px;
	display: inline-block;
	margin-left:10px;
	font-size:medium;
	font-family: 'Jeju Hallasan', serif;
}

.DN1_button {
  background-color: #ddd;
  border: none;
  color: black;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
  width:150px;
}

.DN3_column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .DN3_column {
    width: 100%;
    display: block;
  }
}

.DN3_card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.DN3_container {
  padding: 0 16px;
}

.DN3_container::after, .DN3_row::after {
  content: "";
  clear: both;
  display: table;
}

.DN3_title {
  color: grey;
}

.DN3_button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.DN3_button:hover {
  background-color: #555;
}

.DN3_column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .DN3_column {
    width: 100%;
    display: block;
  }
}

.DN3_card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.DN3_container {
  padding: 0 16px;
}

.DN3_container::after, .DN3_row::after {
  content: "";
  clear: both;
  display: table;
}

.DN3_title {
  color: grey;
}

.DN3_button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.DN3_button:hover {
  background-color: #555;
}

.row_10{
	background-image:url("https://previews.123rf.com/images/inides/inides1603/inides160300090/54454113-%EC%95%84%EA%B8%B0-%EB%B6%80%EC%A1%B1%EC%9D%98-%ED%99%94%EC%82%B4%ED%91%9C-%ED%8C%A8%ED%84%B4-%EC%9B%90%ED%99%9C%ED%95%9C-%ED%8C%8C%EC%8A%A4%ED%85%94-%EC%83%89%EC%83%81-%EB%94%94%EC%9E%90%EC%9D%B8-%EC%B9%A8%EB%8C%80-%EC%8B%9C%ED%8A%B8-%EB%B0%8F-%EC%9D%98%EB%A5%98-%EB%B3%B4%EC%9C%A1-%EC%95%84%EC%9D%B4-%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%9E%AC%EB%AF%B8-%EB%B0%B0%EA%B2%BD-.jpg");
	background-repeat:repeat;
}

.column_10 {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column_10 {
    width: 100%;
    display: block;
  }
}

.card_10 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container_10 {
  padding: 0 16px;
}


.container_10::after, .row_10::after {
  content: "";
  clear: both;
  display: table;
}

.title_10 {
  color: grey;
}

.button_10 {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button_10:hover {
  background-color: #555;
}

</style>

</head>
<body>
<jsp:include page = "header.jsp"></jsp:include>

<div class="main_image">
	<br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br>
	<center>
	<div class=image_text>다낭에 대한 이야기</div>
	</center>
</div><br><br>


<button class="tablink" onclick="openPage('Home', this, '#FFBF00')">관광<br>Things to see</button>
<button class="tablink" onclick="openPage('News', this, '#FFBF00')" id="defaultOpen">먹거리<br>Things to eat</button>
<button class="tablink" onclick="openPage('Contact', this, '#FFBF00')">호텔<br>Places to sleep</button>
<button class="tablink" onclick="openPage('About', this, '#FFBF00')">즐길거리<br>Things to do</button>


<div id="Home" class="tabcontent">
	<br><br>
  <div class="item">
	<div class="item_image">
		<img src="http://cfile233.uf.daum.net/image/151A39574DF557333261D8">	
	</div>
	<div class="item_text1"><center><b><font color=black>미선 유적</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>둘레43km의 대표적인 칼데라 호수로 주변에는 유수산, 소화신산등 호수 내에 크고 작은 섬들이 있다.
  		사이로전망대에 오르면 도야호수의 절경을 한눈에 볼 수 있으니 놓치지 말 것</font><br>
  		<a href="https://blog.naver.com/phe0818/221406719861"><button class="DN1_button">호이안야시장</button></a>
  		<a href="http://www.lovely-days.co.kr/2497"><button class="DN1_button">참파사원</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="data:image/jpeg;base64,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">	
	</div>
	<div class="item_text1"><center><b><font color=black>응우한선</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>여름에는 형형색색의 꽃과 보랏빛의 라벤더, 겨울에는 온통 하얗게 변하는 설원으로 마치 동화 속 세상에 온 듯한
		착각이 들 정도, 대자연의 매력을 느끼고 싶다면 후라노&비에이는 사계절 필수 코스이다.</font><br>
		<a href="https://blog.naver.com/bms01234?Redirect=Log&logNo=221225564556"><button class="DN1_button">오행산</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="https://vietnamguide.co.kr/wp-content/uploads/2018/10/danang-baotang2.jpg">	
	</div>
	<div class="item_text1"><center><b><font color=black>참 조각 박물관</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>여름에는 형형색색의 꽃과 보랏빛의 라벤더, 겨울에는 온통 하얗게 변하는 설원으로 마치 동화 속 세상에 온 듯한
		착각이 들 정도, 대자연의 매력을 느끼고 싶다면 후라노&비에이는 사계절 필수 코스이다.</font><br>
		<a href="http://humanphoto.kr/221288439923"><button class="DN1_button">박물관후기</button></a>
  		<a href="http://lovely-flowercake.com/220973106000"><button class="DN1_button">박문관조각전시</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="data:image/jpeg;base64,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">	
	</div>
	<div class="item_text1"><center><b><font color=black>송한 교</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>일본 에도시대의 모습을 재현한 테마파크로 서민 마을과 무사 저택, 당시의 생활상을 알 수 있는 마네킹 모형, 
		연극공연 등 흥미로운 체험이 가득한 곳이다. 공연은 일본어를 몰라도 재밌게 관람할 수 있으니 꼭 챙겨보자.</font><br>
	</div>
</div>
</div>

<div id="News" class="tabcontent">

  <div class="row_10">
  <div class="column_10">
    <div class="card_10">
      <img src="http://danangkorea.com/wp-content/uploads/2017/06/%EB%B0%98-%EC%A7%B1-%EA%BE%B8%EC%98%A8-%ED%8B%B7-%ED%95%B4%EC%98%A4-Banh-Trang-Cuon-thit-Heo-%EB%8B%A4%EB%82%AD%ED%8A%B9%EC%82%B0%EC%95%88%EB%8D%B0-1.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>반 짱 꾸온</font></h3>
        <p><br>얇은 고기 쌈</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="http://danangkorea.com/wp-content/uploads/2017/06/%EB%AF%B8%EA%BD%9D-My-Quang-%EB%8B%A4%EB%82%AD%ED%8A%B9%EC%82%B0%EC%95%88%EB%8D%B0.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>미 꽝 Mi Quang</font></h3>
        <p><br>양념장으로 비벼먹는 쌀국수</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="https://d90ksfcfe67yc.cloudfront.net/pictures/large/282ed62f-e48b-4387-b6a3-5eeeca17c124.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>분짜까 Bun Cha Ca</font></h3>
        <p><br>생선 어묵 튀김 얹은 쌀국수</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="http://danangkorea.com/wp-content/uploads/2017/06/%EB%B0%98-%EC%8C%94%EC%98%A4-Banh-Xeo-%EB%8B%A4%EB%82%AD%EC%9D%98-%EB%A7%9B%EB%82%9C-%EC%9D%8C%EC%8B%9D.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>반쎄오 Ban Xeo</font></h3>
        <p><br>취향대로 고르는 빈대떡</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="https://d90ksfcfe67yc.cloudfront.net/pictures/large/c63f98f4-b0d8-4961-bca6-e2e4ef0303c2.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>껌 가 Com Ga</font></h3>
        <p><br>담백한 닭고기 덮밥</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="https://d90ksfcfe67yc.cloudfront.net/pictures/large/61ca1a76-4601-4996-8496-bbac4b9fd3a0.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>반 미 Banh Mi</font></h3>
        <p><br>베트남식 바게트 샌드위치</p> <br>       
      </div>
    </div>
  </div>

  
  <div class="column_10">
    <div class="card_10">
      <img src="https://d90ksfcfe67yc.cloudfront.net/pictures/large/c7e8d8e6-5abe-495c-b1d8-f61e620abf1c.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>넴느엉 Nem Nuong</font></h3>
        <p><br>라이스페이퍼에 싸먹는 고기완자</p> <br>       
      </div>
    </div>
  </div>
  </div>
 
</div>

<div id="Contact" class="tabcontent">
	<br><br>
  <div class="DN3_row">
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh3.googleusercontent.com/proxy/XXpAqz00iEx0lt6KDpuZey2xnNt6DdYolDXjczMgG5T78m3uK1OaU7rKTVZ1GBNBsJn-lcBVT7zIjlCv9UIkrl9N-dkWp8Fyz4ZLhCZukVUGzAsJbrcKf4KbYaxBqpNmCywbk_EFi9rYNSwNWGT5jBhkavpbgQ=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>원 오페라 다낭 호텔</font></h3><br>
        <a class="DN3_title">5성급 호텔</a><br>
        <font color=black><br>수영장-실내, 피트니스 센터, 음식점, 아이들을 위한 공간<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh6.googleusercontent.com/proxy/2oJ_4gkqDlyAzNuUStmv5XaZLCElEMt0IHGWV2j0zmFbNUdReezG17KO_RK88EBdowsuQcf64ZV_oNoCaBZOd_GLzIcu2GUfwr33Rve6PJ0eNJ59IqwtN2iePshGsss6WcpGn3XiCM7foGKq3oFlPpEwpkB8Tg=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>뉴 오리엔트 호텔</font></h3><br>
        <a class="DN3_title">4성급 호텔</a><br>
        <font color=black><br>수영장-실외, 피트니스 센터, 룸 서비스, 아이들을 위한 공간<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh5.googleusercontent.com/p/AF1QipOo7J7GK4Y9RScQbt-6IyRZ6NxTytCzcR0ZbiPs=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>그랜드 머큐어 다낭</font></h3><br>
        <a class="DN3_title">5성급 호텔</a><br>
        <font color=black><br>무료-wifi, 피트니스 센터, 음식점, 에어컨<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh5.googleusercontent.com/proxy/u9y87V1r0G4BjKLItEjg9B_wv6EbuSJJQB0fc7-wA7zUv1UtqsAjkiWKGwAJEr0-atqq2StJcUw0SvaEMIfszuH2an7j1YtlShOvXj-lEEyTkbC8c8SgoouTciPKSBMUiO_hwzG1P9sCgkqCn9A4pNI_vXDdRQ=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>하노이 호텔</font></h3><br>
        <a class="DN3_title">2성급 호텔</a><br>
        <font color=black><br>수영장-실내, 피트니스 센터, 아이들을 위한 공간<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh5.googleusercontent.com/p/AF1QipN--WnJNo4nA3z84LU7qqoWNDWEjY5Tn5IJ0w2g=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>해피데이 호텔</font></h3><br>
        <a class="DN3_title">2성급 호텔</a><br>
        <font color=black><br>수영장-실내, 세탁서비스, 아이들을 위한 공간<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>  
  </div>
</div>
</div>

<div id="About" class="tabcontent">
 <div class="row_10">
  <div class="column_10">
    <div class="card_10">
      <img src="https://mblogthumb-phinf.pstatic.net/MjAxNjEwMzBfOTEg/MDAxNDc3ODM4MjIxNjg0.IooVwF11UNkMdDQ02zEtnz6pNTaxdHJw2PjUTC7UO9Ig.dmv6prqLUiLr3LgI3m3TE-HMRdxSbSxHuC2uo8aTiz8g.JPEG.hello_toro/image_2399073141477723254170.jpg?type=w800" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>호이안 야시장과 등불</font></h3><br>
        <p class="title_10">야시장 먹거리 및 선물 구매</p>
        <p><br>가볍게 선물을 사기도 좋고 근처에 구경할 곳도 많아 밤낮으로 매력적인 곳</p> <br>       
        <p><button class="button_10">후기보러가기</button></p>
      </div>
    </div>
  </div>
  <div class="column_10">
    <div class="card_10">
      <img src="https://mblogthumb-phinf.pstatic.net/MjAxNjEwMzBfOTAg/MDAxNDc3ODM4MjM3NjYy.USAoahKlI14Sdu0hAq1Kl4LeOXfsa1nnp_-sLC50oD8g.k8Os1Oev1UaEEoqB0LBvb-2nRXrs8OPCV_NWT15bCQYg.JPEG.hello_toro/image_8833190131477830578966.jpg?type=w800" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>다낭 대성당</font></h3><br>
        <p class="title_10">대성당에서의 미사</p>
        <p><br>넓고 조용한 성당에서 미사를 드릴 수 있는 대성당</p> <br>       
        <p><button class="button_10">후기보러가기</button></p>
      </div>
    </div>
  </div>
  <div class="column_10">
    <div class="card_10">
      <img src="https://mblogthumb-phinf.pstatic.net/MjAxNjEwMzBfMTMz/MDAxNDc3ODM4MjQ2NDMy.EYKxMs2y-OoSQPDW4Lb2y_fexMR5LC_-E-IvPeNS0MQg.kAybIiFJko0rlnZfdZxtzTUu9DdJh3Rc-wV-e_wH8bEg.JPEG.hello_toro/image_1158391241477723254003.jpg?type=w800" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>한시장(아오자이)</font></h3><br>
        <p class="title_10">시장에서 마음껏 구매하기</p>
        <p><br>전통옷과 음식 등 뭐든지 원하는 것을 살 수 있는 곳으로 매력적인 곳</p> <br>       
        <p><button class="button_10">후기보러가기</button></p>
      </div>
    </div>
  </div>
  <div class="column_10">
    <div class="card_10">
      <img src="https://mblogthumb-phinf.pstatic.net/MjAxNjEwMzBfMjg4/MDAxNDc3ODM1MzM3NDUx.Ql7xNuLPByIGtKNHzaRq4VC4SNd5yIu3AnOe7uuub38g.eBKX2CffKFbmewkSDsdpX2V8HaNT5WGI68c4-7qqIHwg.JPEG.hello_toro/image_5374039731477831378823.jpg?type=w800" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>미케비치</font></h3><br>
        <p class="title_10">비치에서의 태닝</p>
        <p><br>파도가 높아 수영하기는 힘들지만 자유롭게 태닝을 즐길 수 있는 곳</p> <br>       
        <p><button class="button_10">후기보러가기</button></p>
      </div>
    </div>
  </div>
  <div class="column_10">
    <div class="card_10">
      <img src="https://mblogthumb-phinf.pstatic.net/MjAxNjEwMzBfMjQ2/MDAxNDc3ODM4NDQ1MTQy.EyxsnEGhu7aIJIj7aUU_sP8kFMijT_GGufWsUG6_41kg.fXBQiGPI3JoymouSibhHrKUV88zHEzWVqBgZPH2Wx50g.JPEG.hello_toro/image_1844308781477831819677.jpg?type=w800" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>Azit 마사지</font></h3><br>
        <p class="title_10">마사지 무한 즐기기</p>
        <p><br>한국보다 훨씬 저렴한 가격으로 마사지를 받을 수 있는 곳</p> <br>       
        <p><button class="button_10">후기보러가기</button></p>
      </div>
    </div>
  </div>
</div>
</div>

<script>
function openPage(pageName, elmnt, color) {
  // Hide all elements with class="tabcontent" by default */
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Remove the background color of all tablinks/buttons
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }

  // Show the specific tab content
  document.getElementById(pageName).style.display = "block";

  // Add the specific color to the button used to open the tab content
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

<jsp:include page = "footer.jsp"></jsp:include>

</body>
</html>