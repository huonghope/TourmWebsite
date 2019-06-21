<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>	
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);
body, html {
    height: 100%; width: 100%;
}
.main_image {
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  width:900px;
  height:500px;
  margin:auto;
}

.hotplace {
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  width:300px;
  height:150px;
  margin: auto;
}

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
 	font-family: 'Jeju Hallasan', serif;
}
.item_text2{
	width:540px;
	height:150px;
	display: inline-block;
	margin-left:10px;
	font-size:medium;
	font-family: 'Jeju Hallasan', serif;
}

.button {
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

</style>
</head>

<body>

<div class="main_image" >
	<image src = "https://t1.daumcdn.net/cfile/tistory/121534344EE169352E" style="width:100%; height:100%; vertical-align: middle"/>
</div><br><br>

<div class="hotplace">
	<image src = "http://launchbox.kr/wp-content/uploads/sites/2/2018/08/p30-logo-1.png" style="width:100%; height:100%; vertical-align: middle"/>
</div>

<br><br>

<div class="item">
	<div class="item_image">
		<img src="http://post.phinf.naver.net/MjAxNzA2MDZfMTAx/MDAxNDk2NzM0NzQ2MjYw.tDMHpxVAWrenMdBO41WaOpEPz77B5_yfF8xSI8VGXh4g.lWcszx8Odr_cNwRrD7C1OWEKz5N1BNNIqfNqhlYfqB0g.JPEG/DSC_1248_re.jpg?type=w1200">	
	</div>
	<div class="item_text1"><center><b>����ȣ��</b></center></div>
	<div class ="item_text2"><br>
		<p>�ѷ�43km�� ��ǥ���� Į���� ȣ���� �ֺ����� ������, ��ȭ�Ż�� ȣ�� ���� ũ�� ���� ������ �ִ�.
  		���̷������뿡 ������ ����ȣ���� ������ �Ѵ��� �� �� ������ ��ġ�� �� ��</p>
  		<a href="https://yolizori.blog.me/221410871946"><button class="button">����ȣ���ǰܿ�</button></a>
  		<a href="https://blog.naver.com/warm_today/221378288016"><button class="button">���̷� ������</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="https://private-hotspring.com/wp-content/uploads/2016/08/4359e892235ebf146f5913d51d3697d3.jpg">	
	</div>
	<div class="item_text1"><center><b>�Ķ��&�񿡺�</b></center></div>
	<div class ="item_text2"><br>
		<p>�������� ���������� �ɰ� �������� �󺥴�, �ܿ￡�� ���� �Ͼ�� ���ϴ� �������� ��ġ ��ȭ �� ���� �� ����
		������ �� ����, ���ڿ��� �ŷ��� ������ �ʹٸ� �Ķ��&���̴� ����� �ʼ� �ڽ��̴�.</p>
		<a href="https://blog.naver.com/pom_pomm/221286107907"><button class="button">�󺥴�����</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="http://img.tour2000.co.kr/upload/Images/goods/10/11020162362018102106286872.jpg">	
	</div>
	<div class="item_text1"><center><b>������ ������������&����Ű��</b></center></div>
	<div class ="item_text2"><br>
		<p>�������� ���������� �ɰ� �������� �󺥴�, �ܿ￡�� ���� �Ͼ�� ���ϴ� �������� ��ġ ��ȭ �� ���� �� ����
		������ �� ����, ���ڿ��� �ŷ��� ������ �ʹٸ� �Ķ��&���̴� ����� �ʼ� �ڽ��̴�.</p>
		<a href="https://yjcchoi.blog.me/220924183909"><button class="button">��������</button></a>
  		<a href="https://blog.naver.com/dedoeoh/221202032536"><button class="button">������ ������</button></a>
	</div>
</div><br><br>

<div class="item">
	<div class="item_image">
		<img src="http://thu.tourtips.com/ap/tboard/outlink/?u=Imh0dHA6Ly9ibG9nZmlsZXMubmF2ZXIubmV0LzIwMTUwNzIyXzI4NS9ibGluZ19saW1fMTQzNzU1MDI4NDc5MTZXSFYwX0pQRUcvSU1HXzk1MTcuSlBHIjo6OjE6Ojo3NjQwMQ%3D%3D">	
	</div>
	<div class="item_text1"><center><b>�����̹���</b></center></div>
	<div class ="item_text2"><br>
		<p>�Ϻ� �����ô��� ����� ������ �׸���ũ�� ���� ������ ���� ����, ����� ��Ȱ���� �� �� �ִ� ����ŷ ����, 
		���ذ��� �� ��̷ο� ü���� ������ ���̴�. ������ �Ϻ�� ���� ��հ� ������ �� ������ �� ì�ܺ���.</p>
		<a href="https://blog.naver.com/smkkone?Redirect=Log&logNo=221276473278"><button class="button">�����̹����Ǻ�</button></a>
  		<a href="https://blog.naver.com/ok314200?Redirect=Log&logNo=221417213990"><button class="button">��������</button></a>
	</div>
</div><br><br>


</body>
</html>