<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hello-商城 - 首页</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js"></script>
<script type="text/javascript">
function selectname(){
	  var name = document.getElementById("selectname").value;
	  location.href='selectProductList?name='+name;
}
function searchHot(name){
	location.href='selectProductList?name='+name;
}
</script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="images/logo.gif" /></div>
	<div class="help"><c:if test="${name!=null}"><a href="selectdd?dd=${name.EU_USER_ID }">个人订单</a></c:if><c:if test="${name!=null}">当前用户${name.EU_USER_ID }</c:if><a href="ShopSelect" class="shopping">购物车</a><c:if test="${name==null}"><a href="login.jsp">登录</a>|<a href="register.jsp">注册</a></c:if><c:if test="${name!=null}"><a href="zx">退出</a></c:if><a href="SelallServlet">留言</a><c:if test="${name.EU_STATUS==2}"><a href="manage/index.jsp" >去后台</a></c:if></div>
	<div class="navbar">
		<ul class="clearfix">
			<li class="current"><a href="indexSelect">首页</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="wrap">
		<ul class="clearfix">
			<li class="first"><a href="javascript:searchHot('音乐')">音乐</a></li>
			<li><a href="javascript:searchHot('影视')">影视</a></li>
			<li><a href="javascript:searchHot('少儿')">少儿</a></li>
			<li><a href="javascript:searchHot('动漫')">动漫</a></li>
			<li><a href="javascript:searchHot('小说')">小说</a></li>
			<li><a href="javascript:searchHot('外语')">外语</a></li>
			<li><a href="javascript:searchHot('数码相机')">数码相机</a></li>
			<li><a href="javascript:searchHot('笔记本')">笔记本</a></li>
			<li><a href="javascript:searchHot('羽绒服')">羽绒服</a></li>
			<li><a href="javascript:searchHot('秋冬靴')">秋冬靴</a></li>
			<li><a href="javascript:searchHot('运动鞋')">运动鞋</a></li>
			<li><a href="javascript:searchHot('美容护肤')">美容护肤</a></li>
			<li><a href="javascript:searchHot('饰品')">饰品</a></li>
			<li class="last"><input type="text" id="selectname"/><a href="javascript:selectname()">搜索</a></li>
		</ul>
	</div>
</div>
<div id="register" class="wrap">
	<div class="shadow">
		<em class="corner lb"></em>
		<em class="corner rt"></em>
		<div class="box">
			<h1>欢迎注册Hello-商城</h1>
			<ul class="steps clearfix">
				<li class="finished"><em></em>填写注册信息</li>
				<li class="last-current"><em></em>注册成功</li>
			</ul>
			<div class="msg">
			<c:if test="${name.EU_STATUS==2}"><a href="manage/index.jsp" >去后台</a></c:if>
			<c:if test="${name.EU_STATUS==3}"><p>管理员正在飞速赶来审核您的开店申请</p></c:if>
			<c:if test="${name.EU_STATUS==1 }">
			<p>恭喜：注册成功！</p>
				<p>正在进入首页...</p>
				<script type="text/javascript">
					setTimeout("location.href='indexSelect'", 3000);
				</script>
				</c:if>
			</div>
		</div>
	</div>
</div>
<div id="footer">
	Copyright &copy;Web大作业
</div>
</body>
</html>

