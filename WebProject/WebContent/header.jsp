<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="wepapps.mvc.MODEL.Users"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
	<link href = "css/style.css" rel = "stylesheet" type = "text/css" media = "all"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.fa {
	  padding: 20px;
	  font-size: 30px;
	  width: 50px;
	  text-align: center;
	  text-decoration: none;
	  margin: 5px 2px;
}

.fa:hover {
	    opacity: 0.7;
}

.fa-facebook {
	  background: #3B5998;
	  color: white;
}
.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}
.fa-youtube {
  background: #bb0000;
  color: white;
}
</style>
</head>
<body>
	<%
		Users users = null;
		if(session.getAttribute("user") != null)
		{
			users =(Users)session.getAttribute("user");
		}
	%>
	<header class = "header">
		<div class = "header-top">
			<div class = "container">
			<div class = "header-top-in">
				<div = class = "logo">
					<a href = "index.jsp"><img style="position:absolute;top:-6px;left:50px;" weight = 90px height=60px src = "images/sitelogo.PNG" alt = "LogoWeb Images" border = "1px"></a>
				</div>
				<div class = "header-in-right">
				<ul class = "hearder-select-right">
					<%
						String statusUser = "로그인";
						if(users != null)
						{
							statusUser = users.getUserName() +"님 안녕하세요!";
						
					%>
					<li><a href = "#"><%=statusUser%></li></a>
					<%
						}else
						{
					%>
					<li><a href = "login.jsp"><%=statusUser%></li></a>
					<%} %>
					<%
						if(!statusUser.equals("로그인"))
						{
					%>
					<li><a href = "UsersServlet?command=logout" id = "outAccout">로그웃</a></li>
					<%} %>
					<li><a href =register.jsp><i class=user-signup></i>회원가입</a></li>
					<li><a href = "#"><i class = "user-mypage"></i>마이페이지</li></a>
					<li><a href = "#"><i class = "user-srvcenter"></i>고객센터</li></a>
				</ul>
				</div>
				<div class = "clear-fix"></div>
			</div>
			</div>
		</div>
		<div class ="header-bottom" style = "background: url(images/back1.png) bottom;">
			<div class = "container">		
			   <div	a class = "addressMenu">
					<ul class = "menu" style = "display:block;">
					<li><a id = "top" href = "index.jsp" title = "전체메보기" style = "border:0px;">&#61; 전체메뉴</a></li>
					<li><a id ="top1" href = "#" title = "해외여행">해외여행</a>
					<ul>
						<li><a href = "coutries.jsp?category_id=2">&#9679; 베트남</a></li>
						<li><a href = "coutries.jsp?category_id=1">&#9679; 일본</a></li>
					</ul>
					</li>
					<li><a id="top2" href = "#" title = "">국내/제주</a>
					<ul>
						<li><a href = "coutries.jsp?category_id=3">&#9679; 한국</a></li>				
					</ul></li>
					<li><a id="top3" href = "#" title = "">남미 & 유럽</a>
					<ul>
						<li><a href = "#">&#9679; 브라질</a></li>
						<li><a href = "#">&#9679; 독일</a></li>
					</ul></li>
					<li><a id="top4" href = "#" title = "">그외 선택</a>
					<ul>
						<li><a href = "#">&#9679; 동기모르</a></li>
						<li><a href = "#">&#9679; 부주</a></li>
					</ul></li>
					</ul>
				</div>
				
			</div>
		<script>
		$(document).ready(function () {
		$('#top,#top1,#top2,#top3,#top4').mouseenter(function(){
			$(this).css("border-bottom", "0px solid #f37736").animate({
			'borderWidth': '10px',
			'borderColor': '#f37736'
			},1);
			}).mouseleave(function(){
			$(this).animate({
				'borderWidth':'0px',
				'borderColor':'#f37736'
				},1);
			});
		});
		</script>
		</div><!--header-bottom-->
		<div class = "header-bottom-in" style = "background: url(images/back2.png)0px 0px;">
			<div class = "container">
				<div class = "header-bottom-on">
				<div class = "search">
					<form>
						<input type = "text" value "컴색" placeholder="12년 연속 개별여행 브랜드 1위">
						<input type = "submit" value = "">
					</form>
				</div>
				<div class ="header-bottom-on-select">
				<ul class = "neighbor">
					<li class = "super"><a href = "#">슈퍼세이브</a></li>
					<li class = "div_danche"><a href = "#">단체맞춤여행</a></li>
					<li class = "last-child"><a href = "#" style = "border:0px;">온라인전요상품</a></li>
				</ul>
				</div>
				</div>
			</div>
		</div><!--header-bottom-in-->
	</header><!--/header-->
</body>
</html>