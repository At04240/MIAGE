<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String nom = request.getParameter("nom");
    String sujet = request.getParameter("sujet");
    boolean messageEnvoye = (nom != null && !nom.trim().isEmpty());
%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - TechnoLAB - ISTA</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
            background-color: #f4f6f8;
            color: #333;
            padding-bottom: 60px; /* Espace de sécurité en bas de page */
        }
        /* Bandeau supérieur droit */
        .top-wrapper {
            background: #ffffff;
            display: flex;
            justify-content: flex-end;
            padding: 0 6%;
        }
        .top-badge {
            background-color: #0b5333;
            color: #ffffff;
            font-size: 11px;
            font-weight: 600;
            padding: 5px 16px;
            border-bottom-left-radius: 6px;
            border-bottom-right-radius: 6px;
        }
        /* En-tête et menu */
        header {
            background-color: #ffffff;
            padding: 12px 6%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #eaeaea;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .brand-logo {
            width: 38px;
            height: 38px;
            background-color: #0b5333;
            border-radius: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #ffffff;
            font-weight: bold;
            font-size: 18px;
        }
        .brand-text h1 {
            color: #0b5333;
            font-size: 20px;
            line-height: 1.1;
        }
        .brand-text span {
            color: #c9302c;
            font-size: 10px;
            font-weight: 700;
            display: block;
        }
        nav {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }
        nav a {
            text-decoration: none;
            color: #444444;
            font-size: 13px;
            font-weight: 500;
            padding-bottom: 6px;
            transition: color 0.2s;
        }
        nav a:hover, nav a.active {
            color: #c9302c;
            border-bottom: 2px solid #c9302c;
        }
        /* Bannière dégradée vert vers jaune-vert */
        .hero-banner {
            background: linear-gradient(90deg, #074e2e 0%, #1e8242 55%, #8cc63f 100%);
            padding: 32px 8%;
            color: #ffffff;
        }
        .pill-badge {
            background-color: #f7b500;
            color: #1a1a1a;
            font-size: 11px;
            font-weight: 700;
            padding: 4px 14px;
            border-radius: 20px;
            display: inline-block;
            margin-bottom: 10px;
        }
        .hero-banner h2 {
            font-size: 30px;
            font-weight: 700;
            margin-bottom: 6px;
        }
        .hero-banner p {
            font-size: 14px;
            opacity: 0.95;
        }
        /* Section principale en cartes blanches */
        .main-content {
            max-width: 1050px;
            margin: 25px auto;
            padding: 0 20px;
            display: grid;
            grid-template-columns: 1fr 1.6fr;
            gap: 25px;
        }
        .card {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 25px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        }
        .card h3 {
            color: #0b5333;
            font-size: 15px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 15px;
        }
        .contact-block {
            margin-bottom: 14px;
            font-size: 14px;
            line-height: 1.45;
        }
        .contact-block strong {
            display: block;
            color: #0b5333;
            margin-bottom: 2px;
        }
        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 14px;
        }
        .form-group {
            margin-bottom: 12px;
        }
        .form-group label {
            display: block;
            font-size: 13px;
            font-weight: 600;
            color: #333;
            margin-bottom: 4px;
        }
        .form-group input, .form-group select, .form-group textarea {
            width: 100%;
            padding: 9px 12px;
            border: 1px solid #d0d7de;
            border-radius: 5px;
            font-size: 14px;
        }
        .form-group input:focus, .form-group select:focus, .form-group textarea:focus {
            outline: none;
            border-color: #1e8242;
        }
        .btn-send {
            background-color: #0b5333;
            color: #ffffff;
            border: none;
            padding: 12px 26px;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            display: inline-block;
            margin-top: 5px;
            transition: background 0.2s;
        }
        .btn-send:hover {
            background-color: #073b24;
        }
        .success-box {
            background-color: #e6f4ea;
            color: #0b5333;
            border-left: 4px solid #1e8242;
            padding: 10px 14px;
            border-radius: 4px;
            margin-bottom: 15px;
            font-size: 13px;
        }
        @media (max-width: 768px) {
            .main-content, .form-row { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>

    <div class="top-wrapper">
        <div class="top-badge">TechnoLAB - ISTA • Admissions ouvertes</div>
    </div>

    <header>
        <div class="brand">
            <div class="brand-logo">T</div>
            <div class="brand-text">
                <h1>TechnoLAB - ISTA</h1>
                <span>Bamako - Mali • Depuis 1998 • CAMES & FEDE</span>
            </div>
        </div>
        <nav>
            <a href="index.jsp">Accueil</a>
            <a href="institut.jsp">À propos</a>
            <a href="#">Nos cycles et filières</a>
            <a href="#">Antennes</a>
            <a href="#">Admission</a>
            <a href="#">Paiement</a>
            <a href="#">Partenaires</a>
            <a href="contact.jsp" class="active">Contact</a>
        </nav>
    </header>

    <section class="hero-banner">
        <span class="pill-badge">Institut Supérieur de Technologies Appliquées</span>
        <h2>Contactez-nous</h2>
        <p>Une question sur nos formations, les admissions ou nos antennes ? Notre équipe est à votre écoute.</p>
    </section>

    <div class="main-content">
        <div class="card">
            <h3>Nos Coordonnées</h3>
            <div class="contact-block">
                <strong>Direction Générale</strong>
                Bamako, Mali (Hamdallaye ACI 2000 / Quartier du Fleuve)
            </div>
            <div class="contact-block">
                <strong>Téléphone</strong>
                +223 20 22 00 00 / +223 70 00 00 00
            </div>
            <div class="contact-block">
                <strong>Email</strong>
                contact@technolab-ista.edu.ml
            </div>
            <div class="contact-block">
                <strong>Horaires</strong>
                Lundi - Vendredi : 08h00 - 18h00<br>
                Samedi : 08h30 - 14h00
            </div>
        </div>

        <div class="card">
            <h3>Envoyer un message</h3>

            <% if (messageEnvoye) { %>
                <div class="success-box">
                    Merci <strong><%= nom %></strong>, votre message concernant « <%= sujet %> » a bien été envoyé à TechnoLAB-ISTA.
                </div>
            <% } %>

            <form method="post">
                <div class="form-row">
                    <div class="form-group">
                        <label for="nom">Nom et Prénom *</label>
                        <input type="text" id="nom" name="nom" placeholder="Votre nom complet" required>
                    </div>
                    <div class="form-group">
                        <label for="telephone">Téléphone *</label>
                        <input type="tel" id="telephone" name="telephone" placeholder="+223 ..." required>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="email">Adresse Email *</label>
                        <input type="email" id="email" name="email" placeholder="exemple@email.com" required>
                    </div>
                    <div class="form-group">
                        <label for="sujet">Sujet *</label>
                        <select id="sujet" name="sujet">
                            <option value="Admission / Inscription">Admission / Inscription</option>
                            <option value="Cycles et Filières">Cycles et Filières</option>
                            <option value="Antennes régionales">Antennes régionales</option>
                            <option value="Paiement et Scolarité">Paiement et Scolarité</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="message">Message *</label>
                    <textarea id="message" name="message" rows="4" placeholder="Votre message ici..." required></textarea>
                    </form>
                    </div>
                    </body>
                    </html>