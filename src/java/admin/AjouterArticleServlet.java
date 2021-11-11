/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;
import dao.ArticleDao;
import entities.Article;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mahdi,mohamed,atiqa,oumaima
 */
public class AjouterArticleServlet extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String libelle = request.getParameter("libelle");
            String desc = request.getParameter("desc");
            Double prix = Double.parseDouble(request.getParameter("prix"));
            int quantite=Integer.parseInt(request.getParameter("quantite"));
            int categorie = Integer.parseInt(request.getParameter("categorie")) ;
            int a = Integer.parseInt(request.getParameter("date_a"));
            int m = Integer.parseInt(request.getParameter("date_m"));;
            int j = Integer.parseInt(request.getParameter("date_j"));;
                
            Date dt = new Date(a, m, j);
            
            String img = request.getParameter("urlImage");
            
            int age = 2014 - a ;
            
            Article act = new Article(-1, libelle,categorie, desc, prix,img, quantite,dt);
            ArticleDao dao = new ArticleDao();
            
            if(dao.add(act)) {
                response.sendRedirect("Admin/ProduitListe.jsp?add=success");
            }else
            {
                response.sendRedirect("Admin/ProduitListe.jsp?add=fail");
            }
            
        }catch( Exception ex){
            response.sendRedirect("Admin/ProduitListe.jsp?add=fail");
        }
    }
}
