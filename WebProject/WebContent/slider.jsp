<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tourist Web Team Project</title>
</head>
<body>
<section id="slider"><!--slider-->
	<div class="container">
			<div id="slider-carousel" class="carousel slide" data-ride="carousel">
				 <ol class="carousel-indicators">
						<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
						<li data-target="#slider-carousel" data-slide-to="1"></li>
						<li data-target="#slider-carousel" data-slide-to="2"></li>
				</ol>					
				<div class="carousel-inner">
						<div class = "item active">
							<img src = "images/slide1.jpg" style = " width:1040px;">
						</div>
						<div class = "item">
							<img src = "images/slide2.jpg" style = " width:1040px;">
						</div>
						<div class = "item">	  	
						  	<img src = "images/slide3.jpg" style = " width:1040px;">
 						</div>		
 				 </div>				
				<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
						<i class="fa fa-angle-left"></i></a>
				<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
						<i class="fa fa-angle-right"></i></a>

			</div>		    
	</div>
</section><!--/slider-->
</body>
</html>