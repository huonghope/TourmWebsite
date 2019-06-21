<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="bootstrap.min.css" rel="stylesheet">
	<link href = "css/style.css" rel = "stylesheet" type = "text/css" media = "all"/>
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
	<div class = "login_contents">
		<div class = "container">
			<center><h1><img src = "images/login.png" width = "70"> 아이디 로그인</h1><h6>로그인을 하시면 더욱 다양한 하나투어 서비스를 이용하실 수 있습니다.</h6></center><br><br><br>
			<div class = "register-right">
			<h3>회원</h3>
			<p>회원가입을 하신들을 회원정보를 입력해수세요</p><br>
			<form action = "UsersServlet" method = "POST">			
				<div>
					<span>로그인</span><label>*</label><br>
					<input type = "text" name = "id" size = "40"><br><br>
				</div>
				<div>
					<span>비밀번호</span><label>*</label><br>
					<input type = "password" name = "pwd" size = "40">
				</div>
				<input type = "checkbox">아이디 저정<br><br>
				<%	
					String error = null;
					error = (String)request.getAttribute("Error");
					if(error != null)
					{
				%>
				<div>
					<p style = "color:red;"><%=error+"<br>"%></p>
				</div>
				<%
					}
				%><br>
				<input type = "hidden" value = "login" name="command">
				<input type = "submit" value  = "" class = "loginbutton">				
			</form>
			</div>
			<div class = "register-left">
			<h3>비회원</h3>
			<p>※ 개인정보 동기화 안내
				  이미 회원가입되어 계신 고객님께서 SNS 로그인을 하실 경우,<br>
				   이전 예약정보 및 개인정보가 동기화됩니다.</p><br>	
			<a href="/login_Naver">
			<img src = "images/loginnv.jpg" width = "270">
			</a><br>
			<a href="https://www.facebook.com/dialog/oauth?client_id=359123991240252&redirect_uri=https://localhost:8080/TouristWebProject/login_Facebook">
			<img src = "images/login-facebook.png" width = "307" style = "margin:-17px;">
			</a>
			</div>
			<div class = "register-left-forgot">
				<a href = "#">아이디 찾기</a>
				<a href = "#">비밀번호 찾기</a>
				<a href = "register.jsp">회원가입</a>
			</div>
		</div>
	</div>
	 <jsp:include page = "footer.jsp"></jsp:include>
</body>
</html>