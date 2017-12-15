<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台商品列表</title>
<link href="/finalweb/bgcss/css.css" type="text/css" rel="stylesheet" />
<link href="/finalweb/bgcss/main.css" type="text/css" rel="stylesheet" />
<link rel="shortcut icon" href="/finalweb/images/main/favicon.ico" />
<style>
body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
#searchmain{ font-size:12px;}
#search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF; float:left}
#search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
#search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
#search form input.text-but{height:24px; line-height:24px; width:55px; background:url(/finalweb/images/main/list_input.jpg) no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
#search a.add{ background:url(/finalweb/images/main/add.jpg) no-repeat -3px 7px #548fc9; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF; float:right}
#search a:hover.add{ text-decoration:underline; color:#d2e9ff;}
#main-tab{ border:1px solid #eaeaea; background:#FFF; font-size:12px;}
#main-tab th{ font-size:12px; background:url(/finalweb/images/main/list_bg.jpg) repeat-x; height:32px; line-height:32px;}
#main-tab td{ font-size:12px; line-height:40px;}
#main-tab td a{ font-size:12px; color:#548fc9;}
#main-tab td a:hover{color:#565656; text-decoration:underline;}
.bordertop{ border-top:1px solid #ebebeb}
.borderright{ border-right:1px solid #ebebeb}
.borderbottom{ border-bottom:1px solid #ebebeb}
.borderleft{ border-left:1px solid #ebebeb}
.gray{ color:#dbdbdb;}
td.fenye{ padding:10px 0 0 0; text-align:right;}
.bggray{ background:#f9f9f9}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top">您的位置：订单管理</td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="search">
  		<tr>
   		 <td width="90%" align="left" valign="middle">
	         <form method="post" action="${pageContext.request.contextPath}/bgorder/findOrderbyId">
	        	 <span>请输入要查找订单的用户ID：</span>
	         	<input type="text" name="id" value="" class="text-word">
	         	<input  type="submit" value="查询" class="text-but">
	         </form>
         </td>
  		  <td width="10%" align="center" valign="middle" style="text-align:right; width:150px;"><a href="add.html" target="mainFrame" onFocus="this.blur()" class="add">新增管理员</a></td>
  		</tr>
	</table>
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
      <tr>
        <th align="center" valign="middle" class="borderright">订单编号</th>
        <th align="center" valign="middle" class="borderright">订单用户编号</th>
        <th align="center" valign="middle" class="borderright">支付方式</th>
        <th align="center" valign="middle" class="borderright">地址编号</th>
        <th align="center" valign="middle">操作</th>
      </tr>
      
      <c:forEach items="${bgorder }" var="bgo">
    	  <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
       	 <td align="center" valign="middle" class="borderright borderbottom">${bgo.id }</td>
      	  <td align="center" valign="middle" class="borderright borderbottom">${bgo.userid }</td>
      	  <td align="center" valign="middle" class="borderright borderbottom">${bgo.payway }</td>
      	  <td align="center" valign="middle" class="borderright borderbottom">${bgo.orderuserid }</td>
 
      	  <td align="center" valign="middle" class="borderbottom"><a href="${pageContext.request.contextPath}/deleteOrder.jsp" target="mainFrame" onFocus="this.blur()" class="add">删除</a></td>
     	 </tr>
      </c:forEach>
    </table></td>
    </tr>
  <tr>
<!--  		<a  href="${pageContext.request.contextPath}/bgproduct/findAll">首页</a>|
				<a 	href="${pageContext.request.contextPath}/bgproduct/findFPage">上一页</a>
				当前页：<c:out value="${pagenumber }"></c:out>
				<a 	href="${pageContext.request.contextPath}/bgproduct/findNPage">下一页</a>|
				<a 	href="${pageContext.request.contextPath}/bgproduct/findLPage">尾页</a>
				-->    	
  </tr>
</table>
</body>
</html>