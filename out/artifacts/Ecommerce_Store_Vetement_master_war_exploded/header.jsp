<%@page import="entities.Article"%>
<%@page import="dao.ArticleDao"%>
<%@page import="panier.LignePanier"%>
<%@page import="panier.Panier"%>
<%@page import="entities.Client"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Vet Estore </title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/slideshow.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="js/jquery.cycle.js"></script>
<script type="text/javascript" src="js/jquery.functions.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/Comfortaa_400.font.js" type="text/javascript"></script>
<script type="text/javascript">
			Cufon.replace('h1', { fontFamily: 'Comfortaa' });
			Cufon.replace('h2', { fontFamily: 'Comfortaa' });
			Cufon.replace('h3', { fontFamily: 'Comfortaa' });
			Cufon.replace('h4', { fontFamily: 'Comfortaa' });
		</script>
<script type="text/javascript" src="assets/js/font-delicious.js"></script>

</head>
<body>
<div id="Layout">
  <!-- BEGIN HEADER -->
  <div id="Top">
    <div id="Logo">
      <h1><a href="index.jsp">
          <link rel="shortcut icon" href="http://sstatic.net/stackoverflow/img/favicon.ico">
          <img height="100" src="images/logo2.png" alt="OXO" /></a>
      </h1>
    </div>
    <!-- end div #Logo -->
    <div id="TopContent">
      <ul>
<%
if(session.getAttribute("panier") == null ) {
    session.setAttribute("panier", new Panier());
}

Panier panier = (Panier)session.getAttribute("panier");
double prixT = 0 ;

for(LignePanier lp : panier.getLignesPanier())
    prixT += lp.getQuantite()*lp.getArticle().getPrix(); %>

        <li class="notification"><a href="panier.jsp">Panier d'Achat
            <span class="badge"><%= panier.getNumberArticle() %></span>
        </a></li>
        <li class="cart-value">
            <span class="blue"><a href="panier.jsp"><%= panier.getNumberArticle() %> produits</a></span> |  <img src="images/dollar-currency-symbol.png"> <b> <span style=font-size:150%;"><%= prixT %></span></b></li>
      </ul>
    </div>
    <!-- end div #TopContent -->
    <div id="Nav">
      <div class="NavBody">
        <ul >
            <li> <a href="index.jsp">Accueil</a></li>
            <li> <a href="produits.jsp">Nos Produits</a></li>
            <li> <a href="myaccount.jsp">Mon Compte</a></li>
          <li> <a href="ContactUs.jsp">Contactez Nous</a></li>
            <li> <a href="Admin/login.jsp">Admin Login</a></li>

          <li class="search">
              <form action="produits.jsp" method="GET">
                <input type="image" class="action" src="images/search-action.jpg" />
                <input name="keyword" type="text" class="searchfeild" />
            </form>
          </li>
        </ul>
      </div>
    </div>
    <!-- end div #Nav -->
  </div>
  <!-- end div #Top -->
  <!-- END HEADER -->
  <!-- BEGIN CONTENT -->
  <div id="Content">
    <div class="LeftSide">
        <!-- Connexion DIV -->
        <% if(session.getAttribute("client") == null){ %>
            <div class="leftBox">
              <h3><p style= "font-size: 15px ; margin-left: 45px;margin-bottom:15px">Connexion</h3>
              <div class="leftBoxBody">
              <form method="GET" action="ConnexionServlet">
              <ul class="cat-link" style="margin-top:-20px">
                  <li> Login : <input type="text" name="login" style=" width:100%" /> </li>
                  <li> Mot de passe : 	<input type="password" name="mdp" style="width:100%" /> </li>
                  </ul>
                  <a href="registerClient.jsp" style="margin:5px"> S'inscrire..</a>
                 <input style="margin-left:20px;margin-right:-20px;" type="submit" value="Valider" />
                      </form>
              </div>
            </div>
        <% }else{ %>
            <div class="leftBox">
                <h3><p style= "margin-left: 50px ; margin-bottom: 10px">Bienvenu</h3>

                <div class="leftBoxBody">
                    <p style="margin-top: -5px; margin-left: -10px ">Bienvenu <b> <%= ((Client)session.getAttribute("client")).getNom()  %></b></p>
              <ul class="cat-link" >
                  <li> <a href="myaccount.jsp"> Mon Compte </a> </li>
                  <li> <a href="panier.jsp"> Panier </a> </li>
                  <li> <a href="myorders.jsp"> Mes Commandes </a> </li>
                  <li> <a href="DeconnexionServlet"> Deconnexion.. </a> </li>
                  </ul>
              </div>
            </div>
        <% } %>

        <!-- categorie--->
      <div class="leftBox">
        <h3><p style= "margin-left: 50px ; margin-bottom: 10px">Categorie</h3>
        <div class="leftBoxBody">
          <ul class="sellerlist">

                <li><span></span>
                    <p><a href=" V�tements.jsp? " id="1" >V�tements</a></p>
                    <div class="clr"></div>
                </li>
              <li><span></span>
                  <p><a href=" Chaussures.jsp? id= 2 ">Chaussures</a></p>
                  <div class="clr"></div>
              </li>
              <li><span></span>
                  <p><a href=" Accessoires.jsp? id= 3 ">Accessoires</a></p>
                  <div class="clr"></div>
              </li>
          </ul>
          <div class="clr"></div>
        </div>
      </div>

      <div class="cards">
        <ul>
          <li><a href="#"><img src="images/paypal.gif" alt="" /></a></li>
          <li><a href="#"><img src="images/card-visia.gif" alt="" /></a></li>
          <li><a href="#"><img src="images/card-master.gif" alt="" /></a></li>
        </ul>
      </div>
    </div>