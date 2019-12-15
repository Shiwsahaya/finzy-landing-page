<%--
  Created by IntelliJ IDEA.
  User: shiw
  Date: 11/12/19
  Time: 12:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="POJO.Constants" %>
<%@ page import="static POJO.Constants.USER_NAME" %>
<%@ page import="static POJO.Constants.MOBILE" %>
<%@ page import="static POJO.Constants.*" %>
<jsp:include page="navbar.jsp"/>
<link rel="stylesheet" href="css/login.css">
<div class="login-form">
    <form action=<%=CONTACT_US_REQUEST%> method="post" class="contactUs">

        <h2 class="contact-heading">Do you have a question or feedback?</h2>
        <p class="contact-text">Send us a message and we will get back to you.</p>
        <label for="contact-name" class="label-contact"><%=USER_NAME%></label><br>
        <input type="text" id="contact-name" name="name"><br>

        <label for="contact-mobile" class="label-contact"><%=MOBILE%></label><br>
        <input type="text" id="contact-mobile" name="mobile"><br>

        <label for="contact-email" class="label-contact"><%=EMAIL%></label><br>
        <input type="email" id="contact-email" name="email"><br>

        <label for="contact-message" class="label-contact"><%=MESSAGE%></label><br>
        <textarea name="message" id="contact-message" cols="58" rows="4"></textarea><br>

        <input type="submit" value="<%=SUBMIT%>">
    </form>
</div>
<jsp:include page="footer.jsp"/>