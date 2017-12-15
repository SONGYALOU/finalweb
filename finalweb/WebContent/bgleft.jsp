<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>左侧导航menu</title>
<link href="/finalweb/bgcss/css.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/finalweb/bgjs/sdmenu.js"></script>
<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
</script>
<style type=text/css>
html{ SCROLLBAR-FACE-COLOR: #538ec6; SCROLLBAR-HIGHLIGHT-COLOR: #dce5f0; SCROLLBAR-SHADOW-COLOR: #2c6daa; SCROLLBAR-3DLIGHT-COLOR: #dce5f0; SCROLLBAR-ARROW-COLOR: #2c6daa;  SCROLLBAR-TRACK-COLOR: #dce5f0;  SCROLLBAR-DARKSHADOW-COLOR: #dce5f0; overflow-x:hidden;}
body{overflow-x:hidden; background:url(/finalweb/images/main/leftbg.jpg) left top repeat-y #f2f0f5; width:194px;}
</style>
</head>
<body onselectstart="return false;" ondragstart="return false;" oncontextmenu="return false;">
<div id="left-top">
	<div><img src="/finalweb/images/main/member.gif" width="44" height="44" /></div>
    <span>用户：admin<br>角色：超级管理员</span>
</div>
    <div style="float: left" id="my_menu" class="sdmenu">
      <div class="collapsed">
        <span>商品管理</span>
        <a href="${pageContext.request.contextPath}/bgproduct/findAll" target="mainFrame" onFocus="this.blur()">商品列表</a>
        <a href="${pageContext.request.contextPath}/bgproduct/gotoadd" target="mainFrame" onFocus="this.blur()">添加商品</a>
        <a href="${pageContext.request.contextPath}/editProduct1.jsp" target="mainFrame" onFocus="this.blur()">修改商品</a>
        <a href="${pageContext.request.contextPath}/deleteProduct.jsp" target="mainFrame" onFocus="this.blur()">删除商品</a>
      </div>
      <div>
        <span>用户管理</span>
        <a href="${pageContext.request.contextPath}/admin/findAll" target="mainFrame" onFocus="this.blur()">用户列表</a>
        <a href="${pageContext.request.contextPath}/adduser.jsp" target="mainFrame" onFocus="this.blur()">添加用户</a>
        <a href="${pageContext.request.contextPath}/edituser.jsp" target="mainFrame" onFocus="this.blur()">修改用户信息</a>
        <a href="${pageContext.request.contextPath}/deleteUser.jsp" target="mainFrame" onFocus="this.blur()">删除用户</a>
      </div>
      <div>
        <span>订单管理</span>
        <a href="${pageContext.request.contextPath}/bgorder/findAll" onFocus="this.blur()" target="mainFrame">订单列表</a>
        <a href="${pageContext.request.contextPath}/deleteOrder.jsp" onFocus="this.blur()" target="mainFrame">删除订单</a>
      </div>
    </div>
</body>
</html>
</html>