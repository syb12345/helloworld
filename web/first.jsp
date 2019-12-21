<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/28/028
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String identity=request.getParameter("identity");
    if(identity.equals("manager"))
    {%>
<script type="text/javascript">
    window.location="second.jsp";
</script>

   <%
        }
    if(identity.equals("organizer"))
    { %>
    <script type="text/javascript">
    window.location="third.jsp";
    </script>
   <% }
    if(identity.equals("attender"))
{
   %>
<script type="text/javascript">
    window.location="fourth.jsp";
</script>
<%
}
%>
</body>
</html>
