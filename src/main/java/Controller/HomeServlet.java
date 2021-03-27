package Controller;


import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"*.action", "/"})

public class HomeServlet extends HttpServlet{

    @Override
    public void doGet(HttpServletRequest req,
                      HttpServletResponse res){

            String path = req.getServletPath();
            ServletContext sc = req.getServletContext();

           log(path + " testando");

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
