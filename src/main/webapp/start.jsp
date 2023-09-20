<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Start</title>
<style>
    .task {
        display: flex;
        padding: 10px 20px;
        justify-content: center;
    }
    .start {
        text-align: center;
        border: 1px solid #FFF;
        padding: 20px;
        background-color:#FFE5EC ;
        margin-top: 30px;
        width: 30%;
        margin-left: 35%;
    }
    body{
    background-image:url('https://as2.ftcdn.net/v2/jpg/03/43/50/91/1000_F_343509129_gQ6x0SUGpjeI0KRchmxNRVlARaavGjGn.jpg');
    background-size:cover;
    
    }
</style>
</head>
<body>
<div class="task"><h1 align="center">QUIZ APPLICATION</h1></div>
<%
HttpSession mys = request.getSession();
String username = (String) mys.getAttribute("username");
%>
<form class="start" action="Quiz.jsp" method="post">
    <label for="username">Username</label>
    <input type="text" value="<%= username %>" name="userName" readonly><br><br>
    <input type="submit" style="font-size:20px;" value="START QUIZ">
</form>
</body>
</html>
