<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Store</title>
<link href="/finalweb/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/finalweb/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="/finalweb/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
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
	    		
		    			<li><a href="${pageContext.request.contextPath}/signup.jsp">注册</a></li>
		    			<li><a href="${pageContext.request.contextPath}/login.jsp">登陆</a></li>
		    			<li><a href="${pageContext.request.contextPath}/cart/checkCart">购物车</a></li>
	    			</ul>
	    		</div>
	    </div>
	   <div class="clearfix"> </div>
	 </div> 
<!--banner end here-->
<!--press start here-->
<div class="storepage">
	<div class="container">
		<div class="storepage-main">
	<div class="col-md-12">
		<div class="content-bar">
				<ul class="product-head">
					<li><a href="index.jsp">home</a> <span>::</span></li>
					<li class="active-page">Products</li>
					<div class="clear"></div>
				</ul>
				<div class="products-row">
					<h3>今 日 产 品</h3>
					
					<c:forEach items="${products}" var="p">					
					<a href="${pageContext.request.contextPath}/product/goToSingle?p=${p.productid }">
					<div class="product-grid">
						<div class="more-product-info">
								<span> </span>
						</div>
						<div class="/finalweb/product-img">
							<img src="${p.productimg }" alt="">
						</div>
						<div class="product-info">
							<div class="product-info-cust">
								<a href="${pageContext.request.contextPath}/product/goToSingle?p=${p.productid }">${p.productintroduction }</a>
							</div>
							<div class="product-info-price">
								<a href="${pageContext.request.contextPath}/product/goToSingle?p=${p.productid }">&#8356;${p.productprice}</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						</div></a>
					</c:forEach>
											
					<div class="clearfix"></div>
				</div>
	</div>
</div>
<div class="clearfix"> </div>

		</div>
		
			<div>
				<a  href="${pageContext.request.contextPath}/product/findAll">首页</a>|
				<a 	href="${pageContext.request.contextPath}/product/findFPage">上一页</a>
				当前页：<c:out value="${pagenumber }"></c:out>
				<a 	href="${pageContext.request.contextPath}/product/findNPage">下一页</a>|
				<a 	href="${pageContext.request.contextPath}/product/findLPage">尾页</a>
			</div>
	</div>

</div>
<!--press end here-->
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
					<li><a href="store.jsp">商城Store</a></li>
					<li><a href="newsletter.html">订阅邮件Newsletter</a></li>
					<li><a href="about.html">关于我们About</a><li>
					<li><a href="contact.html">联系我们Contact</a><li>
					
				</ul>
			</div>
			<div class="clearfix"> </div>
			<div class="copyright">
				<p>Copyright &copy; 2015.Company name All rights reserved</a>  <a href="http://www.cssmoban.com/" ></a></p>
			</div>
		</div>
	</div>
</div>
<!--footer end here-->
</body>
					<script>
	    			 function aaaa() {
	    				alert('${pageContext.request.contextPath}')
	    				return false;
	    			};
	    			</script>
</html>