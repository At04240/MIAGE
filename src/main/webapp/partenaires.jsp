<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, com.technolab.dao.TechnolabDAO, com.technolab.model.*" %>
<%
    List<Partenaire> list = TechnolabDAO.getPartenaires();
%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Partenaires | TechnoLAB - ISTA</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        body {
            background-color: #f4f6f9;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .main-content {
            flex: 1;
            max-width: 1200px;
            margin: 40px auto;
            padding: 0 20px;
            width: 100%;
            box-sizing: border-box;
        }
        .grid-partenaires {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            gap: 30px;
        }
        @media (max-width: 900px) {
            .grid-partenaires { grid-template-columns: 1fr; }
        }
        .card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.06);
            padding: 30px;
            text-align: center;
            border-top: 6px solid #0b5d3b;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
        }
        .card img {
            height: 80px;
            object-fit: contain;
            margin-bottom: 15px;
        }
        .card h3 {
            color: #16325c;
            font-size: 1.3rem;
            margin: 10px 0;
        }
        .card p {
            color: #4a5568;
            line-height: 1.6;
            font-size: 0.98rem;
        }
        .badge {
            display: inline-block;
            background: #f4f6f9;
            color: #0b5d3b;
            padding: 5px 12px;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: bold;
        }
        .recompenses {
            background: #fff;
            border-radius: 12px;
            padding: 30px 40px;
            margin-top: 40px;
            border-top: 6px solid #d32f2f;
            box-shadow: 0 10px 30px rgba(0,0,0,0.06);
        }
        .recompenses h2 { color: #16325c; }
        .recompenses li { line-height: 1.8; color: #4a5568; margin-bottom: 10px; }
        footer {
            background-color: #122238;
            color: #ffffff;
            padding: 40px 60px 30px 60px;
            margin-top: auto;
            font-family: Arial, sans-serif;
            font-size: 14px;
            width: 100%;
            box-sizing: border-box;
        }
    </style>
</head>
<body>

    <div class="topbar">
        <span>TechnoLAB - ISTA • Admissions ouvertes • Rentrée 2027 • DUT - Licence - Master •&nbsp;</span>
    </div>

    <header class="cartouche">
        <div class="logo-zone">
            <img src="assets/img/logo-technolab-ista.png" alt="Logo TechnoLAB-ISTA" class="logo-img">
            <div class="logo-texte"><span class="logo-techno">Techno<span>LAB</span> - ISTA</span><span class="logo-mali">Bamako - Mali • Depuis 1998 • CAMES &amp; FEDE</span></div>
        </div>
        <nav class="menu">
            <a href="index.jsp">Accueil</a>
            <a href="institut.jsp">À propos</a>
            <a href="formations.jsp">Nos cycles et filières</a>
            <a href="antennes.jsp">Antennes</a>
            <a href="admissions.jsp">Admission</a>
            <a href="paiement.jsp">Paiement</a>
            <a href="partenaires.jsp" class="active">Partenaires</a>
            <a href="contact.jsp">Contact</a>
        </nav>
    </header>

    <section class="hero">
        <div class="hero-contenu">
            <span class="badge-rentree">Institut Supérieur de Technologies Appliquées</span>
            <h1>Nos Partenaires</h1>
            <p>Un réseau académique et professionnel au service de votre réussite.</p>
        </div>
    </section>

    <div class="main-content">
        <div class="grid-partenaires">
        <% for(Partenaire p : list){ %>
            <div class="card">
                <img src="assets/img/<%= p.getLogo() %>" alt="<%= p.getNom() %>">
                <h3><%= p.getNom() %></h3>
                <span class="badge"><%= p.getPays() %> - <%= p.getType() %></span>
                <p><%= p.getDesc() %></p>
            </div>
        <% } %>
        </div>

        <div class="recompenses">
            <h2>Récompenses Internationales</h2>
            <ul>
                <li><b>24 Juin 2026:</b> Palme de l'Université la Plus Dynamique du Mali</li>
                <li><b>02 Juillet 2022:</b> 22ème Promotion - 300 diplômés - Parrain Général Kéba Sangaré</li>
                <li><b>12 Juillet 2026:</b> Journée Culturelle SETI - Maison des Pionniers</li>
            </ul>
        </div>
    </div>

    <footer>
         <div><b>TechnoLAB - ISTA</b><br>Des parchemins sûrs pour une compétitivité internationale !<br>Fondé en 1998 — Bamako, Mali</div>
          <div><b>Contact</b><br>Hamdallaye ACI 2000, Bamako<br>(+223) 20 29 01 54<br>infos@technolab-ista.com</div>
          <div><b>Antennes</b><br>Kayes • Koulikoro • Sikasso • Ségou<br>Mopti • Koutiala • Bougouni</div>
    </footer>

</body>
</html>