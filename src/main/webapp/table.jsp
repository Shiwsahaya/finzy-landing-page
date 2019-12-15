<%--
  Created by IntelliJ IDEA.
  User: shiw
  Date: 12/12/19
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.Contact"%>
<%@ page import="static POJO.Constants.LOGIN_BUTTON" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="navbar.jsp"/>

<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
if(session.getAttribute("sessionName")==null)
    response.sendRedirect("login.jsp");
%>

<h1 align="center">All Feedback Details</h1>
<%   List<Contact> list=(List)request.getAttribute("results");%>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Mobile</th>
        <th scope="col">Email</th>
        <th scope="col">Message</th>
    </tr>
    </thead>
    <tbody>
    <% for(Contact value:list){%>
    <tr>
        <td><%= value.getName()%></td>
        <td> <%= value.getMobile()%></td>
        <td><%=value.getEmail()%></td>
        <td><%= value.getMessage()%></td>
    </tr>
    <%}%>
    </tbody>

</table>
<jsp:include page="footer.jsp"/>