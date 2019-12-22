<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.hr.entity.EASYBUY_COMMENT"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>店铺管理 -Hello-商城</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/function-manage.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" /></div>
	<div class="help"><a href="../indexSelect">返回前台页面</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="index.jsp">首页</a></li>
			<li><a href="user">用户</a></li>
			<li><a href="productSelect">商品</a></li>
			<li><a href="ordersel">订单</a></li>
			<li class="current"><a href="SelManage">留言</a></li>
			<li><a href="newsselect">新闻</a></li>
		</ul>
	</div>
</div>
<div id="childNav"><div align="center"> 
	</div><div align="left"> 
		店家${name.EU_USER_ID}您好，欢迎回到管理店铺。 
	 
</div></div>
<div id="position" class="wrap">
	您现在的位置：<a href="index.jsp">Hello-商城</a> &gt; 管理店铺
</div>
<div id="main" class="wrap">
	<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>商品信息</dt>
				<dd><em><a href="productAdd">新增</a></em><a href="productSelect">商品管理</a></dd>
				<dt>订单管理</dt>
				<dd><a href="ordersel">订单管理</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>回复留言</h2>
		<div class="manage">
			<form action="UpManage" method="post">
			<%EASYBUY_COMMENT comment=(EASYBUY_COMMENT)request.getAttribute("list"); %>
				<table class="form">
					<tr>
						<td class="field">留言ID：</td>
						<td><input type="text" class="text" name="orderId" readonly="readonly" value="<%=comment.getEC_ID() %>"  /></td>
					</tr>
					<tr>
						<td class="field">留言姓名：</td>
						<td><input type="text" class="text" name="name" readonly="readonly" value="<%=comment.getEC_NICK_NAME() %>" /></td>
					</tr>
					<tr>
						<td class="field">留言内容：</td>
						<td><textarea name="Content" readonly="readonly"> <%=comment.getEC_CONTENT()%></textarea></td>
					</tr>
					<tr>
						<td class="field">回复内容：</td>
						<td><textarea name="replyContent"></textarea></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="更新" /></label></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy;Web大作业
</div>
</body>
</html>
