package admin;

import dao.ArticleDao;
import dao.ClientDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SupprimerClientServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if(request.getSession().getAttribute("user") == null)
        {
            response.sendRedirect("Admin/login.jsp");
            return ;
        }
            
        
        String login =request.getParameter("login");

        ClientDao dao = new ClientDao();



        if(dao.remove(login))
        {
            response.sendRedirect("Admin/CompteListe.jsp?add=success");
        }else
        {
            response.sendRedirect("Admin/CompteListe.jsp?add=fail");
        }
        
    
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
