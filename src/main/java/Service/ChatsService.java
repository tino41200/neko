/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import POJO.Tablechat;
import java.util.List;
import nekoatsume.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.ArrayList;


/**
 *
 * @author Mataking
 */
public class ChatsService {
    
    public List<Tablechat> getListChats(){
        List<Tablechat> list = new ArrayList<Tablechat>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from Tablechat").list();                        
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
