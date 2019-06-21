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
  background-image:url('http://www.travelnbike.com/news/photo/201701/31146_27758_127.jpg');
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
	<div class=image_text>오사카에 대한 이야기</div>
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
		<img src="https://t1.daumcdn.net/cfile/tistory/99BFEE385B974F2009">	
	</div>
	<div class="item_text1"><center><b><font color=black>킨카쿠지</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>우리나라 사람들에게는 금각사로 더 잘 알려진 킨카쿠지, 금각사 절은 기요미즈데라 절에 이어서 교토에서
		두번쨰로 찾는 사람이 많은 곳이다.<br><br></font><br>
  		<button class="DN1_button">금각사</button></a>
  		<button class="DN1_button">기타오지</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="https://i0.wp.com/osaka-yanen.com/wp-content/uploads/2017/04/pic_1.jpg?resize=640%2C426&ssl=1">	
	</div>
	<div class="item_text1"><center><b><font color=black>구로몬 시장</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>오사카 미나미에 있는 혼마몬을 취급하는 시장인데 구로몬 시장에서는 우마이몬즈쿠시를 맛있게
		먹을 수 있다.<br><br></font><br>
		<button class="DN1_button">혼마몬</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="https://i1.wp.com/osaka-yanen.com/wp-content/uploads/IMG_0752.jpg?resize=1000%2C750&ssl=1">	
	</div>
	<div class="item_text1"><center><b><font color=black>물의 시계</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>세계의 클래식한 시계와는 다르게, 침과 문자판 없이 물이 시작을 알려 줍니다.
		물의 시계는 물로 시각을 나타낼 뿐 아니라 계절마다 변화하는 꽃들과 각 계절의 상징인 풍물시 무늬에는 매화 등이 있다.<br></font><br>
		<button class="DN1_button">풍물시</button></a>
  		<button class="DN1_button">스노우맨</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="https://i2.wp.com/osaka-yanen.com/wp-content/uploads/DSCF3216.jpg?resize=750%2C500&ssl=1">	
	</div>
	<div class="item_text1"><center><b><font color=black>오사카 미노 맥주</font></b></center></div>
	<div class ="item_text2"><br>
		<font color=black>미노맥주를 먹을 수 있는 가게가 늘고 있다. 직영점에 가보는 것을 추천한다.
		갓 뽑아낸 가장 신선한 미노맥주를 마실 수 있는데다 직영점에서만 드실 수 있는 맥주도 있습니다.</font><br>
	</div>
</div>
</div>

