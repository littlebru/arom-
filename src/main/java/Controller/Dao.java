package Controller;

import Model.Receita;
import org.hibernate.Session;
import org.hibernate.exception.ConstraintViolationException;

import java.util.List;

public class Dao {

    protected Session session;

    public List<Receita> findAll(){
        session = SessionControl.getSession();

        session.beginTransaction();

        @SuppressWarnings("unchecked")
                List<Receita> receitas = session.createQuery("from receitas").list();

        session.getTransaction().commit();
        session.flush();
        session.close();

        return receitas;
    }

    public void insert(Object object) throws ConstraintViolationException{
        session = SessionControl.getSession();

        session.beginTransaction();

        session.save(object);

        session.getTransaction().commit();

        session.flush();
        session.close();

    }

    public void update(Object object){
        session = SessionControl.getSession();

        session.beginTransaction();

        session.update(object);

        session.getTransaction().commit();

        session.flush();
        session.close();
    }

    public void delete (Object object){
        session = SessionControl.getSession();

        session.beginTransaction();

        session.delete(object);

        session.getTransaction().commit();

        session.flush();
        session.close();
    }


    public Session getSession(){
        return session;
    }



}
