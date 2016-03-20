<%-- 
    Document   : logout
    Created on : 20 mars 2016, 16:18:14
    Author     : Mataking
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
     <link rel="stylesheet" type="text/css" href="css/style.css">
     <title>logout Page</title>
</head>
<body>

    <%
        session.removeAttribute("useID");
        session.removeAttribute("password");
        session.invalidate();
    %>

<center>
     <h1>You have successfully logged out</h1>
    Mode login <a href="login">click here</a>
<br/>
    Mode visiteur <a href="home">click here</a>.
</center>
</body>
</html>