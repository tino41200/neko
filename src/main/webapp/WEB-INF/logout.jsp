<%-- 
    Document   : logout
    Created on : 20 mars 2016, 16:18:14
    Author     : Mataking
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Logout</title>
        <link type="text/css" rel="stylesheet" href="form.css" />
    </head>
    <body>
        <nav>
            <ul id="menu">
                <li><a href="inscription">Inscription</a>
                <ul>
                    <li><a href="#">liste chats</a></li>
                    <li><a href="#">chats commun</a></li>
                    <li><a href="#">chats rares</a></li>
		</ul>
                </li>
                <li><a href="login"/>Login</a></li>
                <li><a href="accueil"/>Accueil</a></li>
            </ul>
        </nav> 
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