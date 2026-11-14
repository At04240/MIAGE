<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nos cycles et filières | TechnoLAB - ISTA</title>
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
            margin: 40px 0 25px 0;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            border-bottom: 3px solid #16325c;
            padding-bottom: 10px;
        }


        .domaines-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(48%, 1fr));
            gap: 25px;
            margin-bottom: 30px;
        }


        .domaine-card {
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            overflow: hidden;
            border: 1px solid #e2e8f0;
        }


        .domaine-header {
            background-color: #d32f2f;
            color: #ffffff;
            padding: 12px 20px;
            font-weight: bold;
            font-size: 1.05rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }


        .domaine-body {
            padding: 20px;
        }

        .domaine-body ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .domaine-body li {
            position: relative;
            padding-left: 18px;
            margin-bottom: 10px;
            color: #4a5568;
            font-size: 0.98rem;
            line-height: 1.5;
            text-align: justify;
        }

        .domaine-body li::before {
            content: "•";
            position: absolute;
            left: 0;
            color: #d32f2f;
            font-weight: bold;
            font-size: 1.2rem;
            line-height: 1;
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
            .domaines-grid {
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
            <a href="formations.jsp" class="active">Nos cycles et filières</a>
            <a href="antennes.jsp">Antennes</a>
            <a href="admissions.jsp">Admission</a>
            <a href="paiement.jsp">Paiement</a>
            <a href="partenaires.jsp">Partenaires</a>
            <a href="contact.jsp">Contact</a>
        </nav>
    </header>


    <section class="hero">
        <div class="hero-contenu">
            <span class="badge-rentree">Formations d'Excellence</span>
            <h1>Nos cycles et <span>filières</span></h1>
            <p>Des cursus adaptés aux exigences du marché professionnel et international.</p>
        </div>
    </section>


    <div class="main-content">


        <div class="cycle-section-title">CYCLE DUT (BAC +2)</div>

        <div class="domaines-grid">

            <div class="domaine-card">
                <div class="domaine-header">Sciences Économiques et de Gestion</div>
                <div class="domaine-body">
                    <ul>
                        <li>Assistant de Direction</li>
                        <li>Finance - Comptabilité</li>
                        <li>Marketing - Management</li>
                        <li>Gestion Logistique et Transport</li>
                        <li>Gestion des Ressources Humaines</li>
                        <li>Archivage et Informatique Documentaire</li>
                        <li>Hygiène, Qualité, Santé et Environnement (HQSE)</li>
                    </ul>
                </div>
            </div>


            <div class="domaine-card">
                <div class="domaine-header">Sciences & Technologies</div>
                <div class="domaine-body">
                    <ul>
                        <li>Informatique de Gestion</li>
                        <li>Analyse - Programmation</li>
                        <li>Réseaux et Télécommunication</li>
                        <li>Électronique / Maintenance Informatique</li>
                        <li>Génie Électrique et Energies Renouvelables</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="domaines-grid">

            <div class="domaine-card">
                <div class="domaine-header">Sciences Techniques</div>
                <div class="domaine-body">
                    <ul>
                        <li>Génie Civil</li>
                        <li>Mine Géologie</li>
                        <li>Technologies Agro-alimentaires</li>
                    </ul>
                </div>
            </div>
        </div>



        <div class="cycle-section-title">CYCLE LICENCE (BAC +3)</div>

        <div class="domaines-grid">

            <div class="domaine-card">
                <div class="domaine-header">Sciences Économiques et de Gestion</div>
                <div class="domaine-body">
                    <ul>
                        <li>Agro - Économie</li>
                        <li>Marketing Digital</li>
                        <li>Finance - Gestion</li>
                        <li>Logistique Humanitaire</li>
                        <li>Finance - Banque - Assurance</li>
                        <li>Comptabilité - Contrôle - Audit</li>
                        <li>Gestion des Entreprises et des Administrations</li>
                        <li>Gestion Logistique et Transport</li>
                        <li>Gestion des Ressources Humaines</li>
                        <li>Communication d'Entreprise et des Organisations</li>
                        <li>Sciences Techniques Comptables et Financières</li>
                        <li>Marketing - Communication / Commerce International</li>
                        <li>Hygiène, Qualité, Santé et Environnement (HQSE)</li>
                    </ul>
                </div>
            </div>


            <div class="domaine-card">
                <div class="domaine-header">Sciences & Technologies</div>
                <div class="domaine-body">
                    <ul>
                        <li>Data Science</li>
                        <li>Géomatique / SIG</li>
                        <li>Systèmes et Réseaux Informatiques</li>
                        <li>Méthodes Informatiques Appliquées à la Gestion des Entreprises (MIAGE)</li>
                        <li>Archivage et Informatique Documentaire</li>
                        <li>Électronique, IoT et Systèmes Embarqués</li>
                        <li>Génie Électrique et Energies Renouvelables</li>
                        <li>Génie Logiciel et Développement d'Applications Web</li>
                        <li>Réseaux et Télécommunication</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="domaines-grid">

            <div class="domaine-card">
                <div class="domaine-header">Sciences de l'Ingénieur</div>
                <div class="domaine-body">
                    <ul>
                        <li>Génie Civil</li>
                        <li>Mine Géologie</li>
                        <li>Technologies Agro-alimentaires</li>
                    </ul>
                </div>
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