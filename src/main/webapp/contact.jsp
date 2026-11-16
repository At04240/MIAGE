<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact | TechnoLAB - ISTA</title>
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
            max-width: 1100px;
            margin: 40px auto;
            padding: 0 20px;
            width: 100%;
            box-sizing: border-box;
        }

        .cycle-section-title {
            color: #16325c;
            font-size: 1.5rem;
            text-align: center;
            font-weight: bold;
            margin: 0 0 25px 0;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            border-bottom: 3px solid #16325c;
            padding-bottom: 10px;
        }

        .contact-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
            margin-bottom: 30px;
        }

        .contact-card {
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            padding: 30px;
            border: 1px solid #e2e8f0;
            box-sizing: border-box;
        }

        .contact-card h3 {
            color: #16325c;
            margin-top: 0;
            margin-bottom: 20px;
            font-size: 1.2rem;
            border-bottom: 2px solid #d32f2f;
            padding-bottom: 8px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #4a5568;
            font-size: 0.95rem;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #cbd5e0;
            border-radius: 6px;
            font-size: 0.98rem;
            box-sizing: border-box;
            font-family: inherit;
            transition: border-color 0.2s;
        }

        .form-group input:focus,
        .form-group textarea:focus {
            outline: none;
            border-color: #16325c;
        }

        .btn-submit {
            background-color: #d32f2f;
            color: #ffffff;
            border: none;
            padding: 12px 25px;
            font-size: 1rem;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.2s;
        }

        .btn-submit:hover {
            background-color: #b71c1c;
        }

        .contact-info-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .contact-info-list li {
            margin-bottom: 15px;
            color: #4a5568;
            font-size: 0.98rem;
            line-height: 1.6;
            display: flex;
            align-items: flex-start;
        }

        .contact-info-list li strong {
            color: #16325c;
            min-width: 90px;
            display: inline-block;
        }

        footer {
            background-color: #122238;
            color: #ffffff;
            padding: 30px 40px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: auto;
            font-family: Arial, sans-serif;
            font-size: 14px;
        }
        footer div {
            flex: 1;
            min-width: 250px;
            line-height: 1.6;
        }
        footer b {
            color: #f39c12;
            font-size: 15px;
        }

        @media (max-width: 768px) {
            .contact-container {
                grid-template-columns: 1fr;
            }
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
            <a href="partenaires.jsp">Partenaires</a>
            <a href="contact.jsp" class="active">Contact</a>
        </nav>
    </header>

    <section class="hero">
        <div class="hero-contenu">
            <span class="badge-rentree">Restons en contact</span>
            <h1>Contactez <span>nous</span></h1>
            <p>Une question sur nos formations ou nos admissions ? Écrivez-nous.</p>
        </div>
    </section>

    <div class="main-content">

        <div class="cycle-section-title">Formulaire de contact</div>

        <div class="contact-container">
            <!-- Formulaire -->
            <div class="contact-card">
                <h3>Envoyez-nous un message</h3>
                <form action="traitement-contact.jsp" method="POST">
                    <div class="form-group">
                        <label for="nom">Nom complet</label>
                        <input type="text" id="nom" name="nom" required placeholder="Ex : Fatoumata Bintou Camara">
                    </div>
                    <div class="form-group">
                        <label for="email">Adresse Email</label>
                        <input type="email" id="email" name="email" required placeholder="Ex : nom@exemple.com">
                    </div>
                    <div class="form-group">
                        <label for="sujet">Sujet</label>
                        <input type="text" id="sujet" name="sujet" required placeholder="Ex : Renseignements Master MIAGE">
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea id="message" name="message" rows="5" required placeholder="Écrivez votre message ici..."></textarea>
                    </div>
                    <button type="submit" class="btn-submit">Envoyer le message</button>
                </form>
            </div>

            <!-- Informations de contact directes -->
            <div class="contact-card">
                <h3>Nos Coordonnées</h3>
                <p style="color: #4a5568; margin-bottom: 25px; line-height: 1.6;">
                    Notre équipe administrative et pédagogique se tient à votre disposition pour répondre à toutes vos interrogations du lundi au samedi.
                </p>
                <ul class="contact-info-list">
                    <li><strong>Adresse :</strong> Hamdallaye ACI 2000, Bamako, Mali</li>
                    <li><strong>Téléphone :</strong> (+223) 20 29 01 54 / (+223) 75 00 00 00</li>
                    <li><strong>Email :</strong> infos@technolab-ista.com</li>
                    <li><strong>Horaires :</strong> Lun - Sam : 08h00 - 18h00</li>
                </ul>
            </div>
        </div>

    </div>

    <footer>
        <div><b>TechnoLAB - ISTA</b><br>Des parchemins sûrs pour une compétitivité internationale !<br>Fondé en 1998 — Bamako, Mali</div>
         <div><b>Contact</b><br>Hamdallaye ACI 2000, Bamako<br>(+223) 20 29 01 54<br>infos@technolab-ista.com</div>
         <div><b>Antennes</b><br>Kayes • Koulikoro • Sikasso • Ségou<br>Mopti • Koutiala • Bougouni</div>
    </footer>

</body>
</html>