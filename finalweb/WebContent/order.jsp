<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
			<meta charset="utf-8" />
		<title>Order</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="renderer" content="webkit">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
		<link rel="stylesheet" href="/finalweb/css/demo.css" />
		<link rel="stylesheet" href="/finalweb/css/cartstyle.css" />
		<link rel="stylesheet" href="/finalweb/css/fen.css" />
		<script type="text/javascript" src="/finalweb/js/jquery-2.2.0.min.js"></script>
		
<script language="javascript">
var where = new Array(35); 

function comefrom(loca,locacity) { this.loca = loca; this.locacity = locacity; } 
where[0]= new comefrom("请选择省份名","请选择城市名");
where[1] = new comefrom("北京","|东城|西城|崇文|宣武|朝阳|丰台|石景山|海淀|门头沟|房山|通州|顺义|昌平|大兴|平谷|怀柔|密云|延庆"); 
where[2] = new comefrom("上海","|黄浦|卢湾|徐汇|长宁|静安|普陀|闸北|虹口|杨浦|闵行|宝山|嘉定|浦东|金山|松江|青浦|南汇|奉贤|崇明"); 
where[3] = new comefrom("天津","|和平|东丽|河东|西青|河西|津南|南开|北辰|河北|武清|红挢|塘沽|汉沽|大港|宁河|静海|宝坻|蓟县"); 
where[4] = new comefrom("重庆","|万州|涪陵|渝中|大渡口|江北|沙坪坝|九龙坡|南岸|北碚|万盛|双挢|渝北|巴南|黔江|长寿|綦江|潼南|铜梁|大足|荣昌|壁山|梁平|城口|丰都|垫江|武隆|忠县|开县|云阳|奉节|巫山|巫溪|石柱|秀山|酉阳|彭水|江津|合川|永川|南川"); 
where[5] = new comefrom("河北","|石家庄|邯郸|邢台|保定|张家口|承德|廊坊|唐山|秦皇岛|沧州|衡水"); 
where[6] = new comefrom("山西","|太原|大同|阳泉|长治|晋城|朔州|吕梁|忻州|晋中|临汾|运城"); 
where[7] = new comefrom("内蒙古","|呼和浩特|包头|乌海|赤峰|呼伦贝尔盟|阿拉善盟|哲里木盟|兴安盟|乌兰察布盟|锡林郭勒盟|巴彦淖尔盟|伊克昭盟"); 
where[8] = new comefrom("辽宁","|沈阳|大连|鞍山|抚顺|本溪|丹东|锦州|营口|阜新|辽阳|盘锦|铁岭|朝阳|葫芦岛"); 
where[9] = new comefrom("吉林","|长春|吉林|四平|辽源|通化|白山|松原|白城|延边"); 
where[10] = new comefrom("黑龙江","|哈尔滨|齐齐哈尔|牡丹江|佳木斯|大庆|绥化|鹤岗|鸡西|黑河|双鸭山|伊春|七台河|大兴安岭"); 
where[11] = new comefrom("江苏","|南京|镇江|苏州|南通|扬州|盐城|徐州|连云港|常州|无锡|宿迁|泰州|淮安"); 
where[12] = new comefrom("浙江","|杭州|宁波|温州|嘉兴|湖州|绍兴|金华|衢州|舟山|台州|丽水"); 
where[13] = new comefrom("安徽","|合肥|芜湖|蚌埠|马鞍山|淮北|铜陵|安庆|黄山|滁州|宿州|池州|淮南|巢湖|阜阳|六安|宣城|亳州"); 
where[14] = new comefrom("福建","|福州|厦门|莆田|三明|泉州|漳州|南平|龙岩|宁德"); 
where[15] = new comefrom("江西","|南昌市|景德镇|九江|鹰潭|萍乡|新馀|赣州|吉安|宜春|抚州|上饶"); 
where[16] = new comefrom("山东","|济南|青岛|淄博|枣庄|东营|烟台|潍坊|济宁|泰安|威海|日照|莱芜|临沂|德州|聊城|滨州|菏泽"); 
where[17] = new comefrom("河南","|郑州|开封|洛阳|平顶山|安阳|鹤壁|新乡|焦作|濮阳|许昌|漯河|三门峡|南阳|商丘|信阳|周口|驻马店|济源"); 
where[18] = new comefrom("湖北","|武汉|宜昌|荆州|襄樊|黄石|荆门|黄冈|十堰|恩施|潜江|天门|仙桃|随州|咸宁|孝感|鄂州");
where[19] = new comefrom("湖南","|长沙|常德|株洲|湘潭|衡阳|岳阳|邵阳|益阳|娄底|怀化|郴州|永州|湘西|张家界"); 
where[20] = new comefrom("广东","|广州|深圳|珠海|汕头|东莞|中山|佛山|韶关|江门|湛江|茂名|肇庆|惠州|梅州|汕尾|河源|阳江|清远|潮州|揭阳|云浮"); 
where[21] = new comefrom("广西","|南宁|柳州|桂林|梧州|北海|防城港|钦州|贵港|玉林|南宁地区|柳州地区|贺州|百色|河池"); 
where[22] = new comefrom("海南","|海口|三亚"); 
where[23] = new comefrom("四川","|成都|绵阳|德阳|自贡|攀枝花|广元|内江|乐山|南充|宜宾|广安|达川|雅安|眉山|甘孜|凉山|泸州"); 
where[24] = new comefrom("贵州","|贵阳|六盘水|遵义|安顺|铜仁|黔西南|毕节|黔东南|黔南"); 
where[25] = new comefrom("云南","|昆明|大理|曲靖|玉溪|昭通|楚雄|红河|文山|思茅|西双版纳|保山|德宏|丽江|怒江|迪庆|临沧");
where[26] = new comefrom("西藏","|拉萨|日喀则|山南|林芝|昌都|阿里|那曲"); 
where[27] = new comefrom("陕西","|西安|宝鸡|咸阳|铜川|渭南|延安|榆林|汉中|安康|商洛"); 
where[28] = new comefrom("甘肃","|兰州|嘉峪关|金昌|白银|天水|酒泉|张掖|武威|定西|陇南|平凉|庆阳|临夏|甘南"); 
where[29] = new comefrom("宁夏","|银川|石嘴山|吴忠|固原"); 
where[30] = new comefrom("青海","|西宁|海东|海南|海北|黄南|玉树|果洛|海西"); 
where[31] = new comefrom("新疆","|乌鲁木齐|石河子|克拉玛依|伊犁|巴音郭勒|昌吉|克孜勒苏柯尔克孜|博尔塔拉|吐鲁番|哈密|喀什|和田|阿克苏"); 
where[32] = new comefrom("香港",""); 
where[33] = new comefrom("澳门",""); 
where[34] = new comefrom("台湾","|台北|高雄|台中|台南|屏东|南投|云林|新竹|彰化|苗栗|嘉义|花莲|桃园|宜兰|基隆|台东|金门|马祖|澎湖"); 
where[35] = new comefrom("其它","|北美洲|南美洲|亚洲|非洲|欧洲|大洋洲");

