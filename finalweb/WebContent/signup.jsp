<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Signup</title>
<link href="/finalweb/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
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
</head>
<body>
<!--banner start here-->
<div class="banner-stripes">
		<div class="banner-strip-lft">
			 <div class="container"> 
				<div class="bann-head">
					<a href="finalweb/index.jsp"><img src="/finalweb/images/logo.png" alt=""/></a>
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
<!--signip start here-->
<div class="signup">
	<div class="container">
		<div class="signup-main">
			<div class="sign-top">
					<h3>注册</h3>
					<p>留下你的信息让我们更好的了解你</p>
			</div>
			
			<form action="${pageContext.request.contextPath}/finalweb/signup" method="post">
			<div class="register-top">
				<h3>个人信息</h3>
				<div class="sign-left">
					<p>姓</p>
					<input name="userFname" type="text" value="输入您的姓"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
				</div>
				<div class="sign-left">
					<p>名</p>
					<input name="userLname" type="text" value="输入您的名"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
				</div>
				<div class="sign-left">
					<p>邮箱地址</p>
					<input name="userEmail" type="text" value="输入您的姓邮箱"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
				</div>
				<div class="sign-left">
					<p>电话号码</p>
					<input name="userPhone" type="text" value="输入您的电话号码"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
				</div>
				<div class="sign-left  txt-ar">
					<p>联系地址</p>
					<textarea name="userAddress" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/> </textarea>
				</div>
			  <div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
			<div class="register-bottom">
				<h3>登陆信息</h3>
				<div class="sign-right">
					<p>密码</p>
					<input name="userPassword" type="password" value="">
				</div>
				<div class="sign-right">
					<p>确认密码</p>
					<input name="userRpassword" type="password" value="">
				</div>
				<input type="submit" value="SUBMIT">
			  <div class="clearfix"> </div>
			</div>
			</form>
			
			
			
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--signip end here-->
<!--footer start here-->
<div class="footer">
	<div class="container">
		<div class="footer-main">
			<div class="col-md-4 ftr-grid">
				<h3>新品预览</h3>
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
				<h3>新品简介</h3>
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
					<li><a href="magazine.html">简报Magazine</a></li>
					<li><a href="store.html">商城Store</a></li>
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