  <%@page import="java.util.Calendar"%>
  <%@page import="entities.Article"%>
  <%@page import="java.util.Vector"%>
  <%@page import="dao.ArticleDao"%>
  <%@include file="header.jsp" %>

  <title> Vet Estore </title>
   <div class="RightSide">
    <%
        if(request.getParameter("con") != null){
    %>
    <div class="login">
        <p style="padding: 5px;"> Veuillez se Connecter...</p>
    </div>
    <% } %>

    <%@include file="slideshow.jsp" %>
    
      <div class="bredCrum" style="margin-bottom:38px;">
        <h4>Nos derniers Produits..</h4>
      </div>
    <% 
            int NB_PRODUIT_PAGE = 6 ;
            int pageCourante = 1;
            if(request.getParameter("page") != null) {
                pageCourante = Integer.parseInt(request.getParameter("page"));
            }
            
            ArticleDao dao = new ArticleDao();
            Vector<Article> articles = dao.findAll();
            
            int nbTotalePages = articles.size() / NB_PRODUIT_PAGE + 1;
            
            int init = ((pageCourante - 1) * NB_PRODUIT_PAGE);
            
            String cls = "";
            
            boolean arret = true ;
            int t = 0 ;
          %>
    <!-- DEBUT  BOUCLE !! -->
   <%
     while(t < 2 ) {
   %>
      <div class="catrow">
        <ul>
   <%
            for(int i = init; i < init + 3; i++) {
                cls = "" ;
                if(i >= articles.size()) {
                    break;
                }

                if(i >= init + 2) {
                    cls+= "last ";
                }
                if(articles.get(i).getDateAjout().getYear()+1900 >= 2060) {
                    cls+= "new ";
                }
        %>
          <li class="<%= cls %>"   >
              
              <div class="catThum">
                  <a href="product.jsp?id=<%= articles.get(i).getIdArticle() %>">
                      <img width="203" height="186" src="<%= articles.get(i).getImg() %>" alt="" />
                  </a>
   <%
   if(articles.get(i).getDateAjout().getYear()+1900 >= 2060) {
   %>
                <div class="new"></div>
    <%}%>
            </div>
            <div class="catDetail">
              <h4><a href="product.jsp?id=<%= articles.get(i).getIdArticle() %>"><%= articles.get(i).getLibelle() %> </a></h4>
              <p><%= articles.get(i).getPrix() %></p>
            </div>
          </li>
          <% } %>
        </ul>
        <div class="clr"></div>
      </div>
    <%
          t++ ;
          init += 3 ;
   }%>
        <!-- FIN BOUCLE !! -->
      <div class="paging">
        <div class="pagingDiv">
            <span class="label">Page 
                <b class="blue"><%= pageCourante %></b> � <%= nbTotalePages %></span>
                
                <% if(!(pageCourante <= 1) ){ %>
                <span class="back">
                    <a href="?page=<%= pageCourante - 1 %>"><img src="images/back.gif" alt="" /></a>
                </span>
                 <% } %>
                  <% if(!(pageCourante >= nbTotalePages) ){ %>
                <span class="next">
                    <a href="?page=<%= pageCourante + 1 %>"><img src="images/next.gif" alt="" /></a>
                </span>
                <% } %>
        </div>
        <div class="clr"></div>
      </div>
    </div>
   <%@include file="footer.jsp" %>