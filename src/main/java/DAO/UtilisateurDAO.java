/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import POJO.Utilisateur;
import java.util.List;
import nekoatsume.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Mataking
 */
public class UtilisateurDAO {
  public List<Utilisateur> getAllUtilisateur() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<Utilisateur> actors = session.createQuery("FROM Utilisateur").list();
        session.close();
        return actors;
    }
 
    public Utilisateur getWithId(int id) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Criteria cr = session.createCriteria(Utilisateur.class);
        cr.add(Restrictions.eq("Id_utilisateur", id));
        Utilisateur utilisateur = (Utilisateur) cr.uniqueResult();
        session.close();
        return utilisateur;
    }
    
    public void insertUser(POJO.Utilisateur u){
        Transaction trans = null;
   
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            trans = session.beginTransaction();
            session.save(u);
            session.getTransaction().commit();
        } catch (RuntimeException e) {
            if(trans != null){
                trans.rollback();
            }
        }finally{
            session.flush();
            session.close();
        }
    }
}