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
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link rel="stylesheet" type="text/css" href="css/style.css"/>
     <title>Result Page</title>
</head>
<body>
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