<div id="News" class="tabcontent">

  <div class="row_10">
  <div class="column_10">
    <div class="card_10">
      <img src="https://travelblog.expedia.co.kr/wp-content/uploads/2015/07/21.png" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>살롱 드 몽쉘</font></h3>
        <p><br>도지마롤</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="https://travelblog.expedia.co.kr/wp-content/uploads/2015/07/32.png" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>홉슈크림</font></h3>
        <p><br>바삭하고 달콤</p> <br>       
      </div>
    </div>
  </div>
  
   <div class="column_10">
    <div class="card_10">
      <img src="https://travelblog.expedia.co.kr/wp-content/uploads/2015/07/11.png" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>타코야끼</font></h3>
        <p><br>문어를 넣어만든 타코야끼</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="https://travelblog.expedia.co.kr/wp-content/uploads/2015/07/42.png" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>오코노미야끼</font></h3>
        <p><br>밀가루 반죽에 고기 등을 넣음</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="https://travelblog.expedia.co.kr/wp-content/uploads/2015/07/52.png" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>기무카츠</font></h3>
        <p><br>등육등심 돈카츠</p> <br>       
      </div>
    </div>
  </div>
  
  <div class="column_10">
    <div class="card_10">
      <img src="https://travelblog.expedia.co.kr/wp-content/uploads/2015/07/61.png" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>파블로</font></h3>
        <p><br>오사카 디저트</p> <br>       
      </div>
    </div>
  </div>

  
  <div class="column_10">
    <div class="card_10">
      <img src="https://travelblog.expedia.co.kr/wp-content/uploads/2015/07/71.png" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>하루코마 스시</font></h3>
        <p><br>일본의 훌륭한 스시</p> <br>       
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
      <img src="https://lh6.googleusercontent.com/proxy/YefeaY5Uh95t-rMfvlRLGXijuEplVDSYcT4i9wGgKOtNQ5Rvzigwls8DyYJMDblxgK_lfmdxYJYHAzwDddUo7AUwkJrbzJbFHo_rPFwW4kR6I2h-GdSBjjF340gVWZ5Dth0QOenWM48P3JjkmlxNPJQiZeSO_g=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>뉴 오사카 호텔</font></h3><br>
        <a class="DN3_title">3성급 호텔</a><br>
        <font color=black><br>조식포함, 에어컨, 음식점, 아이들을 위한 공간<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh5.googleusercontent.com/p/AF1QipOGIv513bUvvdi2eyFwmttZRS5XfUpfNRH84Lzn=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>리가로열호텔</font></h3><br>
        <a class="DN3_title">4성급 호텔</a><br>
        <font color=black><br>수영장-실외, 피트니스 센터, 룸 서비스, 아이들을 위한 공간<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh5.googleusercontent.com/p/AF1QipNwwxiC67U1DIDdO1IgJE-Y453jEp0kf3ypbp5D=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>미츠이 가든 호텔</font></h3><br>
        <a class="DN3_title">3성급 호텔</a><br>
        <font color=black><br>무료-wifi, 피트니스 센터, 음식점, 에어컨<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh5.googleusercontent.com/p/AF1QipNYo7Ox_Xhl0-XsSz2VVMx5dALI1MDJNj9BbwrF=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>오사카 신한큐 호텔</font></h3><br>
        <a class="DN3_title">4성급 호텔</a><br>
        <font color=black><br>수영장-실내, 피트니스 센터, 아이들을 위한 공간<br></font>       
        <button class="DN3_button">사이트 이동</button><br>
      </div>
    </div>
  </div>
  <div class="DN3_column">
    <div class="DN3_card">
      <img src="https://lh5.googleusercontent.com/p/AF1QipNEIcUNjBKY0oOWIvtyZzsjzQfpJo_1MsD6ZAzm=w592-h404-n-k-no-v1" alt="Jane" style="width:100%">
      <div class="DN3_container"><br>
        <h3><font color=black>다이와 로이넷</font></h3><br>
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
      <img src="http://news20.busan.com/content/image/2016/08/24/20160824000265_0.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>도톤 보리</font></h3><br>
        <p class="title_10">거리 구경 및 쇼핑</p>
        <p><br>다양한 맛집과 기념품 숍이 있어 눈과 귀가 즐거운 곳</p> <br>       
        <p><button class="button_10">후기보러가기</button></p>
      </div>
    </div>
  </div>
  <div class="column_10">
    <div class="card_10">
      <img src="http://news20.busan.com/content/image/2016/08/24/20160824000266_0.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>유니버설 스튜디오</font></h3><br>
        <p class="title_10">태마파크 가족여행</p>
        <p><br>놀이기구를 탈 수 있는 매력적인 가족 여행 공간</p> <br>       
        <p><button class="button_10">후기보러가기</button></p>
      </div>
    </div>
  </div>
  <div class="column_10">
    <div class="card_10">
      <img src="http://news20.busan.com/content/image/2016/08/24/20160824000267_0.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>타코야키 가게</font></h3><br>
        <p class="title_10">명물 타코야키</p>
        <p><br>녹차로 유명한 오사카에서 먹는 녹차 타코야키</p> <br>       
        <p><button class="button_10">후기보러가기</button></p>
      </div>
    </div>
  </div>
  <div class="column_10">
    <div class="card_10">
      <img src="http://news20.busan.com/content/image/2016/08/24/20160824000268_0.jpg" alt="Jane" style="width:100%">
      <div class="container_10"><br>
        <h3><font color=black>도톤보리 강</font></h3><br>
        <p class="title_10">여유로운 강가</p>
        <p><br>여유롭게 거닐며 강의 경치를 즐길 수 있는 매력적인 공간</p> <br>       
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