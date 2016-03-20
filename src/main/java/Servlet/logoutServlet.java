/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import static Servlet.logoutServlet.VUE;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mataking
 */
public class logoutServlet extends HttpServlet{
    public static final String VUE = "/WEB-INF/logout.jsp";
    
       public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
            this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        }       
}
