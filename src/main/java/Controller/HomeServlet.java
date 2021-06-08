package Controller;

import Model.Receita;
import Model.ServiceReceita;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet({"*.action", "/"})

public class HomeServlet extends HttpServlet{

    // fabrica das entidades
    private static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("aromeDB");

    // gerenciador das entidades
    private static EntityManager entityManager = entityManagerFactory.createEntityManager();

    // rotas de paginas
    @Override
    public void doGet(HttpServletRequest req,
                      HttpServletResponse res){

        // recuperação da url das seções
            String path = req.getServletPath();
            ServletContext sc = req.getServletContext();
            req.setAttribute("nome","oi meu nome � bruna");

           log(path + " running");

            switch (path) {
                case "/":
                    try {
                        sc.getRequestDispatcher("/jsp/home.jsp").forward(req, res);
                    } catch (Exception e) {
                    }
                    break;
                case "/ingredientes":
                    try {
                        sc.getRequestDispatcher("/jsp/ingredientes.jsp").forward(req, res);
                    } catch (Exception e) {
                    }
                    break;
                case "/receitas":
                    try {
                        sc.getRequestDispatcher("/jsp/receitas.jsp").forward(req, res);
                    } catch (Exception e) {
                    }
                    break;
                case "/cadastrarReceitas":
                    try {
                        sc.getRequestDispatcher("/jsp/CadastroReceitas.jsp").forward(req, res);
                    } catch (Exception e) {
                    }
                    break;
                case "/cadastrarIngrediente":
                    try {
                        sc.getRequestDispatcher("/jsp/CadastroIngrediente.jsp").forward(req, res);
                    } catch (Exception e) {
                    }
                    break;
                default:
                    try {
                        sc.getRequestDispatcher("/jsp/pagina404.jsp").forward(req, res);
                    } catch (Exception e) {
                    }
            }
        }
}
