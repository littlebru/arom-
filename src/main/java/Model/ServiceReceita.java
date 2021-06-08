package Model;

import org.hibernate.internal.build.AllowSysOut;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class ServiceReceita {

    // Listagem de Receita
    public List<Receita> listaReceitas(){
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("aromeDB");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        List<Receita> receitas;
        Query query = entityManager.createQuery("SELECT u FROM RECEITA ORDER BY NOME ASC");

        receitas = query.getResultList();

        entityManagerFactory.close();
        entityManager.close();

        System.out.println("O que tem dentro: " + receitas);
        System.out.println("tamanho: " + receitas.size());

        return receitas;
    }

}
