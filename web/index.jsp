<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/4/004
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<<<<<<< HEAD

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
=======
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="first.jsp" method="get">
    请你选择自己的身份<input  name="identity" type="radio" value="manager" >管理员
    <input name="identity" type="radio" value="organizer">组织者
    <input name="identity" type="radio" value="attender">参与者<br>
    请你输入账号<input name="number" type="text"><br>
    请你输入密码<input name="password" type="password"><br>
    <input type="submit" value="注册">
    <input  type="reset"  value="重置">
  </form>

  </body>
>>>>>>> a2d955412cd4644618ee922f2830be68307019c7
</html>
