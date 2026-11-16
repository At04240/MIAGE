package com.technolab.dao;
import com.technolab.model.*;
import java.util.*;
public class TechnolabDAO {
    public static List<Certification> getCertifications(){
        List<Certification> l = new ArrayList<>();
        l.add(new Certification("CAMES","Premier privé au Mali","1998","logo-cames.png","Accrédité"));
        l.add(new Certification("FEDE N°1505","500 écoles - 35 pays","2023","logo-fede.png","Membre"));
        l.add(new Certification("Microsoft Academy","Microsoft","Actif","logo-microsoft.png","Agréé"));
        l.add(new Certification("Cisco Academy","Cisco","Actif","logo-cisco.png","Régional"));
        l.add(new Certification("Huawei ICT","Huawei","Actif","logo-huawei.png","Partenaire"));
        l.add(new Certification("État Malien","Arrêté 0699/98","18 Mai 1998","logo-consortium.png","Agréé"));
        return l;
    }
    public static List<Partenaire> getPartenaires(){
        List<Partenaire> l = new ArrayList<>();
        l.add(new Partenaire("Paris School of Business","France","DBA","logo-consortium.png","Doctorat"));
        l.add(new Partenaire("Adalia Institute","Maroc","Académique","logo-fede.png","Casablanca"));
        l.add(new Partenaire("ONU / OIT / OIM","Mali","Stages","logo-cames.png","Francis Négué"));
        l.add(new Partenaire("Orange Mali","Mali","Entreprise","logo-huawei.png","Insertion pro"));
        return l;
    }
}