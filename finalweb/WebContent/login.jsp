<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Login</title>
<link href="/finalweb/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/finalweb/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="/finalweb/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" type="text/css" href="/finalweb/css/demo.css" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }</script>
<meta name="keywords" content="Kick flips Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="/finalweb/js/move-top.js"></script>
<script type="text/javascript" src="/finalweb/js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
<!-- //end-smoth-scrolling -->
</head>
<body>
<!--banner start here-->
<div class="banner-stripes">
		<div class="banner-strip-lft">
			 <div class="container"> 
				<div class="bann-head">
					<a href="index.jsp"><img src="/finalweb/images/logo.png" alt=""/></a>
					<ul  class="bann-list">
						<li><a href="store.jsp">商城</a></li>
						<li><a href="magazine.jsp">简报</a></li>
					</ul>
				</div>
		   </div>
	    </div>
	    <div class="banner-strip-rit">
	    		<div class="bann-contact">
	    			<div class="search">
	    				<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
	    				<input type="submit" value=""/>
	    			</div>
	    			<ul>
		    			<li><a href="signup.jsp">注册</a></li>
		    			<li><a href="login.jsp">登陆</a></li>
		    			<li><a href="${pageContext.request.contextPath}/cart/checkCart">购物车</a></li>
	    			</ul>
	    		</div>
	    </div>
	   <div class="clearfix"> </div>
	 </div> 
<!--banner end here-->
<!--login start here-->
<div class="login">
	<div class="container">
		<div class="login-main">
			<div class="login-top">
				<h3>登陆</h3>
				<img src="/finalweb/images/lock.png" alt=""/>
			</div>
			<div class="login-bottom">
			
			
			
			<form action="${pageContext.request.contextPath}/finalweb/login" method="post">
				<p>用户ID </p>
				<input name="id" type="text" value=""  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
				<p>密码</p>
				<input name="password" type="password" value="">
				<input type="submit" value="LOGIN">
			</form>
			
			
			
			</div>
		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--login end here-->
<!--footer start here-->
<div class="footer">
	<div class="container">
		<div class="footer-main">
			<div class="col-md-4 ftr-grid">
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
			<div class="col-md-5 ftr-grid">
				<h3>Featured Article</h3>
				<div class="ft-killbg">
					<h3>Killin,It</h3>
					<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis.</p>
				  <div class="ftr-black-bwn">
				  	<a href="#">View Post</a>
				  </div>
				</div>
			</div>
			<div class="col-md-3 ftr-small-grid">
				<span class="ftr-line"> </span>
				<ul>
					<li><a href="magazine.html">Magazine</a></li>
					<li><a href="store.html">Store</a></li>
					<li><a href="newsletter.html">Newsletter</a></li>
					<li><a href="about.html">About</a><li>
					<li><a href="contact.html">Contact</a><li>
					<li><a href="press.html">Press</a><li>
				</ul>
			</div>
			<div class="clearfix"> </div>
			<div class="copyright">
				<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> </a></p>
			</div>
		</div>
	</div>
</div>
<!--footer end here-->
</body>
</html>