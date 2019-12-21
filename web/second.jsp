
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.nio.channels.Channel" %><%--<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/28/028
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection conn= DriverManager.getConnection("jdbc:sqlserver://localhost:1444;DatabaseName=会议;user=sa;password=111111111");
    Statement stat=conn.createStatement();
    String sql="SELECT sna FROM Table_1";
    ResultSet rs=stat.executeQuery(sql);
    while(rs.next()){
        String syb=rs.getString("sna");
        out.println(syb+"");
    }
    stat.close();
    conn.close();
%>

</body>
</html>
