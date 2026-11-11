<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nos antennes régionales | TechnoLAB - ISTA</title>
<link rel="stylesheet" href="assets/css/style.css">
<style>
  .antennes-grid{display:flex;flex-wrap:wrap;gap:20px;justify-content:center;padding:20px 0}
  .antenne-card{width:260px;background:#fff;border-radius:16px;overflow:hidden;box-shadow:0 8px 24px rgba(0,0,0,.10);text-align:center;padding-bottom:16px}
  .antenne-card img{width:100%;height:170px;object-fit:cover;display:block}
  .antenne-card h3{color:#0a6b2e;font-size:22px;margin:12px 0 4px}
  .antenne-card p{color:#666;font-size:14px;padding:0 12px}
  .bamako-card{width:230px;background:#fff;border:1px solid #e5e5e5;border-radius:16px;padding:20px 14px;text-align:center;box-shadow:0 4px 12px rgba(0,0,0,.06)}
  .bamako-card h3{color:#0a2a4a;font-size:19px;margin-bottom:4px}
  .bamako-card p{color:#0a6b2e;font-weight:800;font-size:13px}
</style>
</head>
<body>
<div class="topbar"><span>TechnoLAB - ISTA • Nos antennes • Bamako + Régions •&nbsp;</span></div>

<header class="cartouche">
  <div class="logo-zone">
    <img src="assets/img/logo-technolab-ista.png" alt="Logo TechnoLAB-ISTA" class="logo-img">
    <div class="logo-texte"><span class="logo-techno">Techno<span>LAB</span> - ISTA</span><span class="logo-mali">Bamako - Mali • Depuis 1998 • CAMES &amp; FEDE</span></div>
  </div>
  <nav class="menu">
    <a href="index.jsp">Accueil</a>
    <a href="institut.jsp">À propos</a>
    <a href="formations.jsp">Nos cycles et filières</a>
    <a href="antennes.jsp" class="active">Antennes</a>
    <a href="admissions.jsp">Admission</a>
    <a href="paiement.jsp">Paiement</a>
    <a href="partenaires.jsp">Partenaires</a>
    <a href="contact.jsp">Contact</a>
  </nav>
</header>

<section class="hero">
  <div class="hero-contenu">
    <span class="badge-rentree">TechnoLAB-ISTA partout au Mali</span>
    <h1>Nos antennes <span>régionales</span></h1>
    <p>À Bamako et dans les régions, TechnoLAB-ISTA est proche de toi.</p>
  </div>
</section>

<section class="partenaires">
  <h2>Antennes régionales</h2>
  <p class="sous-titre">Dans les régions du Mali</p>
  <div class="antennes-grid">
    <div class="antenne-card"><img src="assets/img/kayes.jpg" alt="Kayes"><h3>Kayes</h3><p>Antenne de Kayes</p></div>
    <div class="antenne-card"><img src="assets/img/koulikoro.jpg" alt="Koulikoro"><h3>Koulikoro</h3><p>Antenne de Koulikoro</p></div>
    <div class="antenne-card"><img src="assets/img/sikasso.jpg" alt="Sikasso"><h3>Sikasso</h3><p>Antenne de Sikasso</p></div>
    <div class="antenne-card"><img src="assets/img/segou.jpg" alt="Ségou"><h3>Ségou</h3><p>Antenne de Ségou</p></div>
    <div class="antenne-card"><img src="assets/img/mopti.jpg" alt="Mopti"><h3>Mopti</h3><p>Antenne de Mopti</p></div>
    <div class="antenne-card"><img src="assets/img/koutiala.jpg" alt="Koutiala"><h3>Koutiala</h3><p>Antenne de Koutiala</p></div>
    <div class="antenne-card"><img src="assets/img/bougouni.jpg" alt="Bougouni"><h3>Bougouni</h3><p>Antenne de Bougouni</p></div>
  </div>
</section>

<section class="partenaires" style="background:#f6f8f6">
  <h2>Antennes à Bamako</h2>
  <p class="sous-titre">Juste la localisation, proche de chez toi à Bamako</p>
  <div class="antennes-grid">
    <div class="bamako-card"><h3>Sotuba</h3><p>📍 Bamako</p></div>
    <div class="bamako-card"><h3>Korofina</h3><p>📍 Bamako</p></div>
    <div class="bamako-card"><h3>Adekene</h3><p>📍 Bamako</p></div>
    <div class="bamako-card"><h3>Missabougou</h3><p>📍 Bamako</p></div>
    <div class="bamako-card"><h3>Niamakoro Cité Unicef</h3><p>📍 Bamako</p></div>
    <div class="bamako-card"><h3>Sabalibougou</h3><p>📍 Route de l'Aéroport, Bamako</p></div>
  </div>
  <p class="certif">Siège principal : Hamdallaye ACI 2000, Bamako • (+223) 20 29 01 54</p>
</section>

<footer>
  <div><b>TechnoLAB - ISTA</b><br>Des parchemins sûrs pour une compétitivité internationale !<br>Fondé en 1998 — Bamako, Mali</div>
  <div><b>Contact</b><br>Hamdallaye ACI 2000, Bamako<br>(+223) 20 29 01 54<br>infos@technolab-ista.com</div>
  <div><b>Antennes</b><br>Kayes • Koulikoro • Sikasso • Ségou<br>Mopti • Koutiala • Bougouni</div>
</footer>
</body>
</html>