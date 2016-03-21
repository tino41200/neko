<%-- 
    Document   : inscription
    Created on : 15 mars 2016, 21:26:00
    Author     : Mataking
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Inscription</title>
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
        
        <form method="post" action="inscription">
            
            <fieldset>
                <legend>Inscription</legend>
                <p>Vous pouvez vous inscrire via ce formulaire.</p>

                <label for="email">Adresse email <span class="requis">*</span></label>
                <input type="email" id="email" name="email" value="${utilisateur.email}" size="20" maxlength="60" />
                <span class="erreur">${form.erreurs['email']}</span>
                <br />

                <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input type="mdp" id="motdepasse" name="mdp" value="" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['mdp']}</span>
                <br />

                <label for="confirmation">Confirmation<span class="requis">*</span></label>
                <input type="password" id="confirmation" name="confirmation" value="" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['confirmation']}</span>
                <br />

                <label for="nom">Pseudo<span class="requis">*</span></label>
                <input type="pseudoUtilisateur" id="pseudoUtilisateur" name="pseudoUtilisateur" value="${utilisateur.pseudoUtilisateur}" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['pseudoUtilisateur']}</span>
                <br />
                
                <label for="nom">Nom</label>
                <input type="text" id="nomUtilisateur" name="nomUtilisateur" value="${utilisateur.nomUtilisateur}" size="20" maxlength="40" />
                <br />
                
                <label for="nom">Prénom</label>
                <input type="text" id="prenomUtilisateur" name="prenomUtilisateur" value="${utilisateur.prenomUtilisateur}" size="20" maxlength="20" />
                <br />
                

                <input type="submit" value="Inscription" class="sansLabel" />

                <br />
                
                <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>

            </fieldset>
        </form>
    </body>
</html>