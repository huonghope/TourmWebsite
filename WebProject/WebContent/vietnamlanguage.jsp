<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@page import="wepapps.mvc.MODEL.Product"%>
<%@page import="wepapps.mvc.DAO.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="wepapps.mvc.DAO.CategoryDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="bootstrap.min.css" rel="stylesheet">
	<link href ="css/style.css" rel = "stylesheet" type = "text/css" media = "all"/>
     <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<script src = "js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</head>
<body>

<style>
* {
	box-sizing: border-box
}

body {
	font-family: "Lato", sans-serif;
}

/* Style the tab */
.language_tab {
	float: left;
	border-right: 1px ;
	background-color: #f1f1f1;
	width: 20%;
	height: 100%;
	position : relative;
}

/* Style the buttons inside the tab */
.language_tab button {
	display: block;
	background-color: inherit;
	color: black;
	padding: 22px 16px;
	width: 100%;
	border: none;
	outline: none;
	text-align: left;
	cursor: pointer;
	transition: 0.3s;
	font-size: 17px;
}

/* Change background color of buttons on hover */
.language_tab button:hover {
	background-color: #ddd;
}

/* Create an active/current "tab button" class */
.language_tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.language_tabcontent {
	float: left;
	padding: 0px 12px;
	border: 1px solid #ccc;
	width: 80%;
	height: 100%;
	border : none;
	position: relative;
	z-index: 3;
}

