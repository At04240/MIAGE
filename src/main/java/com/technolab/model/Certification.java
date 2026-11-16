package com.technolab.model;
public class Certification {
    private String nom, org, annee, logo, statut;
    public Certification(String n,String o,String a,String l,String s){nom=n;org=o;annee=a;logo=l;statut=s;}
    public String getNom(){return nom;}
    public String getOrg(){return org;}
    public String getAnnee(){return annee;}
    public String getLogo(){return logo;}
    public String getStatut(){return statut;}
}