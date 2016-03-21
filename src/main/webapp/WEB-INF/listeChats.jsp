<%-- 
    Document   : listeChats
    Created on : 20 mars 2016, 21:57:11
    Author     : Mataking
--%>

<%@page import="POJO.Tablechat"%>
<%@page import="java.util.List"%>
<%@page import="Service.ChatsService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" rel="stylesheet" href="form.css" />
    </head>
    <body id="tableListeChat">
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
        <div align="center"> 
            <table>
                <thead>
                    <tr>
                        <th></th>
                        <th>Nom</th>
                        <th>Nom Japonais</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ChatsService chatsService = new ChatsService();
                        List<Tablechat> listChat = chatsService.getListChats();
                        for(Tablechat chat : listChat){
                    %>
                    <tr>
                        <td>  <img src="image/<%=chat.getNom()%>.png"  alt=""/></td>
                        <td><a href="#"><%=chat.getNom()%></a></td>
                        <td><%=chat.getNomJaponais()%></td>
                    </tr>
                    <%}%>
                <tbody>
            </table>   
        </div> 
    </body>
</html>
