<%-- 
    Document   : home
    Created on : 20 mars 2016, 16:17:45
    Author     : Mataking
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="Service.LoginService"%>
<%@page import="java.util.Date"%>
<%@page import="POJO.Utilisateur"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <title>Login accept</title>
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
<center>
     <div id="container">
         <h1>Result Page</h1>
             <b>This is Sample Result Page</b><br/>
             <%=new Date()%></br>
                <%
                    Utilisateur utilisateur = (Utilisateur) session.getAttribute("user");
                %>
             
  
             <b>Welcome <%= utilisateur.getPseudoUtilisateur()%></b>     
             <br/>
             <a href="logout">logout</a>
         </p>
 
         <table>
             <thead>
                 <tr>
                     <th>User ID</th>
                     <th>First Name</th>
                     <th>Middle Name</th>
                     <th>Last Name</th>
                     <th>email</th>                
                 </tr>
             </thead>
             <tbody>
                <%
                   LoginService loginService = new LoginService();
                   List<Utilisateur> list = loginService.getListOfUsers();
                   for(Utilisateur user : list){
                %>
                 <tr>
                     <td><%=user.getIdUtilisateur()%></td>
                     <td><%=user.getNomUtilisateur()%></td>
                     <td><%=user.getPrenomUtilisateur()%></td>
                     <td><%=user.getPseudoUtilisateur()%></td>
                     <td><%=user.getEmail()%></td>
                 </tr>
                 <%}%>
             <tbody>
         </table>    
         <br/>
     </div>
    </center>
</body>
</html>
