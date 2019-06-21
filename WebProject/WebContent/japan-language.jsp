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
   border: 1px solid #ccc;
   background-color: #f1f1f1;
   width: 20%;
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
   border-left: none;
   position: relative;
}

.shell {
   position: relative;
   
}
</style>
</head>
<body>
	<jsp:include page = "header.jsp"></jsp:include>
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
	<div class="shell">
      <div class="language_tab">
         <button class="language_tablinks" onclick="openCity(event, '1')"
            id="defaultOpen">간단인사말</button>
         <button class="language_tablinks" onclick="openCity(event, '2')">길물어보기</button>
         <button class="language_tablinks" onclick="openCity(event, '3')">주문하기</button>
         <button class="language_tablinks" onclick="openCity(event, '4')">공항에서</button>
      </div>
      <div>
         <div id="1" class="language_tabcontent">
            <h3>간단한 인삿말</h3>
            <a href="https://www.youtube.com/embed/bh6z14hMv20" target=iframe1>
               <image id="img1"
                  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScfFlFqTYeU_gwTYDmQTLtUZUfYVTvA-FLAa7NU0NCtvVhCnembg"
                  height="50px" width="70px" />
            </a> <br>
            <br>
            <iframe id="frame1" name=iframe1 width=700px height=400px
               frameborder=1 style="display: none"> </iframe>
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
            <a href="https://www.youtube.com/embed/ljyZsT-RiyY" target=iframe2>
               <image id="img2"
                  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScfFlFqTYeU_gwTYDmQTLtUZUfYVTvA-FLAa7NU0NCtvVhCnembg"
                  height="50px" width="70px" />
            </a> <br>
            <br>
            <iframe id="frame2" name=iframe2 width=700px height=400px
               frameborder=1 style="display: none"> </iframe>
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
            <a href="https://www.youtube.com/embed/xQ80JLbtNV8" target=iframe3>
               <image id="img3"
                  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScfFlFqTYeU_gwTYDmQTLtUZUfYVTvA-FLAa7NU0NCtvVhCnembg"
                  height="50px" width="70px" />
            </a> <br>
            <br>
            <iframe id="frame3" name=iframe3 width=700px height=400px
               frameborder=1 style="display: none"> </iframe>
            <p>
               <mark> 1명입니다. : 一人です [히토리데스]<br>
               ▲ 1명 2명 3명 4명 5명 6명<br>
		               一人 二人 三人 四人 五人 六人<br>
		               히토리 후타리 산닝 요닝 고닝 로쿠닝<br>
		               <br>
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
            <h3>간단한 인삿말</h3>
            <a href="https://www.youtube.com/embed/bh6z14hMv20" target=iframe1>
               <image id="img1"
                  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScfFlFqTYeU_gwTYDmQTLtUZUfYVTvA-FLAa7NU0NCtvVhCnembg"
                  height="50px" width="70px" />
            </a> <br>
            <br>
            <iframe id="frame1" name=iframe1 width=700px height=400px
               frameborder=1 style="display: none"> </iframe>
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
   		</div>
   </div>
   <script>
      $(document).ready(function() {
         $("#img1").click(function() {
            $("#frame1").show();
         });
      });
      $(document).ready(function() {
         $("#img2").click(function() {
            $("#frame2").show();
         });
      });
      $(document).ready(function() {
         $("#img3").click(function() {
            $("#frame3").show();
         });
      });
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
   <br><br><br><br><br><br><br><br><br><br><br><br><br>
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
		//Add active class to the current button (highlight it)
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