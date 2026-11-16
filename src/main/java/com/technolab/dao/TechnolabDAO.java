package com.technolab.dao;
import com.technolab.model.Certification;
import com.technolab.model.Partenaire;
import java.util.ArrayList;
import java.util.List;
public class TechnolabDAO {
    public static List<Certification> getCertifications(){
        List<Certification> l = new ArrayList<>();
        l.add(new Certification("CAMES","Premier prive Mali","1998","logo-cames.png","Accredite"));
        l.add(new Certification("FEDE N1505","500 ecoles","2023","logo-fede.png","Membre"));
        l.add(new Certification("Microsoft","Microsoft","Actif","logo-microsoft.png","Agree"));
        l.add(new Certification("Cisco","Cisco","Actif","logo-cisco.png","Regional"));
        l.add(new Certification("Huawei","Huawei","Actif","logo-huawei.png","Partenaire"));
        l.add(new Certification("Etat Malien","Arrete 0699/98","18 Mai 1998","logo-consortium.png","Agree"));
        return l;
    }
    public static List<Partenaire> getPartenaires(){
        List<Partenaire> l = new ArrayList<>();
        l.add(new Partenaire("PSB Paris","France","DBA","logo-consortium.png","Doctorat"));
        l.add(new Partenaire("Adalia","Maroc","Academique","logo-fede.png","Casablanca"));
        l.add(new Partenaire("ONU OIT OIM","Mali","Stages","logo-cames.png","Negue"));
        l.add(new Partenaire("Orange Mali","Mali","Entreprise","logo-huawei.png","Insertion"));
        return l;
    }
}