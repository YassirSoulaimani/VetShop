/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entities.Article;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;


public class ArticleDao
{

    Connection con = DBConnexion.getInstance();

    public boolean add(Article a)
    {
        try
        {
            String req = "INSERT INTO article(`idarticle`, `libelle`, `desc`, `prix`, `img`, `qte`,`idCat`)"
                    + " VALUES (NULL , '" + a.getLibelle() + "', '" + a.getDesc() + "', '" + a.getPrix() + "', '" + a.getImg() + "', '" + a.getQte() + "','" + a.getCategorie() + "');";

            Statement st = con.createStatement();

            int rs = st.executeUpdate(req);

            if (rs > 0)
            {
                return true;
            }

        } catch (Exception e1)
        {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }

        return false;
    }

    public boolean remove(int idArticle)
    {
        try
        {
            String req = "DELETE FROM article " + "WHERE idarticle = " + idArticle;

            Statement st = con.createStatement();

            int rs = st.executeUpdate(req);

            if (rs > 0)
            {
                return true;
            }

        } catch (Exception e1)
        {
            e1.printStackTrace();
        }

        return false;
    }

    public boolean update(Article a)
    {
        try
        {
            String req = "UPDATE `wshop`.`article` "
                    + "SET `libelle`='" + a.getLibelle() + "', "
                    + "`desc`='" + a.getDesc() + "', "
                    + "`prix`='" + a.getPrix() + "', "
                    + "`img`='" + a.getImg() + "', "
                    + "`qte`='" + a.getQte() + "', "
                    + "`idCat`='" + a.getCategorie() + "' "

                    + "WHERE `idarticle`='" + a.getIdArticle() + "';";

            Statement st = con.createStatement();

            int rs = st.executeUpdate(req);

            if (rs > 0)
            {
                return true;
            }

        } catch (Exception e1)
        {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }

        return false;
    }

    public Article findByID(int id)
    {
        String req = "  SELECT * FROM `wshop`.`article` WHERE idArticle = " + id;

        try
        {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(req);

            Article e = null;

            if (rs.next())
            {
                //Article(int idArticle, String libelle, String desc, double prix, String img, int qte, Date dateAjout)
                e = new Article(rs.getInt(1), rs.getString(2), rs.getString(3),

                        rs.getDouble(4), rs.getString(5), rs.getInt(6),
                        rs.getDate(7));
            }
            return e;

        } catch (Exception e)
        {
            e.printStackTrace();
        }

        return null;
    }

    public Vector<Article> findAll()
    {
        String req = "SELECT* " + " FROM article ";

        Vector<Article> vect = null;

        try
        {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(req);

            while (rs.next())
            {

                if (vect == null)
                {
                    vect = new Vector<>();
                }

                Article e = new Article(rs.getInt(1), rs.getString(2),rs.getInt(8), rs.getString(3),
                        rs.getDouble(4), rs.getString(5), rs.getInt(6),
                        rs.getDate(7));

                vect.add(e);
            }

            return vect;
        } catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return null;
    }

    
    public Vector<Article> findAll(String key)
    {
        String req = "SELECT* " + " FROM article WHERE libelle like '%"+key+"%'";

        Vector<Article> vect = null;

        try
        {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(req);

            while (rs.next())
            {

                if (vect == null)
                {
                    vect = new Vector<>();
                }

                Article e = new Article(rs.getInt(1), rs.getString(2),rs.getInt(8), rs.getString(3),
                        rs.getDouble(4), rs.getString(5), rs.getInt(6),
                        rs.getDate(7));

                vect.add(e);
            }

            return vect;
        } catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return null;
    }


     public Vector<Article> findRandom(int nbMax)
    {
        String req = "SELECT* " + " FROM article ORDER BY RAND() LIMIT " + nbMax;

        Vector<Article> vect = null;

        try
        {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(req);

            while (rs.next())
            {

                if (vect == null)
                {
                    vect = new Vector<>();
                }

                Article e = new Article(rs.getInt(1), rs.getString(2),rs.getInt(8), rs.getString(3),
                        rs.getDouble(4), rs.getString(5), rs.getInt(6),
                        rs.getDate(7));

                vect.add(e);
            }

            return vect;
        } catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return null;
    }

    public Vector<Article> findAllwitCategorie(int cat)
    {
        String req = "SELECT* " + " FROM article WHERE idCat = '"+cat+"'";

        Vector<Article> vect = null;

        try
        {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(req);

            while (rs.next())
            {

                if (vect == null)
                {
                    vect = new Vector<>();
                }

                Article e = new Article(rs.getInt(1), rs.getString(2),rs.getInt(8), rs.getString(3),
                        rs.getDouble(4), rs.getString(5), rs.getInt(6),
                        rs.getDate(7));

                vect.add(e);
            }

            return vect;
        } catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return null;
    }

    public String findCategorie(String lib)
    {
        String req = "SELECT categorie " + " FROM categorie WHERE idCat = (select idCat FROM article where libelle = '"+lib+"')";

        String cat = null;

        try
        {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(req);

            if (rs.next())
            {

               cat = rs.getString(1);

            }

            return cat;
        } catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return null;
    }

    public int findIDCategorie(String cat)
    {
        String req = "SELECT idCat " + " FROM categorie WHERE categorie = '"+cat+"'";

        int idcat = 0;

        try
        {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(req);

            if (rs.next())
            {

                idcat = rs.getInt(1);

            }

            return idcat;
        } catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return 0;
    }



}
