<%--
  Created by IntelliJ IDEA.
  User: shiw
  Date: 14/12/19
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    <%if(session.getAttribute("sessionName")!=null)
    {
    %>
    document.getElementById("login-button").style.display="none";
    document.getElementById("logout-button").style.display="block";

    <% }
    else
         {%>
    document.getElementById("logout-button").style.display="none";
    document.getElementById("login-button").style.display="block";
    <% }%>
</script>
</body>
</html>
