<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<link href="/finalweb/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/finalweb/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="/finalweb/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }</script>
<meta name="keywords" content="Kick flips Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
<!-- //end-smoth-scrolling -->
<!---- animated-css ---->
		<link href="/finalweb/css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="/finalweb/js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
<!---- animated-css ---->
</head>
<body>
<!--banner start here-->
<div class="banner">
	<div class="banner-stripes">
		<div class="banner-strip-lft">
			 <div class="container"> 
				<div class="bann-head">
					<a href="index.jsp"><img src="/finalweb/images/logo.png" alt=""/></a>
					<ul  class="bann-list">
						<li><a href="${pageContext.request.contextPath}/product/findAll">商城</a></li>
						<li><a href="magazine.html">简报</a></li>
					</ul>
				</div>
		   </div>
	    </div>
	    <div class="banner-strip-rit">
	    		<div class="bann-contact">
	    			<div class="search">
	    				<input type="text" value="" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}"/>
	    				<input type="submit" value=""/>
	    			</div>
	    			<ul>
		    			<li><a href="${pageContext.request.contextPath}/signup.jsp">注册</a></li>
		    			<li><a href="${pageContext.request.contextPath}/login.jsp">登陆</a></li>
		    			<li><a href="${pageContext.request.contextPath}/cart/checkCart">购物车</li>
	    			</ul>
	    		</div>
	    </div>
	   <div class="clearfix"> </div>
	 </div> 
	  <div class="banner-grid">
	  		<div class="bann-info">
	  			<h1>We are kickflips</h1>
	  			<p>Kickflips is a fresh new brand selling some of the dopest gear out there, and writing about the lifestyle they complement.</p>
	  			<div class="bann-bwn">
	  				<a>更多信息</a>
	  			</div>
	  		</div> 
	  </div>
	 <div class="clearfix"> </div>
</div>
<!--banner end here-->
<!--product start here-->
<div class="products">
	<div class="container">
		<div class="products-main">
			<h3>新 品 预 览</h3>
			<div class="produ">
				<a href="store.jsp">前往商店</a>
			</div>
		</div>
	</div>
</div>
<!--products end here-->
<div class="copyrights">Collect from </div>
<!--store start here-->
<div class="store wow bounce" data-wow-delay="0.1s">
	<div class="container">
		<div class="store-main">
			<div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
				<div class="glass">
					<div class="img-bg">
					<h3>Sunglasses VI</h3>
					<p>This is Photoshop's version  of Lorem Ipsum.</p>
					<div class="store-bwn">
						<a href="#">View</a>
					</div>
				</div>
				</div>
			</div>
			<div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
				<div class="cam">
					<div class="img-bg">
					<h3>Camera IX</h3>
					<p>This is Photoshop's version  of Lorem Ipsum.</p>
					<div class="store-bwn">
						<a href="#">View</a>
					</div>
				</div>
				</div>
			</div>
			<div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
				<div class="clk">
					<div class="img-bg">
					<h3>Clock II</h3>
					<p>This is Photoshop's version  of Lorem Ipsum.</p>
					<div class="store-bwn">
						<a href="#">View</a>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--store end here-->
<!--articals start here-->
<div class="articals wow bounce" data-wow-delay="0.1s">
	<div class="container">
		<div class="articals-main">
		    <div class="art-top">
				<h3>新 品 简 介</h3>
				<a href="magazine.html">前往简报</a>
			</div>
			<div class="art-bottom">
				<div class="col-md-4 art-grid1  wow bounceIn" data-wow-delay="0.4s">
					<h3>Killin'It</h3>
					<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent...</p>
					<div class="art-bt-bwn">
						<a href="#">View Post</a>
					</div>
				</div>
				<div class="col-md-4 art-grid2  wow bounceIn" data-wow-delay="0.4s">
					<h3>Your guide to Skate</h3>
					<h4> park ettiquite</h4>
					<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor Sed non  mauris vitae erat consequat auctor. </p>
				    <div class="art-bt-bwn">
						<a href="#">View Post</a>
					</div>
				</div>
				<div class="col-md-4 art-grid3  wow bounceIn" data-wow-delay="0.4s">
					<h3>Top 20 board designs</h3>
					<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent...</p>
				    <div class="art-bt-bwn">
						<a href="#">View Post</a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!--artical end here-->
