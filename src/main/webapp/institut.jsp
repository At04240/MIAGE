<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>À propos | TechnoLAB - ISTA</title>
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


        .apropos-grid {
            display: grid;
            grid-template-columns: 1fr 1.2fr;
            gap: 30px;
            align-items: stretch;
            margin-bottom: 40px;
        }

        @media (max-width: 900px) {
            .apropos-grid {
                grid-template-columns: 1fr;
            }
        }


        .apropos-card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.06);
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            border-top: 6px solid #0b5d3b;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .apropos-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
        }

        .apropos-card.highlight {
            border-top-color: #d32f2f;
        }

        .apropos-card h3 {
            color: #16325c;
            font-size: 1.5rem;
            margin-top: 0;
            margin-bottom: 20px;
            font-weight: bold;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .apropos-card h3 span {
            display: inline-block;
            width: 8px;
            height: 24px;
            background-color: #0b5d3b;
            border-radius: 4px;
        }

        .apropos-card.highlight h3 span {
            background-color: #d32f2f;
        }

        .apropos-card p {
            text-align: justify;
            line-height: 1.8;
            color: #4a5568;
            margin-bottom: 15px;
            font-size: 1.02rem;
        }

        .apropos-card strong {
            color: #16325c;
        }


        .points-forts-grid {
            list-style: none;
            padding: 0;
            margin: 15px 0 0 0;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .points-forts-grid li {
            position: relative;
            padding-left: 28px;
            line-height: 1.6;
            color: #4a5568;
            font-size: 0.98rem;
            text-align: justify;
        }

        .points-forts-grid li::before {
            content: "✔";
            position: absolute;
            left: 0;
            top: 0;
            color: #0b5d3b;
            font-weight: bold;
            font-size: 1.1rem;
        }


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
        .footer-container {
            max-width: 1400px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            flex-wrap: nowrap;
            gap: 50px;
        }
        .footer-col {
            flex: 1;
        }
        .footer-col h3 {
            color: #f39c12;
            font-size: 16px;
            margin-bottom: 12px;
            font-weight: bold;
            display: block;
            border: none;
            padding: 0;
        }
        .footer-col p {
            margin: 6px 0;
            color: #d1d5db;
            line-height: 1.5;
            font-size: 14px;
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
            <a href="institut.jsp" class="active">À propos</a>
            <a href="formations.jsp">Nos cycles et filières</a>
            <a href="antennes.jsp">Antennes</a>
            <a href="admissions.jsp">Admission</a>
            <a href="paiement.jsp">Paiement</a>
            <a href="partenaires.jsp">Partenaires</a>
            <a href="contact.jsp">Contact</a>
        </nav>
    </header>


    <section class="hero">
        <div class="hero-contenu">
            <span class="badge-rentree">Institut Supérieur de Technologies Appliquées</span>
            <h1>Qui sommes-nous ?</h1>
            <p>Découvrez l'histoire, la mission et l'excellence académique de TechnoLAB-ISTA.</p>
        </div>
    </section>


    <div class="main-content">

        <div class="apropos-grid">

            <div class="apropos-card">
                <div>
                    <h3><span></span>Notre Institution</h3>
                    <p>
                        Fondé en 1998, l'Institut Supérieur de Technologies Appliquées (<strong>TechnoLAB-ISTA</strong>) est un établissement privé d'éducation agréé par le gouvernement malien et reconnu par diverses institutions de référence telles que le <strong>CAMES</strong> (Conseil Africain et Malgache pour l'Enseignement Supérieur) et la <strong>FEDE</strong> (Fédération Européenne des Écoles), entre autres.
                    </p>
                    <p>
                        TechnoLAB-ISTA a pour mission fondamentale de préparer et de former les futurs leaders et experts dans les secteurs de l'ingénierie, de la gestion, ainsi que dans les techniques administratives, commerciales et managériales.
                    </p>
                </div>
            </div>


            <div class="apropos-card highlight">
                <div>
                    <h3><span></span>Pourquoi choisir TechnoLAB - ISTA ?</h3>
                    <p>
                        Notre institut intègre une éducation de haut niveau face aux enjeux réels des entreprises, dispensée par un corps professoral hautement qualifié.
                    </p>

                    <ul class="points-forts-grid">
                        <li>
                            <strong>28 ans d'expérience</strong> et plus de <strong>16 000 diplômés</strong> (majorité au Mali), offrant l'un des meilleurs taux d'insertion professionnelle.
                        </li>
                        <li>
                            Parfaite conformité avec le <strong>CAMES</strong>, comptant plus de 30 diplômes approuvés (référence au Mali).
                        </li>
                        <li>
                            Accréditations officielles de l'<strong>Académie Cisco</strong> et de l'<strong>Académie Huawei ICT</strong> avec certifications internationales intégrées.
                        </li>
                        <li>
                            Partenariats internationaux stratégiques (Groupe ESG de Paris, Université de Milan) pour des doubles diplômes.
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>

    <!-- Pied de page harmonisé et élargi -->
    <footer>
         <div><b>TechnoLAB - ISTA</b><br>Des parchemins sûrs pour une compétitivité internationale !<br>Fondé en 1998 — Bamako, Mali</div>
          <div><b>Contact</b><br>Hamdallaye ACI 2000, Bamako<br>(+223) 20 29 01 54<br>infos@technolab-ista.com</div>
          <div><b>Antennes</b><br>Kayes • Koulikoro • Sikasso • Ségou<br>Mopti • Koutiala • Bougouni</div>
    </footer>

</body>
</html>