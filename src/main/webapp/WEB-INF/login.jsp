<%-- 
    Document   : login
    Created on : 20 mars 2016, 16:16:54
    Author     : Mataking
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <title>Login</title>
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
        <form method="post" action="login">
            <div style="padding: 100px 0 0 250px;">
                <div id="login">
                    <h2>Home Page</h2>                     
                        <div id="login-name" style="margin-top:20px;">Pseudo:</div>
                        <div id="login-field">
                            <input name="pseudo" class="form-login" title="Pseudo" value="" size="30" maxlength="50" />
                        </div>
                        <div id="login-name">Mot de passe:</div>
                        <div id="login-field">
                            <input name="mdp" type="mdp" class="form-login" title="Mdp" value="" size="30" maxlength="48" />
                        </div>         
                        <br/>
                        <input style="margin-left:10px;" type="submit" value="Login" />
                </div>
                <br/>
                <span class="login-options">
                    Nouvel Utilisateur ? <a href="inscription" style="margin-left:30px;">Enregistrez-vous!</a>
                </span>  
                <br/>
                <span class="login-visiteur">
                    Mode Visiteur  <a href="home" style="margin-left:30px;">Rejoindre le site</a>
                </span>   
            </div>
        </form
        <footer>
            
        </footer>
    </body>
</html>