<%@ page import="static POJO.Constants.LOGIN_BUTTON" %>
<%@ page import="static POJO.Constants.TO_LOGIN_JSP_PAGE" %>
<%@ page import="static POJO.Constants.*" %><%--
  Created by IntelliJ IDEA.
  User: shiw
  Date: 12/12/19
  Time: 9:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <title>Low Interest Personal Loans | Get easy loans online in India - finzy</title>
</head>

<body>
<nav class="navbar navbar-expand-md bg-light navbar-light">
    <div style="display: flex;">
        <a class="navbar-brand" href=<%=INDEX%>>
            <img src="image/nav_logo1.png" alt="FINZI">
        </a>

        <span id="left-bar"></span>
        <div class="nav-logo2-div">
            <a class="nav-link logo-text " href="#"><img class="nav-logo-2 " src="image/nav_log2.png" alt="BFC">NBFC-P2P
                <p id="below-text">Registered with RBI</p>
            </a>
        </div>

    </div>

    <button class="navbar-toggler" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav left-link text-center ml-auto">
            <li class="nav-item active">
                <a href="#span" class="nav-link">BORROW</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">INVEST</a>
            </li>

            <li class="nav-item">
                <a href=<%=CONTACT_US%> class="nav-link">CONTACT US</a>
            </li>
            <li class="nav-item">
                <a href=<%=TO_LOGIN_JSP_PAGE%> id="login-button" class="nav-link"><%=LOGIN_BUTTON%></a>
            </li>
            <form action="<%=LOG_OUT_REQUEST%>" method="GET">
                <input type="submit" id="logout-button"  value="LOGOUT" style="color: #0d3ab3;margin-top: 30%;font-size: 13px;background-color: #f8f9fa; border: none;letter-spacing:1.05px;" >
            </form>
            <li class="nav-item" class="nav-link">
                <a id="apply1" href="#" class="nav-link"><span id="apply-text1">APPLY NOW</span></a>
            </li>
        </ul>



    </div>
</nav>