function select() {
	with(document.creator.province) { 
		var loca2 = options[selectedIndex].value; 
		}
	for(i = 0;i < where.length;i ++) {
		if (where[i].loca == loca2) {
			loca3 = (where[i].locacity).split("|");
			for(j = 0;j < loca3.length;j++) {
				with(document.creator.city) { 
					length = loca3.length; 
					options[j].text = loca3[j]; 
					options[j].value = loca3[j]; 
					var loca4=options[selectedIndex].value;
					}}
	break;
	}}
	document.creator.newlocation.value=loca2+loca4;
}

function init() {
	with(document.creator.province) {
		length = where.length;
		for(k=0;k<where.length;k++) 
		{ 
			options[k].text = where[k].loca; 
			options[k].value = where[k].loca; 
		}
		options[selectedIndex].text = where[0].loca; 
		options[selectedIndex].value = where[0].loca;
	}
	with(document.creator.city) {
		loca3 = (where[0].locacity).split("|");
		length = loca3.length;
		for(l=0;l<length;l++) 
		{ 
			options[l].text = loca3[l]; 
			options[l].value = loca3[l]; 
			}
		options[selectedIndex].text = loca3[0]; 
		options[selectedIndex].value = loca3[0];
	}
}

</script>

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
<script type="text/javascript">
function address(id)
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
	    document.getElementById(id).style.display="block"
	    }
	  }
	xmlhttp.open("POST","${pageContext.request.contextPath}/order/adduoid",true);
	xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
	xmlhttp.send("uoid="+id);
	
}
</script>
<!-- //end-smoth-scrolling -->
<body   onload="init()">
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
<!-- body start here -->
		<div class="order">
			<p class="p1">填写并确认订单</p>
			<div class="order_b1">
				<p class="title">收货人信息</p>
				
			
				<div class="old_add">
					<c:forEach items="${userorder }" var="uo">
					<div class="info" id="${uo.id }" onclick="address('${uo.id}')">
						<p>收货人：${uo.deliverman}</p>
						<p>地址：${uo.deliveraddress}</p>
						<p>电话:${uo.deliverphone}</p>
						<img  src="/finalweb/images/order_p1.png"  style="display:none;"/>
						<!-- /finalweb/images/order_p1.png -->
					</div>
					</c:forEach>
					<div class="add" id="add">
						<img src="/finalweb/images/order_p2.png" />
					</div>
				</div>
				
				<div class="new_add" style="display: none;">
					<form  action="${pageContext.request.contextPath}/order/save" mthod="post" name="creator">
					<p class="p1">新增地址</p>
					<img src="/finalweb/images/close.png" class="close"/>
						<p>
							<span class="tl"><font color="#D70000" style="margin-right: 5px;">*</font>收货人</span>
							<input name="deliverman" type="text" />
						</p>
						<p>
							<span class="tl"><font color="#D70000" style="margin-right: 5px;">*</font>所在地区</span>
							
							<select name="province" onChange = "select()">
							</select>
							<select name="city" onChange = "select()">
							</select>
								
							</select>
						</p>
						<p>
							<span class="tl"><font color="#D70000" style="margin-right: 5px;">*</font>详细地址</span>
							<input name="address" type="text" style="width: 500px;"/>
						</p>
						<p>
							<span class="tl"><font color="#D70000" style="margin-right: 5px;">*</font>联系电话</span>
							<input name="phone" type="tel" />
						</p>
						<p>
							<span class="tl">邮编</span>
							<input name="postcode" type="text" />
						</p>
						<input type="submit" value="保存"/>
					</form>
				</div>
			</div>
			
			<div class="order_b1">
				<p class="title">支付方式</p>
				<div class="pay active">
					<img src="/finalweb/images/pay_way1.png" style="margin-top: 3px;" />
					<img src="/finalweb/images/order_p1.png" class="img2" style="display:block;"/>
				</div>
				<div class="pay">
					<img src="/finalweb/images/pay_way2.png" style="margin-top: 10px;"/>
					<img src="/finalweb/images/order_p1.png" class="img2" />
				</div>
			</div>
			<script>
					$(function(){
						$("#add").click(function(){
							$(".old_add").hide();
							$(".new_add").fadeIn();
						});
						$(".add_btn").click(function(){
							$(".new_add").hide();
							$(".old_add").fadeIn();
						});
						$(".close").click(function(){
							$(".new_add").hide();
							$(".old_add").fadeIn();
						});
						$(".pay").click(function(){
							$(".pay").removeClass("active");
							$(".pay").find(".img2").hide();
							$(this).addClass("active");
							$(this).find(".img2").show();
						});
					});
				</script>
			<div class="order_b1">
				<p class="title">商品与配送方式<a href="shop_car.html" style="color:#474747;">[返回购物车]</a></p>
				<c:forEach items="${orderproduct }" var="op">
				<div class="song">
					<p class="pic"></p>
					<p class="name">${op.productname }</p>
					<p class="num"><font color="#3CA5F1">${op.productprice }</font>*${op.ordernum }</p>
					<p class="totle"></p>
				</div>
				</c:forEach>
			</div>
			
			<script type="text/javascript">
				$(function(){
					var bool=true;
					$(".dq").click(function(){
						if(bool){
							$(this).parent(".can").children(".more").fadeIn().css("display","block");
							$(this).parent(".can").children("img").css("transform","rotate(90deg)");
							bool=false;
							var bb=true;
							$(this).parent(".can").children(".more").click(function(){
								if(bb){
									$(this).css("border","#000000 1px solid");
								    bb=false;
								}else{
									$(this).css("border","none");
									bb=true;
								}
								
							});
						}else{
							$(this).parent(".can").children(".more").fadeOut();
							$(this).parent(".can").children("images").css("transform","rotate(0deg)");
							bool=true;
						}
						
					});
				});
			</script>
			<div class="order_b2">
				<p>1件商品，共计： 	￥${sum }</p>
				<p>总运费： 	￥0</p>
				<p>优惠共计：	-￥0</p>
			</div>
			<p class="order_b3">
				<span>订单总计：<font color="#de0000" style="font-size: 28px;">￥${sum }</font></span>
				<span><a href="${pageContext.request.contextPath}/order/saveorder">提交订单</a></span>
			</p>
		</div>
<!-- body end here -->
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