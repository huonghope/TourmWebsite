<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@page import="wepapps.mvc.MODEL.Product"%>
<%@page import="wepapps.mvc.DAO.ProductDAO"%>
<%@page import="wepapps.mvc.DAO.CategoryDAO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="bootstrap.min.css" rel="stylesheet">
	<link href ="css/st	yle.css" rel = "stylesheet" type = "text/css" media = "all"/>
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
	<% 
            ProductDAO productDAO = new ProductDAO();
 			String category_id = "";
 			String displayCoutryName = "";
 			if(request.getParameter("category_id") != null)
 			{ 
 				category_id = request.getParameter("category_id");
 				switch(category_id)
 				{
 				case "1":
 					displayCoutryName = "일본";
 					break;
 				case "2":
 					displayCoutryName = "베트남";
 					break;
 				default:
 					displayCoutryName = "한국";
 					break;
 				}
  			} 
 			String coutryName = CategoryDAO.getCoutryByCategoryID(Integer.parseInt(category_id));
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
	<div class = "japan-banner">
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
				<a class="language" href="<%=url%>">언어</a> 
				<a class="hotel" href="#">호텔</a> 
				<a class="key" href="#">기념품</a>
			</div>
			</center>
		</div>
		<%
			ArrayList<Product> pr = productDAO.getListProductByCategory(Integer.parseInt(category_id));
		%>
		<div class = "japan-banner-middle">
			<div class = "Container">	
				<div class = "title">
					<center>
						<h3>패키지 고객들께서 가장 많이 예야한신</h3>
						<h1><%=displayCoutryName%> BEST 인기 상품</h1>
					</center><br>
				</div>
				<div class = "list-city">
					<div class="row">
						<%for(int i = 0; i < 3; i++){%>
						<div class="column">
							<div class="card">
							<img src="<%=pr.get(i).getImage() %>" alt="Jane" style="width:268px; height:220px;">
									<div class="container-card" style = "height:150px;"><br>
										<div style = "height:70px;">
										<h3><%=pr.get(i).getTitle()%></h3>
										<p class="title-card"><%=pr.get(i).getContent()%></p>
										</div>
										<button class="button-list" style = "top:300px;" onclick="goTOSingleProduct(<%=pr.get(i).getId()%>)">Contact</button>
									</div>
							</div>
						</div>
						<%
								}
						%>
					</div>
				</div>
			</div>
			<%
				String imageUrl[] = new String[6];
				String Title[] = new String[6];
				String Content[] = new String[6];
				String Price[] = new String[6];
				int j = 0;
				for(int i = 3; i < 9; i++)
					{
						imageUrl[j] = pr.get(i).getImage();
						Title[j] = pr.get(i).getTitle();
						Content[j] = pr.get(i).getContent();
						Price[j] = pr.get(i).getPrice();
						j++;
					}
				j = 0;
			%>
			<div class = "japan-banner-footer">
				<div class = "Container">
					<center><br><br>
						<h4>MD가 알려주는</h4>
						<h1><%=displayCoutryName%>의 모든것!</h1><br>					
					<div id="btn-select">&nbsp;&nbsp;&nbsp;
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
								<img src="<%=imageUrl[j]%>" alt="Mountains" style="width:268px; height:220px;">
								<div class="overlay">
									<div class="text">
										<h5><%=Content[j] %></h5>
										<button class="btn-second" onclick="goTOServerlet(<%=category_id%>,<%=j%>)">상세보기 ></button>
									</div>
								 </div>	
								 <div style = "padding:15px;">
								 <h3><%=Title[j] %></h3>
								 <h3 style = "color:#fb5e33;margin:10px;font-size:30px;">&#8361;<%=Price[j] %>원 ~</h3>
								 </div>
							</div>							
						</div>
						<div class="column-second nature">
							<div class="content">
								<img src="<%=imageUrl[++j]%>" alt="Mountains" style="width:268px; height:220px;">
								<div class="overlay">
									<div class="text">
										<h5><%=Content[j] %></h5>
										<button class="btn-second" onclick="goTOServerlet(<%=category_id%>,<%=j%>)">상세보기 ></button>
									</div>
								 </div>	
								  <div style = "padding:15px;">
								 <h3><%=Title[j] %></h3>
								 <h3 style = "color:#fb5e33;margin:10px;font-size:30px;">&#8361;<%=Price[j] %>원 ~</h3>
								 </div>
							</div>							
						</div>
						<div class="column-second nature">
							<div class="content">
								<img src="<%=imageUrl[++j]%>" alt="Mountains" style="width:268px; height:220px;">
								<div class="overlay">
									<div class="text">
										<h5><%=Content[j] %></h5>
										<button class="btn-second" onclick="goTOServerlet(<%=category_id%>,<%=j%>)">상세보기 ></button>
									</div>
								 </div>	
								  <div style = "padding:15px;">
								 <h3><%=Title[j] %></h3>
								 <h3 style = "color:#fb5e33;margin:10px;font-size:30px;">&#8361;<%=Price[j] %>원 ~</h3>
								 </div>
							</div>							
						</div>
						<div class="column-second cars">
							<div class="content">
								<img src="<%=imageUrl[++j]%>" alt="Car" style="width:268px; height:220px;">
								<div class="overlay">
									<div class="text">
										<h5><%=Content[j] %></h5>
										<button class="btn-second" onclick="goTOServerlet(<%=category_id%>,<%=j%>)">상세보기 ></button>
									</div>
								 </div>	
								 <div style = "padding:15px;">
								 <h3><%=Title[j] %></h3>
								 <h3 style = "color:#fb5e33;margin:10px;font-size:30px;">&#8361;<%=Price[j] %>원 ~</h3>
								 </div>							
							</div>
						</div>
						<div class="column-second cars">
							<div class="content">
								<img src="<%=imageUrl[++j]%>" alt="Car" style="width:268px; height:220px;">
								<div class="overlay">
									<div class="text">
										<h5><%=Content[j] %></h5>
										 <button class="btn-second" onclick="goTOServerlet(<%=category_id%>,<%=j%>)">상세보기 ></button>
									</div>
								 </div>	
								 <div style = "padding:15px;">
								 <h3><%=Title[j] %></h3>
								 <h3 style = "color:#fb5e33;margin:10px;font-size:30px;">&#8361;<%=Price[j] %>원 ~</h3>
								 </div>					
							</div>
						</div>
						 <div class="column-second cars">
							<div class="content">
								<img src="<%=imageUrl[++j]%>" alt="Car" style="width:268px; height:220px;">
								<div class="overlay">
									<div class="text">
										<h5><%=Content[j] %></h5>
										 <button class="btn-second" onclick="goTOServerlet(<%=category_id%>,<%=j%>)">상세보기 ></button>
									</div>
								 </div>	
							    <div style = "padding:15px;">
								 <h3><%=Title[j] %></h3>
								 <h3 style = "color:#fb5e33;margin:10px;font-size:30px;">&#8361;<%=Price[j] %>원 ~</h3>
								 </div>							
							</div>
						  </div>
					</div>
				</div>
			</div>
		</div>
		<script>
           function goTOServerlet(category,index){
        	   location.href = "ResultCitySite?category=" + category + "&index=" + index;
           }
           function goTOSingleProduct(product_id){
        	   location.href = "product-load.jsp?product_id=" + product_id;
           }
		</script>
		<div class = "japan-banner-info" > 	
			<div class = "Container">
				<div class="jp_hotel_customer">
					<div class = "title">
					<center>
						<h3>편리하기 위한</h3>
						<h1><%=displayCoutryName%> 고객센터</h1>
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
						<h3>호텔문의</h3><hr width = "95" style = "border-color:#fb5e33;">
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
										<th><%=displayCoutryName%>호텔</th>
										<td>070-7017-9000</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="review">
						<h3>호텔리뷰</h3><hr width = "95" style = "border-color:#fb5e33;">
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