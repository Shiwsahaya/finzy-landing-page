<%@ page import="static POJO.Constants.USER_NAME" %>
<%@ page import="static POJO.Constants.PASSWORD" %>
<%@ page import="static POJO.Constants.*" %><%--
  Created by IntelliJ IDEA.
  User: shiw
  Date: 11/12/19
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="navbar.jsp"/>
<link rel="stylesheet" href="css/login.css">
<style>
    h3{
        text-align: center;
        color: red;
    }
</style>
<% String s=request.getParameter("msg");
    if(s!=null)
    {
        out.println("<h3>");
        out.println(s);
        out.println("</h3>");
    }
%>

<div class="login-form">
    <form action=<%=LOGIN_REQUEST%> method="POST">

        <label for="contact-name" class="login-label"><%=USER_NAME%></label><br>
        <input type="text" id="contact-name" name="name"><br>

        <label for="contact-mobile" class="login-label"><%=PASSWORD%></label><br>
        <input type="password" id="contact-mobile" name="password"><br>

        <input type="submit" value="<%=SUBMIT%>">
    </form>
</div>
<jsp:include page="<%=FOOTER%>"/>