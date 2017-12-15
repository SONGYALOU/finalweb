<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>个人中心</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="renderer" content="webkit">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
		<link rel="stylesheet" href="/finalweb/css/demo.css" />
		<link rel="stylesheet" href="/finalweb/css/cartstyle.css" />
		<link rel="stylesheet" href="/finalweb/css/fen.css" />
		<script type="text/javascript" src="/finalweb/js/jquery-2.2.0.min.js"></script>
		
		
		
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
	</head>
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
	    		
		    			<li><a href="${pageContext.request.contextPath}/signup.jsp">注册</a></li>
		    			<li><a href="${pageContext.request.contextPath}/login.jsp">登陆</a></li>
		    			<li><a href="${pageContext.request.contextPath}/cart/checkCart">购物车</a></li>
	    			</ul>
	    		</div>
	    </div>
	   <div class="clearfix"> </div>
	 </div> 
<!--banner end here-->

		<div class="personal">
			<p class="title">我的账户<span>您好，kore.倩</span></p>
			<ul class="per_nav">
				<li class="active">我的订单</li>
				<li>基本信息</li>
				<li>密码修改</li>
			</ul>
			<ul class="per_nav2">
				<li class="active">订单</li>
				<li>信息</li>
				
				<li>留言</li>
			</ul>
			<div class="per_box">
				<ul class="per_navul">
					<li style="width: 130px;margin-right: 10px;">
						
					</li>
					<li style="width: 450px;text-align: left;">商品名称</li>
					<li>单价</li>
					<li>数量</li>
					<li>合计</li>
					<li>状态</li>
				</ul>
				<ul class="per_listul">
				
					<c:forEach items="${orderproduct }" var="op">
						<li style="width: 130px;margin-right: 10px;">
							<img src="img/order_pic5.jpg" style="vertical-align: middle;"/>
						</li>					
						<li style="width: 450px;text-align: left;">${op.productname }</li>
						<li>￥${op.productprice }</li>
						<li>${op.ordernum }</li>
						<li>${op.ordernum}*${op.productprice}</li>
						<li>已完成</li>
					</c:forEach>
					<p>送货地址：xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
				</ul>
			</div>
			<div class="per_box per_info" style="display: none;">
				<form action="" method="post">
					<p>
						<span>昵称</span>
						<input type="text" value="八月"/>
						<span>修改</span>
					</p>
					<p>
						<span>邮箱地址</span>
						<input type="email" value="1017848476@qq.com"/>
						<span>修改</span>
					</p>
					<p>
						<span>手机号码</span>
						<input type="tel" value="15281083076" />
						<span>修改</span>
					</p>
					<p class="per_info_btn">保存</p>
				</form>
			</div>

			<div class="per_box per_info" style="display: none;">
				<form action="" method="post">
					<p>
						<span>旧密码</span>
						<input type="password"/>
					</p>
					<p>
						<span>新密码</span>
						<input type="password"/>
					</p>
					<p>
						<span>确认新密码</span>
						<input type="password"/>
					</p>
					<p class="per_info_btn">保存</p>
				</form>
			</div>
		</div>
		<script>
			$(function(){
				$(".per_couponul li").click(function(){
					$(".per_couponul li").removeClass("active");
					$(this).addClass("active");
					$(".per_coupon_box").hide();
					$(".per_coupon_box").eq($(".per_couponul li").index(this)).fadeIn();
				});
				$(".per_nav li").click(function(){
					$(".per_nav li").removeClass("active");
					$(this).addClass("active");
					$(".per_box").hide();
					$(".per_box").eq($(".per_nav li").index(this)).fadeIn();
				});
				$(".per_nav2 li").click(function(){
					$(".per_nav2 li").removeClass("active");
					$(this).addClass("active");
					$(".per_box").hide();
					$(".per_box").eq($(".per_nav2 li").index(this)).fadeIn();
				});
			});
				</script>
		<div class="login_bg">
			<div class="login">
				<img src="/finalweb/images/close.png" class="close"/>
				<img src="/finalweb/images/login.png" style="margin: 25px 0px;"/>
				<form action="" method="post">
					<p class="list">
						<img src="/finalweb/images/login_pic2.png"/>
						<input type="text" placeholder="请输入注册时的邮箱/手机号"/>
					</p>
					<p class="list">
						<img src="/finalweb/images/login_pic3.png"/>
						<input type="password" placeholder="请输入注册时的邮箱/手机号"/>
					</p>
					<a href="find.html">忘记密码?</a>
					<p>
						<a href="register.html">注册</a>
						<a>登录</a>
					</p>
				</form>
			</div>
		</div>
		<script type="text/javascript">
			$(function(){
				$(".close").click(function(){
					$(".login_bg").fadeOut();
				});
				$(".login_btn").click(function(){
					$(".login_bg").slideDown();
					$(".meau_box").slideUp();
				});
			});
		</script>
		<script type="text/javascript">
			$(function(){
				$(".res_nav").children("li").click(function(){
					$(".res_nav").children("li").stop().removeClass("active");
					$(this).stop().addClass("active");
					$(".res_form").stop().slideUp();
					$(".res_form").eq($(".res_nav").children("li").index(this)).stop().slideDown();
				});
			});
		</script>
		
		
		
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

