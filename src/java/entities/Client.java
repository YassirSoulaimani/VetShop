/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.util.Date;
import java.util.Objects;
import java.util.logging.Logger;

/**
 *
 * @author mahdi,mohamed,atiqa,oumaima mahdi,mohamed,atiqa,oumaima mahdi,mohamed,atiqa,oumaima mahdi,mohamed,atiqa,oumaima
 */
public class Client
{
  private String login ;
  private String mdp ;
  private String nom ;
  private String prenom ;
  private int etat;

    public Client()
    {
    }

    public Client(String email, String mdp, String nom, String prenom)
    {
        this.login = email;
        this.mdp = mdp;
        this.nom = nom;
        this.prenom = prenom;
    }
  
    




    
          public Client(String email, String mdp, String nom, String prenom,int etat)
    {
        this.login = email;
        this.mdp = mdp;
        this.nom = nom;
        this.prenom = prenom;
        this.etat=etat;
    }

          
    public int getEtat()
    {
        return etat;
    }

    public void setEtat(int etat)
    {
        this.etat = etat;
    }

    
    
    public String getLogin()
    {
        return login;
    }

    public String getMdp()
    {
        return mdp;
    }

    public String getNom()
    {
        return nom;
    }

    public String getPrenom()
    {
        return prenom;
    }


    public void setLogin(String login)
    {
        this.login = login;
    }

    public void setMdp(String mdp)
    {
        this.mdp = mdp;
    }

    public void setNom(String nom)
    {
        this.nom = nom;
    }

    public void setPrenom(String prenom)
    {
        this.prenom = prenom;
    }


    @Override
    public int hashCode()
    {
        int hash = 7;
        hash = 83 * hash + Objects.hashCode(this.login);
        hash = 83 * hash + Objects.hashCode(this.mdp);
        return hash;
    }

    @Override
    public boolean equals(Object obj)
    {
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        final Client other = (Client) obj;
        if (!Objects.equals(this.login, other.login))
        {
            return false;
        }
        if (!Objects.equals(this.mdp, other.mdp))
        {
            return false;
        }
        return true;
    }

    @Override
    public String toString()
    {
        return "Client{" + "email=" + login + ", mdp=" + mdp + ", nom=" + nom + ", prenom=" + prenom +"}";
    }
  
    
    
}
