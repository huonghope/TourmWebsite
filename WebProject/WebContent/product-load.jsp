<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="wepapps.mvc.MODEL.Product"%>
<%@page import="wepapps.mvc.DAO.ProductDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Web Project</title>
	<link href ="css/style.css" rel = "stylesheet" type = "text/css" media = "all"/>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%
		int productID = Integer.parseInt(request.getParameter("product_id"));
		Product pr = null;
		if(productID == 0)
		{
			String title = request.getParameter("title");
			String imageUrl = request.getParameter("image");
			String content = request.getParameter("content");
			String price = request.getParameter("price");
			pr = new Product(0,0,title,content,price,imageUrl);
		}else{
			pr = ProductDAO.getProduct(productID);
		}
	%>
	<jsp:include page = "header.jsp"></jsp:include>
		<div class = "banner-product">
		<div class = "banner-top-product">
			<div class = "slide-product" style = "width:50%; float:left;">
				<div class="container">
				  <div class="mySlides">
					<div class="numbertext">1 / 6</div>
					<img src="<%=pr.getImage()%>" width = "40%" height= "300px">
				  </div>
				  <div class="mySlides">
					<div class="numbertext">2 / 6</div>
					<img src="https://image.tourbaksa.com/new/Main/subpopular/2018/6/8D238E33-E45F-4418-82CE-F77EA795FB54.jpg" width = "40%" height= "300px">
				  </div>

				  <div class="mySlides">
					<div class="numbertext">3 / 6</div>
					<img src="https://image.tourbaksa.com/new/Main/subpopular/2018/7/EB360988-3547-4B6F-8E77-9D1F9281BA39.jpg" width = "40%" height= "300px">
				  </div>
					
				  <div class="mySlides">
					<div class="numbertext">4 / 6</div>
					<img src="https://image.tourbaksa.com/new/Main/subpopular/2018/12/AD8B99E5-1CBC-48BA-A51F-6AF664F5D4CB.jpg" width = "40%" height= "300px">
				  </div>

				  <div class="mySlides">
					<div class="numbertext">5 / 6</div>
					<img src="https://image.tourbaksa.com/New/item/2018/12/20181203140823.jpg" width = "40%" height= "300px">
				  </div>
					
				  <div class="mySlides">
					<div class="numbertext">6 / 6</div>
					<img src="https://image.tourbaksa.com/new/Main/subpopular/2017/12/517C6D9F-DAA4-4BA2-AA5A-4A7542E60510.jpg" width = "40%" height= "300px"	>
				  </div>
					
				  <a class="prev" onclick="plusSlides(-1)">❮</a>
				  <a class="next" onclick="plusSlides(1)">❯</a>
				  <div class="row-list">
					<div class="column-list">
					  <img class="demo cursor" src="<%=pr.getImage()%>" width = "70px" height = "80px" onclick="currentSlide(1)" alt="The Woods">
					</div>
					<div class="column-list">
					  <img class="demo cursor" src="https://image.tourbaksa.com/new/Main/subpopular/2018/6/8D238E33-E45F-4418-82CE-F77EA795FB54.jpg" width = "70px" height = "80px" onclick="currentSlide(2)" alt="Cinque Terre">
					</div>
					<div class="column-list">
					  <img class="demo cursor" src="https://image.tourbaksa.com/new/Main/subpopular/2018/7/EB360988-3547-4B6F-8E77-9D1F9281BA39.jpg" width = "70px" height = "80px" onclick="currentSlide(3)" alt="Mountains and fjords">
					</div>
					<div class="column-list">
					  <img class="demo cursor" src="https://image.tourbaksa.com/new/Main/subpopular/2018/12/AD8B99E5-1CBC-48BA-A51F-6AF664F5D4CB.jpg" width = "70px" height = "80px" onclick="currentSlide(4)" alt="Northern Lights">
					</div>
					<div class="column-list">
					  <img class="demo cursor" src="https://image.tourbaksa.com/New/item/2018/12/20181203140823.jpg" width = "70px" height = "80px"onclick="currentSlide(5)" alt="Nature and sunrise">
					</div>    
					<div class="column-list">
					  <img class="demo cursor" src="https://image.tourbaksa.com/new/Main/subpopular/2017/12/517C6D9F-DAA4-4BA2-AA5A-4A7542E60510.jpg" width = "80px" height = "80px"onclick="currentSlide(6)" alt="Snowy Mountains">
					</div>
				  </div>
				</div>
			</div>
			<div class = "info-product">
				<h1 class = "name-product"><%=pr.getTitle() %></h1>
				<div style = "margin-left:50px;"><br>
				<h6 class = "content-product"><%=pr.getContent()%></h6><br>
				<h3 class = "price-product"><%=pr.getPrice()%>원</h3>
				</div><br><br>
				<p>지역별 베스트 가이드, 국적기 우선배정, 엄선된 특급호텔, 최소화한 쇼핑 등 고품격 일정으로 구성한 패키지 브랜드</p>		
			</div>
		</div>
		<div class = "airplane">
			<span class="heading">추천 특가 항공권</span>
			<br><br>
			<table>
			  <tr>
				<th><b>도시</th>
				<th><b>항공사</th>
				<th><b>요금</th>
				<th><b>액션</th>
			  </tr>
			  <tr>
				<td>오사카</td>
				<td>진에어</td>
				<td class = "prc"><%=pr.getPrice()%>원</td>
				<td><button class="btn-rvt">예약하기</button></td>
			  </tr>
			  <tr>
				<td>오키나와</td>
				<td>제주항공</td>
				<td class = "prc">984,300원</td>
				<td><button class="btn-rvt">예약하기</button></td>
			  </tr>
			  <tr>
				<td>후쿠오카</td>
				<td>아시아나항공</td>
				<td class = "prc">734,300원</td>
				<td><button class="btn-rvt">예약하기</button></td>
			  </tr>
			</table>
		</div>
		<div class = "comment">			
				<span class="heading"><hr><br>고객의 댓글</span>
				<p>선택하기에 도와주기 위함.</p>
				<div class="container-cmt">
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
				  <img src="images/avatar1.png" alt="Avatar" style="width:90px">
				  <p><span>오나나.</span> jichong**@naver.com.</p>
				  <p><%=pr.getTitle() %>넘 좋아.</p>
				</div>

				<div class="container-cmt">
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star "></span>
				  <img src="images/avatar2.png" alt="Avatar" style="width:90px">
				  <p><span>해해해.</span> hyomi*gmail.com.</p>
				  <p><%=pr.getTitle() %>나도 좋아.<img src="images/heart.png" alt="Avatar" width= "20px"></p>
				</div>
		</div>
		<div style = "width:1100px;margin-left:120px;">				
				<span class="heading"><hr><br>사용자 등급</span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star"></span>
				<p>4.1 평균 254 리뷰에 기초.</p>
				<hr style="border:3px solid #f1f1f1">

				<div class="row-rating">
				  <div class="side">
					<div>5 스타</div>
				  </div>
				  <div class="middle">
					<div class="bar-container">
					  <div class="bar-5"></div>
					</div>
				  </div>
				  <div class="side right">
					<div>150</div>
				  </div>
				  <div class="side">
					<div>4 스타</div>
				  </div>
				  <div class="middle">
					<div class="bar-container">
					  <div class="bar-4"></div>
					</div>
				  </div>
				  <div class="side right">
					<div>63</div>
				  </div>
				  <div class="side">
					<div>3 스타</div>
				  </div>
				  <div class="middle">
					<div class="bar-container">
					  <div class="bar-3"></div>
					</div>
				  </div>
				  <div class="side right">
					<div>15</div>
				  </div>
				  <div class="side">
					<div>2 스타</div>
				  </div>
				  <div class="middle">
					<div class="bar-container">
					  <div class="bar-2"></div>
					</div>
				  </div>
				  <div class="side right">
					<div>6</div>
				  </div>
				  <div class="side">
					<div>1 스타</div>
				  </div>
				  <div class="middle">
					<div class="bar-container">
					  <div class="bar-1"></div>
					</div>
				  </div>
				  <div class="side right">
					<div>20</div>
				  </div>
				</div>
		</div>
	</div>
	<script>
		var slideIndex = 1;
		showSlides(slideIndex);
		function plusSlides(n) {
		  showSlides(slideIndex += n);
		}
		function currentSlide(n) {
		  showSlides(slideIndex = n);
		}
		function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("demo");
		  if (n > slides.length) {slideIndex = 1}
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
			  slides[i].style.display = "none";
		  }
		  for (i = 0; i < dots.length; i++) {
			  dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";
		  dots[slideIndex-1].className += " active";
		}
		</script>
	<jsp:include page = "footer.jsp"></jsp:include>

</body>
</html>