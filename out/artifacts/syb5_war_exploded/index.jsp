<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/4/004
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

  <title>登录界面</title>
</head>
<body>
<form action="/FirstServlet" method="get">
  请输入学号：<input type="text" name="sno"><br>
  请输入姓名：<input name="name" type="text"><br>
  <input type="submit"  value="登录">
  <input type="reset" value="重置">
</form>
</body>
</html>
