<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@page import="wepapps.mvc.MODEL.Product"%>
<%@page import="wepapps.mvc.DAO.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
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
	<jsp:include page = "header.jsp"></jsp:include>
	<%
            ProductDAO productDAO = new ProductDAO();
 			String category_id = "";
 			if(request.getParameter("category_id") != null)
 			{
 				category_id = request.getParameter("category_id");
 			}
    %>
	<script>
		$(document).ready(function (){
			$(".city").mouseenter(function (){
				$("#exchange-image").attr('src','https://dimgcdn.ybtour.co.kr/TN/34/345f37c9812e67fed288dfd6cb5a9755.tn.410x280.jpg'); 
				$("#exchange-image").css();
			});
			$(".language").mouseenter(function (){
				$("#exchange-image").attr('src','http://image5.hanatour.com/mst_info_image/8/P000036668_M.jpg'); 
			});
			$(".hotel").mouseenter(function (){
				$("#exchange-image").attr('src','http://image5.hanatour.com/mst_info_image/2/P000329042_M.jpg'); 
			});				
			$(".tip").mouseenter(function (){
				$("#exchange-image").attr('src','http://image5.hanatour.com/mst_info_image/0/P000328970_M.jpg'); 
			});
			$(".city,.language,.hotel,.tip").mouseleave(function (){
				$("#exchange-image").attr('src','https://dimgcdn.ybtour.co.kr/TN/a1/a16dba55fa22c8a4f867e39f9e451eae.tn.410x280.jpg'); 
			});

		});
	</script>
	<%
		//ArrayList<Product> p = productDAO.getListProductByCategory(Integer.parseInt(category_id)); //default 10 product
	%>
	<div class = "japan-banner">
		<div class = "japan-banner-top-img" style = "height:650px;">
			<center>
			<div class = "image-top">
				<img src = "https://dimgcdn.ybtour.co.kr/TN/ad/adf1fc33abde9286886735bf8d898717.tn.410x280.jpg" id = "exchange-image"> 
			</div>
			<div class="navbar">
				<a class="city" href="#">도시</a> 
				<a class="language" href="#">언어</a> 
				<a class="hotel" href="#">호텔</a> 
				<a class="tip" href="#">팁</a>
			</div>
			</center>
		</div>
		<div class = "japan-banner-middle">
			<div class = "Container">	
				<div class = "title">
					<center>
						<h3>패키지 고객들께서 가장 많이 예야한신</h3>
						<h1>일본 BEST 인기 상품</h1>
					</center><br>
				</div>
				<div class = "list-city">
					<div class="row">
						<div class="column">
							<div class="card">
							<img src="https://image.tourbaksa.com/new/Main/subSeason/2018/9/976D9C65-04D4-4EE1-9EC3-13370648ECEE.jpg" alt="Jane" style="width:100%">
									<div class="container-card"><br>
									<h1>가고시마</h1>
										<p class="title-card">2박3일</p>
										<p>활화산이 숨쉬는 그곳!.</p>
										<p>가고싶다! 가고시마♬</p>
										<p><button class="button-list">Contact</button></p>
									</div>
							</div>
						</div>

						<div class="column">
							<div class="card">
							<img src="https://image.tourbaksa.com/new/Main/subSeason/2018/11/0B8D497C-9D54-45DD-8551-7892FB031BA1.jpg" alt="Mike" style="width:100%">
									<div class="container-card"><br>
									<h1>오사카</h1>
										<p class="title-card">2박3일</p>
										<p>12~3월 이스타항공 2박 3일 꽉차게!</p>
										<p> 오전출발/오후귀국.</p>
										<p><button class="button-list">Contact</button></p>
									</div>
							</div>
						</div>
						
						<div class="column">
							<div class="card">
							<img src="https://image.tourbaksa.com/new/Main/subSeason/2018/11/8B8349EC-6B83-45AB-93C8-DDEF2943E0D4.jpg" alt="John" style="width:100%">
									<div class="container-card"><br>
									<h1>도쿄</h1>
										<p class="title-card">2박3일</p>
										<p>[인천-나리타]도쿄 자유여행.</p>
										<p>일본의 시도 한 눈에 보기.</p>
										<p><button class="button-list">Contact</button></p>
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
			<div class = "japan-banner-footer">
				<div class = "Container">
					<center><br><br>
						<h4>일본MD가 추전하는</h4>
						<h1>이 달의 우리팩</h1><br>					
					<div id="btn-select">
					 <button class="btn" onclick="filterSelection('nature')"> 긴급세일</button>
					 <button class="btn" onclick="filterSelection('cars')"> 테마여행</button>
					 <button class="btn" onclick="filterSelection('people')"> 명품온천</button>
					 <button class="btn" onclick="#"> 가족여행</button>
					 <button class="btn" onclick="#"> 골프여행</button>
					 <button class="btn" onclick="#"> 자유여행</button>
					</div>
					</center>
					<div class="row-second">
						<div class="column-second nature">
							<div class="content">
								<img src="https://booking.tourbaksa.com/upload/image/JP08044/H201409041308.jpg" alt="Mountains" style="width:100%">
								<div class="overlay">
									<div class="text">
										<h6>중부/아메리카발리지</h6>
										<h4>더비치타워오키나와</h4>
										<button class="btn-second" onclick="#">상세보기 ></button>
									</div>
								 </div>	
								 <h3>Family Suite</h3>
								 <h2> 1,000,000원 ~ </h2>
							</div>							
						</div>
						<div class="column-second nature">
							<div class="content">
								<img src="https://booking.tourbaksa.com/upload/image/JP08044/H201409041308.jpg" alt="Lights" style="width:100%">
								<div class="overlay">
									<div class="text">
										<h6>중부/아메리카발리지</h6>
										<h4>더비치타워오키나와</h4>
										<button class="btn-second" onclick="#">상세보기 ></button>
									</div>
								 </div>	
								 <h3>Family Suite</h3>
								 <h2> 1,000,000원 ~ </h2>
							</div>
						</div>
						<div class="column-second nature">
							<div class="content">
								<img src="https://booking.tourbaksa.com/upload/image/JP08044/H201409041308.jpg" alt="Nature" style="width:100%">
								<div class="overlay">
									<div class="text">
										<h6>중부/아메리카발리지</h6>
										<h4>더비치타워오키나와</h4>
										<button class="btn-second" onclick="#">상세보기 ></button>
									</div>
								 </div>	
								 <h3>Family Suite</h3>
								 <h2> 1,000,000원 ~ </h2>
							</div>
						</div>
  
						<div class="column-second cars">
							<div class="content">
								<img src="https://booking.tourbaksa.com/upload/image/JP11144/H201801081810340.JPG" alt="Car" style="width:100%">
								<h4>Retro</h4>
								<p>Lorem ipsum dolor..</p>
							</div>
						</div>
						<div class="column-second cars">
							<div class="content">
								<img src="https://booking.tourbaksa.com/upload/image/JP07402/H201305280954.jpg" alt="Car" style="width:100%">
								<h4>Fast</h4>
								<p>Lorem ipsum dolor..</p>
							</div>
						</div>
						 <div class="column-second cars">
							<div class="content">
								<img src="https://booking.tourbaksa.com/upload/image/JP00400/H201110181044.jpg" alt="Car" style="width:100%">
							    <h4>Classic</h4>
							    <p>Lorem ipsum dolor..</p>
							</div>
						  </div>

						 <div class="column-second people">
							<div class="content">
							  <img src="https://booking.tourbaksa.com/upload/image/JP03445/H201304251635.jpg" alt="Car" style="width:100%">
							  <h4>Girl</h4>
							  <p>Lorem ipsum dolor..</p>
							</div>
						  </div>
						<div class="column-second people">
							<div class="content">
							<img src="https://booking.tourbaksa.com/upload/image/JP07286/H201602161656440.jpg" alt="Car" style="width:100%">
							  <h4>Man</h4>
							  <p>Lorem ipsum dolor..</p>
							</div>
						  </div>
						<div class="column-second people">
							<div class="content">
							<img src="https://booking.tourbaksa.com/upload/image/JP08044/H201409041308.jpg" alt="Car" style="width:100%">
							  <h4>Woman</h4>
							  <p>Lorem ipsum dolor..</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class = "japan-banner-info">
			<div class = "Container">
				<div class="jp_hotel_customer">
					<div class = "title">
					<center><br><br><br>
						<h3>편리하기 위한</h3>
						<h1>일본 고객센터</h1>
					</center><br>
				</div>
				<ul>
					<li class="cus1"><a href="//www.tourbaksa.com/common/TargetLink.asp?Parm1=SHP&Parm2=1&Parm3=0&LandingURL=//www.tourbaksa.com/promotion/130916/hotel_info.asp" target="_blank">취소수수료 및 입금기한 안내</a></li>
					<li class="cus2"><a href="//www.tourbaksa.com/common/TargetLink.asp?Parm1=SHP&Parm2=2&Parm3=0&LandingURL=//www.tourbaksa.com/promotion/130916/jp_hotel_info.asp" target="_blank">온천/료칸 이용안내</a></li>
					<li class="cus3"><a href="//www.tourbaksa.com/common/TargetLink.asp?Parm1=SHP&Parm2=3&Parm3=0&LandingURL=//www.tourbaksa.com/CustomerCenter/faq_list.asp?search_cate=41" target="_blank">자주하시는 질문 FAQ</a></li>
				</ul>
				</div>
				<div class="hotel_qa">
					<div style = "border-right:1px solid #e7e7e7; width:50%;">
						<h3>호텔문의</h3><hr width = "95">
						<p>ⓘ 예약 가능 여부는 사이트에서 예약접수 후 쉽게 확인 가능합니다.</p>
						<div>
							<span class="qa"><button onclick="#')">온라인 문의</button></span>
							<div class="tbl">
								<table>
									<colgroup></colgroup>
									<tbody>
									<tr>
										<th width = "150px">상담시간</th>
										<td>평일(월~금) 09:00~18:00</td>
									</tr>
									<tr>
										<th>일본호텔</th>
										<td>070-7017-9000</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="review">
						<h3>호텔리뷰</h3><hr width = "95">
						<ul>						
							<li>
								<a href="//www.tourbaksa.com/common/TargetLink.asp?Parm1=SHV&Parm2=1&Parm3=0&LandingURL=https://blog.naver.com/isagiyoku/140191835923" target="__blank">
									[하카타] 컴포트 호텔 하카타
								</a>
							</li>
							
							<li>
								<a href="//www.tourbaksa.com/common/TargetLink.asp?Parm1=SHV&Parm2=2&Parm3=0&LandingURL=https://blog.naver.com/isagiyoku/220340634822" target="__blank">
									[홋카이도] 노보리베츠 세키스이테이 (석수정/石水亭)
								</a>
							</li>
							
							<li>
								<a href="//www.tourbaksa.com/common/TargetLink.asp?Parm1=SHV&Parm2=3&Parm3=0&LandingURL=https://blog.naver.com/isagiyoku/220190761778" target="__blank">
									[오키나와] 힐튼 오키나와 차탄 리조트
								</a>
							</li>
							
							<li>
								<a href="//www.tourbaksa.com/common/TargetLink.asp?Parm1=SHV&Parm2=4&Parm3=0&LandingURL=https://blog.naver.com/alrud8154/221158566117" target="__blank">
									[오사카] 와이즈 캐빈 오사카남바
								</a>
							</li>
							
							<li>
								<a href="//www.tourbaksa.com/common/TargetLink.asp?Parm1=SHV&Parm2=5&Parm3=0&LandingURL=https://blog.naver.com/isagiyoku/140211801300" target="__blank">
									[오사카] 오사카 후지야호텔
								</a>
							</li>						
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
		<script>
		filterSelection('nature');
		function filterSelection(c) {
		  var x, i;
		  x = document.getElementsByClassName("column-second");
		  for (i = 0; i < x.length; i++) {
			w3RemoveClass(x[i], "show");
			if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
		  }
		}
		function w3AddClass(element, name) {
		  var i, arr1, arr2;
		  arr1 = element.className.split(" ");
		  arr2 = name.split(" ");
		  for (i = 0; i < arr2.length; i++) {
			if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
		  }
		}
		function w3RemoveClass(element, name) {
		  var i, arr1, arr2;
		  arr1 = element.className.split(" ");
		  arr2 = name.split(" ");
		  for (i = 0; i < arr2.length; i++) {
			while (arr1.indexOf(arr2[i]) > -1) {
			  arr1.splice(arr1.indexOf(arr2[i]), 1);     
			}
		  }
		  element.className = arr1.join(" ");
		}
		// Add active class to the current button (highlight it)
		var btnContainer = document.getElementById("myBtnContainer");
		var btns = btnContainer.getElementsByClassName("btn");
		for (var i = 0; i < btns.length; i++) {
		  btns[i].addEventListener("click", function(){
			var current = document.getElementsByClassName("active");
			current[0].className = current[0].className.replace(" active", "");
			this.className += " active";
		  });
		}
		</script>
	<jsp:include page = "footer.jsp"></jsp:include>
</body>
</html>