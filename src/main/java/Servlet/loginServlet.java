/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

/**
 *
 * @author Mataking
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import POJO.Utilisateur;
import Service.LoginService;


public class loginServlet extends HttpServlet {
        public static final String VUE = "/WEB-INF/login.jsp";
    
        public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
            this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        }
        
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

	 String pseudoUtilisateur = request.getParameter("pseudo");
            System.out.println(pseudoUtilisateur);
	 String mdp = request.getParameter("mdp");
            System.out.println(mdp);
	 LoginService loginService = new LoginService();
	 boolean result = loginService.authenticateUser(pseudoUtilisateur, mdp);
	 Utilisateur utilisateur = loginService.getUserByPseudo(pseudoUtilisateur);
	 if(result == true){
             System.out.println("Jesuis entré");
		 request.getSession().setAttribute("user", utilisateur);		
		 //response.sendRedirect("home.jsp");
                 this.getServletContext().getRequestDispatcher( "/WEB-INF/loginValide.jsp" ).forward( request, response );
	 }
	 else{
             System.out.println("Jesuis en erreur");
		 //response.sendRedirect("error.jsp");
                    this.getServletContext().getRequestDispatcher( "/WEB-INF/error.jsp" ).forward( request, response );

	 }

}

}
