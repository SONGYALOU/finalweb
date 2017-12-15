<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>cart</title>
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
		<script type="text/javascript">
		function minproduct(id)
		{
			
			
			if (window.XMLHttpRequest)
			  {// code for IE7+, Firefox, Chrome, Opera, Safari
			  xmlhttp=new XMLHttpRequest();
			  }
			else
			  {// code for IE6, IE5
			  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			  }
			
			xmlhttp.onreadystatechange=function()
			  {
			  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    {
			    document.getElementById(id).innerHTML=xmlhttp.responseText;
			    }
			  }
			var a =document.getElementById(id).value;
			xmlhttp.open("POST","${pageContext.request.contextPath}/cart/minproduct",true);
			xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
			xmlhttp.send("productid="+id+"&ordernum="+a);
			
		}
		function addproduct(id)
		{
			
			
			if (window.XMLHttpRequest)
			  {// code for IE7+, Firefox, Chrome, Opera, Safari
			  xmlhttp=new XMLHttpRequest();
			  }
			else
			  {// code for IE6, IE5
			  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			  }
			
			xmlhttp.onreadystatechange=function()
			  {
			  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    {
			    document.getElementById(id).innerHTML=xmlhttp.responseText;
			    }
			  }
			var a =document.getElementById(id).value;
			xmlhttp.open("POST","${pageContext.request.contextPath}/cart/addproduct",true);
			xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
			xmlhttp.send("productid="+id+"&ordernum="+a);
			
		}
		
		
		
		
		
		$(function(){ 
		$(".add").click(function(){ 
		var t=$(this).parent().find('input[class*=text_box]'); 
		t.val(parseInt(t.val())+1)
		setTotal(); 
		})
		
		$(".min").click(function(){ 
		var t=$(this).parent().find('input[class*=text_box]'); 
		t.val(parseInt(t.val())-1) 
		if(parseInt(t.val())<0){ 
		t.val(0); 
		} 
		setTotal(); 
		}) 
		function setTotal(){ 
		var s=0; var ss=0; 
		$("td[name='tab']").each(function(index){ 
     s=(parseInt($(this).find('input[class*=text_box]').val()))*parseFloat($(this).find('span[class*=price]').text()); 
     ss+=(parseInt($(this).find('input[class*=text_box]').val()))*parseFloat($(this).find('span[class*=price]').text()); 
     $("#total"+index).html(s.toFixed(2)); 
      
		}); 
		$("#totall").html(ss.toFixed(2));
		
		}
		setTotal(); 

		})
			
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
		    			<li><a href="${pageContext.request.contextPath}/signup.jsp">注册</a></li>
		    			<li><a href="${pageContext.request.contextPath}/login.jsp">登陆</a></li>
		    			<li><a href="${pageContext.request.contextPath}/cart/checkCart">购物车</a></li>
	    			</ul>
	    		</div>
	    </div>
	   <div class="clearfix"> </div>
	 </div> 
<!--banner end here-->
	
	
	
	
<div class="personal" >
			<p class="title" style="margin-bottom: 30px;">我的购物车</p>
			
			<div class="per_box" >
				<ul class="per_navul shop_carul">
					<li style="width: 130px;margin-right: 10px;">
						<input type="checkbox" style="margin-right: 20px;"/>
						全选
					</li>
					<li style="width: 450px;text-align: left;">商品名称</li>
					<li>单价</li>
					<li>数量</li>
					<li>操作</li>
				</ul>
				
				
		<c:forEach items="${checkcart}" var="cc" >
				<ul class="per_listul shop_carul" style="padding-top: 10px;box-sizing: border-box;">
				
				<table >
				
					<td name="tab">
					<li style="width: 130px;margin-right: 10px;">
						<input type="checkbox" style="margin-right: 10px;margin-left: 18px;"/>
						<img src="/BigHomewoke/img/order_pic5.jpg" style="vertical-align: middle;"/>
					</li>
					<li style="width: 450px;text-align: left;">${cc.productname}</li>
					<li style="color: #3CA5F1;"><span class="price">${cc.productprice }</span> </li>
					<li>
						<input class="min" name="" value="-" style="width:20px;height:20px;" onclick="minproduct('${cc.productid}')" /> 
						<input class="text_box" id="${cc.productid }" type="text"  value="${cc.ordernum } " style="width:30px;height:20px;"/> 
						<input class="add" name="" value="+" style="width:20px;height:20px;" onclick="addproduct('${cc.productid}')"/> 	
					</li>
					<li><a href="${pageContext.request.contextPath}/cart/deleteproduct?id=${cc.productid}">删除</a></li>
					</td>	
				
				</table>
				</ul>
		</c:forEach>
		
			
			</div>
			<p class="shop_car_totle">
				不包含运费共计：<span style="font-size: 19px;color: #d20000;"><label id="totall"></label></span>
				<a class="jie_btn" href="${pageContext.request.contextPath}/order/checkorder">确认结算</a>
			</p>
		</div>
		
		
		
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
				<p>Copyright &copy; 2015.Company name All rights reserved</p>			</div>
		</div>
	</div>
</div>
<!--footer end here-->
		

	</body>

</html>