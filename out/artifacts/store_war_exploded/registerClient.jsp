<%@page import="java.util.Calendar"%>
<%@page import="entities.Article"%>
<%@page import="java.util.Vector"%>
<%@page import="dao.ArticleDao"%>
<%@include file="header.jsp" %>

<div class="RightSide" >
    <form action="registerClientServlet" method="post" >
        <center>
            <table style="padding-top: 150px;">
                <tr>
                    <td>login : </td>
                    <td><input style="height:25px;width: 200px;margin-bottom:5PX" name="login" value="" > </td>

                </tr>
                <tr>
                    <td>Nom : </td>
                    <td><input style="height:25px;width: 200px;margin-bottom:10PX " name="nom" value="" > </td>
                </tr>

                <tr>
                    <td>Prenom : </td>
                    <td><input style="height:25px;width: 200px;margin-bottom:10PX" name="prenom" value=""></td>
                </tr>

                <tr>
                    <td>Mot de passe : </td>
                    <td><input style="height:25px;width: 200px; margin-bottom:5PX" type="password" name="mdp" value=""></td>
                </tr>

                <tr>
                    <td>
                        <input style="height:30px;width: 100px;background: #3e3e3e ;margin-left: 20px;margin-top:10PX" type="submit" value="valider">
                    </td>
                    <td>
                        <input style="height:30px;width: 100px;background: #3e3e3e;margin-left: 60px; margin-top:10PX" type="reset" value="Annuler">
                    </td>
                </tr>
            </table>
        </center>
    </form>
</div>
<%@include file="footer.jsp" %>