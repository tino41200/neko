/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import POJO.Tablechat;
import Service.ChatsService;
import static Servlet.loginServlet.VUE;
import java.io.IOException;
import java.util.List;
import java.util.ListIterator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jgroups.demos.Chat;

/**
 *
 * @author Mataking
 */
public class listeChatServlet extends HttpServlet{
    public static final String VUE = "/WEB-INF/listeChats.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{           
            this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        }
}
