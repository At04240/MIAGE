package com.technolab.model;
public class Partenaire {
    private String nom, pays, type, logo, desc;
    public Partenaire(String n,String p,String t,String l,String d){nom=n;pays=p;type=t;logo=l;desc=d;}
    public String getNom(){return nom;}
    public String getPays(){return pays;}
    public String getType(){return type;}
    public String getLogo(){return logo;}
    public String getDesc(){return desc;}
}