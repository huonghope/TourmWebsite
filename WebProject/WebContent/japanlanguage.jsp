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
				<a class="language" href="<%=url%>">언어 및 팁</a>  
				<a class="hotel" href="#">호텔</a> 
				<a class="tip" href="#">기념품</a>
			</div>
			</center>
		</div>
	
		<div class="shell">
		<div class="language_tab">
			<button class="language_tablinks" onclick="openCity(event, '1')"
				id="defaultOpen">간단인사말</button>
			<button class="language_tablinks" onclick="openCity(event, '2')">길 물어보기</button>
			<button class="language_tablinks" onclick="openCity(event, '3')">식당 에서</button>
			<button class="language_tablinks" onclick="openCity(event, '4')">공항 에서</button>
			<button class="language_tablinks" onclick="openCity(event, '5')">호텔 에서</button>
			<button class="language_tablinks" onclick="openCity(event, '6')">☆팁/주의 사항☆</button>
			<button class="language_tablinks" onclick="openCity(event, '7')">★여행 필수 어플★</button>
		</div>

		<div>
			<div id="1" class="language_tabcontent">
				<h3>간단한 인삿말</h3>

				<br>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/xQ80JLbtNV8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				<br>

				<p>
					<mark> 아침 인사:おはようございます。 [오하요고자이마스]<br>
					점심 인사:こんにちは。 [곤니치와]<br>
					저녁 인사: こんばんは。[곤방와]<br>
					안녕히 가세요: さようなら[사요나라]<br>
					감사 인사 : ありがとうございます[아리가토 고자이마스]<br>
					천만해요 : どういたしまして[도우이타시마시테]<br>
					죄송합니다 : すいません,ゴメンナサイ[스미마셍,고멘나사이]<br>
					괜찮습니다 : だいじょうぶです[다이죠브데스]<br>

					</mark>
				</p>
			</div>

			<div id="2" class="language_tabcontent">
				<h3>길 물어보기</h3>

				<br>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/ljyZsT-RiyY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				<br>

				<p>
					<mark> 아침 : おはようございます。 [오하요고자이마스]<br>
					~은/는 어디입니까? : ~はどこですか？[-와 도코데스까?]<br>
					~은/는 어디에 있습니까? : ~はどこにありますか？ [~와 도코니 아리마스까?]<br>
					역은 어떻게 가면 좋을까요? : 駅の どう 行ったら よいでしょうか？ [에끼노 도-잇타라 요이데이쇼-까?]<br>

					</mark>

				</p>
			</div>

			<div id="3" class="language_tabcontent">
				<h3>주문하기</h3>

				<br>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/TiOSPE8Sp8k" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>				<br>

				<p>
					<mark> 1명입니다. : 一人です [히토리데스]<br>
					메뉴판 좀 주세요. :メニュ―くだたい。 [메뉴-쿠다사이]<br>
					정해지면 부를게요 : 決まったら、呼びます。 [키맛타라, 요비마스]<br>
					주문 좀 할게요~ : 注文お願いします。[츄-몬오네가이시마스]<br>
					조금 이따가 주문할게요. : 少ししてから注文します[스코시 시테카라 츄-몬시마스]<br>
					이거 주세요 : これください。[코레쿠다사이]<br>
					얼마나 기다려야 하나요? : どれくらい待たないといけませんか。[도레쿠라이 마타나이토 이케마센카]<br>
					물좀주세요. : お水ください。[오미즈쿠다사이]<br>
					찬물 / 따뜻한물 : お冷や / お湯[오히야 / 오유]<br>
					이거 리필해주세요. : これ、おかわりお願いします。[코레, 오카와리오네가이시마스.]<br>
					계산해주세요. : お勘定をお願いします。[오칸죠오 오네가이시마스.]<br>
					영수증 주세요. : レシートください。[레시-토쿠다사이]<br>
					잘 먹었습니다. ( 안녕히계세요~ 의미 ) : ごちそうさまでした[고치소우사마데시타] </mark>

				</p>
			</div>

			<div id="4" class="language_tabcontent">
				<h3>공항 에서</h3>

				<br>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/SBF5VJHTa14" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>				<br>

				<p>
					<mark> 아침 인사:おはようございます。 [오하요고자이마스]<br>
					점심 인사:こんにちは。 [곤니치와]<br>
					저녁 인사: こんばんは。[곤방와]<br>
					안녕히 가세요: さようなら[사요나라]<br>
					감사 인사 : ありがとうございます[아리가토 고자이마스]<br>
					천만해요 : どういたしまして[도우이타시마시테]<br>
					죄송합니다 : すいません,ゴメンナサイ[스미마셍,고멘나사이]<br>
					괜찮습니다 : だいじょうぶです[다이죠브데스]<br>

					</mark>
				</p>
			</div>
			
			<div id="5" class="language_tabcontent">
				<h3>호텔 에서</h3>

				<br>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/qIOG4XuZrK4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>				<br>

				<p>
					<mark> 
					체크인 해주세요:おはようございます。 [체크인 오네가이시마스]<br>
					성함을 여쭤봐도 될까요:こんにちは。 [오나마에오 우카갓떼모 요로시데스까]<br>
					김으로 예약했습니다.: こんばんは。[키무데 요야꾸 시마시따]<br>
					체크아웃 하겠습니다. : ありがとうございます[체크아우토시마스]<br>
					금연실로부탁드립니다. : どういたしまして[킨엔시츠데 오네가이 시마스]<br>
					짐좀 맡겨도 괜찮을까요 : すいません ゴメンナサイ[니모츠오 아즈케떼모 이이데스까]<br>
					택시를 불러주세요 : だいじょうぶです[탁시오 욘데 구다사이]<br>

					</mark>
				</p>
			</div>
			
			<div id="6" class="language_tabcontent">
				<h3>주의 사항</h3>

				<br>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/UZyS-mgZeS4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				<p>

				1- <mark>여권분실시 귀국불가능.</mark> 여권은 목숨. 여권분실시, 여권 발급 용도의 인물사진 가방 속 비밀주머니에.<br>
				2- <mark>일본은 110v.</mark> 한국에서 돼지코라는 이름의 전원 변환기를 구매해서 출국.<br>
				3- <mark>일본의 약 값이 10 배 정도 고가.</mark> 한국에서 비상약을 구매.<br>
				4- <mark>일본에서 카페나 공공시설의 전기에 핸드폰을 충천하는 것은 위법.</mark> '전기도둑' 으로 칭한다.<br>
				5- <mark>일본은 교통비가 한국보다 고가.</mark> 가급적 걸어다닌다. '택시'는 매우 고가. 한국과 다르다. <br>
				6- <mark>일본은 정수기를 사용하지 않는다.</mark> 식수는 '수도물'이다. 식당도 동일. 마트에서 생수구매를 추천.<br>
				7- <mark>일본은 카드를 사용하지 않는 가게가 다수.</mark> 현금이 대부분. 카드는 '면세점'등에서 이용가능. VISA 마크 확인.<br>
				8- <mark>숙소에서 흡연시 10 만원 이상의 벌금을 무는 호텔이 다수.</mark> 가급적 금연.<br>
				9- <mark>일본 관광지에서 '쓰레기'는 보통 '본인이 가방에 넣어서, 숙소에서 버린다.'</mark> 한국처럼 쓰레기통 많지 않다.<br>
				10- <mark>음식 사진 촬영이 가능한 가게와 그렇지 않은 가게가 있다.</mark><br>
				11- <mark>일본 식당은 점원이 자리를 안내한다.</mark> 한국처럼 자기가 앉고 싶은 자리에 앉으면 점원이 당황.<br>
				12- <mark>일본에는 '소비세'가 존재.</mark> 소비세가 가격에 포함되어 있을수 있고, 아닐 수 있다. ( 가격보다 고가의 지페 ) 를 제시하면, 상대가 계산해 준다.<br>
				13- <mark>일본 돈의 감각을 익히기 위해서 '자판기 이용'을 강력추천.</mark> 한국과 일본은 돈 단위가 다르기에 혼란이 온다.<br>
					

				</p>
			</div>
			
				<div id="7" class="language_tabcontent">
				<h3>여행 필수 어플</h3>
				<br><br>
				<h3><xmp>1.도교 택시	    2.도쿄 지하철	    3.ATM navi	        4.파파고</xmp></h3>
				<br>
				<img border=1px width= 250px; height= 350px src="https://post-phinf.pstatic.net/MjAxODAxMDRfMzkg/MDAxNTE1MDI3MjU2Nzk5.932CVbQ5kuvjBqWAHu3jt4lfPlazai1jyG06cBsDbj0g.x5LiynspuahZ9_kEMHTzbx1AUO2t27qYLH-0oNj1RxEg.JPEG/KakaoTalk_20180104_094044947.jpg?type=w1200">
				&nbsp;&nbsp;
				<img border=1px width= 250px; height= 350px src="https://post-phinf.pstatic.net/MjAxODAxMDRfNjIg/MDAxNTE1MDI3MjY3OTU5.G5bPN4CP4Ud7T9anwlZW24l8K-a5yKwGNENRylP721Yg.rJrqGerI_vjjM9wVwntEwv5rrcXq8A7d2e-irFwLAkMg.JPEG/KakaoTalk_20180104_094045123.jpg?type=w1200">
				&nbsp;&nbsp;
				<img border=1px width= 250px; height= 350px src="https://post-phinf.pstatic.net/MjAxODAxMDRfMjAz/MDAxNTE1MDI3MjkyNjY4.SwRxEkDwh-AJSTJn54cp18DJcjs-h7gHIPNlLSd75wog.fuop5aYv3pWVA1NT1RvPvvm9Sjfo45LmNeVqS0q7CIYg.JPEG/KakaoTalk_20180104_094045287.jpg?type=w1200">
				&nbsp;&nbsp;
				<img border=1px width= 250px; height= 350px src="http://img.khan.co.kr/news/2017/07/18/l_2017071801002303900181211.jpg">
			</div>
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