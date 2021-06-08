package Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

@SuppressWarnings("deprecation")
abstract class SessionControl {
    private static SessionFactory factory;

    static{
        try{
            factory = new Configuration().configure().buildSessionFactory();
        }catch(Throwable ex){
            throw new ExceptionInInitializerError(ex);
        }
    }

    public synchronized static SessionFactory getFactry(){
        return factory;
    }

    public static void shutdown(){
        getFactry().close();
    }

    public synchronized static Session getSession(){
        return factory.openSession();
    }
}