.shell {
	padding: 0px 0px;
	position: relative;
	border : 2px solid #ccc;
	height : 700px;
	position : relative;
	z-index: 1;
	background-image:url("https://previews.123rf.com/images/inides/inides1603/inides160300090/54454113-%EC%95%84%EA%B8%B0-%EB%B6%80%EC%A1%B1%EC%9D%98-%ED%99%94%EC%82%B4%ED%91%9C-%ED%8C%A8%ED%84%B4-%EC%9B%90%ED%99%9C%ED%95%9C-%ED%8C%8C%EC%8A%A4%ED%85%94-%EC%83%89%EC%83%81-%EB%94%94%EC%9E%90%EC%9D%B8-%EC%B9%A8%EB%8C%80-%EC%8B%9C%ED%8A%B8-%EB%B0%8F-%EC%9D%98%EB%A5%98-%EB%B3%B4%EC%9C%A1-%EC%95%84%EC%9D%B4-%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%9E%AC%EB%AF%B8-%EB%B0%B0%EA%B2%BD-.jpg");
	background-repeat:repeat;
}
</style>
	<% 
 			String category_id = "";
 			String coutryName = "";
 			if(request.getParameter("category_id") != null)
 			{ 
 				category_id = request.getParameter("category_id");
 				switch(category_id)
 				{
 				case "1":
 					coutryName = "japan";
 					break;
 				case "2":
 					coutryName = "vietnam";
 					break;
 				default:
 					coutryName = "korea";
 					break;
 				}
  			} 
 			String imgUrl = coutryName + ".jpg";
 			String language = coutryName + "language.jpg";
 			String hotel = coutryName + "hotel.jpg";
 			String key = coutryName + "key.jpg";
	%>
	<jsp:include page = "header.jsp"></jsp:include>
	<script>
		$(document).ready(function (){
			$(".city").mouseenter(function (){
				$("#exchange-image").attr('src','images/<%=imgUrl%>'); 
			});
			$(".language").mouseenter(function (){
				$("#exchange-image").attr('src','images/<%=language%>'); 
			});
			$(".hotel").mouseenter(function (){
				$("#exchange-image").attr('src','images/<%=hotel%>'); 
			});				
			$(".key").mouseenter(function (){
				$("#exchange-image").attr('src','images/<%=key%>'); 
			});
			$(".city,.language,.hotel,.key").mouseleave(function (){
				$("#exchange-image").attr('src','images/<%=imgUrl%>'); 
			});
		});
	</script>
	<div class = "japan-banner-languege">
		<div class = "japan-banner-top-img" style = "height:650px;">
			<center>
			<div class = "image-top">
				<img src = "images/<%=imgUrl%>" id = "exchange-image"> 
			</div>
			<div class="navbar">
				<a class="city" href= "coutries.jsp?category_id=<%=category_id%>">도시</a> 
				<%
					String url = coutryName+"language.jsp?category_id="+category_id;
				%>
				<a class="language" href=""<%=url%>"">언어 및 팁</a> 
				<a class="hotel" href="#">호텔</a> 
				<a class="tip" href="#">기념품</a>
			</div>
			</center>
		</div>
	
	<div class="shell">
		<div class="language_tab">
			<button class="language_tablinks" onclick="openCity(event, '1')"
				id="defaultOpen">간단인사말</button>
			<button class="language_tablinks" onclick="openCity(event, '2')">길물어보기</button>
			<button class="language_tablinks" onclick="openCity(event, '3')">식당에서</button>
			<button class="language_tablinks" onclick="openCity(event, '4')">공항에서</button>
			<button class="language_tablinks" onclick="openCity(event, '5')">호텔에서</button>
			<button class="language_tablinks" onclick="openCity(event, '6')">☆팁/주의
				사항☆</button>
			<button class="language_tablinks" onclick="openCity(event, '7')">★여행
				필수 어플★</button>
		</div>

		<div>
			<div id="1" class="language_tabcontent">
				<h3>간단한 인삿말</h3>

				<br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/lP57Fq7Wy5w" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br>

				<p>
					<mark> 안녕하세요 - 씬짜오<br>
					감사합니다 - 깜언<br>
					미안합니다 - 씬 로이<br>
					천만에요 - 컴 꼬 찌<br>
					저는 한국사람입니다 - <br>
					또이 라 응어이 한꾸억<br>
					</mark>
				</p>
			</div>

			<div id="2" class="language_tabcontent">
				<h3>길 물어보기</h3>

				<br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/UKv_o5YEfCc" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br>

				<p>
					<mark> 길을 잃었어요 - 또이 비 락 드엉<br>
					택시 - 딱씨<br>
					오토바이택시 - 쎄옴<br>
					... 어디예요? - ... 어 더우<br>
					식당 - 냐항<br>
					화장실 - 냐베씽<br>
					호텔 - 캭 산<br>
					</mark>

				</p>
			</div>

			<div id="3" class="language_tabcontent">
				<h3>주문하기</h3>

				<br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/TK6_DibiMOA" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br>

				<p>
					<mark> 메뉴판 좀 보여주세요 -초 또이 셈 특^던<br>
					고수를 빼주세요 -콩 쪼 저우 텀<br>
					쌀국수 - 퍼<br>
					소고기 쌀국수 - 퍼 보<br>
					닭 쌀국수 - 퍼 가<br>
					고기 완자 쌀국수 -분짜(하노이 대표음식)<br>
					채소 - 저우<br>
					젓가락 - 드아<br>
					숟가락 - 티아<br>
					휴지 - 지어이 로아이<br>
					그릇 - 밧<br>
					접시 - 디아<br>
					물 - 느 억<br>
					생수 - 느억 수오이<br>
					맛있어요 - 젓 응은<br>
					</mark>

				</p>
			</div>
			<div id="4" class="language_tabcontent">
				<h3>공항에서</h3>

				<br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/g0Z31cDiaqs" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br>

				<p>
					<mark> 이 서류 작성법을 가르쳐 주세요-하이 찌 또이 비엗 던 나이<br>
					여권과 신고서를 보여 주세요-람 온 쪼 또이 쌤 호 찌에우 바 떠 카이 바오<br>
					신고할 것은 있습니까?-반 꼬 껀 지 파이 카이 바오 콩?<br>

					단어 chỉ (찌) : 가르쳐주다<br>
					viết (비엗) : 쓰다, 연필<br>
					đơn (던) : 신청서, 서류<br>
					này (나이) : 이<br>
					xem (쌤) : 보다<br>
					hộ chiếu (호 찌에우) : 여권<br>
					khai báo (카이 바오) : 신고하다, 선언하다<br>

					</mark>
				</p>
			</div>
			<div id="5" class="language_tabcontent">
				<h3>호텔 에서</h3>

				<br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/e-03AagN7FU" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br>

				<p>
					<mark> 빈 방이 있습니까? Có phòng không?(꼬 퐁 콩)<br>
					내일 아침 6시에 깨워주십시오. Cho tôi morning call lúc 6 giờ sáng mai(쪼 또이 모닝콜
					룩 사우 져 상 마이)<br>
					체크인 하려고 합니다. Tôi muốn check in(또이 무언 첵인)<br>
					체크아웃 하려고 합니다. Tôi muốn check out(또이 무언 첵아웃)<br>
					</mark>
				</p>
			</div>
		</div>

		<div id="6" class="language_tabcontent">
			<h3>주의 사항</h3>

			<br>
			<iframe width="560" height="315"
				src="https://www.youtube.com/embed/BqyIYTOHUXE" frameborder="0"
				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
			<br>
			<br>
			<p>
				1-
				<mark>입국심사가 매우 까다롭다 .</mark>
				여권은 목숨. 여권분실시, 여권 발급 용도의 인물사진 가방 속 비밀주머니에.<br> 2-
				<mark>공항 앞 가짜 택시를 조심하자.</mark>
				공항에서 내리자마자 사기 택시기사들이 드글드글!.<br> 3-
				<mark>잔돈은 미리 준비하자.</mark>
				잔돈은 거슬러주지 않으니 미리 준비하는것을 추천.<br> 4-
				<mark>영업시간과 휴무일을 체크하자.</mark>
				베트남 관광지들이 대부분 일찍 문을 닫기 때문.<br> 5-
				<mark>무단횡단과 오토바이 조심.</mark>
				베트남은 교통신호가 없기때문에 조심 또 조심. <br> 6-
				<mark>우산을 꼭 챙겨가자.</mark>
				날씨가 오락가락하니 우산은 필수!.<br> 7-
				<mark>시장에서는 부르는 가격의 30%부터!.</mark>
				보통 시장에서 제시를 할때 부르는가격의 30%부터 시작하면 적당하다.<br> 8-
				<mark>마사지숍은 예약으로.</mark>
				예약을 하고 가면 그냥 가는것보다 혜택이 있는곳이 많음.<br>

			</p>
		</div>

				<div id="7" class="language_tabcontent">
				<h3>여행 필수 어플</h3>
				<br><br>
				<h3><xmp>1.베트남 달인			    2.grap				3.Foody			  	   4.파파고</xmp></h3>
				<br>
				<img border=1px width= 250px; height= 350px src="http://mblogthumb2.phinf.naver.net/MjAxNzEwMzFfMTE3/MDAxNTA5NDU0NDEzMjI3.4_v9rdng3GpaZQwW-IbQiCVtP6EYSlTvC53l2qMAZOUg.GrnpmOx6Rx9RGtJctIYR1Bh-9PE3XtSht1QlNV9AA5Ag.JPEG.xrkdgodnjsx/IMG_5148.jpg?type=w800">
				&nbsp;&nbsp;
				<img border=1px width= 250px; height= 350px src="http://mblogthumb4.phinf.naver.net/MjAxODA1MDFfMTI4/MDAxNTI1MTY1OTc0MjI1.kbrIN11UGwXQ3FUTf2iJDpC-CPOf28sW7E404RF9xAwg.sEb5IcpdPIW3MvZgljUJutnWA-79Ff_ZxCzY2DyM9Gkg.PNG.loona0930/image_5278512511525165957504.png?type=w800">
				&nbsp;&nbsp;
				<img border=1px width= 250px; height= 350px src="https://t1.daumcdn.net/cfile/tistory/9936C9335A1B727A24">
				&nbsp;&nbsp;
				<img border=1px width= 250px; height= 350px src="http://img.khan.co.kr/news/2017/07/18/l_2017071801002303900181211.jpg">
				</div>
			</div>
		</div>
		<script>

		function openCity(evt, cityName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("language_tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("language_tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
		}

		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();	
	</script>
	<jsp:include page = "footer.jsp"></jsp:include>
</body>
</html>