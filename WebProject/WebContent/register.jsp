<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet">
<link href = "style.css" rel = "stylesheet" type = "text/css" media = "all"/>
      <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<script src = "jquery-3.3.1.min.js"></script>
		 <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page = "header.jsp"></jsp:include>
	<center>
	<table width = "auto" height = "auto"  border = "1">
	<form action = "UsersServlet" name = "write_form_memeber" method = "post" >
		<tr>
			<td bgcolor = "#fb5e33">
			<center>
			<h1>회원가입</h1>
			<h3>저의와 함께 즐겁게 행복하게 여행되세요.</h3>
			<h6>회원가입을 하시면 마일리지 적립, 연중 상시 이벤트와 우대혜택 등 여행과 관련된 특별한 혜택을 드립니다.</h6>
			</center>
			</td>
		</tr>
		<tr>
				<table width = "850" class = "table_register">
						<tr style = "border-top:1px solid">
							<th>이름</th>
							<td><input type = "text" name = "username"placeholder="이름  입력하세요"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<select class = "selections">
									<option>내국인</option>
									<option>외국인</option>
							</select>						
							</td>
							
						</tr>
						<tr>
							<th>주민등록번호</th>
							<td><input type = "text" name = "jumin_1"placeholder="생년월일">&nbsp;&nbsp;-&nbsp; &nbsp;<input type = "password" name = "jumin_2"></td>
						</tr>
						<tr>
							<th>아이디</th>
							<td>
								<input type = "text" name = "user_id" id = "user_id"placeholder="아이디 입력하세요"/><span id="user-result"></span>
								<a href = "#" style = "cursor:hand" id = "checkID"> 중복 확인</a>  (영문/숫자 10 - 12자)
							</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type ="password" name = "userpwd" id = "pw1"placeholder="비밀번호 입력하세요"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "password" name = "userpwd" id = "pw2"placeholder="비밀번호 확인">
							<span id="user-result2"></span>
							<br><br>
							<h6>※ 8~16자리의 영문 대/소문자, 숫자, 특수문자 중 2개 이상</h6>
							</td>
						</tr>						
						<tr>
							<th>이메일</th>						
							<td>
								<input type = "text" name = "useremail" id = "email"placeholder="이메일 입력하세요"/> @
								<input type = "text" name = "email_dns"/>
								<select name = "emailaddr" class = "selections">
										<option value =" ">직접입력</option>
										<option value ="gmail.com">gmail.com</option>
										<option value ="naver.com">naver.com</option>
										<option value ="daum.net">daum.net</option>
										<option value ="nave.com">nate.com</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<input type = "text" name = "address" placeholder="주소 입력하세요">
							</td>
						</tr>
						<tr>
							<th>휴대폰번호</th>
							<td>
							<input type = "text" name = "tel2" title = "휴대폰번호" placeholder=" -없이 입력주세요"> &nbsp;&nbsp;&nbsp;&nbsp;
							<input type = "submit" value = "인증번호 요청">
							<input type = "text" name = "tel2" title = "휴대폰번호" placeholder=" 인증번호 (6자리)">
							<input type = "button" value = "확인">
							</td>
						</tr>
						<tr>
							<th>직업</th>
							<td>
							<select class = "selections" >
								<option value = "">선택하세요</option>
								<option value = "5">학생</option>
								<option value = "6">교육</option>
								<option value = "7">군인</option>
								<option value = "8">컴퓨터</option>
								<option value = "9">의료</option>
							</select>
							</td>
						</tr>
						<tr>
							<th>메일/SWS 정보 수신</th>
							<td>
							<input type = "radio" name = "chk_main" checked> 수신
							<input type = "radio" name = "chk_main">수신거부
							</td>
						</tr>
						<tr>
							<th>관심나라</th>
							<td>
							<input type = "checkbox" name = "info" value = "10">일본
							<input type = "checkbox" name = "info" value = "11">베트남
							<input type = "checkbox" name = "info" value = "12">미국
							<input type = "checkbox" name = "info" value = "13">영국
							<input type = "checkbox" name = "info" value = "13">프랑스
							</td>
						</tr>
						<tr>
							<th>가입경로</th>
							<td width = "100px">
							<select class = "selections">
							<option value = "">선택하세요</option>
							<option value = "14">친구</option>
							<option value = "15">인터넷</option>
							<option value = "16">신문</option>
							<option value = "17">방송</option>
							<option value = "18">기타</option>
							</select>
							</td>
						</tr>
						<tr>
							<th>정보공개여부</th>
							<td>
							<select class = "selections">
							<option value = "">선택하세요</option>
							<option value = "19">모두공개</option>
							<option value = "20">비공개</option>					
							</select>
							</td>
						</tr>
				</table> 
		</tr>
		<tr>
			<td>
				<div id ="member_button">
					<br><br>
					<input type = "hidden" value = "register" name="command">
					<input type = "submit" value = "간편 회원 가입">
					<input type = "reset" value = "입력 정보 취소">
				</div>				
			</td>
	</form>
	</table>
	</center>
	<br><br>
	<script type="text/javascript">
      $(document).ready(function () {
           var x_timer;
           $("#checkID").click(function (e) {
                clearTimeout(x_timer);
                var user_name = $("#user_id").val();
                x_timer = setTimeout(function () {
                    check_username_ajax(user_name);
                }, 1000);
                });
           function check_username_ajax(user_id) {
                $("#user-result").html('<img src="img/ajax-loader.gif" />');
                $.post('CheckUserIDServlet', {'user_id': user_id}, function (data) {
                    $("#user-result").html(data);
                 });
           }
           var x_timer;
           $("#pw2").keyup(function (e) {
               clearTimeout(x_timer);
               var user_pwd = $(this).val();
               x_timer = setTimeout(function () {
                   check_user_pwd_ajax(user_pwd);
               }, 500);
           });
           function check_user_pwd_ajax(user_pwd2) {
               $("#user-result2").html('<img src="img/ajax-loader.gif"/>');
               var user_pwd1 = $("#pw1").val();
               if(user_pwd2 == user_pwd1)
           		{
            	   $("#user-result2").html('<img src="img/available.png" />');
           		}else
           		{
           			$("#user-result2").html('<img src="img/not-available.png" />');
           		}
           }
       });
</script>
	<jsp:include page = "footer.jsp"></jsp:include>
</body>
<html>