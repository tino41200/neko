/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mataking
 */
@WebServlet("/inscriptionServlet")
public class inscriptionServlet extends HttpServlet {
    public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
    
    public static final String VUE = "/WEB-INF/inscription.jsp";
		
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
	
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Préparation de l'objet formulaire */
        Service.InscriptionFormulaire form = new Service.InscriptionFormulaire();
	
        /* Appel au traitement et à la validation de la requête, et récupération du bean en résultant */
        POJO.Utilisateur utilisateur = form.Inscription(request);

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );

        request.setAttribute( ATT_USER, utilisateur );

        /* Vérification de la MAP<String,String> en cas d'erreur sinon insertion dans la bdd */
        if(form.getErreurs().containsKey("email") || form.getErreurs().containsKey("mdp") || 
                form.getErreurs().containsKey("confirmation") || form.getErreurs().containsKey("pseudoUtilisateur")){ 
            this.getServletContext().getRequestDispatcher( VUE ).forward( request, response ); 
        }        
        else{
            form.insertUser(utilisateur);
            this.getServletContext().getRequestDispatcher( VUE ).forward( request, response ); 
            }
        
    }
}       
        
