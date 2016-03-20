
package Service;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import nekoatsume.HibernateUtil;
import POJO.Utilisateur;

public class LoginService {

    public boolean authenticateUser(String pseudoUtilisateur, String mdp) {
        Utilisateur utilisateur = getUserByPseudo(pseudoUtilisateur);          
        if(utilisateur!=null && utilisateur.getPseudoUtilisateur().equals(pseudoUtilisateur) && utilisateur.getMdp().equals(mdp)){
            return true;
        }else{ 
            return false;
        }
    }

    public Utilisateur getUserByPseudo(String pseudoUtilisateur) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        Utilisateur utilisateur = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Utilisateur where pseudo_utilisateur='"+pseudoUtilisateur+"'");
            utilisateur = (Utilisateur)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return utilisateur;
    }
    
    public List<Utilisateur> getListOfUsers(){
        List<Utilisateur> list = new ArrayList<Utilisateur>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from User").list();                        
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
    }
}
