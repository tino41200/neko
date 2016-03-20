/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Formulaire;

/**
 *
 * @author Mataking
 */
import POJO.Utilisateur;
import java.util.HashMap;
import java.util.Map;
import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;


public class InscriptionFormulaire {
    private static final String CHAMP_PSEUDO_UTILISATEUR = "pseudoUtilisateur";
    private static final String CHAMP_MDP = "mdp";
    private static final String CHAMP_NOM_UTILISATEUR = "nomUtilisateur";
    private static final String CHAMP_PRENOM_UTILISATEUR = "prenomUtilisateur"; 
    private static final String CHAMP_EMAIL = "email"; 
    private static final String CHAMP_CONFIRMATION = "confirmation";
    
    @EJB
    POJO.Utilisateur utilisateur = new Utilisateur();

    private String resultat;
    private final Map<String, String> erreurs = new HashMap<>();

    public String getResultat() {
        return resultat;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public POJO.Utilisateur Inscription( HttpServletRequest request ) {
//        String idUtilisateur = getValeurChamp( request, CHAMP_ID_UTILISATEUR );
        String pseudoUtilisateur = getValeurChamp( request, CHAMP_PSEUDO_UTILISATEUR );
        String mdp = getValeurChamp( request, CHAMP_MDP );
        String nomUtilisateur = getValeurChamp( request, CHAMP_NOM_UTILISATEUR );
        String prenomUtilisateur = getValeurChamp( request, CHAMP_PRENOM_UTILISATEUR );
        String email = getValeurChamp( request, CHAMP_EMAIL ); 
        String confirmation = getValeurChamp( request, CHAMP_CONFIRMATION );

        try {
            validationEmail( email );
        } catch ( Exception e ) 
        {
            setErreur( CHAMP_EMAIL, e.getMessage() );
        }
        
        try {
            validationMotsDePasse( mdp, confirmation );
        } catch ( Exception e ) 
        {
            setErreur( CHAMP_MDP, e.getMessage() );
            setErreur( CHAMP_CONFIRMATION, null );
        }

        try {
            validerPseudoUtilisateur( pseudoUtilisateur );
        } catch ( Exception e ) 
        {
            setErreur( CHAMP_PSEUDO_UTILISATEUR, e.getMessage() );
        }

        if ( erreurs.isEmpty() ) 
        {
            resultat = "Succès de l'inscription.";            
        } else 
        {
            resultat = "Échec de l'inscription.";
        }
         
        utilisateur.setEmail(email);
        utilisateur.setMdp(mdp);
        utilisateur.setNomUtilisateur(nomUtilisateur);
        utilisateur.setPrenomUtilisateur(prenomUtilisateur);
        utilisateur.setPseudoUtilisateur(pseudoUtilisateur);

        
        return utilisateur;
    }
    
    private static String getValeurChamp( HttpServletRequest request, String nomChamp ) 
    {
        String valeur = request.getParameter( nomChamp );
        if ( valeur == null || valeur.trim().length() == 0 ) 
        {
            return null;
        } else 
        {
            return valeur.trim();
        }
    }
    private void validationEmail( String email ) throws Exception 
    {
        if ( email != null ) 
        {
            if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) 
            {
                throw new Exception( "Merci de saisir une adresse mail valide." );
            }
        } else 
        {
            throw new Exception( "Merci de saisir une adresse mail." );
        }
    }

    private void validationMotsDePasse(String motDePasse, String confirmation) throws Exception 
    {
        if ( motDePasse != null && confirmation != null ) {
            if ( !motDePasse.equals( confirmation ) ) {
                throw new Exception( "Les mots de passe entrés sont différents, merci de les saisir à nouveau." );
            } else if ( motDePasse.length() < 3 ) {
                throw new Exception( "Les mots de passe doivent contenir au moins 3 caractères." );
            }
        } else {
            throw new Exception( "Merci de saisir et confirmer votre mot de passe." );
        }
    }

    private void validerPseudoUtilisateur(String pseudoUtilisateur) throws Exception 
    {
        if ( pseudoUtilisateur != null && pseudoUtilisateur.length() < 3 ) {
            throw new Exception( "Le nom d'utilisateur doit contenir au moins 3 caractères." );
        } 
        if (pseudoUtilisateur == null){
            throw new Exception( "Merci de saisir un pseudo" );
       }
    }

/*
 * Ajoute un message correspondant au champ spécifié à la map des erreurs.
 */
    private void setErreur(String champ, String message) 
    {
        erreurs.put( champ, message );
    }
}
