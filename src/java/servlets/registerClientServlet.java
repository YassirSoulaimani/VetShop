package servlets;

import dao.ClientDao;
import entities.Client;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class registerClientServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException
    {
        String login = request.getParameter("login");
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String mdp = request.getParameter("mdp");

        Client c = new Client(login, mdp, nom, prenom);

        ClientDao dao = new ClientDao();

        if (dao.add(c))
        {

            response.sendRedirect("index.jsp?add=success");

            request.getSession().setAttribute("client", c);
        } else
        {
            response.sendRedirect("registerClient.jsp?");
        }
    }

}