<!--video start here-->
<!--pop-up-box-->
					  <script type="text/javascript" src="js/modernizr.custom.53451.js"></script>  
					<link href="/finalweb/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="/finalweb/js/jquery.magnific-popup.js" type="text/javascript"></script>
<!--pop-up-box-->
<div class="video">
	<div class="container">
		<div class="video-main">
				<div class="col-md-8 video-left wow bounceInLeft" data-wow-delay="0.4s">
					<img src="/finalweb/images/video-img.png" alt=""/>
					 <div class="video-play-bwn">
					 	<a href="#small-dialog5" class="thickbox play-icon popup-with-zoom-anim"><img src="/finalweb/images/play.png" alt="" /></a>
					 </div>
					 <div id="small-dialog5" class="mfp-hide">
					<iframe src="#" width="500" height="275" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen> </iframe> 
					</div>
				 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>

				</div>
				<div class="col-md-4 video-right wow bounceInRight" data-wow-delay="0.4s">
					<h3>从一段视频开始了解我们</h3>
					<a class="face-book" href="#"> 在facebook®上分享</a>
				   <div class="tweet">
					<a href="#"> 在twitter®上分享</a>
				  </div>
				</div>
		<div class="clearfix"> </div>
	  </div>
  </div>
</div>
<!--video end here-->
<!--contact start here-->
<div class="contact wow bounceInLeft" data-wow-delay="0.4s">
	<div class="container">
		<div class="contact-main">
			<h3>登陆并订阅邮件以获取更多信息:</h3>
			<form>
				<input type="text" value="Enter email here..."/ onfocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Enter email here...';}"/>
				<input type="submit"  value="Submit"/>
			</form>	
		</div>
	</div>
</div>
<!--contact end here-->
<!--footer start here-->
<div class="footer wow bounce" data-wow-delay="0.1s">
	<div class="container">
		<div class="footer-main">
			<div class="col-md-4 ftr-grid wow bounceInLeft" data-wow-delay="0.4s">
				<h3>Featured product</h3>
				<div class="ftr-glss">
					<div class="glss-text">
					<h3>Sunglasses VI</h3>
					<p>This is Photoshop's version  of Lorem Ipsum.</p>
					<div class="ftr-gls-bwn">
						<a href="#">View</a>
					</div>
					</div>
				 </div>
			</div>
			<div class="col-md-5 ftr-grid wow bounceInLeft" data-wow-delay="0.4s">
				<h3>Featured Article</h3>
				<div class="ft-killbg">
					<h3>Killin,It</h3>
					<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis.</p>
				  <div class="ftr-black-bwn">
				  	<a href="#">View Post</a>
				  </div>
				</div>
			</div>
			<div class="col-md-3 ftr-small-grid wow bounceInLeft" data-wow-delay="0.4s">
				<span class="ftr-line"> </span>
				<ul>
					<li><a href="magazine.html">简报Magazine</a></li>
					<li><a href="store.jsp">商城Store</a></li>
					<li><a href="newsletter.html">订阅邮件Newsletter</a></li>
					<li><a href="about.html">关于我们About</a><li>
					<li><a href="contact.html">联系我们Contact</a><li>
					
				</ul>
			</div>
			<div class="clearfix"> </div>
			<div class="copyright">
			<p>Copyright &copy; 2015.Company name All rights reserved</a>  <a href="http://www.cssmoban.com/" ></a></p>			</div>
		</div>
	</div>
</div>
<!--footer end here-->
</body>
</html>