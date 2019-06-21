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
  background-image:url('https://travelblog.expedia.co.kr/wp-content/uploads/2016/06/03.jpg');
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
 	
 	font-color:black;
}
.item_text2{
	width:540px;
	height:150px;
	display: inline-block;
	margin-left:10px;
	font-size:medium;
	
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
	<div class=image_text>제주도에 대한 이야기</div>
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
		<img src="https://travelblog.expedia.co.kr/wp-content/uploads/2016/06/39.jpg">	
	</div>
	<div class="item_text1"><center><b><font color=black>섭지코지</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>제주의 동부권을 대표하는 관광명소 중 하나로 우도, 성산일출봉 등
		다른 주요 관광지와도 인접해 있기 때문에 코스로 돌아보기 좋은 곳<br><br></font><br>
  		<button class="DN1_button">동부권여행</button></a>
  		<button class="DN1_button">성산일출봉</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="https://t1.daumcdn.net/cfile/tistory/261E034A566658E513">	
	</div>
	<div class="item_text1"><center><b><font color=black>신천 목장</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>올레3코스에 위치하여, 올레길을 걷다 만날 수 있는 신천목장은
		바나와 맟닿아 있어 바다목장이라고도 불린다. 하절기에는 소를 방목하는데 푸른 바다와 초록 들판이 어우러짐<br></font><br>
		<button class="DN1_button">올레길</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="https://s-i.huffpost.com/gen/4971848/thumbs/o-JEJU-KOREA-SNOW-900.jpg?3">	
	</div>
	<div class="item_text1"><center><b><font color=black>한라산</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>한라산을 오르는 길은 어리목, 영실, 성판악, 돈내코, 어승생악 코스이다.
		이 가운데 정상으로 살 수 있는 길은 두개 뿐이다.<br></font><br>
		<button class="DN1_button">어리목</button></a>
  		<button class="DN1_button">돈내코</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="https://s-i.huffpost.com/gen/4971858/thumbs/o-JE-900.jpg?1">	
	</div>
	<div class="item_text1"><center><b><font color=black>환상숲 곶자왈</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>환상숲은 여느 곶자왈과는 조금 다르다. 다른 곳이 자연 그대로를 보존한다면
		이 곳은 개인의 노력으로 가꾸고 자란 멋진 숲이다. 저지리 출신 숲 보호 운동가인 이형철은 가족과 더불어
		25년동안 숲을 지키고 가꾸었다.</font><br>
	</div>
</div>
</div>

<div id="News" class="tabcontent">

  <div class="row_10">
  <div class="column_10">
    <div class="card_10">
      <img src="http://img1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/liveboard/yap/bc2919e76ba4495585af453697ae29cf.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>전복 돌솥밥</font></h3>
        <p><br>눈물 날 전복 돌솥밥</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="http://img1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/liveboard/yap/f870a09bd9734d958c9dfe63c2d601ee.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>녹차 디저트</font></h3>
        <p><br>오설록의 맛집</p> <br>       
      </div>
    </div>
  </div>
  
   <div class="column_10">
    <div class="card_10">
      <img src="http://img1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/liveboard/yap/5519a9e0d73b4640bb412c4631ffea94.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>요거트 스무디</font></h3>
        <p><br>월정리의 요거트스무디</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="http://img1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/liveboard/yap/538a6301fc73454ab3464f5451b0058c.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>흑돼지</font></h3>
        <p><br>맛있는 흑돼지</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="http://img1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/liveboard/yap/39b1e5cb33d24c3788296f0e6477dc35.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>올레국수</font></h3>
        <p><br>제주의 대표음식</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="http://img1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/liveboard/yap/fc510953fabf4dc38ca20a136e90a91d.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>커피</font></h3>
        <p><br>수많은 카페들</p> <br>       
      </div>
    </div>
  </div>

  
  <div class="column_10">
    <div class="card_10">
      <img src="http://img1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/liveboard/yap/25ca3b078f2f41a9963228d8c68bb246.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>갈치 구이</font></h3>
        <p><br>길다란 갈치</p> <br>       
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
      <img src="https://lh5.googleusercontent.com/p/AF1QipOnuza_tNnnZciNSwOXzjl5hMI_QTr4GPt9FHr0=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>베스트웨스턴 호텔</font></h3><br>
        <a class="DN3_title">4성급 호텔</a><br>
        <font color=black><br>조식포함, 에어컨, 음식점, 아이들을 위한 공간<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh6.googleusercontent.com/proxy/By9kzdA6Mr0k3zY5axOnTEoYPMnqJ62CM9iCIMC9NY-sndUvFrC-Y2-S0osx6JcOpeUJezTqr7hDBlVlwVu8_4CQCB-i-M30nCIL2xyyrvEjBPRi3WTu7QDjidl6vjRRdozsfUAFC_yUO5tPZu72e0eBVWSMWqQ=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>하워드존슨 호텔</font></h3><br>
        <a class="DN3_title">4성급 호텔</a><br>
        <font color=black><br>수영장-실외, 피트니스 센터, 룸 서비스, 아이들을 위한 공간<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh3.googleusercontent.com/proxy/6qI4sIq9gHF7WTZ0IIwCLuEPeP81St2whkorLTvtKEHMAP5UgTjNCQuC8fnztOZmG4Qi-33w0Un4EKrqPu_03kldfvSnl4WqPBoXJglqVZRrWnQe-rIB6MgAYJev98XalWO36s8hgRuDE82EKjJO2DmmJ9cb5A=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>메종 글래드 호텔</font></h3><br>
        <a class="DN3_title">3성급 호텔</a><br>
        <font color=black><br>무료-wifi, 피트니스 센터, 음식점, 에어컨<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh5.googleusercontent.com/p/AF1QipOQUjl9cTiCyjcoA31-e62EwLEXOK8fMVxQoaLC=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>롯데시티호텔</font></h3><br>
        <a class="DN3_title">4성급 호텔</a><br>
        <font color=black><br>수영장-실내, 피트니스 센터, 아이들을 위한 공간<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh6.googleusercontent.com/proxy/70y6vJ4nQ0-t6uFpV75W59v3Wbb6uzmmA0kNzB6tz5a_sHIZM_qVGaaOdMYbn19ffnGEG3zjqyC-C9ZEKbrcpSX5ARuiyfL7KsEEjMh0wX1Dc6z0EUZGpj_TusHgBW1E_0WSUmFOHmMsqDcEgb5hAvJpPjYWaQ=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>jk라마다앙코르</font></h3><br>
        <a class="DN3_title">4성급 호텔</a><br>
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
      <img src="http://cfile204.uf.daum.net/image/1658B73B4F211AF504BD0F" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>카트 레이싱</font></h3><br>
        <p class="title_10">카트경주</p>
        <p><br>스릴만점의 카트레이싱</p> <br>       
        <p><button class="button_10">후기보러가기</button></p>
      </div>
    </div>
  </div>
  <div class="column_10">
    <div class="card_10">
      <img src="https://post-phinf.pstatic.net/MjAxNzEwMzFfMTE1/MDAxNTA5NDE1NzM1NDAw.CuW_t_sURR57n1pvRRku4_58OnoMdVZvut-sgNqeN7wg.481PpHrQtpbxwc1Dj0G7fCP5S-svtMFaGmz_oiRR8Hwg.JPEG/IMG_5132.JPG?type=w1200" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>낙타타기</font></h3><br>
        <p class="title_10">제주 이색체험</p>
        <p><br>어디서나 즐길 수 없는 낙타를 안전하게 탈 수 있다</p> <br>       
        <p><button class="button_10">후기보러가기</button></p>
      </div>
    </div>
  </div>
  <div class="column_10">
    <div class="card_10">
      <img src="http://www.jejudoilbo.com/news/photo/201802/66253_62491_4919.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>신화 테마파크</font></h3><br>
        <p class="title_10">놀이동산</p>
        <p><br>제주도에서 즐기는 새로운 놀이동산, 아이와의 행복한 장소</p> <br>       
        <p><button class="button_10">후기보러가기</button></p>
      </div>
    </div>
  </div>
  <div class="column_10">
    <div class="card_10">
      <img src="https://scontent-atl3-1.cdninstagram.com/vp/a06061ca30dfc1c77c4231e7ef8dbf98/5C59BE04/t51.2885-15/e35/38181366_237216393605408_3769986889289826304_n.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>바나나보트</font></h3><br>
        <p class="title_10">여름의 파라다이스</p>
        <p><br>제주도에서 즐기는 바다바람과 바다물</p> <br>       
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