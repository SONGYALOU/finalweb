<%@page import="finalweb.com.product.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Single</title>
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
					<a href="index.html"><img src="/finalweb/images/logo.png" alt=""/></a>
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
<!--single start here-->
<div class="product">
<div class="container">
<div class="col-md-9">
	<div class="content-bar">
<div class="single-page">
	<ul class="product-head">
		<li><a href="index.html">Home</a> <span>::</span></li>
		<li><a href="product.html">Products</a> <span>::</span></li>
		<li class="active-page">Accessories</li>
		<div class="clear"> </div>
	</ul>
	<!-- Include the Etalage files -->
		<link rel="stylesheet" href="/finalweb/css/etalage.css">
		<script src="/finalweb/js/jquery.etalage.min.js"></script>
	<!-- Include the Etalage files -->
	<script>
			jQuery(document).ready(function($){
	
				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 600,
					source_image_height: 1000,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});
				// This is for the dropdown list example:
				$('.dropdownlist').change(function(){
					etalage_show( $(this).find('option:selected').attr('class') );
				});
	
		});
	</script>
	<!----//details-product-slider--->
	<div class="details-left-slider">
	<!-- 图片不够 暂未替换 -->
		<ul id="etalage">
			<li>
				<a href="optionallink.html">
					<img class="etalage_thumb_image" src="/finalweb/images/r1.jpg" />
					<img class="etalage_source_image" src="/finalweb/images/r1.jpg" />
				</a>
			</li>
			<li>
				<img class="etalage_thumb_image" src="/finalweb/images/r2.jpg" />
				<img class="etalage_source_image" src="/finalweb/images/r2.jpg">
			</li>
			<li>
				<img class="etalage_thumb_image" src="/finalweb/images/r3.jpg" />
				<img class="etalage_source_image" src="/finalweb/images/r3.jpg" />
			</li>
			<li>
				<img class="etalage_thumb_image" src="/finalweb/images/r4.jpg" />
				<img class="etalage_source_image" src="/finalweb/images/r4.jpg" />
			</li>
			<div class="clearfix"> </div>
		</ul>
	</div>
	<div class="details-left-info">
	
	
	<form action="${pageContext.request.contextPath}/cart/saveCart" method="post">
		<h3> ${single.productname} </h3>
		<p class="availability">Availability: <span class="color">In stock</span></p>
	    <div class="price_single">
		  <span class="reducedfrom">$ ${single.productprice}</span>
		  <span class="actual">$ ${single.productprice}</span><a href="#"></a>
		</div>
		<h2 class="quick">商品简介:</h2>
		<p class="quick_desc"> ${single.productintroduction }</p>
		<ul class="size">
			<h3>长度</h3>
			<c:forEach items="${size }" var="p">
			<li><a href="#">${p.productsize }</a></li>
			</c:forEach>
		</ul>
		<div class="quantity_box">
			<ul class="product-qty">
			   <span>数量:</span>
			   <select name="number">
			   <% for(int i=1;i<= ((Product)session.getAttribute("single")).getProdcutnum() ;i++){ %>
					<option value= <%=i %>><%= i %></option>
					<%} %>
			   </select>
		    </ul>
		</div>
		<div class="clearfix"> </div>
		<div class="single-but">
			<input type="submit" value="添加至购物车">
		</div>
		</form>
		
		
		
</div>
<div class="clearfix"> </div>
</div>
<div class="products-row contact-prod">
					<h3>猜你感兴趣</h3>
					<c:forEach items="${random}" var="r">
					<a href="${pageContext.request.contextPath}/product/goToSingle?p=${r.productid}"><div class="product-grid">
						<div class="more-product-info">
								<span> </span>
						</div>
						<div class="product-img">
							<img src="${r.productimg }" alt="">
						</div>
						<div class="product-info">
							<div class="product-info-cust">
								<a href="${pageContext.request.contextPath}/product/goToSingle?p=${r.productid}">${r.productname }</a>
							</div>
							<div class="product-info-price">
								<a href="${pageContext.request.contextPath}/product/goToSingle?p=${r.productid}">&#8356;${r.productprice }</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div></a>
					</c:forEach>
					<div class="clearfix"> </div>
				</div>
</div>
</div>
<div class="col-md-3 sidebar_men">
	  <h3>类别</h3>
	  <ul class="product-categories color"><li class="cat-item cat-item-42"><a href="#">Dresses</a> <span class="count">(14)</span></li>
		<li class="cat-item cat-item-60"><a href="#">Cameras</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-63"><a href="#">Clock</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-55"><a href="#">mobiles</a> <span class="count">(11)</span></li>
		<li class="cat-item cat-item-64"><a href="#">Glases</a> <span class="count">(3)</span></li>
		<li class="cat-item cat-item-64"><a href="#">Other</a> <span class="count">(3)</span></li>
	 </ul>
	  <h3>颜色</h3>
	  <ul class="product-categories color"><li class="cat-item cat-item-42"><a href="#">Green</a> <span class="count">(14)</span></li>
		<li class="cat-item cat-item-60"><a href="#">Blue</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-63"><a href="#">Red</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-54"><a href="#">Gray</a> <span class="count">(8)</span></li>
		<li class="cat-item cat-item-55"><a href="#">Green</a> <span class="count">(11)</span></li>
		<li class="cat-item cat-item-63"><a href="#">Yellow</a> <span class="count">(2)</span></li>
	  </ul>
	  <h3>尺码</h3>
	  <ul class="product-categories color"><li class="cat-item cat-item-42"><a href="#">L</a> <span class="count">(14)</span></li>
		<li class="cat-item cat-item-60"><a href="#">M</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-63"><a href="#">S</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-54"><a href="#">XL</a> <span class="count">(8)</span></li>
		<li class="cat-item cat-item-55"><a href="#">XS</a> <span class="count">(11)</span></li>
	  </ul>
	  <h3>价格</h3>
	  <ul class="product-categories"><li class="cat-item cat-item-42"><a href="#">200$-300$</a> <span class="count">(14)</span></li>
		<li class="cat-item cat-item-60"><a href="#">300$-400$</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-63"><a href="#">400$-500$</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-54"><a href="#">500$-600$</a> <span class="count">(8)</span></li>
		<li class="cat-item cat-item-55"><a href="#">600$-700$</a> <span class="count">(11)</span></li>
	  </ul>
	</div>
<div class="clearfix"> </div>
</div>
</div>
<!--single end here-->
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